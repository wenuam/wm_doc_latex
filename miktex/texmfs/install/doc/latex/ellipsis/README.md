# Ellipsis.sty

If you have ever tried to print something like [...] in LateX text mode, you may have noticed that the spacing is slightly off: there is too much spacing after the dots. This extra spacing is there for cases in which you want to put another dot, a comma, a semicolon, or similar, right after the ellipsis, and you want all four bits of punctuation to be evenly spaced. In such cases, you probably want the extra space, but in others you do not.

Ellipsis.sty is a package that attempts to solve this problem by only adding the extra space in cases where the ellipsis is followed immediately by a punctuation character that should be spaced evenly with respect to the internal spacing between the three dots of the ellipsis.  The package is described on p.~82 of the second edition of The LaTeX Companion.

[CTAN](https://www.ctan.org/pkg/ellipsis)

[Github](https://github.com/pjheslin/ellipsis)

See the [PDF file](http://mirrors.ctan.org/macros/latex/contrib/ellipsis/ellipsis.pdf) for full documentation.

Peter Heslin
p.j.heslin@dur.ac.uk
