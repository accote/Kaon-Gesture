#!/bin/sh

sed -i '' -E -e 's/leptonX?="[a-z]*"/lepton="lepton"/g' -e 's/template id="[a-z]+"/template id="advisor"/g'  -e 's/lepton only.*/lepton only -->/g' -e 's/.*only lepton/<!-- only lepton/g' TEMPLATE.XML
jar cvMf MercuryLepton.ZIP `jar tf Mercury.ZIP`
sed -i '' -E -e 's/leptonX?="[a-z]*"/leptonX=""/g' -e 's/template id="[a-z]+"/template id="mercury"/g' -e 's/lepton only.*/lepton only/g' -e 's/.*only lepton/only lepton/g' TEMPLATE.XML
jar cvMf Mercury.ZIP `jar tf Mercury.ZIP`
