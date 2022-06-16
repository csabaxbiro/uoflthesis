Thesis/dissertation class and template for the University of Louisville

-----

The University of Louisville Graduate School requires all theses and dissertations to conform to standard formatting. The guidelines are posted (as of June 2022) at

https://louisville.edu/graduate/current-students/thesis-dissertation-information/thesis-dissertation-information

This package aims to provide a LaTeX class (.cls) file and a template, which essentially guarantees adherence to the formatting requirements. Students still should review the guidelines for possible errors, changes, and requirements that are not practical to be enforced by the LaTeX implementation (e.g. word count limits).

-----

Usage:

Download the files from "https://github.com/csabaxbiro/uoflthesis/". Optionally, you may clone the git repository (if you don;t understand this sentence, then don't do it.) The package contains the following files:

README.md: This document.
Thesis_Dissertation Guidelines Updated_August_2015.pdf: This is the official document from the website of the graduate school. Do check if there is a newer version.
thesis.bib: A BibTeX file containing the bibliography. You will put your own references here.
thesis.tex: Template file for the thesis. It is pretty self-explanatory with some documentation as in-line comments.
uofl.png: The Minerva logo of the university. This is only used as an example figure in the template. You need it to compile the template itself, but you probably won't need it for your own dissertation.
uoflthesis.cls: The class file.

To compile your own thesis, you will need to put the file "uoflthesis.cls" into the folder of your thesis (or wherever LaTeX can see it). You shouldn't need to modify or rename this file.

Then you will use thesis.tex as the template for your thesis (you may rename it). You will modify this file to include the content of your thesis. I recommend that you use the \input (or \include) command regularly to make your thesis modular.

You will need to modify thesis.bib to include your own bibliography in BibTeX format. In case you didn't know, MathSciNet can display the BibTeX entry for a referenced paper (it is not always perfect though, so check it after copying it into your BibTeX file). You may rename this file, in which case you will have to change the "\bibliography{thesis}" line in your thesis file.

-----

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike (CC BY-NC-SA) license. I do ask you that if you fix errors, or improve on the package, please let me know so that I can potentially incorporate your changes, and they can benefit new users.

Csaba Biro
Department of Mathematics
University of Louisville
csaba.biro@louisville.edu

