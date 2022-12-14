# coding=utf-8
#
# Copyright (C) 2010 Geoffrey Mosini
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA.
#
"""
Generate barcodes for Code25-interleaved 2 of 5, for Inkscape.
"""

from .Base import Barcode
from inkex.localization import inkex_gettext as _

# 1 means thick, 0 means thin
ENCODE = {
    "0": "00110",
    "1": "10001",
    "2": "01001",
    "3": "11000",
    "4": "00101",
    "5": "10100",
    "6": "01100",
    "7": "00011",
    "8": "10010",
    "9": "01010",
}


class Code25i(Barcode):
    """Convert a text into string binary of black and white markers"""

    # Start and stop code are already encoded into white (0) and black(1) bars
    def encode(self, text):
        if not text.isdigit():
            return self.error(text, _("CODE25 can only encode numbers."))
        number = text

        # Number of figures to encode must be even,
        # a 0 is added to the left in case it's odd.
        if len(number) % 2 > 0:
            number = "0" + number

        # Number is encoded by pairs of 2 figures
        size = len(number) // 2
        encoded = "1010"
        for i in range(size):
            # First in the pair is encoded in black (1), second in white (0)
            black = ENCODE[number[i * 2]]
            white = ENCODE[number[i * 2 + 1]]
            for j in range(5):
                if black[j] == "1":
                    encoded += "11"
                else:
                    encoded += "1"
                if white[j] == "1":
                    encoded += "00"
                else:
                    encoded += "0"
        return encoded + "1101"
