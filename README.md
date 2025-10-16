# Aufbau

Die einzelnen Abschnitte der Arbeit sind durch `include`s und `input`s in
`main.tex` gebündelt.

# Bauen

Die Arbeit ist in LaTeX geschrieben und kann bequem vermittels `make` gebaut werden. Es
bedarf dafür neben (gnu) `make` freilich `pdflatex` und `biber`.

Die folgenden Ziele sind verfügbar:

1. `main.pdf`: Baut die gesamte Arbeit als `main.pdf`
2. `open` (phony): `main.pdf` und öffnet das Ergebnis sogleich mit `open` (oder
   `evince`)
3. `clean` (phony): führt `git clean -Xf` aus (löscht alle Dateien in .gitignore)

