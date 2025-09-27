# wm_app_doc_gen_latex

LaTeX executables and templates to generate PDF files

* Home

https://github.com/wenuam/wm_app_doc_gen_latex

## Installation

```
/!\ First run `recompose.bat` to recompose "LFS" files
```

Install up-to-date `Java` binaries from :

https://www.oracle.com/java/technologies/downloads/#jdk19-windows

* To use it

  - Open a file explorer window (`Win+e`) on this folder/repository
  - Drag your `*.tex` file on the `pdflatex_compile.bat` file
  - Compilation will happens (packages will be added to `miktex` if needed)
  - If OK, the `*.pdf` file will be generated into the `*.tex` file's folder
  - `LaTeX` generates a lot of temporary/table files used in the next run
  - Repeat if the `*.log` requests you to do so (like for TOC generation)
  - Repeat again if some images are not well placed/numbers calculated/etc
  - Generally after 3 runs from the start you should get the final `*.pdf`
  - Run the `pdflatex_clean.bat` into the `*.tex` file's folder to clean it

* To update it

  - Don't do it, `nvm` is broken on `Windows`, it's a pain, really, but if...
  - Run `nvm_cmd.bat` to update the `nvm` installation
  - Run `miktex\miktex-portable.cmd` (opens in tray) to update `miktex`
  - Touch the `\latex\*.tex` template files if you add/update package support

* Installed packages

| Font				| Template			| Text				| Image				| Diagram			| Language			|
| :--				| :--				| :--				| :--				| :--				| :--				|
| [arabtex]			| [moderncv]		| [codebox]			| [background]		| [automata]		| [babel-french]	|
| [aramaic]			| [bibtex]			| [codehigh]		| [lcd]				| [bchart]			| [babel-slovenian]	|
| [bbm]				| [koma-script]		| [ffcode]			| [transparent]		| [bytefield]		| 					|
| [bbold]			| [latexcheat]		| [listings]		| [xpicture]		| [chemmacros]		| 					|
| [carlito]			| [lshort-japanese]	| [minted]			| 					| [chronology]		| 					|
| [ccicons]			| [nostarch]		| [pl]				| 					| [circuitikz]		| 					|
| [dancers]			| [simplecv]		| [soul]			| 					| [customdice]		| 					|
| [duerer]			| [tufte-latex]		| [termsim]			| 					| [diagrams]		| 					|
| [fontawesome]		| 					| 					| 					| [ditaa]			| 					|
| [fundus-la]		| 					| 					| 					| [epsdice]			| 					|
| [la]				| 					| 					| 					| [flow]			| 					|
| [paratype]		| 					| 					| 					| [flowchart]		| 					|
| [protosem]		| 					| 					| 					| [forest]			| 					|
| [ransom]			| 					| 					| 					| [grapher]			| 					|
| [runic]			| 					| 					| 					| [kinematikz]		| 					|
| [verdana]			| 					| 					| 					| [labyrinth]		| 					|
| 					| 					| 					| 					| [lcircuit]		| 					|
| 					| 					| 					| 					| [maze]			| 					|
| 					| 					| 					| 					| [mermaid]			| 					|
| 					| 					| 					| 					| [msctexen]		| 					|
| 					| 					| 					| 					| [nomnoml]			| 					|
| 					| 					| 					| 					| [pfdicons]		| 					|
| 					| 					| 					| 					| [pst-am]			| 					|
| 					| 					| 					| 					| [pst-dbicons]		| 					|
| 					| 					| 					| 					| [pst-pdgr]		| 					|
| 					| 					| 					| 					| [pst-soroban]		| 					|
| 					| 					| 					| 					| [register]		| 					|
| 					| 					| 					| 					| [schemabloc]		| 					|
| 					| 					| 					| 					| [setdeck]			| 					|
| 					| 					| 					| 					| [smcat]			| 					|
| 					| 					| 					| 					| [sudoku]			| 					|
| 					| 					| 					| 					| [tikz-cd]			| 					|
| 					| 					| 					| 					| [tikz-palattice]	| 					|
| 					| 					| 					| 					| [tikz-planets]	| 					|
| 					| 					| 					| 					| [tikz-truchet]	| 					|
| 					| 					| 					| 					| [tikzpingus]		| 					|
| 					| 					| 					| 					| [timing-diagrams]	| 					|
| 					| 					| 					| 					| [wavedrom]		| 					|
| 					| 					| 					| 					| 					| 					|

[Font]: # 

[arabtex]: https://www.ctan.org/pkg/arabtex
[aramaic]: https://www.ctan.org/pkg/aramaic
[bbm]: https://www.ctan.org/pkg/bbm
[bbold]: https://www.ctan.org/pkg/bbold
[carlito]: https://ctan.org/pkg/carlito
[ccicons]: https://www.ctan.org/pkg/ccicons
[dancers]: https://www.ctan.org/pkg/dancers
[duerer]: https://www.ctan.org/pkg/duerer
[fontawesome]: https://www.ctan.org/pkg/fontawesome
[fundus-la]: https://www.ctan.org/pkg/fundus-la
[la]: https://www.ctan.org/pkg/la
[paratype]: https://www.ctan.org/pkg/paratype
[protosem]: https://www.ctan.org/pkg/protosem
[ransom]: https://www.ctan.org/pkg/ransom
[runic]: https://www.ctan.org/pkg/runic
[verdana]: https://www.ctan.org/pkg/verdana

[Template]: # 

[moderncv]: https://www.ctan.org/pkg/moderncv
[bibtex]: https://www.ctan.org/pkg/bibtex
[koma-script]: https://www.ctan.org/pkg/koma-script
[latexcheat]: https://www.ctan.org/pkg/latexcheat
[lshort-japanese]: https://www.ctan.org/pkg/lshort-japanese
[nostarch]: https://www.ctan.org/pkg/nostarch
[simplecv]: https://www.ctan.org/pkg/simplecv
[tufte-latex]: https://www.ctan.org/pkg/tufte-latex

[Text]: # 

[codebox]: https://www.ctan.org/pkg/codebox
[codehigh]: https://www.ctan.org/pkg/codehigh
[ffcode]: https://www.ctan.org/pkg/ffcode
[listings]: https://www.ctan.org/pkg/listings
[minted]: https://www.ctan.org/pkg/minted
[pl]: https://www.ctan.org/pkg/pl
[soul]: https://www.ctan.org/pkg/soul
[termsim]: https://www.ctan.org/pkg/termsim

[Image]: # 

[background]: https://ctan.org/pkg/background
[lcd]: https://www.ctan.org/pkg/lcd
[transparent]: https://ctan.org/pkg/transparent
[xpicture]: https://www.ctan.org/pkg/xpicture

[Diagram]: # 

[automata]: https://www.ctan.org/pkg/automata
[bchart]: https://www.ctan.org/pkg/bchart
[bytefield]: https://www.ctan.org/pkg/bytefield
[chemmacros]: https://www.ctan.org/pkg/chemmacros
[chronology]: https://www.ctan.org/pkg/chronology
[circuitikz]: https://ctan.org/pkg/circuitikz
[customdice]: https://www.ctan.org/pkg/customdice
[diagrams]: https://github.com/seflless/diagrams
[ditaa]: https://github.com/dakusui/ditaa
[epsdice]: https://www.ctan.org/pkg/epsdice
[flow]: https://www.ctan.org/pkg/flow
[flowchart]: https://www.ctan.org/pkg/flowchart
[forest]: https://www.ctan.org/pkg/forest
[grapher]: https://www.ctan.org/pkg/grapher
[kinematikz]: https://www.ctan.org/pkg/kinematikz
[labyrinth]: https://www.ctan.org/pkg/labyrinth
[lcircuit]: https://www.ctan.org/pkg/lcircuit
[maze]: https://www.ctan.org/pkg/maze
[mermaid]: https://mermaid.live/
[msctexen]: https://www.mcternan.me.uk/mscgen/
[nomnoml]: https://www.nomnoml.com/
[pfdicons]: https://www.ctan.org/pkg/pfdicons
[pst-am]: https://www.ctan.org/pkg/pst-am
[pst-dbicons]: https://www.ctan.org/pkg/pst-dbicons
[pst-pdgr]: https://www.ctan.org/pkg/pst-pdgr
[pst-soroban]: https://www.ctan.org/pkg/pst-soroban
[register]: https://www.ctan.org/pkg/register
[schemabloc]: https://www.ctan.org/pkg/schemabloc
[setdeck]: https://www.ctan.org/pkg/setdeck
[smcat]: https://state-machine-cat.js.org/
[sudoku]: https://www.ctan.org/pkg/sudoku
[tikz-cd]: https://www.ctan.org/pkg/tikz-cd
[tikz-palattice]: https://www.ctan.org/pkg/tikz-palattice
[tikz-planets]: https://www.ctan.org/pkg/tikz-planets
[tikz-truchet]: https://www.ctan.org/pkg/tikz-truchet
[tikzpingus]: https://www.ctan.org/pkg/tikzpingus
[timing-diagrams]: https://www.ctan.org/pkg/timing-diagrams
[wavedrom]: https://wavedrom.com/editor.html

[Language]: # 

[babel-french]: https://www.ctan.org/pkg/babel-french
[babel-slovenian]: https://www.ctan.org/pkg/babel-slovenian
