#!/bin/bash
pushd "Notes by Day"
(rm "18.721 Lecture Notes 13 - 2011-03-04.pdf") & (pdflatex "18.721 Lecture Notes 13 - 2011-03-04.tex") && (rm "18.721 Lecture Notes 13 - 2011-03-04.pdf") && (pdflatex "18.721 Lecture Notes 13 - 2011-03-04.tex")
cp -f "18.721 Lecture Notes 13 - 2011-03-04.tex" "18.721 Lecture Notes 13 - 2011-03-04.tex.old"
copy /y "18.721 Lecture Notes 13 - 2011-03-04.tex" "18.721 Lecture Notes 13 - 2011-03-04.tex.old"
(rm "18.721 Lecture Notes 14 - 2011-03-07.pdf") & (pdflatex "18.721 Lecture Notes 14 - 2011-03-07.tex") && (rm "18.721 Lecture Notes 14 - 2011-03-07.pdf") && (pdflatex "18.721 Lecture Notes 14 - 2011-03-07.tex")
cp -f "18.721 Lecture Notes 14 - 2011-03-07.tex" "18.721 Lecture Notes 14 - 2011-03-07.tex.old"
copy /y "18.721 Lecture Notes 14 - 2011-03-07.tex" "18.721 Lecture Notes 14 - 2011-03-07.tex.old"
popd
