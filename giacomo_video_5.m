# Materia 6:        Lezione 5           	28/01/2020
# Video 			      Gabriele Simone

# delciampo_video_1.m (002 - Matlab Crash Chourse)
# delciampo_video_2.m (003 - pkg install)
# delciampo_video_5.m (008 - MyThirdScript.m)


#####################
% My Third Script (gabriele.simone@di.unimi.it)
% Further Matrix Computation

clear all
close all
clc

display('Further Matrix Computation Exercise') % MyNote 
A = [10 17 8 12 20; 7 13 28 15 14; 29 2 5 8 9] % display (output)

row = A(2, :)     % Extract 2nd row from A
column = A(:, 3)  % Extract 3rd column from A
B = A(2:3, 3:4)   % Extract 2nd and 3rd row, 3rd and 4th column from A
                  % COMBINAZIONE NB
                  % x1y1, x2,y2 (x1 < x2)
                  % 2:3-2:4
                  % 3:3-3:4 

A(2:3, 3:4) = 0   % Set to 0, 2nd and 3rd row, 3rd and 4th  column in A
A(2:3, 3:4) = 13

A(A < 10) = 0     % Set to 0 (or any number), all numbers less than e.g. 10

A(A > 12) = 15    % Set to 15 (or any number), all numbers greater than e.g. 12

A(A == 15) = 100  % Set to 100 (or any number), all numbers equal 15


[nR nC] = size(A)   % Size of A, retrieve the numbers of rows and columns

for i_count = 1:nR          % Looping for each element of A
  for j_count = 1:nC
    A(i_count, j_count)  
  end
end

% Check if element A(3,3) is even
% Calculate reminder
 reminder = rem(A(3,3), 2)
% Check if reminder equal to 0
if ( reminder == 0 )
  display('number is even')
end

% Check if element A(3,3) is equal to 70
if ( A(3,3) == 70)
  display('number equal to 70')
else
  display('number is not equal to 70')
end

% Looping for each element of A, check if is greater than 10 and set to 3, else set to 2 
for i_count = 1:nR
  for j_count = 1:nC
    if ( A(i_count, j_count) > 10 )
      A(i_count, j_count) = 3
    else
      A(i_count, j_count) = 2
    end
  end
end

% Check first if A(1,2) equal to 3 and then A(1,3) equal to 2
if ( A(1,2) == 3 )
    if ( A(1,3) == 2 )
      display('true')
    end
else
  display('false')
end

% Check if A(1,2) equal to 3 AND if A(1,3) equal to 2 
if ( A(1,2) == 3 & A(1,3) == 2)
  display('true')
else
  display('false')
end

% Check if A(3,1) equal to 3 AND if A(3,2) equal to 3 AND if A(3,3) equal to 3 
if ( A(3,1) == 3 && A(3,2) == 3 && A(3,3) == 3 )
  display('true')
else
  display('false')
end

if ( A(3,1) == 3 || A(3,2) == 3 || A(3,3) == 3 )
  display('true')
else
  display('false')
end


##############################
#
# >> A = [10 17 8 12 20; 7 13 28 15 14; 29 2 5 8 9] % A_Matrix
# A =
#    10   17    8   12   20
#     7   13   28   15   14
#    29    2    5    8    9
# >> row = A(2, :)     % Extract 2nd row from A
#
# row =
#
#     7   13   28   15   14
#
# B = A(2:3, 3:4)   % Extract 2nd and 3rd row, 3rd and 4th column from A
#
# B =
#
#    28   15
#     5    8
# 
# >> A(2:3, 3:4) = 0   % Set to 0, 2nd and 3rd row, 3rd and 4th  column in A
# 
# A =
# 
#    10   17    0   12   20
#     0   13    0    0   14
#    29    0    0    0    0
#
# >> A(2:3, 3:4) = 0   % Set to 0, 2nd and 3rd row, 3rd and 4th  column in A
#
# A =
#
#    10   17    0   12   20
#     0   13    0    0   14
#    29    0    0    0    0
#
# >> B = A(2:3, 3:4)   % Extract 2nd and 3rd row, 3rd and 4th column from A
#  B =
#
#    28   15
#     5    8
#
# >>                   % COMBINAZIONE NB
# >>                   % x1y1, x2,y2 (x1 < x2)
# >>                   % 2:3-2:4
# >>                   % 3:3-3:4
#
# >> A(2:3, 3:4) = 0            % Set to 0, 2nd and 3rd row, 
#                               % 3rd and 4th  column in A
#                               % A select (A(2:3),A(2:4)) return null
#
# A =
#
#    10   17    0   12   20
#     0   13    0    0   14
#    29    0    0    0    0
#
# >> A(A < 10) = 0     % Set to 0 (or any number), 
#                      % all numbers less than e.g.
#                      % 10
# A =
# 
#    10   15    0   12   15
#     0   15   15   15   15
#    15    0   15   15    0
#
# >> A(A == 15) = 100   % A(15) = 100 (15 --> 100)
# A =
#
#     10   100     0    12   100
#      0   100   100   100   100
#    100     0   100   100     0
#
# >> [nR nC] = size(A)  % [nR nC] ?=F(x) Row(x)Column(y)
#
# nR =  3
# nC =  5
#
#
# >> A
# A =
# 
#     10   100     0    12   100
#      0   100   100   100   100
#    100     0   100   100     0
# 
# >>
# >> for i_count = 1:nR          % Looping for each element of A
#   for j_count = 1:nC           # Riga da Sx a Dx 
#     A(i_count, j_count)        # 10 -> rN riga di 10
#   end                          # 0  -> rN riga di 0
# end                            # 10 -> rN riga di 100
# ans =  10
# ans =  100
# ans = 0
# ans =  12
# ans =  100
# ans = 0
# ans =  100
# ans =  100
# ans =  100
# ans =  100
# ans =  100
# ans = 0
# ans =  100
# ans =  100
# ans = 0
# >> if ( reminder == 0 )
#
#   display('number is even')
#
# end
#
# number is even
#
# OPPURE
# >> if (reminder ==0) display('number is even') end
# number is even
# >> if ( A(3,3) == 70) display('number equal to 70') else display('number is
# not equal to 70') end
# number is not equal to 70
#
# >> for i_count = 1:nR                 % per (nR e nC) = 2 o 3
# 
#   for j_count = 1:nC
# 
#     if ( A(i_count, j_count) > 10 )
# 
#       A(i_count, j_count) = 3
# 
#     else
# 
#       A(i_count, j_count) = 2
# 
#     end
# 
#   end
# 
# end
# 
# A =
# 
#      2   100     0    12   100
#      0   100   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     0    12   100
#      0   100   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2    12   100
#      0   100   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3   100
#      0   100   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      0   100   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2   100   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3   100   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3     3   100   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3     3     3   100
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3     3     3     3
#    100     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3     3     3     3
#      3     0   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3     3     3     3
#      3     2   100   100     0
# 
# A =
# 
#      2     3     2     3     3
#      2     3     3     3     3
#      3     2     3   100     0
# 
# A =
# 
#    2   3   2   3   3
#    2   3   3   3   3
#    3   2   3   3   0
# 
# A =
# 
#    2   3   2   3   3
#    2   3   3   3   3
#    3   2   3   3   2
#
#  
# if ( A(1,2) == 3 ) if ( A(1,3) == 2 ) display('true') end else display('false') end
# % Check first if A(1,2) equal to 3 and then A(1,3) equal to 2
#
#
# Concatenazione di stringhe !!!
# % Check if A(3,1) equal to 3 AND if A(3,2) equal to 3 AND if A(3,3) equal to 3 
# if ( A(3,1) == 3 && A(3,2) == 3 && A(3,3) == 3 )
#   display('true')
# else
#   display('false')
# end
# 
# if ( A(3,1) == 3 || A(3,2) == 3 || A(3,3) == 3 )
#   display('true')
# else
#   display('false')
# end
#
#
# if (A(2,3) == 2) display ('true') else display ('false') end
# se A((x,y) == n) dusplay ('true') else display ('false') end
#
# >> if ( A(3,1) == 3 || A(3,2) == 3) display('true') else false end
# >> if ( A(3,1) == 3 && A(3,2) == 3) display('true') else display('false') end
#
#
##############################
##############################
#
# TEORIA 007 - 008
# 
# Proiettiamo luce: Roosa Verde Blu, 
# sommate diventano Un unico colore.
# Andiamo a misurare R, G e B color function 
# e andiamo a simulare a costruire un sistema RGB.
# Sistema RGB definiamo il Tubo Catodico, 
# LED,... (Definire il colore)
# Led e lampadine.
# Differente tra LG, Philips, Samsung, ...
# Se mettismo 255,255,255 diventa bianco si nota, 
# che sia meno bianco di un altro device.
#
# r = 1
# b = 1
# g = 1
# 
# r+g+b=1,
# A(2:3, 3:4) = 0   % Set to 0, 2nd and 3rd row, 3rd and 4th  column in A
# Vanno plottati sulle X e sulle Y.
# 
# CIE Standardizzazione
# Dell'illumincaione.
# devono essere univoche per tutti. 1928 da due scenziati.
# XYZ (Blu, Verde e Rosso) sono valori di tristimolo 
# (Tristimulazione di coni), fatto dalla CIA.
# 
# GAMUT
# Visualizza con dettagli i colori che 
# non percepisce l'occhio umano.
# 
# SPETTRO DEL VISIBILE 
# K = 1/1000 Distribuzione dello 
# spettro quante candele al candela/m^2 
# candela al metro quadro).
# Integrale è una funzione teorica che da dei numeri, 
# la sommatoria di un vettore.
# Anzichè due numeri dobbiamo aggiungere fattore di riflettanza.
# Sono due cose ben distinte 
# 
# Sono tre funzioni curve che poi bisogna andare a creare l'integrale. 
# sommatoria, tre numeri e poi sommarli.
# ghilden write
# 
# CMF 1964 
# Cambiano le curve  che cambiano il dettaglio del colore.
# ##################################################
# ESERCIZIO 2 -colorimetric
# 
# >> moitor
# >> monitor setup
# 
# il software usa "sRGB", ogni produttore definisce i suoi RGB.
# Si crea sia un problema che la ricerca del produttore del fotografo,
# sono applicazioni che riconoscono le immagini in base al colore.
# Cartello della precedenza.
# 
# monitor 
# monitor setup
# sRGB
# 
# >> reference lights and white
# Manuale di istruzioni, si comprano dei color checker, 
# di fronte al monitor e vanno a calcolare questi colori.
# Per la riproduzione corretta delle immagini.
# >> colorimetry / CIE system
# 
# Dimao "diciamo" dei valori positivi che permette di dare dei valori positivi.
# 
# >> aggiungi diagra
# >> data enter 
# >> output
# >> show diagrams
# 
# è un colore fasullo, può ridimensionare la figura.
# Diversi dal diagramma di cromaticità.
# 
# linea di plank (studio di fisica elettronica), dove vanno le luci del sole. (non serve)
# 
# scpectrum, calcolo compresso e approssimative (completo) di tutto lo spetttro,
# abbiamo diverse lampadine, facciamo spectrum.
# Come doverbbe essere un cannooe di led verde in un tubo catodico.
# Set di CRI_01, "campioni" piastrelle colorate quello che viene riflesso dalla mattonella.
# Ogni produttore definite dalla CIE si può paragonare, confontare, con il colore.
# Calcolare il cannone rotativo.
# 
# Programmi che danno degli indici che l'immagine 
# è una matrice, puoi identificare l'oggetto.
# B = (3:4)
#
#
##########