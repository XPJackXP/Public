# Del Ciampo 
# Materia 6:  Lezione 2       15/01/2020
# Immagini    Gabriele Simone


# pkg install package
# install image
# install control
# install signal
# cd "../directory"/
# start .\file.m
pkg install -forge image
pkg install -forge control
pkg install -forge signal
# Control pkg in repository
pkg list 
# loade pkg in repository
pkg load image
pkg load control
pkg load signal

# START
# 1
A = rand(3,3)
# 1 + 2
# 2
# mean2(A) disponibile su MatLab 
mean2(A)
# 3
Img = imread('LENA.bmp')
# END


####################


I Esercizio
# install
pkg install -forge image
# end
pkg install -forge control
pkg install -forge signal
# control
pkg list
# if image are or not are installed

# Test install image
pkg  load image
# END 1x1


# 1
A = rand(3,3)
# 1 + 2
# 2
# MEAN2 MatLab
mean2(A)
# 3
Img = imread('LENA.bmp')



