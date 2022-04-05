@echo off
setlocal ENABLEDELAYEDEXPANSION
set Geld=0
echo \---------------------------------------------------------\
echo       PokeBatch - Pokemon in einer Batchfile   
echo   \---------------------------------------------------------\
pause                              
cls
echo Prof. Oak: Hi. Mein Name is Prof. Oak.
echo Prof. Oak: Willkommen in der Welt von Pokemon!
pause
goto Namenwaehlen
 
:Namenwaehlen
cls
echo Prof. Oak: Es scheint so als haette ich deinen Namen vergessen. Wie war nochmal?
set /p name=
if '%name%' == '' goto Namenwaehlen 
cls
echo Hi %name%! Schoen doch wieder zu sehen
pause
cls
echo Prof. Oak: Also %name% wodrauf warten wir? Waehle dein Pokemon.
pause
goto Pokemonwählen

:Pokemonwählen 
set starter='Bulbasaur' 
cls
echo \---------------------------------------------------------\
echo                     Bulbasaur (Lvl 4)                 
echo   \---------------------------------------------------------\
 
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
    goto ausgewählt
)
 
cls
echo \---------------------------------------------------------\
echo                     Squirtle (Lvl 4)                 
echo   \---------------------------------------------------------\
 
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
    goto ausgewählt
)
 
cls
echo \---------------------------------------------------------\
echo                    Charmandar (Lvl 4)                
echo   \---------------------------------------------------------\
 
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
    goto ausgewählt
)
cls
echo \---------------------------------------------------------\
echo                      Pikachu (Lvl 6)                 
echo   \---------------------------------------------------------\
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
    set Anzahltrank=10
    set AnzahlSupertrank=10
    set AnzahlHypertrank=10
    set Attacke1=Blitzschlaege
    set Attacke1Schaden=6
    set Attacke2=Donnerblitz
    set Attacke2Schaden=8
    set Attacke3=Verwirrung
    set Attacke3Schaden=4
    goto ausgewählt
)
goto Pokemonwählen

:ausgewählt 
cls
echo Prof. Oak: %pokemonname%, eine gute Wahl
echo Prof. Oak: Nun viel Glueck beim Erkunden von der Welt von Pokemon 
pause
goto Maribou

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
else goto Maribou

:Haus
cls
echo \---------------------------------------------------------\
echo                       Dein Haus                      
echo   \---------------------------------------------------------\
echo Du bist jetzt zu Hause
echo Was willst du tun?
echo 1) Mit deiner Mutter reden
echo 2) Etwas Essen und dich Ausruhen
echo 3) Zurueck nach Maribou gehen
set /p Hausoption=Waehle
if %Hausoption%==1 goto Haus_Mutter
if %Hausoption%==2 goto Haus_Ausruhen
if %Hausoption%==3 goto Maribou
goto Haus

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
goto Maribou

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
goto Maribou

:Pokemoncenter
cls
echo \---------------------------------------------------------\
echo                      Pokemoncenter                    
echo   \---------------------------------------------------------\
echo Du betritts das Pokemoncenter
echo Was willst du tun?
echo 1) Moechtest du dein Pokemon heilen?
echo 2) Zurueck nach Maribou
set /p Pokemoncenteroptionen=Waehle
 
if %Pokemoncenteroptionen%==1 goto Pokemoncenter_heilen
if %Pokemoncenteroptionen%==2 goto Maribou
goto Pokemoncenter

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
goto Pokemoncenter

:Pokemonlabor
cls
echo \---------------------------------------------------------\
echo                       PokemonLabor                   
echo   \---------------------------------------------------------\
echo Du betrittst das Labor
echo 1) Spreche mit Professor Oak
echo 2) Zurueck nach Maribou
set /p Pokemonlaborauswahl=
if %Pokemonlaborauswahl%==1 goto Pokemonlabor_sprechen
if %Pokemonlaborauswahl%==2 goto Maribou
 
:Pokemonlabor_sprechen
if %ArenaSiege% GEQ 1 (
    echo Du hast deinen ersten Sieg!!!
    echo Herzlichen Glueckwunsch
    pause
    cls
    goto Maribou
)
cls
echo Prof Oak: Oh, Hallo %name% Ich bin sehr beschäftig gerade.
echo Prof Oak: Melde dich wenn du den ersten Kampf gewonnen hast.
pause
goto Maribou

:Wildniss
cls
echo Du gehst einen Weg nach Osten
echo Plotzlich huscht etwas schnell um dch herum
pause
cls
set /a r=%random% %%!3 +1
if '%r%' == '0' (
    set wildespokemonname=Caterpie
    goto wildespokemonerscheint
)
if '%r%' == '1' (
    set wildespokemonname=Oddish
    goto wildespokemonerscheint
)
if '%r%' == '2' (
    set wildespokemonname=Rattata
    goto wildespokemonerscheint
)
if '%r%' == '3' (
    set wildespokemonname=Cubone
    goto wildespokemonerscheint
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
goto Kampfrundepokemon


:Kampfrundepokemon
cls
echo \---------------------------------------------------------\
echo                    %wildespokemonname% (Lvl %wildespokemonlevel%)                
echo   \---------------------------------------------------------\
echo.
echo HP: %wildespokemonHp%
echo.
echo.
echo \---------------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------------\
echo.
echo HP: %pokemonhp%
echo.
echo.
echo Was soll %pokemonname% tun?
echo.
echo Wähle
echo 1) Attacke
echo 2) Weglaufen
set /p Kampfrundepokemonauswahl=:
if %Kampfrundepokemonauswahl%==1 goto Kampfrundepokemon_attacke
if %Kampfrundepokemonauswahl%==2 goto Kampfrundepokemon_weglaufen
goto Kampfrundepokemon

:Kampfrundepokemon_attacke
cls
echo Wähle eine Attacke
echo 1) %Attacke1%
echo 2) %Attacke2%
echo 3) %Attacke3%
set /p Kampfrundepokemon_attackeoptionen=Eingeben:
if %Kampfrundepokemon_attackeoptionen%==1 (
    set /a Schadenanwildespokemon=(%pokemonangriff%*%Attacke1Schaden%)
    goto Kampfrundewildespokemon
if %Kampfrundepokemon_attackeoptionen%==2 (
    set /a Schadenanwildespokemon=(%pokemonangriff%*%Attacke2Schaden%)
    goto Kampfrundewildespokemon
if %Kampfrundepokemon_attackeoptionen%==3 (
    set /a Schadenanwildespokemon=(%pokemonangriff%*%Attacke3Schaden%)
    goto Kampfrundewildespokemon
goto Kampfrundepokemon_attacke 

:Kampfrundepokemon_weglaufen
echo Du probierst wegzulaufen
set /a r2=%random% %%!3 +1 
if %r2%==0 (
    echo %pokemonname% weigert sich zu gehen
    goto Kampfrundewildespokemon 
)
echo Du konntes Weglaufen
goto Maribou


:Kampfrundewildespokemon
pause
cls
set /a wildespokemonHp=%wildespokemonHp%-(%Schadenanwildespokemon%+%wildespokemonverteidigung%)
cls
echo \---------------------------------------------------------\
echo                    %wildespokemonname% (Lvl %wildespokemonlevel%)                
echo   \---------------------------------------------------------\
echo.
echo HP: %wildespokemonHp%
echo.
echo.
echo \---------------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------------\
echo.
echo HP: %pokemonhp%
pause
cls
if %wildespokemonHp% LEQ 0 goto pokemongewonnen
pause
echo %wildespokemonname% setzt Tackel ein.
pause
cls
set /a Schadenanpokemon=%wildespokemonlevel%
set /a pokemonhp=(pokemonhp-(Schadenanpokemon-pokemonverteidigung))
if %pokemonhp% LEQ 0 goto wildespokemongewonnen
cls
echo \---------------------------------------------------------\
echo                    %wildespokemonname% (Lvl %wildespokemonlevel%)                
echo   \---------------------------------------------------------\
echo.
echo HP: %wildespokemonHp%
echo.
echo.
echo \---------------------------------------------------------\
echo                    %pokemonname% (Lvl %pokemonlevel%)                
echo   \---------------------------------------------------------\
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