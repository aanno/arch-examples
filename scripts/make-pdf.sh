#!/bin/bash -x

set -ex

PLANTUML="$HOME/Downloads/plantuml.1.2021.9.jar"

java -jar "$PLANTUML" -tsvg *.comp.puml
asciidoctor-pdf -v -b pdf -d article solution.ad
exec evince solution.pdf &
