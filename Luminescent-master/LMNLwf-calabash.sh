#!/bin/sh

FILENAME=$1
CALABASH=/Applications/xmlcalabash-1.1.16-97/xmlcalabash-1.1.16-97.jar
PIPELINE=file:///Users/djb/Luminescent/LMNL-wf-check.xpl

echo LMNL syntax checking ... $FILENAME ...
java -Xmx1024m -jar $CALABASH -dtext/plain@$FILENAME $PIPELINE
