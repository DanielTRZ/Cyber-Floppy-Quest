
10 REM --- RETRO CYBER-FLOPPY QUEST 1995 ---
20 CLS
30 COLOR 11, 0: PRINT "========================================"
40 COLOR 13, 0: PRINT "      CYBER-FLOPPY QUEST v1.0          "
50 COLOR 11, 0: PRINT "========================================"
60 COLOR 7, 0: PRINT "Witaj, hakerze! / Welcome, hacker!"
70 LET DATASTACK = 0
80 LET ENERGY = 100
90 LET POWER = 1

100 REM --- GŁÓWNA PĘTLA GRY / MAIN GAME LOOP ---
110 COLOR 10, 0: PRINT ""
120 PRINT "Data Stack: "; DATASTACK; " KB  |  Energy: "; ENERGY; "%"
130 PRINT "----------------------------------------"
140 COLOR 7, 0
150 PRINT "1. Hack system (+"; POWER; " KB, -10 Energy)"
160 PRINT "2. Download RAM Upgrade (Cost: "; (POWER * 15); " KB)"
170 PRINT "3. Rest / Odpoczynek (+40 Energy)"
180 PRINT "4. Exit / Wyjscie"
190 PRINT ""
200 INPUT "Wybierz opcje (1-4): ", CHOICE

210 IF CHOICE = 1 THEN GOTO 300
220 IF CHOICE = 2 THEN GOTO 400
230 IF CHOICE = 3 THEN GOTO 500
240 IF CHOICE = 4 THEN GOTO 600
250 PRINT "Zly wybor! / Invalid choice!": GOTO 100

300 REM --- AKCJA 1: HAKOWANIE / ACTION 1: HACKING ---
310 IF ENERGY < 10 THEN PRINT "Za malo energii! / Not enough energy!": GOTO 100
320 LET DATASTACK = DATASTACK + POWER
330 LET ENERGY = ENERGY - 10
340 CLS: COLOR 11, 0: PRINT ">>> System zhakowany! / System hacked! <<<"
350 GOTO 100

400 REM --- AKCJA 2: ULEPSZENIE / ACTION 2: UPGRADE ---
410 LET COST = POWER * 15
420 IF DATASTACK < COST THEN PRINT "Za malo danych! / Not enough data!": GOTO 100
430 LET DATASTACK = DATASTACK - COST
440 LET POWER = POWER + 1
450 CLS: COLOR 13, 0: PRINT ">>> RAM Uaktualniony! / RAM Upgraded! <<<"
460 GOTO 100

500 REM --- AKCJA 3: ODPOCZYNEK / ACTION 3: REST ---
510 LET ENERGY = ENERGY + 40
520 IF ENERGY > 100 THEN LET ENERGY = 100
530 CLS: COLOR 10, 0: PRINT ">>> Odpoczales. / Rested. <<<"
540 GOTO 100

600 REM --- KONIEC GRY / GAME OVER ---
610 CLS: COLOR 12, 0
620 PRINT "Koniec programu. Udalo Ci sie zebrac: "; DATASTACK; " KB!"
630 PRINT "Goodbye, Hacker."
640 END

