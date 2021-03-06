# Giacomo       Del Ciampo
# Materia 6:    Lezione 1           14/01/2020
# Immagini      Gabriele Simone


# ESERCIZIO 1
# ?
# F = [];       ? = []; mostar a schermo
# F = []        ? = []  attributo senza visualizzare
# det(I)        ? = det e mean
# det(i)        ? = i e I
# mean(I)       ?
# mean(i)       ?
# r2 = T (2,:)  ? = (2 , :)


# console
# clc
# clear
# Esercizio 1

V = (5 7 3)   # ERROR V=[5 7 3];
A = [4 3 6 7] # ERROR A = [4 3 6 7]; 

# Esercizio 2
C = [1 2 3; 4 5 6]  # C = [1 2 3; 4 5 6]

# Esercizio 3
D = C'              # a = valore alfanumerico




# ESERCIZIO 2 (?)
# CommandWindows

# >> 7 + 3
# >> a =  8
# >> b=5
# >> c = a + b

# >> 7 + 3
ans =  10
# a = 8
a =  8
# b = 5
b =  5
# c = a + b
c =  13

####################
#
# ARITHMETIC OPERATORS  [+ ; - ; * ; .* ; / ; ./ ; .^ ]
# RELATIONAL OPERATORS  [ == ; ~= ; < ; > ]
# LOGICAL OPERATORS     [ & ; | ; ~ ; ... ]
# SPECIAL CHARATERS     [; : " "]
#
####################

# >> v = [5 7 3]
# >> A = [4 3; 6 7]
# >> B = [3 2; 1 6]
v = [5 7 3]
A = [4 3; 6 7]
B = [3 2; 1 6];

####################
# 
# 1) spazio_di_kavore:workspace = 
# [] - Filtra [] check
# [ Name ] [ Class ] [ Eight ] [ Value ] [ Attributes ]
# [ Name ] [ click ] [ ----- ] [ ----- ] [ ---------- ]
#
# 2) Editor di variabili
# "Studio di funzioni"
# 
####################

B = [3 2; 1 6];
z = v'
# raw function [clic on]
# see function [column]

C = [ 1 2 3 ; 4 5 6 ];
D = C'
# raw function [clic on]
# see function [column]

F = D + E # Error E
H = D .* E
I = C * D
I
det(I)




##############################
# ESERCIZIO 3
# III 2 
#V 
# >> v = [5 7 3]
# >> A = [4 3; 6 7]
# >> B = [3 2; 1 6]
v = [5 7 3]
A = [4 3; 6 7]
B = [3 2; 1 6];

####################
# 
# 1) spazio_di_kavore:workspace = 
# [] - Filtra [] check
# [ Name ] [ Class ] [ Eight ] [ Value ] [ Attributes ]
# [ Name ] [ click ] [ ----- ] [ ----- ] [ ---------- ]
#
# 2) Editor di variabili
# "Studio di funzioni"
# 
####################
B = [3 2; 1 6];
z = v'
# raw function [clic on]
# see function [column]
C = [ 1 2 3 ; 4 5 6 ];
D = C'
# raw function [clic on]
# see function [column]
F = D + E # Error E
H = D .* E
I = C * D
I
det(I)
det(i)
mean(I)
mean(i) 
mean2(I)  # pkg error 
det(I)    # error
##############################

V = [5 7 3];
# Esercizio 1
B = [3 2; 1 6];

# Esercizi 1
Z = V'

# Esercizio 2
C = [1 2 3; 4 5 6];
D = C'

# Esercizio 3
F = D + E # error E
G = D * E
H = D .* E

# mean(i)
>> mean(I)
mean(I)
# mean2(i)
>> mean2(I)
mean2(I)





# ESERCIZIO 4
# Matlab pre-built functions
# Min Max exp log 
# sin cos foor ceil ...

T = zeros(3,5)  # Matrix 0
U = ones(6,2)   # Matrix 1
R = rand(3,3)   # Matrix 
                # 0 < x > 1

T = zeros(3,5)
# T =
#
#    0   0   0   0   0
#    0   0   0   0   0
#    0   0   0   0   0
U = ones(6,2)
# U =
#
#    1   1
#    1   1
#    1   1
#    1   1
#    1   1
#    1   1
R = rand(3,3)
# R =
#
#    0.89512   0.22851   0.37330
#    0.26394   0.13390   0.98600
#    0.91616   0.78060   0.54384
r = rand(29)
# r2 = T * "2 , :" :  #NO
T = rand( 29, 3, 5 )
# T =
#
# ans(:,:,1) =
#
#    0.412435   0.359969   0.299598
#    0.119229   0.789677   0.758135
#    0.591449   0.468270   0.215421
#    0.122772   0.560724   0.222076
#    0.271948   0.103002   0.936351
#    0.064436   0.125952   0.011945
#    0.098041   0.644960   0.635336
#    0.103768   0.681393   0.232691
#    0.780191   0.831391   0.300506
#    0.265144   0.445702   0.850219
#    0.968653   0.223234   0.934341
#    0.496772   0.233788   0.850391
#    0.656625   0.152448   0.707966
#    0.095537   0.415976   0.433807
#    0.276668   0.968981   0.333392
#    0.329489   0.480508   0.234707
#    0.661463   0.638584   0.440102
#    0.576518   0.809659   0.323665
#    0.067531   0.709823   0.250600
#    0.455765   0.287346   0.606850
#    0.594188   0.923699   0.288255
#    0.202390   0.409623   0.661091
#    0.181481   0.565626   0.091172
#    0.296040   0.438906   0.793811
#    0.709530   0.725074   0.651382
#    0.823605   0.842286   0.594771
#    0.065947   0.872690   0.191933
#    0.884609   0.332618   0.470228 
#    0.546966   0.309445   0.114170
#
# ans(:,:,2) =
#
#    0.1318477   0.2303708   0.5905373
#    0.8380522   0.5925988   0.3683502
#    0.8148445   0.0053516   0.5058905
#    0.3770168   0.4451146   0.9109501
#    0.9119739   0.8003168   0.2482107
#    0.1125361   0.7620715   0.2136592
#    0.3687909   0.8191581   0.1026948
#    0.9624414   0.3821118   0.2582376
#    0.4578772   0.2033868   0.7992119
#    0.2080116   0.0225230   0.7574666
#    0.5345055   0.3568928   0.4919805
#    0.2098860   0.3021256   0.7166741
#    0.7521385   0.5720408   0.4775830
#    0.7086630   0.8017758   0.1149907
#    0.9123817   0.4289870   0.9190065
#    0.2206719   0.4966925   0.5552349
#    0.6388082   0.5354176   0.0823162
#    0.4087557   0.8236163   0.3390124
#    0.2199200   0.1602753   0.4587573
#    0.5924575   0.0885047   0.3991766
#    0.4109965   0.9759526   0.5434372
#    0.6423188   0.9874750   0.4426197
#    0.5194073   0.6838155   0.4868448
#    0.1725410   0.5342207   0.4630918
#    0.0182271   0.6786767   0.8255047
#    0.3342541   0.6469100   0.7374596
#    0.7531141   0.8102350   0.9371816
#    0.9217394   0.9495610   0.3698731
#    0.1062398   0.2383453   0.6204846
#
# ans(:,:,3) =
#
#    0.3797021   0.0096418   0.3739552
#    0.2486303   0.8268309   0.2224762
#    0.5338929   0.1350934   0.3155674
#    0.6237117   0.2898520   0.3490048
#    0.4269166   0.4427201   0.4504098
#    0.8841755   0.9628173   0.3197224
#    0.2164966   0.8924258   0.3354199
#    0.6447402   0.5056221   0.7720678
#    0.0671177   0.1163099   0.4739551
#    0.4144602   0.9938678   0.9725383
#    0.1580829   0.7705848   0.4418974
#    0.3682426   0.9226798   0.7193273
#    0.2208767   0.5716419   0.0230721
#    0.6613483   0.8728343   0.2717968
#    0.9039099   0.6025052   0.5395509
#    0.2642617   0.4318450   0.5242671
#    0.1496797   0.8953826   0.3474075
#    0.1646742   0.7880831   0.9023641
#    0.3640848   0.3426319   0.3093398
#    0.2246676   0.6543006   0.1440982
#    0.7726185   0.6939110   0.0258299
#    0.3549791   0.0528736   0.7014915
#    0.7253641   0.0798013   0.9634014
#    0.3828903   0.2885886   0.9317948
#    0.3617474   0.4469088   0.4114036
#    0.9986213   0.8949553   0.7615681
#    0.2697131   0.3535486   0.8206884
#    0.4097481   0.4570849   0.8519244
#    0.6488297   0.1878000   0.9533622
#
# ans(:,:,4) =
#
#    0.053880   0.295260   0.548621
#    0.989212   0.428302   0.293502
#    0.859604   0.290363   0.649617
#    0.371060   0.567712   0.809699
#    0.874327   0.061720   0.920020
#    0.957914   0.812185   0.379271
#    0.417801   0.445264   0.876579
#    0.165135   0.049145   0.568597
#    0.241430   0.706340   0.359450
#    0.395290   0.265555   0.249010
#    0.553485   0.995399   0.493629
#    0.930653   0.941581   0.096322
#    0.656266   0.172935   0.623424
#    0.709286   0.719344   0.472758
#    0.741418   0.918893   0.559595
#    0.036513   0.759809   0.746188
#    0.809398   0.233492   0.908831
#    0.608863   0.361768   0.948083
#    0.862076   0.275054   0.187615
#    0.536627   0.077457   0.469526
#    0.284718   0.056508   0.085874
#    0.957630   0.822541   0.154458
#    0.043498   0.798091   0.425263
#    0.435660   0.238164   0.257206
#    0.936986   0.875811   0.260088
#    0.487067   0.697647   0.997534
#    0.373623   0.122419   0.182961
#    0.570320   0.815846   0.973545
#    0.106496   0.705611   0.712296
#
# ans(:,:,5) =
#
#    0.98087883   0.26534997   0.27350444
#    0.16716236   0.62572836   0.16542765
#    0.04379833   0.49095913   0.63777205
#    0.59463966   0.64494730   0.64010243
#    0.32780044   0.77626226   0.85509052
#    0.87589727   0.29570167   0.70357608
#    0.01478701   0.79135908   0.70608600
#    0.82628802   0.73950656   0.04683267
#    0.91760004   0.96595416   0.53055246
#    0.03153396   0.04959370   0.11295976
#    0.89809514   0.47525662   0.28588973
#    0.04514197   0.22577124   0.14003061
#    0.88976063   0.65298406   0.55528863
#    0.77628790   0.69848618   0.54228823
#    0.96921907   0.58904089   0.71716367
#    0.48255712   0.58770979   0.87287832
#    0.35719128   0.15582610   0.26578744
#    0.34522199   0.39592495   0.60674617
#    0.93937094   0.41464407   0.46276599
#    0.00041223   0.88882007   0.56533230
#    0.40938420   0.08128426   0.16902359
#    0.48921343   0.50109728   0.56709138
#    0.68251765   0.41633915   0.30255260
#    0.61096867   0.87681243   0.20839563
#    0.20207525   0.94012011   0.82730546
#    0.20217492   0.44161781   0.86051971
#    0.88090812   0.43714573   0.16077702
#    0.49223735   0.84296508   0.03576198
#    0.70554178   0.19089694   0.94810644
####################
r2 = T(2,:)
# r2 =
#
#  Columns 1 through 9:
#
#    0.29482   0.70670   0.79240   0.36011   0.28005   0.97179   0.60148   0.79837   0.33111
#
#  Columns 10 through 15:
#
#    0.49110   0.28430   0.98306   0.95132   0.27539   0.51210
####################
c4 = T (:,4)
# c4 =
#
#    0.1372553
#    0.3601063
#    0.5545801
#    0.1019837
#    0.7697601
#    0.9138246
#    0.8702071
#    0.3545104
#    0.4050313
#    0.5348744
#    0.7134813
#    0.9423947
#    0.3693595
#    0.0760652
#    0.5348877
#    0.9939766
#    0.4347043
#    0.4788166
#    0.9161114
#    0.0088311
#    0.3863957
#    0.0636572
#    0.7922542
#    0.1985556
#    0.4956492
#    0.9811235
#    0.1464266
#    0.7207472
#    0.6372147
#
####################
x = 0:9
#
#x =
#
#    0   1   2   3   4   5   6   7   8   9
#
#
y=rand(1,10)
####################
# y =
#
#  Columns 1 through 8:
#
#    0.374967   0.667801   0.694812   0.079416   0.653202   0.621280   0.394334   0.677024
#
#  Columns 9 and 10:
#
#    0.960007   0.354387
#
#
####################
   
plot(x,y)
stem(x,y)
bar(x,y)




# myfirst_Matlab_script.m
clear all 
close all 
display ('Hello People !')
% Vector
v=rand(3, 1)
# v=rand(3, 1)
#
# v =
#
#    0.51934
#    0.16128
#    0.33244
####################
% Matrice
M = rand(3, 3)
# M =
#
#    0.026471   0.062592   0.176103
#    0.768306   0.425511   0.877598
#    0.272119   0.123648   0.528960
####################
% "Universe = Matrix * Vector"
% Matrix Vector multiplication
u = M * v;
u
#
# u =
#
#    0.082387
#    0.759394
#    0.337114
#
####################
display(u)
# Result
save('u.mat', 'u') 
# save faile=extensions , save u=value
