# Del Ciampo 
# Materia 6:  Lezione 2       15/01/2020
# Immagini    Gabriele Simone

####################

# prompt Octave

# Parte_Sportarsi_1
# exit directory
# / \ local
cd /   #  / Directoru
cd #   #  # Io
cd d:/
cd c

# help
help
info 
help cd
info /
/ -?
cd -h

# enter Disk dir
dir
ls
ls -l # ll elle (l)
cd /dev
cd \dev
cd usr/var
# enter Volume
cd 007\ -\ Simone\ -\ Video/ # SI
cd "007 - Simone - Video"/   # SI
cd "007 - Simone - Video"    # NO
# cd "007\ -\ Simone\ -\ Video" # no
cd "/d/jack_/Utenti/003 - Desktop/005 - Istruzione/004 - corsi secondari/IFTS - Luigi Clerici 2020/007 - Simone - Video/Gabriele Simone ZIP/SimoneZip_1/Revisione_Lezione_2/Simone_workspace_1"/

# \ enter  = Move to dir 
# / exec   = Execution file

# Parte_configFile_2
start delciampo_video_1.m

# Creare e Salvare File

####################
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



