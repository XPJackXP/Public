# Materia 6: 			  Lezione 6           	04/02/2020
# Video    		    	Gabriele Simone

# 009 - Image Processing 	[N]
# 010 - OcatveExercise_4 	[Y]
# 011 - 011 - ColorScience 	[Y]
# 2020_02_04 - Video_6.txt 	[Y]

####################

# 010 - OcatveExercise_4

% My Fourth Script (gabriele.simone@di.unimi.it)
% Further Matrix Computation

clear all
close all

display('Further Matrix Computation Exercise')
A = [10 20 20 12 20; 7 7 20 15 12; 10 2 5 2 10]


% Size of A, retrieve the numbers of rows and columns
# ? = nR & nC (Quante righe e qunate colonne)
[nR nC] = size(A)               

% Rewrite matrix in 1 row and maximum number of elements
# 'reshape' is a built-in function from the file libinterp/corefcn/data.cc
#  -- reshape (A, M, N, ...)
#  -- reshape (A, [M N ...])
#  -- reshape (A, ..., [], ...)
#  -- reshape (A, SIZE)
#      Return a matrix with the specified dimensions (M, N, ...) whose
#      elements are taken from the matrix A.
# ! = 
#     SHOW ONLY ROW (reshape)
#     riorganizza 1nR "numeroRighe" .*"concatenazione" nC"0_numeroColonne"
B = reshape(A, [1 nR .* nC])

% Calculate histogram of B
H = hist(B, max(B))
% Plot the histogram
figure; 
bar(H)

% Looping for each element of A and change numbers less than 10 to 3
# n < 10 = 3 
for i_count = 1:nR
  for j_count = 1:nC
    if (A(i_count, j_count) < 10) 
      A(i_count, j_count)  = 3
    end
  end
end
# thr 
D = thr(A, 5)
E = thr(A, 7)
G = thr(A, 2)
plot(D)
plot(E)
plot(G)

# 
# >> d=thr(A,1)
# thr
# B =
# 
#    10   20   20   12   20
#     3    3   20   15   12
#    10    3    3    3   10
# 
# d =
# 
#    10   20   20   12   20
#     3    3   20   15   12
#    10    3    3    3   10
# 
# >> d=thr(A,2)
# thr
# B =
# 
#    20   40   40   24   40
#     6    6   40   30   24
#    20    6    6    6   20
# 
# d =
# 
#    20   40   40   24   40
#     6    6   40   30   24
#    20    6    6    6   20
#
#
########################################
########################################

# 011 - ColorScience

# Pag.2
clear all
close all
clc
display('Color Science Exercise');

# Pag.3
% load illuminant /load program
load('ILL_D65.mat')
% load CMFs
load('CMF_CIE31.mat')
% load object reflectance
load('OBJ_Reflectance.mat')
#
# Pag.4
% Extract Spectral Power Distribution
S_ill = ILL_D65(:, 2)
% Extract Object Reflectance
R_obj = _Reflectance(:, 2)
#
# Pag.5
% Extract color matching functions (CMFs) X, Y and Z
X_cmf = CMF_CIE31(:, 2)
Y_cmf = CMF_CIE31(:, 3)
Z_cmf = CMF_CIE31(:, 4)
#
# Pag.6
% Calculate normalizing constant k
k = 1 ./ sum(S_ill .* Y_cmf)
#
#
#
########################################
########################################
#
# 2020_02_04 - Video_6
Spazio RGB
clear all 
clc
Q=(L M S)   # error
Q=(R, G, B)
Q=(X, Y, Z)
# 
# Spazio ideato nel 1960
# Diagramma ha un problema, 01x05 a 02x05 (X Y - ascisse per ordinata)
# Elissi di MacAdam 
# 1976 - Si decide di costruire la CIE L*a*b
# Si definisce dal colore di 3 muneri RGB, (RedGreenBlu), Il modo per misurare i colori.
# CIELAB
# CIE 1976, per colore si intende  una mattonella proiettata sul muro XYZ 1931, illuminante.
Xn,Yn=100,Zn
# 
# Teorema di pitagora.
E= 2 radice quadtrata (Delta L*)^2 + (Delta a*)^2 + (Delta b*)^2
# 
DL* = L*standard - L*sample
Da* = L*standard - a*sample
Db* = b*standard - b*sample
# 
# 1930 - Spazio di trestimolo, XYZ deve essere trasformato in RGB.
# 
# Bianco, Lihghtness 
L*= 50 si vede un set di colori.
L*= 33 Tende dimunuire i colori.
# 
# Non tutti i colori sono riproducibili dal monitor. C'è la possibilità per tagliare in diagonale.
# Qunado andiamo a tagliare, il programma inserisce un esteso set di numeri.
# 
# COLORMIMETICS
#
########################################
########################################