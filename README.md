# Drum Maschine
Drum Maschine implemented for an FPGA in VHDL and C. Students Project for the DTS Course of WS 19/20

## Organisation

Im Reiter *Projects* findet Ihr die einzelnen Projekte zu Hardware, Software und der Schnittstelle. Dort könnt ihr Dinge auf die ToDo-Liste setzen, Sachen als "in Bearbeitung durch euch" markieren und euren Fortschritt für alle Sichtbar machen. 

Bei der zweiten Beprechung sollten wir diese ToDo-Listen grob gefüllt haben. Zur Bearbeitung macht euch innerhalb der Repo gerne eigene Ordner und probiert Sachen aus. **WICHTIG:** Niemals in die master-Branch pushen. Eventuell überschreibt ihr funktionierenden Code und zerstört etwas. Erstellt lieber eine eigene Branch mit dem Namen des Changes den Ihr gemacht habt und macht einen Pull Request für die master-Branch. Dann wird da zumindest von einem von uns noch einmal drübergeschaut.

## Namesgebung der Branches

Bitte benennt alle Projektrelevanten Branches mit einem jeweilig passenden Präfix, die ich hier aufliste:

Hardware: hw_*
Software: sw_*
Schnittstelle: ss_*

Bsp: hw_Step_Counter wäre ein gültiger Name für einen in der Hardware implementierten Step Counter usw.

## Beispiel zum "Idealen" Workflow mit Git und Projects

1. Aus ToDo Liste einen Punkt (bspw. Step Counter) in "in Progress" verschieben
2. Branch "hw_Step_Counter" anlegen
3. Eine Lösung innerhalb dieser Branch programmieren und *committen*
4. Die Lösung grob auf Fehler testen
5. Die Branch "hw_Step_Counter" in GitHub *pushen*
6. Einen *Pull Request* von "hw_Step_Counter" nach "master" erstellen
7a. Wenn alles gut aussieht wird der Pull Request *gemerged* - heißt die Änderung ist nun im Hauptprogramm. Jetzt zu Schritt 8.
7b. Wenn ein Fehler zu sehen ist geht der Pull Request zurück mit weiteren Informationen. Zurück zu Schritt 3.
8. Im Project die Karte nun auf "Done" verschieben. Fertig!
