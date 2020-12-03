# Materia 6:          Lezione 7           	05/02/2020
# Immagini            Gabriele Simone

# 016 - Octave Exercise 5

# Pag.1 - Gabriele Simone
# Pag.2

clear all
close all
display('Function Exercise')
A = [10 20 20 12 20; 7 7 20 15 12]

# Pag.3
[M N] = size(A)

# Pag.4 (Pag:5-6) OK
function MyFirstFunction()
  display('Hello I am MyFirstFunction') 
endfunction

# Pag.7 (7 : 10)
function MySecondFunction(myVar)
  display('Hello I am MySecondFunction')
  myVar
endfunction
# Pag.8
MySecondFunction('Cheers')
MySecondFunction(7)
function MySecondFunction()
  display('Cheers')
  myVar(7);
endfunction
# Pag.9
function MySecondFunction('Cheers', myVal)
  display('Hello I am MySecondFunction')
  myVar
  myVal
endfunction
# Pag.10
MySecondFunction('Cheers', 'Folk')
MySecondFunction(7, 33)
MySecondFunction('Hello', 100)
# ?Pag.7:10 
function MySecondFunction(myVar)
  display('Cheers', Folk)
  myVar (7, 33);
  myVar2 ('Hello', 100)
endfunction
# Pag.11
function [ResS, ResM] =
MyThirdFunction(numA, numB)
  display('Hello I am MyThirdFunction')
  numA
  numB
  ResS = numA + numB
  ResM = numA .* numB
endfunction

[S, M] = MyThirdFunction(7, 3)

#########################################
#########################################

# Pag.1 - Gabriele Simone
# Pag.2

clear all
close all
display('Function Exercise')
A = [10 20 20 12 20; 7 7 20 15 12]

# Pag.3
%Retrieve size of A
[M N] = size(A)

# Pag.4 (Pag:5-7)
function MyFirstFunction()
  display('Hello I am MyFirstFunction')
endfunction

# Pag.7
function MySecondFunction(myVar)
  display('Hello I am MySecondFunction')
  myVar
endfunction

# Pag.8
% Call MySecondFunction (from MyFifthScript.m)
% with a sentence % with a number
# MySecondFunction('Cheers')
# MySecondFunction(7)

function MySecondFunction()
  display('Hello I am MySecondFunction')
  myVar(7);
endfunction

# Pag.9
function MySecondFunction(myVar, myVal)
  display('Hello I am MySecondFunction')
  myVar
  myVal
endfunction

# Pag.10
% Call MySecondFunction (from MyFifthScript.m)
% with two sentences
MySecondFunction('Cheers‘, 'Folk')
% with two numbers
MySecondFunction(7, 33)
% with a sentence and a number
MySecondFunction('Hello', 100)

MySecondFunction('Cheers', 'Folk')
MySecondFunction(7, 33)
MySecondFunction('Hello', 100)

# Pag.11
function [ResS, ResM] =
MyThirdFunction(numA, numB)
  display('Hello I am MyThirdFunction')
  numA
  numB
  ResS = numA + numB
  ResM = numA . * numB
endfunction

# Pag.12
% Call MyThirdFunction (from MyFifthScript.m)
[S, M] = MyThirdFunction(7, 3)

