# wm_doc_latex

LaTeX executables and templates to generate PDF files

```
/!\ First run `recompose.bat` to recompose "LFS" files
```

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
  - Run `nvm_cmd.bat` to update the `nvm` installation
  - Run `miktex\miktex-portable.cmd` (opens in tray) to update `miktex`
  - Touch the `\latex\*.tex` template files if you add/update package support

* Installed packages
  - [background](https://ctan.org/pkg/background) (background image)
  - [carlito](https://ctan.org/pkg/carlito) (font)
  - [circuitikz](https://ctan.org/pkg/circuitikz) (electric schematic)
  - [diagrams](https://github.com/seflless/diagrams) (flow chart)
  - [ditaa](https://github.com/dakusui/ditaa) (ascii art)
  - [flowchart](http://flowchart.js.org/) (flow chart)
  - [mermaid](https://mermaid.live/) (different diagram)
  - [msctexen](https://www.mcternan.me.uk/mscgen/) (charting)
  - [nomnoml](https://www.nomnoml.com/) (uml diagram)
  - [smcat](https://state-machine-cat.js.org/) (state machine diagram)
  - [transparent](https://ctan.org/pkg/transparent) (transparency)
  - [wavedrom](https://wavedrom.com/editor.html) (signal diagram)
  - ...

* Home

https://github.com/wenuam/wm_doc_latex
