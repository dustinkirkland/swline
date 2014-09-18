program swline;

uses crt;

const d = 100;

type wholenum = 1..100;
     listtype = array [1..100] of integer;
     possiblenames = array [1..27] of string;
var
  x, y, i, percent, num, ssound, count, line, c, a, correct : integer;
  s, whatmov : string;
  acceptible, ready : boolean;
  timerec, pauser : real;
  ndex : wholenum;
  thelist, thelist1, thelist2, thelist3 : listtype;
  movie, nlength : integer;
  soundch, sentinel : char;
  n : possiblenames;
  bigthree : 1..3;

procedure writestar;
  begin
        gotoxy (x, y);
        case random (20) of
          0 : textcolor (lightgray);
          1 : textcolor (lightgray+blink);
          2 : textcolor (blue);
          3 : textcolor (lightblue);
          4 : textcolor (cyan);
          5 : textcolor (lightcyan);
          6 : textcolor (white+blink);
          else textcolor (white);
         end;
        case random (20) of
          1 : write (';');
          2 : write (':');
          3 : write ('''');
          4 : write (',');
          5 : write ('"');
          6 : write ('`');
          7 : write ('~');
          8 : write ('@');
          9 : write ('*');
          10 : write ('*');
          11 : write ('*');
          else write ('.');
         end;
      if soundch in ['y', 'Y'] then sound (random (1500));
   end;


procedure opensw;
  begin
    textcolor (white);
    clrscr;
    for i := 1 to 25 do
      writeln;
    delay (5 * d);
    textcolor (yellow);
    delay (d);
writeln('    ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»  ');
    delay (d);
writeln('    º     ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄ¿        º  ');
    delay (d);
writeln('    º     ³  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿  ÚÄÄÄÄÄÙ ³  ÚÄÄÄÄÄ¿  ³ ³  ÚÄÄÄ¿  ³        º  ');
    delay (d);
writeln('    º     ³  ÀÄÄÄÄÄÄ¿      ³  ³       ³  ÀÄÄÄÄÄÙ  ³ ³  ÀÄÄÄÙ  ³        º  ');
    delay (d);
writeln('    º     ÀÄÄÄÄ¿    ³      ³  ³       ³  ÚÄÄÄÄÄ¿  ³ ³  ÚÄ¿   ÚÙ        º  ');
    delay (d);
writeln('    º ÚÄÄÄÄÄÄÄÄÙ    ³      ³  ³       ³  ³     ³  ³ ³  ³ ³   ÀÄÄÄÄÄÄÄ¿ º  ');
    delay (d);
writeln('    º ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      ÀÄÄÙ       ÀÄÄÙ     ÀÄÄÙ ÀÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÙ º  ');
    delay (d);
writeln('    º  ÚÄÄÄ¿        ÚÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ º  ');
    delay (d);
writeln('    º  ³   ³  ÚÄÄ¿  ³   ³ ³  ÚÄÄÄÄÄ¿  ³ ³  ÚÄÄÄ¿  ³   ³  ÚÄÄÄÄÄÄÄÄÄÄÄÙ º  ');
    delay (d);
writeln('    º  ³   ³  ³  ³  ³   ³ ³  ÀÄÄÄÄÄÙ  ³ ³  ÀÄÄÄÙ  ³   ³  ÀÄÄÄÄÄÄ¿      º  ');
    delay (d);
writeln('    º  ³   ÀÄÄÙ  ÀÄÄÙ   ³ ³  ÚÄÄÄÄÄ¿  ³ ³  ÚÄ¿   ÚÙ   ÀÄÄÄÄ¿    ³      º  ');
    delay (d);
writeln('    º  ³     ÚÄÄÄÄ¿     ³ ³  ³     ³  ³ ³  ³ ³   ÀÄÄÄÄÄÄÄÄÄÙ    ³      º  ');
    delay (d);
writeln('    º  ÀÄÄÄÄÄÙ    ÀÄÄÄÄÄÙ ÀÄÄÙ     ÀÄÄÙ ÀÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      º  ');
    delay (d);
writeln('    ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼  ');
    for i := 1 to 6 do
      writeln;
   if movie <> 1977 then
    repeat
      repeat
        x := random (80) + 1;
        y := random (25) + 1;
         delay (d div 5);
         if ((x > 4) and (x < 73)) and ((y > 4) and (y < 19)) then
           ready := false
          else ready := true;
       until ready = true;
       writestar;
    until keypressed
   else delay (7*d);
  end;


procedure openesb;
  begin
    textcolor (white);
    clrscr;
    for i := 1 to 25 do
      writeln;
    textcolor (yellow);
    delay (d);
writeln ('     ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
    delay (d);
writeln ('     º ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿  T H E  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ º');
    delay (d);
writeln ('     º ³  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ         ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ º');
    delay (d);
writeln ('     º ³  ÀÄÄÄÄÄÄ¿ ÚÄÄÄÄ¿ ÚÄÄÄÄ¿ ÚÄÄÄÄÄÄÄ¿ ÚÄÄÄÄ¿ ÚÄÄÄÄÄ¿      ÚÄÄÄÄÄÄÄ¿ º');
    delay (d);
writeln ('     º ³         ³ ³ Ú¿ ³ ³ Ú¿ ³ ³ ÚÄÄÄÄ¿³ ³    ³ ³ ÚÄÄ¿³      ³ ÚÄÄÄÄÄÙ º');
    delay (d);
writeln ('     º ³  ÚÄÄÄÄÄÄÙ ³ ³³ ÀÄÙ ³³ ³ ³ ÀÄÄÄÄÙ³ ³    ³ ³ ÀÄÄÙÀÄ¿    ³ ÀÄÄÄÄÄ¿ º');
    delay (d);
writeln ('     º ³  ÀÄÄÄÄÄÄ¿ ³ ³ÀÄÄÄÄÄÙ³ ³ ³   ÚÄÄÄÙ ³    ³ ³  ÚÄÄ¿ ³    ³ ÚÄÄÄÄÄÙ º');
    delay (d);
writeln ('     º ³         ³ ³ ³       ³ ³ ³   ³     ³    ³ ³  ³  ³ ÀÄÄ¿ ³ ÀÄÄÄÄÄ¿ º');
    delay (d);
writeln ('     º ÀÄÄÄÄÄÄÄÄÄÙ ÀÄÙ       ÀÄÙ ÀÄÄÄÙ     ÀÄÄÄÄÙ ÀÄÄÙ  ÀÄÄÄÄÙ ÀÄÄÄÄÄÄÄÙ º');
    delay (d);
writeln ('     º  ÚÄÄÄ ÄÄÂÄÄ ÚÄÄÄ¿   ³  ³  ³ ÚÄÄÄ ÚÄÄÄ    ÚÄÄÄ¿  ÚÄÄÄ¿ ÚÄÄÄÄ ³  ³  º');
    delay (d);
writeln ('     º  ÀÄÄ¿   ³   ÃÄÄÄÁ¿  ³  ÃÄÂÙ ÃÄÄÄ ÀÄÄ¿    ÃÄÄÄÁ¿ ÃÄÄÄ´ ³     ÃÄÂÙ  º');
    delay (d);
writeln ('     º     ³   ³   ³    ³  ³  ³ À¿ ÀÄÄÄ    ³    ÀÄÄÄÄÙ ³   ³ ÀÄÄÄÄ ³ À¿  º');
    delay (d);
writeln ('     º  ÄÄÄÙ                            ÄÄÄÙ                             º');
    delay (d);
writeln ('     ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
    for i := 1 to 6 do
      writeln;
   if movie <> 1977 then
    repeat
      repeat
        x := random (80) + 1;
        y := random (25) + 1;
         delay (d div 5);
         if ((x > 4) and (x < 75)) and ((y > 3) and (y < 19)) then
           ready := false
          else ready := true;
       until ready = true;
       writestar;
     until keypressed
     else delay (7*d);
  end;


procedure openrj;
  begin
    textcolor (white);
    clrscr;
    for i := 1 to 25 do
      writeln;
    textcolor (yellow);
    delay (d);
writeln ('ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
    delay (d);
writeln ('º ÚÄÄÄÄÄÄÄ¿      ÚÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿    ÚÄ¿ ÚÄÄÄÄÄÄÄ¿      ÚÄÄÄÄÄ¿ ÚÄ¿ º');
    delay (d);
writeln ('º ³  ÚÄÄ¿ ³      ³ ÚÄÄÄÄÄÄÙ ÀÄÄÄÄ¿ ÚÄÄÄÄ¿ ³    ³ ³ ³  ÚÄÄ¿ ³      ³ ÚÄ¿ ³ ³ ³ º');
    delay (d);
writeln ('º ³  ÀÄÄÙ ÀÄÄ¿   ³ ÀÄÄÄÄ¿        ³ ³    ³ ³    ³ ³ ³  ÀÄÄÙ ÀÄÄ¿   ³ ³ ³ ³ ³ ³ º');
    delay (d);
writeln ('º ³   ÚÄÄÄ¿  ³   ³ ÚÄÄÄÄÙ        ³ ³    ³ ³    ³ ³ ³   ÚÄÄÄ¿  ³   ³ ³ ³ ³ ³ ³ º');
    delay (d);
writeln ('º ³   ³   ³  ÀÄÄÄÙ ÀÄÄÄÄÄÄ¿      ³ ³    ³ ÀÄÄÄÄÙ ³ ³   ³   ³  ÀÄÄÄÙ ³ ³ ÀÄÙ ³ º');
    delay (d);
writeln ('º ÀÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ      ÀÄÙ    ÀÄÄÄÄÄÄÄÄÙ ÀÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÙ ÀÄÄÄÄÄÙ º');
    delay (d);
writeln ('º ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ÚÄÄÄÄÄ¿ º');
    delay (d);
writeln ('º ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³   ³ ³                    ³ ³     ÚÄÄÄÄÄÄÄÄÄ¿ ³ ³     ³ º');
    delay (d);
writeln ('º  ÚÄÄÄ¿ ÚÄÄÄÄ       ³   ³ ³      ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³     ³         ³ ³ ³     ³ º');
    delay (d);
writeln ('º  ³   ³ ÃÄÄ         ³   ³ ³      ÀÄÄÄÄÄÄÄ¿       ³     ³         ³ ³ ³     ³ º');
    delay (d);
writeln ('º  ÀÄÄÄÙ ³           ³   ³ ³              ³       ³     ³         ³ ³ ³     ³ º');
    delay (d);
writeln ('º  ÄÄÂÄÄ¿  ³ÚÄÄÄÄ    ³   ³ ³      ÚÄÄÄÄÄÄÄÙ       ³     ³         ³ ³ ³     ³ º');
    delay (d);
writeln ('º    ³  ÃÄÄ´ÃÄÄ      ³   ³ ³      ³               ³     ³         ³ ³ ³     ³ º');
    delay (d);
writeln ('º    ³  ³   ÀÄÄÄÄ    ³   ³ ³      ÀÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³     ÀÄÄÄÄÄÄÄÄÄÙ ³ ³     ³ º');
    delay (d);
writeln ('º ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ ³   ³ ³                    ³ ³                 ³ ³     ³ º');
    delay (d);
writeln ('º ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ³   ³ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ ÀÄÄÄÄÄÙ º');
    delay (d);
writeln ('º          ÚÄÄÄÄÄÄÄÄÄÙ   ³                                                    º');
    delay (d);
writeln ('º          ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                                                    º');
    delay (d);
writeln ('ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
      writeln;
  if movie <> 1977 then
    repeat
      repeat
        x := random (80) + 1;
        y := random (25) + 1;
         delay (d div 5);
         if (x <> 80) and ((y > 2) and (y < 24)) then
           ready := false
          else ready := true;
       until ready = true;
        writestar;
     until keypressed
    else delay (7*d);
  end;

procedure choosemovie;
  begin
    repeat
      clrscr;
      gotoxy (15,5);
      textcolor (yellow);
      write ('1. Star Wars IV: A New Hope');
      gotoxy (15,6);
      write ('2. Star Wars V: The Empire Strikes Back');
      gotoxy (15,7);
      write ('3. Star Wars VI: Return of the Jedi');
      gotoxy (1,8);
      clreol;
      gotoxy (10,9);
      textcolor (white);
      write ('Choose the movie from which your quotes will come [1,2,3]: ');
      textcolor (lightgreen);
      readln (movie);
    until (movie = 1) or (movie = 2) or (movie = 3) or (movie = 1977);
    gotoxy (18,11);
    textcolor (white);
    write ('Do you want sound [y/n]: ');
    textcolor (lightgreen);
    readln (soundch);
  end;


procedure init;
 begin
 ndex := 1;
 for ndex := 1 to 100 do
  thelist [ndex] := 0;
 for ndex := 1 to 100 do
  thelist1 [ndex] := 0;
 for ndex := 1 to 100 do
  thelist2 [ndex] := 0;
 for ndex := 1 to 100 do
  thelist3 [ndex] := 0;
 end;


procedure accept;
 begin
    if movie <> 1977 then
      begin
       if (line = thelist [line]) then
         acceptible := false
        else acceptible := true;
       thelist [line] := line
      end
     else
   begin
      case bigthree of
       1 : begin
         if (line = thelist1 [line]) then
           acceptible := false
          else acceptible := true;
         thelist1 [line] := line;
           end;
       2 : begin
         if (line = thelist2 [line]) then
           acceptible := false
          else acceptible := true;
         thelist2 [line] := line;
           end;
       3 : begin
       if (line = thelist3 [line]) then
         acceptible := false
        else acceptible := true;
       thelist3 [line] := line;
           end;
      end;
    end;
  end;


procedure setnames;
  begin
    case movie of
      1 : begin
             n[1]  := 'Admiral Motti';
             n[2]  := 'Ben "Obi-Wan" Kenobi';
             n[3]  := 'Beru Lars';
             n[4]  := 'Biggs Darklighter';
             n[5]  := 'C3P0';
             n[6]  := 'Darth Vader';
             n[7]  := 'Grand Moff Tarkin';
             n[8]  := 'Greedo';
             n[9]  := 'Han Solo';
             n[10] := 'Leia Organa';
             n[11] := 'Luke Skywalker';
             n[12] := 'Owen Lars';
             n[13] := 'Red Leader';
             n[14] := 'Wedge Antilles';
             nlength := 14;
           end;
      2 : begin
            n[1]  := 'Admiral Ozzel';
            n[2]  := 'C3P0';
            n[3]  := 'Dack';
            n[4]  := 'Darth Vader';
            n[5]  := 'Deck Officer (Rebel)';
            n[6]  := 'Emperor Palpatine';
            n[7]  := 'General Rieekan';
            n[8]  := 'Han Solo';
            n[9]  := 'Lando Calrissian';
            n[10] := 'Leia Organa';
            n[11] := 'Luke Skywalker';
            n[12] := 'Wedge Antilles';
            n[13] := 'Yoda';
            nlength := 13;
          end;
      3 : begin
            n[1]  := 'Admiral Ackbar';
            n[2]  := 'Ben "Obi-Wan" Kenobi';
            n[3]  := 'Bib Fortuna';
            n[4] := 'C3P0';
            n[5]  := 'Darth Vader (or Anakin Skywalker)';
            n[6]  := 'Emperor Palpatine';
            n[7]  := 'EV-9D9';
            n[8]  := 'Han Solo';
            n[9]  := 'Jabba the Hutt';
            n[10] := 'Lando Calrissian';
            n[11] := 'Leia Organa';
            n[12] := 'Luke Skywalker';
            n[13] := 'Moff Jerjerrod';
            n[14] := 'Mon Mothma';
            n[15] := 'Yoda';
            nlength := 15;
          end;
      1977 : begin
            n[1]  := 'Admiral Ackbar';
            n[2]  := 'Admiral Motti';
            n[3]  := 'Admiral Ozzel';
            n[4]  := 'Ben "Obi-Wan" Kenobi';
            n[5]  := 'Beru Lars';
            n[6]  := 'Bib Fortuna';
            n[7]  := 'Biggs Darklighter';
            n[8]  := 'C3P0';
            n[9]  := 'Dack';
            n[10]  := 'Darth Vader (or Anakin Skywalker)';
            n[11]  := 'Deck Officer (Rebel)';
            n[12]  := 'Emperor Palpatine';
            n[13]  := 'EV-9D9';
            n[14]  := 'General Rieekan';
            n[15]  := 'Grand Moff Tarkin';
            n[16]  := 'Greedo';
            n[17]  := 'Han Solo';
            n[18]  := 'Jabba the Hutt';
            n[19]  := 'Lando Calrissian';
            n[20] := 'Leia Organa';
            n[21] := 'Luke Skywalker';
            n[22] := 'Moff Jerjerrod';
            n[23] := 'Mon Mothma';
            n[24] := 'Owen Lars';
            n[25] := 'Red Leader';
            n[26] := 'Wedge Antilles';
            n[27] := 'Yoda';
            nlength := 27;
               end;
        end;
      end;


procedure menu;
  begin
   clrscr;
   textcolor (white);
   writeln ('          ANSWER CHOICES              ');
   writeln ('Each answer will be used at least once');
   textbackground (white);
   textcolor (blue);
   case movie of
   1 : begin
   writeln ('ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
   writeln ('º   1:  Admiral Motti         º');
   writeln ('º   2:  Ben "Obi-Wan" Kenobi  º');
   writeln ('º   3:  Beru Lars             º');
   writeln ('º   4:  Biggs Darklighter     º');
   writeln ('º   5:  C3P0                  º');
   writeln ('º   6:  Darth Vader           º');
   writeln ('º   7:  Grand Moff Tarkin     º');
   writeln ('º   8:  Greedo                º');
   writeln ('º   9:  Han Solo              º');
   writeln ('º  10:  Leia Organa           º');
   writeln ('º  11:  Luke Skywalker        º');
   writeln ('º  12:  Owen Lars             º');
   writeln ('º  13:  Red Leader            º');
   writeln ('º  14:  Wedge Antilles        º');
   writeln ('ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
       end;
   2 : begin
   writeln ('ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
   writeln ('º   1:  Admiral Ozzel         º');
   writeln ('º   2:  C3P0                  º');
   writeln ('º   3:  Dack                  º');
   writeln ('º   4:  Darth Vader           º');
   writeln ('º   5:  Deck Officer (Rebel)  º');
   writeln ('º   6:  Emperor Palpatine     º');
   writeln ('º   7:  General Rieekan       º');
   writeln ('º   8:  Han Solo              º');
   writeln ('º   9:  Lando Calrissian      º');
   writeln ('º  10:  Leia Organa           º');
   writeln ('º  11:  Luke Skywalker        º');
   writeln ('º  12:  Wedge Antilles        º');
   writeln ('º  13:  Yoda                  º');
   writeln ('ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
       end;
   3 : begin
   writeln ('ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
   writeln ('º   1:  Admiral Ackbar                    º');
   writeln ('º   2:  Ben "Obi-Wan" Kenobi              º');
   writeln ('º   3:  Bib Fortuna                       º');
   writeln ('º   4:  C3P0                              º');
   writeln ('º   5:  Darth Vader (or Anakin Skywalker) º');
   writeln ('º   6:  Emperor Palpatine                 º');
   writeln ('º   7:  EV-9D9                            º');
   writeln ('º   8:  Han Solo                          º');
   writeln ('º   9:  Jabba the Hutt                    º');
   writeln ('º  10:  Lando Calrissian                  º');
   writeln ('º  11:  Leia Organa                       º');
   writeln ('º  12:  Luke Skywalker                    º');
   writeln ('º  13:  Moff Jerjerrod                    º');
   writeln ('º  14:  Mon Mothma                        º');
   writeln ('º  15:  Yoda                              º');
   writeln ('ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
       end;
   1977 :
      begin
writeln('ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»');
writeln('º    1:  Admiral Ackbar                 ³  15:  Grand Moff Tarkin º');
writeln('º    2:  Admiral Motti                  ³  16:  Greedo            º');
writeln('º    3:  Admiral Ozzel                  ³  17:  Han Solo          º');
writeln('º    4:  Ben "Obi-Wan" Kenobi           ³  18:  Jabba the Hutt    º');
writeln('º    5:  Beru Lars                      ³  19:  Lando Calrissian  º');
writeln('º    6:  Bib Fortuna                    ³  20:  Leia Organa       º');
writeln('º    7:  Biggs Darklighter              ³  21:  Luke Skywalker    º');
writeln('º    8:  C3P0                           ³  22:  Moff Jerjerrod    º');
writeln('º    9:  Dack                           ³  23:  Mon Mothma        º');
writeln('º   10:  Darth Vader / Anakin Skywalker ³  24:  Owen Lars         º');
writeln('º   11:  Deck Officer (Rebel)           ³  25:  Red Leader        º');
writeln('º   12:  Emperor Palpatine              ³  26:  Wedge Antilles    º');
writeln('º   13:  EV-9D9                         ³  27:  Yoda              º');
writeln('º   14:  General Rieekan                ³                         º');
writeln('ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼');
      end;
   end;
   textbackground (lightblue);
   textcolor (white);
   writeln (' Enter 0 at any time to quit and forfeit the rest of the test...');
   textbackground (black);
   writeln;
   textcolor (white);
   write ('SCORING    Correct: ');
   textcolor (lightred);
   write (correct);
   textcolor (white);
   write (' out of ');
   textcolor (lightred);
   write (count);
   textcolor (white);
   write (' out of a total of ');
   textcolor (lightred);
   writeln (num);
   writeln;
   textcolor (yellow);
   gotoxy (60, 1);
   write ('ÉÍÍÍÍÍÍÍÍÍÍÍ»');
   gotoxy (60, 2);
   write ('º Time:     º');
   gotoxy (60, 3);
   write ('ÈÍÍÍÍÍÍÍÍÍÍÍ¼');
 end;


 procedure getquote_sw;
   begin
     repeat
       line := random (100) + 1;
       accept;
     until acceptible;
    case line of
     1 : write ('Don''t call me a mindless philosopher, you overweight glob of grease!');
     2 : write ('You''re part of the Rebel Alliance...and a traitor.  Take her away!');
     3 : write ('They''ll be no one to stop us this time.');
     4 : write ('What a desolate place this is.');
     5 : write ('Don''t get technical with me!');
     6 : write ('I have no need for a protocol driod.');
     7 : write ('But I was going into Toshi Station to pick up some power converters.');
     8 : write ('Now don''t you forget this.  Why I should stick my neck out for you is beyond my capacity.');
     9 : write ('Well, not unless you can alter time, speed, the harvest, or teleport me off this rock.');
     10 : write ('Well, if there''s a bright center to the universe, you''re on the planet it''s farthest from.');
     11 : write ('Well my little friend, you''ve got something jammed in here real good.');
     12 : write ('Help me Obi-Wan Kenobi...you''re my only hope.');
     13 : write ('What message?  The one you''re carrying inside your rusty innards!');
     14 : write ('The old man''s just a crazy old wizard.');
     15 : write ('Owen, he has too much of father in him.');
     16 : write ('What are you doing hiding there?');
     17 : write ('How could I be so stupid?  He''s no where in sight!  Blast it!');
     18 : write ('Oh, he excels at that, sir!');
     19 : write ('Well, he''d better have those units in the south range repaired by midday or there''ll be hell to pay!');
     20 : write ('Hello there!  Come here my little friend.  Don''t be afraid.');
     21 : write ('Oh, he''s not dead, not...not yet!');
     22 : write ('He feared that you might follow old Obi-Wan on some damned-fool idealistic crusade like your father did.');
     23 : write ('Well, the force is what gives a Jedi his power. Its an energy field created by all living things.');
     24 : write ('It surrounds us, and penetrates us...it binds the galaxy together.');
     25 : write ('This is our most desparate hour.');
     26 : write ('It''s not that I like the Empire...I hate it.');
     27 : write ('Dangerous to your starfleet, Commander...Not to this battle station.');
     28 : write ('The Imperial Senate will no longer be of any concern to us.');
     29 : write ('Fear will keep the local systems in line...Fear of this battle station.');
     30 : write ('The plans that you refer to will soon be back in our hands.');
     31 : write ('This station is the ultimate power in the Universe...I suggest we use it!');
     32 : write ('Don''t be too proud of this technological terror you''ve constructed.');
     33 : write ('The ability to destroy a planet is insignificant next to the power of the force.');
     34 : write ('Don''t try to frighten us with your sorcerer''s ways, Lord Vader.');
     35 : write ('Your sad devotion to that ancient religion has not helped you conjure up the stolen data tapes...');
     36 : write ('I find your lack of faith disturbing.');
     37 : write ('And now, Your Highness, we will discuss the location of your hidden Rebel base...');
     38 : write ('Mos Eisley Spaceport.  You will never find a more wretched hive of scum and villany.  We must be catious.');
     39 : write ('You don''t need to see his identification.');
     40 : write ('These are not the droids you are looking for.');
     41 : write ('He can go about his business.');
     42 : write ('This is Chewbacca.  He''s first-mate on a ship that might suit our needs.');
     43 : write ('It''s the ship that made the Kessel run in less than twelve parsecs.');
     44 : write ('Look''s like somebody''s beginning to take an interest in your handiwork.');
     45 : write ('That''s the idea...I''ve been looking forward to killing you for a long time.');
     46 : write ('Sorry about the mess...');
     47 : write ('She may not look like much...but she''s got it where it counts, kid!');
     48 : write ('Watch your mouth kid, or you''ll find yourself floating home!');
     49 : write ('Traveling through space isn''t like dusting crops, kid!');
     50 : write ('I recognized your foul stench when I was brought on board.');
     51 : write ('The more you tighten your grip, Tarkin, the more star-systems will slip through your fingers.');
     52 : write ('You would prefer another target?  A military target perhaps?  Then name the system!');
     53 : write ('Don''t everyone thank me at once...');
     54 : write ('That''s `cause droids don''t pull people''s arms out of their socket when they lose.');
     55 : write ('Hokey religions and ancient weapons are no match for a good blaster at your side kid.');
     56 : write ('It''s all a lot of simple tricks and nonsense.');
     57 : write ('In my experience, there''s no such thing as luck!');
     58 : write ('There aren''t any bases around here.  Where did it come from?');
     59 : write ('I sense something...a presence I haven''t felt since...');
     60 : write ('Who''s more foolish? The fool or the fool who follows him?');
     61 : write ('Hey down there!  Can you give us a hand with this?');
     62 : write ('The Force will be with you...always.');
     63 : write ('Where did you dig up that old fossil?');
     64 : write ('Yes. Rich, powerful!  Listen, if you were to rescue her, the reward would be...');
     65 : write ('Prisoner transfer from Block 1138.');
     66 : write ('Aren''t you a little short for a stormtrooper?');
     67 : write ('Don''t underestimate the power of the force.');
     68 : write ('You, my friend, are all that''s left of their religion');
     69 : write ('Get behind me! Get behind me!');
     70 : write ('Maybe you''d like it back in your cell, Your Highness!');
     71 : write ('When you came in here, you didn''t have a plan for getting out?');
     73 : write ('What an incredible smell you''ve discovered!');
     72 : write ('Get in there you big furry oaf! I don''t care what you smell!');
     74 : write ('Put that thing away!  You''re going to get us all killed!');
     75 : write ('There''s something alive in here!');
     76 : write ('One thing''s for sure: We''re all going to be a lot thinner!');
     77 : write ('Shut down all the garbage mashers on the detention level!');
     78 : write ('Curse my metal body!  I wasn''t fast enough!');
     79 : write ('Listen, I don''t know who you are are where you came from, but from now on, you do as I tell you.  Okay?');
     80 : write ('Will somebody get this walking carpet out of my way?');
     81 : write ('No reward is worth this.');
     82 : write ('You came in that thing?  You''re braver than I thought!');
     83 : write ('The circle is now complete.');
     84 : write ('When I left you, I was but the learner, now I am the master.');
     85 : write ('They''re coming in too fast!');
     86 : write ('Look, I ain''t in it for your revolution, and I''m not in it for you, Princess.');
     87 : write ('If money is all that you love, then that''s what you''ll receive!');
     88 : write ('Do you think a princess and a guy like me...');
     89 : write ('I used to bulls-eye womp rats in my T-16 back home.');
     90 : write ('It has seen the end of Obi-Wan Kenobi and it will soon see the end of the Rebellion.');
     91 : write ('What good''s a reward if you ain''t around to use it?');
     92 : write ('Look at the size of that thing!');
     93 : write ('Cut the chatter Red Two.');
     94 : write ('Evacuate? In our moment of triumph?');
     95 : write ('It didn''t go in...it just impacted on the surface.');
     96 : write ('Luke, at that speed, do you think you''ll be able to pull out in time?');
     97 : write ('Hurry, Luke, they''re coming in much faster this time!');
     98 : write ('The Force is strong with this one!');
     99 : write ('I have you now!');
     100 : write ('Great shot kid!  That was one in a million!');
    end;
    textcolor (white);
    writeln ('"');
   if movie <> 1977 then
    case line of
      1 : c := 5;
      2 : c := 6;
      3 : c := 6;
      4 : c := 5;
      5 : c := 5;
      6 : c := 12;
      7 : c := 11;
      8 : c := 5;
      9 : c := 11;
      10 : c := 11;
      11 : c := 11;
      12 : c := 10;
      13 : c := 5;
      14 : c := 12;
      15 : c := 3;
      16 : c := 11;
      17 : c := 11;
      18 : c := 5;
      19 : c := 12;
      20 : c := 2;
      21 : c := 2;
      22 : c := 2;
      23 : c := 2;
      24 : c := 2;
      25 : c := 10;
      26 : c := 11;
      27 : c := 1;
      28 : c := 7;
      29 : c := 7;
      30 : c := 6;
      31 : c := 1;
      32 : c := 6;
      33 : c := 6;
      34 : c := 1;
      35 : c := 1;
      36 : c := 6;
      37 : c := 6;
      38 : c := 2;
      39 : c := 2;
      40 : c := 2;
      41 : c := 2;
      42 : c := 2;
      43 : c := 9;
      44 : c := 9;
      45 : c := 8;
      46 : c := 9;
      47 : c := 9;
      48 : c := 9;
      49 : c := 9;
      50 : c := 10;
      51 : c := 10;
      52 : c := 7;
      53 : c := 9;
      54 : c := 9;
      55 : c := 9;
      56 : c := 9;
      57 : c := 2;
      58 : c := 9;
      59 : c := 6;
      60 : c := 2;
      61 : c := 9;
      62 : c := 2;
      63 : c := 9;
      64 : c := 11;
      65 : c := 11;
      66 : c := 10;
      67 : c := 6;
      68 : c := 7;
      69 : c := 9;
      70 : c := 9;
      71 : c := 10;
      72 : c := 9;
      73 : c := 9;
      74 : c := 10;
      75 : c := 11;
      76 : c := 9;
      77 : c := 11;
      78 : c := 5;
      79 : c := 10;
      80 : c := 10;
      81 : c := 9;
      82 : c := 10;
      83 : c := 6;
      84 : c := 6;
      85 : c := 11;
      86 : c := 9;
      87 : c := 10;
      88 : c := 9;
      89 : c := 11;
      90 : c := 6;
      91 : c := 9;
      92 : c := 14;
      93 : c := 13;
      94 : c := 7;
      95 : c := 13;
      96 : c := 4;
      97 : c := 4;
      98 : c := 6;
      99 : c := 6;
      100 : c := 9;
    end
  else
    case line of
      1 : c := 8;
      2 : c := 10;
      3 : c := 10;
      4 : c := 8;
      5 : c := 8;
      6 : c := 24;
      7 : c := 21;
      8 : c := 8;
      9 : c := 21;
      10 : c := 21;
      11 : c := 21;
      12 : c := 20;
      13 : c := 8;
      14 : c := 24;
      15 : c := 5;
      16 : c := 21;
      17 : c := 21;
      18 : c := 8;
      19 : c := 24;
      20 : c := 4;
      21 : c := 4;
      22 : c := 4;
      23 : c := 4;
      24 : c := 4;
      25 : c := 20;
      26 : c := 21;
      27 : c := 2;
      28 : c := 15;
      29 : c := 15;
      30 : c := 10;
      31 : c := 2;
      32 : c := 10;
      33 : c := 10;
      34 : c := 2;
      35 : c := 2;
      36 : c := 10;
      37 : c := 10;
      38 : c := 4;
      39 : c := 4;
      40 : c := 4;
      41 : c := 4;
      42 : c := 4;
      43 : c := 17;
      44 : c := 17;
      45 : c := 16;
      46 : c := 17;
      47 : c := 17;
      48 : c := 17;
      49 : c := 17;
      50 : c := 20;
      51 : c := 20;
      52 : c := 15;
      53 : c := 17;
      54 : c := 17;
      55 : c := 17;
      56 : c := 17;
      57 : c := 4;
      58 : c := 17;
      59 : c := 10;
      60 : c := 4;
      61 : c := 17;
      62 : c := 4;
      63 : c := 17;
      64 : c := 21;
      65 : c := 21;
      66 : c := 20;
      67 : c := 10;
      68 : c := 15;
      69 : c := 17;
      70 : c := 17;
      71 : c := 20;
      72 : c := 17;
      73 : c := 17;
      74 : c := 20;
      75 : c := 21;
      76 : c := 17;
      77 : c := 21;
      78 : c := 8;
      79 : c := 20;
      80 : c := 20;
      81 : c := 17;
      82 : c := 20;
      83 : c := 10;
      84 : c := 10;
      85 : c := 21;
      86 : c := 17;
      87 : c := 20;
      88 : c := 17;
      89 : c := 21;
      90 : c := 10;
      91 : c := 17;
      92 : c := 26;
      93 : c := 25;
      94 : c := 15;
      95 : c := 25;
      96 : c := 7;
      97 : c := 7;
      98 : c := 10;
      99 : c := 10;
      100 : c := 17;
    end;
     s := n[c];
     whatmov := 'Star Wars: A New Hope';
   end;


 procedure getquote_esb;
   begin
     repeat
       line := random (100) + 1;
       accept;
     until acceptible;
    case line of
      1 : write ('Hey, steady girl.  What''s the matter?  You smell something?');
      2 : write ('With all the meteor activity in this system, it''s going to be difficult to spot approaching ships.');
      3 : write ('Well, there''s a price on my head.  If I don''t pay off Jabba the Hut, I''m a dead man.');
      4 : write ('A death mark''s not an easy thing to live with.  You''re a good fighter, Solo.  I hate to lose you.');
      5 : write ('Well, don''t get all mushy on me.  So long, Princess.');
      6 : write ('I''d just as soon kiss a Wookie.');
      7 : write ('Oh, switch off!');
      8 : write ('It is possible he came in through the south entrance.');
      9 : write ('Then I''ll see you in hell!');
      10 : write ('Artoo says the chances of survival are seven hundred seventy-five to one.');
      11 : write ('Ooh...I thought they smelled bad on the outside!');
      12 : write ('In fact, you look strong enough to pull the ears off a gundark!');
      13 : write ('I don''t know where you get your delusions, laser brain.');
      14 : write ('Laugh it up, fuzzball!');
      15 : write ('You didn''t see us alone in the south passage...');
      16 : write ('My...!  Why you stuck up...half-witted...scruffy-looking...nerf-herder!');
      17 : write ('I must have hit her pretty close to the mark to get her all riled up like that, huh kid?');
      18 : write ('We have thousands of probe droids searching the galaxy.  I want proof, not leads!');
      19 : write ('The Rebels are alerted to our presence.  Admiral Ozzel came out of light-speed too close to the system.');
      20 : write ('He is as clumsy as he is stupid.  General, prepare your troops for a surface attack.');
      21 : write ('You have failed me for the last time, Admiral.');
      22 : write ('When you have gotten past the energy shield, proceed directly to the rendezvous point.');
      23 : write ('Right now, I feel as if I could take on the whole Empire myself.');
      24 : write ('All right, boys.  Keep tight.');
      25 : write ('Good shot Janson!');
      26 : write ('How typical!');
      27 : write ('Hurry up, Goldenrod, or you''re going to be a permanent resident!');
      28 : write ('Would it help it I got out and pushed?');
      29 : write ('This baby''s got a few surprises left in her, sweetheart!');
      30 : write ('Someday you''re going to be wrong, and I hope I''m there to see it.');
      31 : write ('That''s alright, I''d like to keep it on manual control for a while.');
      32 : write ('I don''t know how we''re going to get out of this one.');
      33 : write ('You don''t have to impress me.');
34 : write ('...successfully navigating an asteroid field is approximately three thousand, seven hundred and twenty to one.');
      35 : write ('Never tell me the odds!');
      36 : write ('You''re lucky you don''t taste very good!');
      37 : write ('Chewie, take the professor in the back and plug him into the hyperdrive.');
      38 : write ('Captain, being held by you isn''t quite enough to get me exited.');
      39 : write ('Ready for some more power?  Okay, Let''s see now.  Put that in there.  There you go.');
      40 : write ('Wars not make one great.');
      41 : write ('But now we must eat.  Come.  Good food.  Come...');
      42 : write ('Occasionally maybe...when you aren''t acting like a scoundrel.');
      43 : write ('What is thy bidding, my master?');
      44 : write ('There is a great disturbance in the Force.');
      45 : write ('He will join us or die, my Master.');
      46 : write ('Ready are you?  What know you of ready?');
      47 : write ('A Jedi must hold the deepest commitment, a serious mind.  This one a long time have I watched.');
      48 : write ('Adventure.  Hmf.  Excitement.  Heh!  A Jedi craves not these things!');
      49 : write ('Oh you will be...you will be!');
      50 : write ('There''s an awful lot of moisture in here...');
      51 : write ('No time to discuss this as a committee.');
      52 : write ('Anger...fear...aggression.  The Dark Side are they.');
      53 : write ('No...no...no.  Quicker, easier, more seductive.');
      54 : write ('What''s in there?');
      55 : write ('It''s not my fault!');
      56 : write ('One more direct hit on the back quarter and we''re done for.');
      57 : write ('I said turn her around!  I''m going to put all power in the front shield.');
      58 : write ('No!  Try not.  Do.  Or do not.  There is no try.');
      59 : write ('Size matters not.  Judge me by my size do you?  Hmmph.');
      60 : write ('And well you should not.  For my ally is the Force.  And a powerful ally it is.');
      61 : write ('Life creates it, makes it grow.  Its energy surrounds us, and binds us.');
      62 : write ('Apology accepted, Captain Needa.');
      63 : write ('Go back and stand by the manual release for the landing claw.');
      64 : write ('He''s a card player, gambler, scoundrel...You''d like him.');
      65 : write ('You do have your moments.  Not many, but you have them.');
      66 : write ('Control.  Control.  You must learn control.');
      67 : write ('Well, that was a long time ago.  I''m sure he''s forgotten about that.');
68:write ('Why, you slimy, double-crossing, no-good swindler!  You''ve got a lot of guts coming here after what you pulled!');
      69 : write ('She''s the fastest hunk of junk in the galaxy.');
      70 : write ('And sacrafice Han and Leia?');
      71 : write ('If you honor what they fight for...yes.');
      72 : write ('Strong is Vader.  Mind what you have learned.  Save you it can!');
      73 : write ('I will.  And I''ll return...I promise.');
      74 : write ('Told you, I did.  Reckless is he.  Now matters are worse.');
      75 : write ('You look absolutely beautiful.  You truly belong here with us among the clouds.');
      76 : write ('I''ve just made a deal that will keep the Empire out of here forever.');
      77 : write ('I had no choice.  They arrived right before you did.  I''m sorry.');
      78 : write ('That was never a condition of our agreement, nor was giving Han to this bounty hunter.');
      79 : write ('Perhaps you think you''re being treated unfairly.');
      80 : write ('This deal is getting worse all the time.');
      81 : write ('Oh, yes, that''s very good.  I like that.');
      82 : write ('I''m backwards, you stupid furball.  Only an overgrown mophead like you would be stupid enough...');
      83 : write ('They never even asked me any questions...');
      84 : write ('Perfect.  You fixed us pretty good, didn''t you?  My friend!');
      85 : write ('You certainly have a way with people.');
      86 : write ('I''m altering the deal.  Pray I don''t alter it any further.');
      87 : write ('Your destiny lies with me, Skywalker.  Obi-Wan knew this to be true.');
      88 : write ('All too easy.  Perhaps you are not as strong as the Emperor thought.');
      89 : write ('Impressive...most impressive.');
      90 : write ('Obi-Wan has taught you well.');
      91 : write ('I thought that hairy beast would be the end of me.');
      92 : write ('Don''t make me destroy you.');
      93 : write ('If you only knew the power of the Dark Side.  Obi-Wan never told you what happened to your father.');
      94 : write ('No.  I am you father!');
      95 : write ('No. No. That''s not true!  That''s impossible!');
      96 : write ('Join me, and we can rule that galaxy as father and son.');
      97 : write ('Slow down and we''ll get under him.');
      98 : write ('Artoo-Detoo, you know better than to trust a strange computer!');
      99 : write ('Luke...It is your destiny!');
      100 : write ('I''m standing here in pieces and you''re having delusions of granduer!');
    end;
    textcolor (white);
    writeln ('"');
   if movie <> 1977 then
    case line of
      1 : c := 11;
      2 : c := 7;
      3 : c := 8;
      4 : c := 7;
      5 : c := 8;
      6 : c := 10;
      7 : c := 2;
      8 : c := 5;
      9 : c := 8;
      10 : c := 2;
      11 : c := 8;
      12 : c := 8;
      13 : c := 10;
      14 : c := 8;
      15 : c := 8;
      16 : c := 10;
      17 : c := 8;
      18 : c := 1;
      19 : c := 4;
      20 : c := 4;
      21 : c := 4;
      22 : c := 10;
      23 : c := 3;
      24 : c := 11;
      25 : c := 12;
      26 : c := 2;
      27 : c := 8;
      28 : c := 10;
      29 : c := 8;
      30 : c := 10;
      31 : c := 11;
      32 : c := 8;
      33 : c := 10;
      34 : c := 2;
      35 : c := 8;
      36 : c := 11;
      37 : c := 8;
      38 : c := 10;
      39 : c := 11;
      40 : c := 13;
      41 : c := 13;
      42 : c := 10;
      43 : c := 4;
      44 : c := 6;
      45 : c := 4;
      46 : c := 13;
      47 : c := 13;
      48 : c := 13;
      49 : c := 13;
      50 : c := 8;
      51 : c := 8;
      52 : c := 13;
      53 : c := 13;
      54 : c := 11;
      55 : c := 8;
      56 : c := 2;
      57 : c := 8;
      58 : c := 13;
      59 : c := 13;
      60 : c := 13;
      61 : c := 13;
      62 : c := 4;
      63 : c := 8;
      64 : c := 8;
      65 : c := 10;
      66 : c := 13;
      67 : c := 8;
      68 : c := 9;
      69 : c := 9;
      70 : c := 11;
      71 : c := 13;
      72 : c := 13;
      73 : c := 11;
      74 : c := 13;
      75 : c := 9;
      76 : c := 9;
      77 : c := 9;
      78 : c := 9;
      79 : c := 4;
      80 : c := 9;
      81 : c := 2;
      82 : c := 2;
      83 : c := 8;
      84 : c := 8;
      85 : c := 10;
      86 : c := 4;
      87 : c := 4;
      88 : c := 4;
      89 : c := 4;
      90 : c := 4;
      91 : c := 2;
      92 : c := 4;
      93 : c := 4;
      94 : c := 4;
      95 : c := 11;
      96 : c := 4;
      97 : c := 10;
      98 : c := 2;
      99 : c := 4;
      100 : c := 2;
    end
   else
    case line of
      1 : c := 21;
      2 : c := 14;
      3 : c := 17;
      4 : c := 14;
      5 : c := 17;
      6 : c := 20;
      7 : c := 8;
      8 : c := 11;
      9 : c := 17;
      10 : c := 8;
      11 : c := 17;
      12 : c := 17;
      13 : c := 20;
      14 : c := 17;
      15 : c := 17;
      16 : c := 20;
      17 : c := 17;
      18 : c := 3;
      19 : c := 10;
      20 : c := 10;
      21 : c := 10;
      22 : c := 20;
      23 : c := 9;
      24 : c := 21;
      25 : c := 26;
      26 : c := 8;
      27 : c := 17;
      28 : c := 20;
      29 : c := 17;
      30 : c := 20;
      31 : c := 21;
      32 : c := 17;
      33 : c := 20;
      34 : c := 8;
      35 : c := 17;
      36 : c := 21;
      37 : c := 17;
      38 : c := 20;
      39 : c := 21;
      40 : c := 27;
      41 : c := 27;
      42 : c := 20;
      43 : c := 10;
      44 : c := 12;
      45 : c := 10;
      46 : c := 27;
      47 : c := 27;
      48 : c := 27;
      49 : c := 27;
      50 : c := 17;
      51 : c := 17;
      52 : c := 27;
      53 : c := 27;
      54 : c := 21;
      55 : c := 17;
      56 : c := 8;
      57 : c := 17;
      58 : c := 27;
      59 : c := 27;
      60 : c := 27;
      61 : c := 27;
      62 : c := 10;
      63 : c := 17;
      64 : c := 17;
      65 : c := 20;
      66 : c := 27;
      67 : c := 17;
      68 : c := 19;
      69 : c := 19;
      70 : c := 21;
      71 : c := 27;
      72 : c := 27;
      73 : c := 21;
      74 : c := 27;
      75 : c := 19;
      76 : c := 19;
      77 : c := 19;
      78 : c := 19;
      79 : c := 10;
      80 : c := 19;
      81 : c := 8;
      82 : c := 8;
      83 : c := 17;
      84 : c := 17;
      85 : c := 20;
      86 : c := 10;
      87 : c := 10;
      88 : c := 10;
      89 : c := 10;
      90 : c := 10;
      91 : c := 8;
      92 : c := 10;
      93 : c := 10;
      94 : c := 10;
      95 : c := 21;
      96 : c := 10;
      97 : c := 20;
      98 : c := 8;
      99 : c := 10;
      100 : c := 8;
    end;
    s := n[c];
    whatmov := 'The Empire Strikes Back';
  end;


 procedure getquote_rj;
   begin
    repeat
      line := random (100) + 1;
      accept;
    until acceptible;
    case line of
      1 : write ('You may dispense with the pleasantries, Commander.  I''m here to put you back on schedule.');
      2 : write ('I assure you, Lord Vader, my men are working as fast as they can.');
      3 : write ('The Emperor does not share your optimistic appraisal of the situation.');
      4 : write ('But he asks the impossible.  I need more men!');
      5 : write ('The Emperor is coming here?');
      6 : write ('The Emperor is not as forgiving as I am.');
      7 : write ('If I told you half of the things I''ve heard about this Jabba the Hutt, you''d probably short-circuit.');
      8 : write ('I better knock, I suppose.');
      9 : write ('Artoo...Artoo!  I really don''t think we should rush into all this.');
      10 : write ('Gift, what gift?');
      11 : write ('Nee Jabba no badda.  Me chaade su goodie.');
      12 : write ('I am fluent in over six million forms of communication, and can readily...');
      13 : write('I have need for you on the master''s sail barge. And I think you''ll fit in nicely.');
      14 : write ('...Someone who loves you.');
      15 : write ('It''s too late for that, Solo.  You may have been a good smuggler, but now you''re Bantha fodder.');
      16 : write ('We have powerful friends.  You''re gonna regret this.');
      17 : write ('A Jedi Knight? I''m out of it for a little while, everybody gets delusions of granduer.');
      18 : write ('You weak minded fool!  He''s using an old Jedi mind trick.');
      19 : write ('Master Luke, you''re standing on...');
      20 : write ('Good, I hate long waits.');
      21 : begin
       write ('In his belly, you will find a new definition of pain and suffering as you');
       write (' are slowly digested over a thousand years.');
           end;
      22 : write ('You should have bargained, Jabba.  That''s the last mistake you''ll ever make.');
      23 : write ('You''re gonna die here you know.  Convenient.');
      24 : write ('Just stick close to Chewie and Lando.  I''ve taken care of everything.');
      25 : write ('Threepio, you tell that slimy piece of worm-ridden filth he''ll get so such pleasure from us, right?');
      26 : write ('Jabba, this is your last chance...Free us, or die!');
      27 : write ('Boba Fett?  Boba Fett?  Where?');
      28 : write ('Whoa!  Whoa!  Grab me, Chewie, I''m slipping!');
      29 : write ('No, wait!  I thought you were blind!');
      30 : write ('All right!  A little higher!  Just a little higher!');
      31 : write ('Get the gun!  Point it at the deck!');
      32 : write ('Hurry.  The Alliance should be assembled by now.');
      33 : write ('Rise, my friend.');
      34 : write ('He has grown strong.  Only together can we turn him to the dark side of the Force');
      35 : write ('Everything is proceeding as I have foreseen.');
      36 : write ('When nine hundred years you reach, look as good you will not, Hmm?');
      37 : write ('Soon will I rest.  Yes, forever sleep.  Earned it I have.');
      38 : write ('Strong am I with the Force...but not that strong!');
      39 : write ('Vader. You must confront Vader. Then, only then, a Jedi will you be. And confront him you will.');
      40 : write ('Unexpected this is...and unfortunate.');
      41 : write ('So what I have told you was true...from a certain point of view.');
      42 : write ('You told me Vader betrayed and murdered my father.');
      43 : write ('He is more machine now.  Twisted and evil.');
      44 : write ('Then the Emperor has already won.');
      45 : write ('Your insight serves you well.');
      46 : write ('Oh, well, someone must have told them about my little manuever at the Battle of Tanaab.');
      47 : write ('Well, who says they didn''t.  But I ain''t crazy.  You''re the respectable one, remember?');
      48 : begin
      write ('But most important of all, we''ve learned that the Emperor himself is personally overseeing the final stages');
      write (' of the construction of this Death Star.');
           end;
      49 : begin
       write ('Although the weapon systems on this Death Star are not yet operational,');
       write (' the Death Star does have a strong defense mechanism.');
           end;
      50 : write ('Good luck...You''re gonna need it.');
      51 : write ('I wonder who they found to pull that off.');
      52 : write ('I''ll take good care of her.  She--she won''t get a scratch.  All right?');
      53 : write ('You got her warmed?');
      54 : write ('Yeah, I just got a funny feeling.  Like I''m never gonna see her again.');
      55 : write ('What is thy bidding, my master?');
      56 : write ('If they don''t go for this, we''re gonna get outta here pretty quick.  Chewie?');
      57 : write ('Keep you distance Chewie, but don''t look like you''re keeping you distance.');
      58 : write ('Get along side that one.');
      59 : write ('Well, it looks like I''m stuck here.  Trouble is, I don''t know where here is.');
      60 : write ('All right.  Do you want something to eat?');
      61 : write ('I have felt him, my master.');
      62 : write ('Strange that I have not.  I wonder if your feelings on this matter are clear, Lord Vader.');
      63 : write ('He will come to me?');
      64 : write ('Will you take it easy?  Let''s just figure out a way to get out of this thing.');
      65 : write ('Han, can you reach my lightsaber?');
      66 : write ('I do believe they think I''m some sort of a god.');
      67 : write ('Well, why don''t you use your divine influence and get us out of this?');
      68 : write ('It''s against my programming to impersonate a deity.');
   69:write ('I''m rather embarassed, General Solo, but it appears you are to be the main course at a banquet in my honor.');
      70 : write ('I...I never knew I had it in me.');
      71 : write ('And hurry up, will ya?  I haven''t got all day.');
      72 : write ('Just...images really.  Feelings.');
      73 : write ('Luke, tell me.  What''s troubling you?');
      74 : write ('I know.  Somehow, I''ve always known.');
      75 : write ('Did you tell Luke?  Is that who you could tell?');
      76 : write ('Your skills are complete.  Indeed you are powerful, as the Emperor has foreseen.');
      77 : write ('It is too late for me, my son.');
      78 : write ('Hey, don''t worry.  Chewie and me got into a lot of places more heavily guarded than this.');
      79 : write ('He says there''s a secret entrance on the other side of the ridge.');
      80 : write ('They''ll have the shield down on time...or this''ll be the shortest offensive of all time.');
      81 : write ('Back door huh?  Good idea.');
      82 : write ('Then we''ll do it real quiet like.');
      83 : write ('I''m afraid our furry companion has gone and done something rather rash.');
      84 : write ('By now you must know that your father can never be turned from the dark side.');
      85 : write ('Yes...I assure you, we are quite safe from your friends here.');
      86 : write ('Your overconfidence is your weakness.');
      87 : write ('Your faith in your friends is yours!');
      88 : write ('Oh..I''m afraid the deflector shield will be quite operational when your friends arrive.');
      89 : write ('Well, how could they be jamming us if...they don''t know we''re coming.');
      90 : write ('Now witness the firepower of this fully armed and operational battle station.  Fire at will, commander.');
      91 : write ('That blast came from the Death Star.  That thing''s operational!');
      92 : write ('Obi-Wan has taught you well.');
      93 : write ('You are unwise to lower your defenses.');
      94 : write ('There is no conflict.');
      95 : write ('If you will not turn to the dark side, then perhaps she will.');
      96 : write ('So be it...Jedi.');
      97 : write ('Luke, help me take this mask off.');
      98 : write ('Nothing can stop that now.  Just for once, let me look upon you with my own eyes.');
      99 : write ('You already have, Luke.  You were right about me.  Tell your sister you were right.');
      100 : write ('I promised to return this ship without a scratch.  I hope that old pirate forgives me.');
    end;
    textcolor (white);
    writeln ('"');
  if movie <> 1977 then
    case line of
      1 : c := 5;
      2 : c := 13;
      3 : c := 5;
      4 : c := 13;
      5 : c := 13;
      6 : c := 5;
      7 : c := 4;
      8 : c := 4;
      9 : c := 4;
      10 : c := 4;
      11 : c := 3;
      12 : c := 4;
      13 : c := 7;
      14 : c := 11;
      15 : c := 9;
      16 : c := 11;
      17 : c := 8;
      18 : c := 9;
      19 : c := 4;
      20 : c := 8;
      21 : c := 4;
      22 : c := 12;
      23 : c := 8;
      24 : c := 12;
      25 : c := 8;
      26 : c := 12;
      27 : c := 8;
      28 : c := 8;
      29 : c := 10;
      30 : c := 10;
      31 : c := 12;
      32 : c := 11;
      33 : c := 6;
      34 : c := 6;
      35 : c := 6;
      36 : c := 15;
      37 : c := 15;
      38 : c := 15;
      39 : c := 15;
      40 : c := 15;
      41 : c := 2;
      42 : c := 12;
      43 : c := 2;
      44 : c := 2;
      45 : c := 2;
      46 : c := 10;
      47 : c := 8;
      48 : c := 14;
      49 : c := 1;
      50 : c := 8;
      51 : c := 11;
      52 : c := 10;
      53 : c := 8;
      54 : c := 8;
      55 : c := 5;
      56 : c := 8;
      57 : c := 8;
      58 : c := 12;
      59 : c := 11;
      60 : c := 11;
      61 : c := 5;
      62 : c := 6;
      63 : c := 5;
      64 : c := 12;
      65 : c := 12;
      66 : c := 4;
      67 : c := 8;
      68 : c := 4;
      69 : c := 4;
      70 : c := 4;
      71 : c := 8;
      72 : c := 11;
      73 : c := 11;
      74 : c := 11;
      75 : c := 8;
      76 : c := 5;
      77 : c := 5;
      78 : c := 8;
      79 : c := 4;
      80 : c := 10;
      81 : c := 8;
      82 : c := 8;
      83 : c := 4;
      84 : c := 6;
      85 : c := 6;
      86 : c := 12;
      87 : c := 6;
      88 : c := 6;
      89 : c := 10;
      90 : c := 6;
      91 : c := 10;
      92 : c := 5;
      93 : c := 5;
      94 : c := 5;
      95 : c := 5;
      96 : c := 6;
      97 : c := 5;
      98 : c := 5;
      99 : c := 5;
      100 : c := 10;
    end
   else
    case line of
      1 : c := 10;
      2 : c := 22;
      3 : c := 10;
      4 : c := 22;
      5 : c := 22;
      6 : c := 10;
      7 : c := 8;
      8 : c := 8;
      9 : c := 8;
      10 : c := 8;
      11 : c := 6;
      12 : c := 8;
      13 : c := 13;
      14 : c := 20;
      15 : c := 18;
      16 : c := 20;
      17 : c := 17;
      18 : c := 18;
      19 : c := 8;
      20 : c := 17;
      21 : c := 8;
      22 : c := 21;
      23 : c := 17;
      24 : c := 21;
      25 : c := 17;
      26 : c := 21;
      27 : c := 17;
      28 : c := 17;
      29 : c := 19;
      30 : c := 19;
      31 : c := 21;
      32 : c := 20;
      33 : c := 12;
      34 : c := 12;
      35 : c := 12;
      36 : c := 27;
      37 : c := 27;
      38 : c := 27;
      39 : c := 27;
      40 : c := 27;
      41 : c := 4;
      42 : c := 21;
      43 : c := 4;
      44 : c := 4;
      45 : c := 4;
      46 : c := 19;
      47 : c := 17;
      48 : c := 23;
      49 : c := 1;
      50 : c := 17;
      51 : c := 20;
      52 : c := 19;
      53 : c := 17;
      54 : c := 17;
      55 : c := 10;
      56 : c := 17;
      57 : c := 17;
      58 : c := 21;
      59 : c := 20;
      60 : c := 20;
      61 : c := 10;
      62 : c := 12;
      63 : c := 10;
      64 : c := 21;
      65 : c := 21;
      66 : c := 8;
      67 : c := 17;
      68 : c := 8;
      69 : c := 8;
      70 : c := 8;
      71 : c := 17;
      72 : c := 20;
      73 : c := 20;
      74 : c := 20;
      75 : c := 17;
      76 : c := 10;
      77 : c := 10;
      78 : c := 17;
      79 : c := 8;
      80 : c := 19;
      81 : c := 17;
      82 : c := 17;
      83 : c := 8;
      84 : c := 12;
      85 : c := 12;
      86 : c := 21;
      87 : c := 12;
      88 : c := 12;
      89 : c := 19;
      90 : c := 12;
      91 : c := 19;
      92 : c := 10;
      93 : c := 10;
      94 : c := 10;
      95 : c := 10;
      96 : c := 12;
      97 : c := 10;
      98 : c := 10;
      99 : c := 10;
      100 : c := 19;
    end;
    s := n[c];
    whatmov := 'Return of the Jedi';
  end;


procedure goforquote;
 begin
  repeat
    clrscr;
    menu;
    gotoxy (1, 23);
    textcolor (white);
    write ('Quote: "');
    textcolor (lightgreen);
   case movie of
     1 : getquote_sw;
     2 : getquote_esb;
     3 : getquote_rj;
     1977 : begin
       bigthree := random (3) + 1;
       case bigthree of
         1 : getquote_sw;
         2 : getquote_esb;
         3 : getquote_rj;
        end;
      end;
    end;
   textcolor (white);
   gotoxy (1, 25);
   write ('Answer: ');
   repeat
     pauser := pauser + 1;
     gotoxy (68, 2);
     write (pauser:0:0);
     gotoxy (9,25);
     delay (1000);
   until keypressed;
   gotoxy (9,25);
   readln (a);
   if a = c then
     begin
       textcolor (lightcyan);
       write ('CORRECT!  ');
       ssound := 0;
       nosound;
       if soundch in ['y', 'Y'] then
         repeat
           ssound := ssound + 100;
           delay (100);
           sound (ssound);
         until (ssound = 1000) or keypressed;
         nosound;
       end
    else
      begin
        textcolor (lightred);
        write ('INCORRECT!  ');
        ssound := 1000;
        nosound;
        if (soundch in ['y', 'Y']) then
          repeat
            ssound := ssound - 100;
            delay (100);
            sound (ssound);
          until (ssound = 0) or keypressed;
        nosound;
      end;
   if a = 0 then count := num - 1;
   textcolor (yellow);
   write (s, '  (', c, ')');
   if movie = 1977 then
     begin
       textcolor (lightblue);
       writeln ('  ', whatmov, '.');
     end
    else writeln;
   if a = c then correct := correct + 1;
   textcolor (white);
   writeln (' Any key to continue...');
   readkey;
   count := count + 1;
  until count = num;
 end;


procedure setwinner;
  begin
    percent := round ((correct/num)*100);
    clrscr;
    gotoxy (1, 5);
    textcolor (red);
    writeln (' Below 70%             =  Feeble Attempt at grasping the Force.');
    writeln (' 70% - 79%             =  Jedi Apprentice -- Getting there.');
    writeln (' 80% - 89%             =  Full Jedi Knight -- Pretty Good.');
    writeln (' 90% - 99%             =  Full Jedi Master -- Excellent.');
    writeln (' 100% of 100 questions =  YOU ARE THE FORCE.');
    if percent < 70 then
      begin
        textcolor (yellow);
        gotoxy (2, 5);
        writeln (' Below 70%             =  Feeble Attempt at grasping the Force.');
      end
     else if percent < 80 then
       begin
         textcolor (yellow);
         gotoxy (2, 6);
         writeln (' 70% - 79%             =  Jedi Apprentice -- Getting there.');
       end
      else if percent < 90 then
        begin
          textcolor (yellow);
          gotoxy (2, 7);
          writeln (' 80% - 89%             =  Full Jedi Knight -- Pretty Good.');
        end
       else if (percent < 100) or ((percent>89)and(percent<=100)and(num<100)) then
         begin
           textcolor (yellow);
           gotoxy (2, 8);
           writeln (' 90% - 99%             =  Full Jedi Master -- Excellent.');
         end
        else if (percent = 100) and (num = 100) then
          begin
            textcolor (yellow);
            gotoxy (2, 9);
            writeln (' 100% of 100 questions =  YOU ARE THE FORCE.');
          end;
    gotoxy (20, 12);
    textcolor (lightmagenta);
    writeln ('You scored a ', percent, '%');
    gotoxy (5, 13);
    textcolor (lightblue);
    if (percent = 100) and (num = 100) then writeln (' 100% of 100 questions =  YOU ARE THE FORCE.')
     else if percent > 89 then writeln (' 90% - 99% =  Full Jedi Master -- Excellent.')
      else if percent > 79 then writeln (' 80% - 90% =  Full Jedi Knight -- Pretty Good.')
       else if percent > 69 then writeln (' 70% - 80% =  Jedi Apprentice -- Getting there.')
        else writeln (' Below 70% =  Feeble Attempt at grasping the Force.');
    textcolor (white);
    timerec := 5 * num;
    writeln;
    writeln ('   Time consumed for ', num, ' questions: ', pauser, ' seconds.');
    writeln ('   Time recomended for ', num, ' questions: ', timerec:0:0, ' seconds.');
    if (num = 100) and (percent > 89) then
      begin
        textbackground (lightcyan);
        textcolor (lightgray);
        writeln;
        writeln ('Only for the most noble of the Jedi Masters, a special secret...');
        writeln ('At the prompt in the beginning of the program, when you are asked');
        writeln ('to choose between the movies [1, 2, 3], enter 1977.  This will allow');
        writeln ('a player of your skill to receive 1 to 300 quotes from all of the');
        writeln ('three movies.  Try it, ye Jedi Master!');
      end;
    readln;
 end;


begin
  randomize;
  repeat
    init;
    clrscr;
    count := 0;
    correct := 0;
    pauser := 0;
    choosemovie;
    case movie of
      1 : opensw;
      2 : openesb;
      3 : openrj;
      1977 : begin
        opensw;
        openesb;
        openrj;
             end;
     end;
    nosound;
    repeat
      clrscr;
      textcolor (white);
      gotoxy (8, 12);
      clreol;
      if movie <> 1977 then
        write ('How many quotes would you like on your test [1-100]: ')
       else write ('How many quotes would you like on your test [1-300]: ');
      textcolor (lightcyan);
      readln (num);
      textcolor (white);
    until ((num IN [1..100]) and (movie <> 1977)) or ((movie = 1977) and ((num > 0) and (num < 301)));
    setnames;
    goforquote;
    setwinner;
    textcolor (white);
    write ('How about a few more quotes? [y/n]: ');
    readln (sentinel);
  until sentinel in ['n', 'N'];
end.
