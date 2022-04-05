@echo off
setlocal ENABLEDELAYEDEXPANSION
set Geld=0
echo \---------------------------------------------------\
echo       PokeBatch - Pokemon in einer Batchfile   
echo   \---------------------------------------------------\
pause                              
cls
echo Prof. Oak: Hi. Mein Name is Prof. Oak.
echo Prof. Oak: Willkommen in der Welt von Pokemon!
pause
goto :Namenwaehlen
 
:Namenwaehlen
cls
echo Prof. Oak: Es scheint so als haette ich deinen Namen vergessen. Wie war nochmal?
set /p name=
if '%name%' == '' goto :Namenwaehlen 
cls
echo Hi %name%! Schoen doch wieder zu sehen
pause
cls
echo Prof. Oak: Also %name% wodrauf warten wir? Waehle dein Pokemon.
pause
goto :Pokemonwählen

:Pokemonwählen 
set starter='Bulbasaur' 
cls
echo \---------------------------------------------------\
echo                     Bulbasaur (Lvl 4)                 
echo   \---------------------------------------------------\
 
echo Prof. Oak: Willst du Bulbasaur waehlen?
echo Schreibe y um Bulbasaur zu waehlen
set /p yno=
 
if '%yno%' == 'y' (
    set pokemonname=Bulbasaur
    set pokemonangriff=2
    set pokemonverteidigung=2  
    set MaxHP=44
    set pokemonhp=44
    set pokemonxp=0
    set pokemonlevel=4
    set ArenaSiege=0
    set Anzahltrank=0
    set AnzahlSupertrank=0
    set AnzahlHypertrank=0
    set Attacke1=Blumenwiese
    set Attacke1Schaden=3
    set Attacke2=Bepflanzung
    set Attacke2Schaden=4
    set Attacke3=Blühen
    set Attacke3Schaden=2
    goto :ausgewählt
)
 
cls
echo \---------------------------------------------------\
echo                     Squirtle (Lvl 4)                 
echo   \---------------------------------------------------\
 
echo Prof. Oak: Willst du Squirtle waehlen?
echo Schreibe y um Squirtle zu waehlen 
set /p yno=
 
if '%yno%' == 'y' (
    set pokemonname=Squirtle
    set pokemonangriff=1
    set pokemonverteidigung=3  
    set MaxHP=12
    set pokemonhp=48
    set pokemonxp=0
    set pokemonlevel=4
    set ArenaSiege=0
    set Anzahltrank=0
    set AnzahlSupertrank=0
    set AnzahlHypertrank=0
    set Attacke1=Surfer
    set Attacke1Schaden=3
    set Attacke2=Welle
    set Attacke2Schaden=4
    set Attacke3=Spritzer
    set Attacke3Schaden=2
    goto :ausgewählt
)
 
cls
echo \---------------------------------------------------\
echo                    Charmandar (Lvl 4)                
echo   \---------------------------------------------------\
 
echo Prof. Oak: Willst du Charmandar waehlen?
echo Schreibe y um Charmandar zu waehlen
set /p yno= 
if '%yno%' == 'y' (
    set pokemonname=Charmandar
    set pokemonangriff=2
    set pokemonverteidigung=2  
    set MaxHP=11
    set pokemonhp=44
    set pokemonxp=0
    set pokemonlevel=4
    set ArenaSiege=0
    set Anzahltrank=0
    set AnzahlSupertrank=0
    set AnzahlHypertrank=0
    set Attacke1=Flammensturm
    set Attacke1Schaden=3
    set Attacke2=Vulkan
    set Attacke2Schaden=4
    set Attacke3=Rolle
    set Attacke3Schaden=2
    goto :ausgewählt
)
cls
echo \---------------------------------------------------\
echo                      Pikachu (Lvl 6)                 
echo   \---------------------------------------------------\
echo Prof. Oak: Willst du Pikachu waehlen?
echo Schreibe y um Pikachu zu waehlen 
set /p yno=
 
if '%yno%' == 'y' (
    set pokemonname=Pikachu
    set pokemonangriff=3
    set pokemonverteidigung=1  
    set MaxHP=80
    set pokemonhp=60
    set pokemonxp=0
    set pokemonlevel=6
    set ArenaSiege=0
    set Anzahltrank=0
    set AnzahlSupertrank=0
    set AnzahlHypertrank=0
    set Attacke1=Blitzschlaege
    set Attacke1Schaden=6
    set Attacke2=Donnerblitz
    set Attacke2Schaden=8
    set Attacke3=Verwirrung
    set Attacke3Schaden=4
    goto :ausgewählt
)
goto :Pokemonwählen

:ausgewählt 
cls
echo Prof. Oak: %pokemonname%, eine gute Wahl
echo Prof. Oak: Nun viel Glueck beim Erkunden von der Welt von Pokemon 
pause
goto :Maribou

:Maribou
cls
set /a Needxp=(%pokemonlevel%*100)

If %pokemonxp% GEQ %Needxp% (
    set /a pokemonlevel=%pokemonlevel%+1
    set pokemonxp=0
    echo %pokemonname% ist ein Level aufgestiegen
    echo %pokemonname% ist nun Level %pokemonlevel%
    pause
    cls
)
set /a Angriffswert=(%pokemonlevel%*%pokemonangriff%)
set /a Verteidigung=(%pokemonlevel%*%pokemonverteidigung%)
set /a MaxHP=(%pokemonlevel%*%pokemonmaxhp%)
cls
echo Du bist in Maribou town angekommen.
echo Was willst du tun?
echo 1) Du gehst in dein Haus
echo 2) Gehe ins Pokemoncenter 
echo 3) Gehe ins Pokemonlabor
echo 4) Gehe in die Wildniss
echo 6) Gehe in die Pokemonarena
echo 7) Gehe in den Pokeshop
set /p Maribouoption=Waehle 
if %Maribouoption%==1 (
    goto Haus
)
if %Maribouoption%==2 (
    goto Pokemoncenter
)
if %Maribouoption%==3 (
    goto Pokemonlabor
)
if %Maribouoption%==4 (
    goto Wildniss
)
if %Maribouoption%==6 goto startArena
if %Maribouoption%==7 (
    goto Pokeshop
)
else goto Maribou

:Haus
cls
echo \---------------------------------------------------\
echo                       Dein Haus                      
echo   \---------------------------------------------------\
echo Du bist jetzt zu Hause
echo Was willst du tun?
echo 1) Mit deiner Mutter reden
echo 2) Etwas Essen und dich Ausruhen
echo 3) Zurueck nach Maribou gehen
set /p Hausoption=Waehle
if %Hausoption%==1 goto :Haus_Mutter
if %Hausoption%==2 goto :Haus_Ausruhen
if %Hausoption%==3 goto :Maribou
goto :Haus

:Haus_Mutter
echo Ohh, wie heisst der denn?
pause
cls
echo "%pokemonname%"? Schoener Name fuer so ein Pokemon!
pause
cls
echo Hab dich lieb
pause
cls
echo Bis spaeter
pause
cls
goto :Maribou

:Haus_Ausruhen
cls
echo Deine Mutter: Schoen, dass du mich endlich mal wieder Besuchst
pause
cls
echo Deine Mutter: Komm setzt dich es gibt Pizza
pause
cls
echo Deine Mutter: Und schmeckts?
pause
cls
echo Deine Mutter: Schoen!
pause
cls
echo Du legst dich in dein Bett und schlaefst eine
pause
cls
set pokemonhp=%MaxHP%
cls
echo Du und %pokemonname% habt euch erholt
pause
cls
goto :Maribou

:Pokemoncenter
cls
echo \---------------------------------------------------\
echo                      Pokemoncenter                    
echo   \---------------------------------------------------\
echo Du betritts das Pokemoncenter
echo Was willst du tun?
echo 1) Moechtest du dein Pokemon heilen?
echo 2) Zurueck nach Maribou
set /p Pokemoncenteroptionen=Waehle
 
if %Pokemoncenteroptionen%==1 goto :Pokemoncenter_heilen
if %Pokemoncenteroptionen%==2 goto :Maribou
goto :Pokemoncenter

:Pokemoncenter_heilen
cls
echo Jessie: Hallo, ich bin Jessie. Was kann ich fuer dich tun?
pause
cls
echo Jessie: Du willst das ich deine Pokemonsheile?
pause
cls
echo Jessie: Ok, warte kurz
pause
set pokemonhp=%MaxHP%
cls
echo Jessie: Hier ist %pokemonname%. Fit und Gesund ;-)
pause
cls
echo Jessie: Bitte schoen und bis spaeter
pause
cls
goto :Pokemoncenter

:Pokemonlabor
cls
echo \---------------------------------------------------\
echo                       PokemonLabor                   
echo   \---------------------------------------------------\
echo Du betrittst das Labor
echo 1) Spreche mit Professor Oak
echo 2) Zurueck nach Maribou
set /p Pokemonlaborauswahl=
if %Pokemonlaborauswahl%==1 goto :Pokemonlabor_sprechen
if %Pokemonlaborauswahl%==2 goto :Maribou
 
:Pokemonlabor_sprechen
if %ArenaSiege% GEQ 1 (
    echo Du hast deinen ersten Sieg!!!
    echo Herzlichen Glueckwunsch
    pause
    cls
    goto :Maribou
)
cls
echo Prof Oak: Oh, Hallo %name% Ich bin sehr beschäftig gerade.
echo Prof Oak: Melde dich wenn du den ersten Kampf gewonnen hast.
pause
goto :Maribou

:Wildniss
cls
echo Du gehst einen Weg nach Osten
echo Plotzlich huscht etwas schnell um dch herum
pause
cls
set /a r=%random% %%!3 +1
if '%r%' == '0' (
    set wildespokemonname=Caterpie
    goto :wildespokemonerscheint
)
if '%r%' == '1' (
    set wildespokemonname=Oddish
    goto :wildespokemonerscheint
)
if '%r%' == '2' (
    set wildespokemonname=Rattata
    goto :wildespokemonerscheint
)
if '%r%' == '3' (
    set wildespokemonname=Cubone
    goto :wildespokemonerscheint
)

:wildespokemonerscheint
set /a level=%random% %%!"%pokemonlevel%"
set /a wildespokemonlevel=(%level%+1)
set /a wildespokemonattacke=(%wildespokemonlevel%)
set /a wildespokemonverteidigung=(%wildespokemonlevel%)
set /a wildespokemonmaxHp=(%wildespokemonlevel%*10)
set /a wildespokemonHp=%wildespokemonmaxHp%

echo %wildespokemonname% Level %wildespokemonlevel% erscheint
echo Los, %pokemonname% schnapp ihn dir!
goto :Kampfrundepokemon


:Kampfrundepokemon
cls
echo \---------------------------------------------------\
echo                    %wildespokemonname% (Lvl %wildespokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %wildespokemonHp%
echo.
echo.
echo \---------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %pokemonhp%
echo.
echo.
echo Was soll %pokemonname% tun?
echo.
echo Wähle
echo 1) Attacke
echo 2) Iteams
echo 3) Weglaufen
set /p Kampfrundepokemonauswahl=:
if %Kampfrundepokemonauswahl%==1 goto :Kampfrundepokemon_attacke
if %Kampfrundepokemonauswahl%==2 goto :Kampfrundepokemon_Iteams
if %Kampfrundepokemonauswahl%==3 goto :Kampfrundepokemon_weglaufen
goto :Kampfrundepokemon

:Kampfrundepokemon_attacke
cls
echo Wähle eine Attacke
echo 1) %Attacke1%
echo 2) %Attacke2%
echo 3) %Attacke3%
set /p Kampfrundepokemon_attackeoptionen=Eingeben:
if %Kampfrundepokemon_attackeoptionen%==1 (
    set /a Schadenanwildespokemon=(%pokemonangriff%*%Attacke1Schaden%)
    goto :Kampfrundewildespokemon
if %Kampfrundepokemon_attackeoptionen%==2 (
    set /a Schadenanwildespokemon=(%pokemonangriff%*%Attacke2Schaden%)
    goto :Kampfrundewildespokemon
if %Kampfrundepokemon_attackeoptionen%==3 (
    set /a Schadenanwildespokemon=(%pokemonangriff%*%Attacke3Schaden%)
    goto :Kampfrundewildespokemon
goto :Kampfrundepokemon_attacke 

:Kampfrundepokemon_Iteams
cls
echo Du hast:
echo 1) %Anzahltrank% Trank/Tränke
echo 2) %AnzahlSupertrank% Supertrank/Supertränke
echo 3) %AnzahlHypertrank% Hypertrank/Hypertänke
echo 4) Zurück
echo Was willst du einsetzten/tun?
set /p Kampfrundepokemon_Iteamsauswahl=:
if %Kampfrundepokemon_Iteamsauswahl%==1 goto :Kampfrundepokemon_Iteams_1
if %Kampfrundepokemon_Iteamsauswahl%==2 goto :Kampfrundepokemon_Iteams_2
if %Kampfrundepokemon_Iteamsauswahl%==3 goto :Kampfrundepokemon_Iteams_3
if %Kampfrundepokemon_Iteamsauswahl%==4 goto :Kampfrundepokemon_attacke

:Kampfrundepokemon_Iteams_1
echo Du willst einen Trank einsetzten
if %Anzahltrank% GEQ 1 (
    echo du setzt Trank ein
    pause
    set /a Hilfswert1=(pokemonmaxhp-pokemonhp)
    if %Hilfswert1% GEQ 20 (
        set /a pokemonhp=(pokemonhp+20)
        goto :Kampfrundewildespokemon 
        )
    set pokemonhp=%pokemonmaxhp%
    goto :Kampfrundewildespokemon
)
if %Anzahltrank% LSS 1 (
    echo Du hast aber keinen Trank!
    pause
    goto :Kampfrundepokemon_attacke    
)

:Kampfrundepokemon_Iteams_2
echo Du willst einen Supertrank einsetzten    
if %AnzahlSupertrank% GEQ 1 (
    echo Du setzt Supertrank ein
    set /a Hilfswert1=(pokemonmaxhp-pokemonhp)
    if %Hilfswert1% GEQ 50 (
        set /a pokemonhp=(pokemonhp+50)
        goto :Kampfrundewildespokemon
        )
    set pokemonhp=%pokemonmaxhp%
    goto :Kampfrundewildespokemon
)
if %AnzahlSupertrank% LSS 1 (
    echo Du hast aber keinen Trank!
    pause
    goto :Kampfrundepokemon_attacke    
)   
    
:Kampfrundepokemon_Iteams_3
echo Du willst einen Supertrank einsetzten    
if %AnzahlHypertrank% GEQ 1 (
    echo Du setzt Supertrank ein
    set /a Hilfswert1=(pokemonmaxhp-pokemonhp)
    if %Hilfswert1% GEQ 100 (
        set /a pokemonhp=(pokemonhp+100)
        goto :Kampfrundewildespokemon
        )
    set pokemonhp=%pokemonmaxhp%
    goto :Kampfrundewildespokemon

)
if %AnzahlHypertrank% LSS 1 (
    echo Du hast aber keinen Trank!
    pause
    goto :Kampfrundepokemon_attacke   
)   

:Kampfrundepokemon_weglaufen
echo Du probierst wegzulaufen
set /a r2=%random% %%!3 +1 
if %r2%==0 (
    echo %pokemonname% weigert sich zu gehen
    goto :Kampfrundewildespokemon 
)
echo Du konntes Weglaufen
goto :Maribou


:Kampfrundewildespokemon
set /a wildespokemonHp=%wildespokemonHp%-(%Schadenanwildespokemon%+%wildespokemonverteidigung%)
cls
echo \---------------------------------------------------\
echo                    %wildespokemonname% (Lvl %wildespokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %wildespokemonHp%
echo.
echo.
echo \---------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %pokemonhp%
pause
cls
if %wildespokemonHp% LEQ 0 goto :pokemongewonnen
pause
echo %wildespokemonname% setzt Tackel ein.
pause
cls
set /a Schadenanpokemon=%wildespokemonlevel%
set /a pokemonhp=(pokemonhp-(Schadenanpokemon-pokemonverteidigung))
if %pokemonhp% LEQ 0 goto :wildespokemongewonnen
cls
echo \---------------------------------------------------\
echo                    %wildespokemonname% (Lvl %wildespokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %wildespokemonHp%
echo.
echo.
echo \---------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %pokemonhp%
pause
goto Kampfrundepokemon

:pokemongewonnen
cls
echo Du hast gewonnen
pause
set /a GewonnenesGeld=(%wildespokemonlevel%*20)
set /a Gewonnenxp=(wildespokemonlevel*50)
echo %pokemonname% hat %Gewonnenxp% bekommen
pause
set /a pokemonxp=(%pokemonxp%+%Gewonnenxp%)
set /a Geld=(%Geld%+%GewonnenesGeld%)
goto Maribou

:wildespokemongewonnen
cls
echo Du hast verloren
echo %pokemonname% ist verletzt und kann nicht mehr kämpfen
pause
set /a Gewonnenxp=(wildespokemonlevel*1)
echo %pokemonname% hat %Gewonnenxp% bekommen
pause
set /a pokemonxp=(%pokemonxp%+%Gewonnenxp%)
goto Maribou

:startArena
if %ArenaSiege% == 0 (
    cls
    echo Willkommen in der Pokemonarena, Frischling
    echo Ich werde dir erklären was du tun musst!
    echo Eigentlich ist es ganz einfach!
    echo Du musst 3 Trainer besiegen in einem 1vs1 ohne ins Pokemoncenter zugehen
    echo Und zum Schluss kämpst du dann gegen Besitzer
    echo die Pokemon werden Level 7 sein
    echo Bereit?
    echo schreib y wenn du starten willst
    set /p Arena1auswahl=?
    if not %Arena1auswahl%==y (
        goto Maribou
    )
    cls
    set Kampf=0
    echo Gut dann lass uns beginnen
    echo Trainer setzt eure Pokemons ein!!!
    pause
    cls
    set Arenapokemonname=Taubsi
    set ArenaPokemonlevel=7
    goto :Arenakampfstart
)
if %ArenaSiege% == 1 (
    echo Du bist es wieder!
    echo Na suchst du wieder nen Kampf?
    echo Denn sollst du bekommen
    echo Nun haben die Pokemon Level von 12 
    echo Also wollen wir starten?
    echo Dann tippe y ein
    set /p Arena2auswahl=
    if not %Arena2auswahl%==y (
        goto Maribou
    )
    cls
    set Kampf=0
    echo Ja, dann viel Glück
    echo Pokemontrainer:
    echo Setzt eure Pokemons einsetzten
    pause
    cls
    set Arenapokemonname=Machomei
    set ArenaPokemonlevel=12
    goto :Arenakampfstart
)
if %ArenaSiege% == 2 (
    echo Na suchst du die Niederlage?
    echo Die sollst du bekommen!
    echo Nun haben die Pokemon Level von 25 
    echo Also wollen wir starten?
    echo Dann tippe y ein
    set /p Arena3auswahl=
    if not %Arena3auswahl%==y (
        goto Maribou
    )
    cls
    set Kampf=0
    echo Ja, dann viel Glück
    echo Pokemontrainer:
    echo Setzt eure Pokemons einsetzten
    pause
    cls
    set Arenapokemonname=Nidoking
    set ArenaPokemonlevel=25
    goto :Arenakampfstart
)
if %ArenaSiege% == 3 (
    echo Wir werden dich diesmal aufhalten!
    echo Nun haben die Pokemon Level von 50
    echo Also wollen wir starten?
    echo Dann tippe y ein
    set /p Arena4auswahl=
    if not %Arena4auswahl%==y (
        goto Maribou
    )
    cls
    set Kampf=0
    echo Ja, dann viel Glück
    echo Pokemontrainer:
    echo Setzt eure Pokemons einsetzten
    pause
    cls
    set Arenapokemonname=Bisaflor
    set ArenaPokemonlevel=50
    goto :Arenakampfstart
)
if %ArenaSiege% == 4 (
    echo Wir werden dich diesmal aufhalten!
    echo Nun haben die Pokemon Level von 100
    echo Also wollen wir starten?
    echo Dann tippe y ein
    set /p Arena5auswahl=
    if not %Arena5auswahl%==y (
        goto Maribou
    )
    cls
    set Kampf=0
    echo Ja, dann viel Glück
    echo Pokemontrainer:
    echo Setzt eure Pokemons einsetzten
    pause
    cls
    set Arenapokemonname=Dragoran
    set ArenaPokemonlevel=100
    goto :Arenakampfstart
)

:Arenakampfstart

set /a Kampf=(%Kampf%+1)
if %Kampf%==5 (
    echo Du hast gewonnen
    echo Herzlichen Glückwunsch!!!
    pause
    set /a ArenaSiege=(ArenaSiege+1)
    cls
    goto :Maribou
)
echo Dann lass uns kämpfen
pause
cls
set /a Arenapokemonverteidigung=(%ArenaPokemonlevel%)
set /a Arenapokemonattacke=(%ArenaPokemonlevel%)
set /a ArenapokemonmaxHp=(%level%*10)
set /a ArenapokemonHp=(%ArenapokemonmaxHp%)
cls
echo Das ist %pokemonname%´s %Kampf%. Kampf!
echo Trainer setzt %Arenapokemonname% level %ArenaPokemonlevel%
echo Kämpft Trainer
goto :Kampfrundepokemon_Arena

:Kampfrundepokemon_Arena
cls
echo \---------------------------------------------------\
echo                    %Arenapokemonname% (Lvl %Arenapokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %ArenapokemonHp%
echo.
echo.
echo \---------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %pokemonhp%
echo.
echo.
echo Was soll %pokemonname% tun?
echo.
echo Wähle
echo 1) Attacke
echo 2) Iteams
echo 3) Weglaufen
set /p Kampfrundepokemonauswahl=:
if %Kampfrundepokemonauswahl%==1 goto :Kampfrundepokemon_attacke_arena
if %Kampfrundepokemonauswahl%==2 goto :Kampfrundepokemon_Iteams_arena
if %Kampfrundepokemonauswahl%==3 goto :Kampfrundepokemon_weglaufen_arena
goto :Kampfrundepokemon_Arena

:Kampfrundepokemon_attacke_arena
cls
echo Wähle eine Attacke
echo 1) %Attacke1%
echo 2) %Attacke2%
echo 3) %Attacke3%
set /p Kampfrundepokemon_attackeoptionen_arena=Eingeben:
if %Kampfrundepokemon_attackeoptionen_arena%==1 (
    set /a SchadenanArenapokemon=(%pokemonangriff%*%Attacke1Schaden%)
    goto KampfrundeArenapokemon
if %Kampfrundepokemon_attackeoptionen_arena%==2 (
    set /a SchadenanArenapokemon=(%pokemonangriff%*%Attacke2Schaden%)
    goto KampfrundeArenapokemon
if %Kampfrundepokemon_attackeoptionen_arena%==3 (
    set /a SchadenanArenapokemon=(%pokemonangriff%*%Attacke3Schaden%)
    goto KampfrundeArenapokemon
goto Kampfrundepokemon_attacke_arena

:Kampfrundepokemon_Iteams_arena
cls
echo Du hast:
echo 1) %Anzahltrank% Trank/Tränke
echo 2) %AnzahlSupertrank% Supertrank/Supertränke
echo 3) %AnzahlHypertrank% Hypertrank/Hypertänke
echo 4) Zurück
echo Was willst du einsetzten/tun?
set /p Kampfrundepokemon_Iteamsauswahl_arena=:
if %Kampfrundepokemon_Iteamsauswahl_arena%==1 goto Kampfrundepokemon_Iteams_1_arena
if %Kampfrundepokemon_Iteamsauswahl_arena%==2 goto Kampfrundepokemon_Iteams_2_arena
if %Kampfrundepokemon_Iteamsauswahl_arena%==3 goto Kampfrundepokemon_Iteams_3_arena

:Kampfrundepokemon_Iteams_1_arena
echo Du willst einen Trank einsetzten
if %Anzahltrank% GEQ 1 (
    echo du setzt Trank ein
    set /a Hilfswert1=(pokemonmaxhp-pokemonhp)
    if %Hilfswert1% GEQ 20 (
        set /a pokemonhp=(pokemonhp+20)
        goto :KampfrundeArenapokemon 
        )
    set pokemonhp=%pokemonmaxhp%
)
if %Anzahltrank% LSS 1 (
    echo Du hast aber keinen Trank!
    goto :Kampfrundepokemon_Iteams_arena    
)

:Kampfrundepokemon_Iteams_2_arena
echo Du willst einen Supertrank einsetzten    
if %AnzahlSupertrank% GEQ 1 (
    echo Du setzt Supertrank ein
    set /a Hilfswert1=(pokemonmaxhp-pokemonhp)
    if %Hilfswert1% GEQ 50 (
        set /a pokemonhp=(pokemonhp+50)
        goto :KampfrundeArenapokemon
        )
    set pokemonhp=%pokemonmaxhp%

)
if %AnzahlSupertrank% LSS 1 (
    echo Du hast aber keinen Trank!
    goto :Kampfrundepokemon_Iteams_arena    
)   
    
:Kampfrundepokemon_Iteams_3_arena
echo Du willst einen Supertrank einsetzten    
if %AnzahlHypertrank% GEQ 1 (
    echo Du setzt Supertrank ein
    set /a Hilfswert1=(pokemonmaxhp-pokemonhp)
    if %Hilfswert1% GEQ 100 (
        set /a pokemonhp=(pokemonhp+100)
        goto :KampfrundeArenapokemon
        )
    set pokemonhp=%pokemonmaxhp%

)
if %AnzahlHypertrank% LSS 1 (
    echo Du hast aber keinen Trank!
    goto :Kampfrundepokemon_Iteams_arena   
)   

:Kampfrundepokemon_weglaufen_arena
echo Du konntes Weglaufen
pause
goto :Maribou


:KampfrundeArenapokemon
set /a ArenapokemonHp=(%ArenapokemonHp%-(SchadenanArenapokemon-Arenapokemonverteidigung))
cls
echo \---------------------------------------------------\
echo                    %Arenapokemonname% (Lvl %Arenapokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %Arenapokemonlevel%
echo.
echo.
echo \---------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %pokemonhp%
pause
cls
if %ArenapokemonHp% LEQ 0 goto :pokemongewonnen_arena
pause
echo %Arenapokemonname% setzt eine Attacke ein.
pause
cls
set /a Schadenanpokemon_arena=(2*%Arenapokemonlevel%)
set /a pokemonhp=(pokemonhp-(Schadenanpokemon_arena-pokemonverteidigung))
if %pokemonhp% LEQ 0 goto :Arenapokemongewonnen
cls
echo \---------------------------------------------------\
echo                    %Arenapokemonname% (Lvl %Arenapokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %Arenapokemonlevel%
echo.
echo.
echo \---------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------\
echo.
echo HP: %pokemonhp%
pause
goto :Kampfrundepokemon_Arena

:pokemongewonnen_arena
cls
echo Du hast gewonnen
pause
set /a GewonnenesGeld=(%wildespokemonlevel%*20)
set /a Gewonnenxp=(wildespokemonlevel*50)
echo %pokemonname% hat %Gewonnenxp% bekommen
pause
set /a pokemonxp=(%pokemonxp%+%Gewonnenxp%)
set /a Geld=(%Geld%+%GewonnenesGeld%)
goto :Arenakampfstart

:Arenapokemongewonnen
cls
echo Du hast verloren
echo %pokemonname% ist verletzt und kann nicht mehr kämpfen
pause
set /a Gewonnenxp=(wildespokemonlevel*1)
echo %pokemonname% hat %Gewonnenxp% bekommen
pause
set /a pokemonxp=(%pokemonxp%+%Gewonnenxp%)
goto :Maribou

:Pokeshop
cls
echo Willkommen im Pokeshop
echo Wie kann ich dir helfen?
echo 1) Etwas Kaufen 
echo 2) Weggehen
set /p Pokeshopauswahl=:

if %Pokeshopauswahl%==1 (
    echo "Was willst du kaufen?"
    echo "1) Trank (Du bestitzt %Anzahltrank%)"
    echo "2) Supertrank (Du bestitzt %AnzahlSupertrank%)"
    echo "3) Hypertrank (Du bestitzt %AnzahlHypertrank%)"
    set /p Pokeshop_kaufenauswahl=:
    if %Pokeshop_kaufenauswahl%==1 (
        if %Geld% GEQ 10 (
            set /a Anzahltrank=(%Anzahltrank%+1)
            set /a Geld=(%Geld%-10)
            cls
            echo Du hast einen Trank gekauft 
            echo Du hast nun %Anzahltrank%
            pause  
            goto :Pokeshop
        )
        if %Geld% LSS 10 (
            echo Du hast zu wenig Geld
            pause
            cls
            echo Du hast %Geld% und du brauchst 10
            pause
            cls
            goto :Pokeshop
        )
        echo Fehler
        echo Sorry
        pause
        cls
        :Pokeshop
    )
    if %Pokeshop_kaufenauswahl%==2 (
        if %Geld% GEQ 25 (
            set /a AnzahlSupertrank=(%AnzahlSupertrank%+1)
            set /a Geld=(%Geld%-25)
            cls
            echo Du hast einen Trank gekauft 
            echo Du hast nun %AnzahlSupertrank%
            pause  
            goto :Pokeshop
        )
        if %Geld% LSS 10 (
            echo Du hast zu wenig Geld
            pause
            cls
            echo Du hast %Geld% und du brauchst 25
            pause
            cls
            goto :Pokeshop
        )
        echo Fehler
        echo Sorry
        pause
        cls
        :Pokeshop
    )
    if %Pokeshop_kaufenauswahl%==3 (
        if %Geld% GEQ 50 (
            set /a AnzahlHypertrank=(%AnzahlHypertrank%+1)
            set /a Geld=(%Geld%-50)
            cls
            echo Du hast einen Trank gekauft 
            echo Du hast nun %AnzahlHypertrank%
            pause  
            goto :Pokeshop
        )
        if %Geld% LSS 50 (
            echo Du hast zu wenig Geld
            pause
            cls
            echo Du hast %Geld% und du brauchst 50
            pause
            cls
            goto :Pokeshop
        )
        echo Fehler
        echo Sorry
        pause
        cls
        :Pokeshop
    )
    goto :Pokeshop
)
if %Pokeshopauswahl%==2 (
    echo Na gut, dann nicht
    echo Aufwieder sehen
    echo Arschloch
    pause
    cls
    goto :Pokeshop
)
goto :Pokeshop