
fplr <img alt="fplr Logo" title="fplr" align="right" src="man/figures/fplr_logo.png" width="100" style="float:right;width:100px;"/>
===================================================================================================================================

[![Build Status](https://travis-ci.org/ewenme/fplr.png)](https://travis-ci.org/ewenme/fplr) [![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)

An R package that provides a compendium of tools for working with [Fantasy Premier League](https://fantasy.premierleague.com) (FPL) data in R.

Installation
------------

Get the development version from GitHub. Because of the lack of dev support from FPL, the package is unlikely to be submitted to CRAN anytime soon.

``` r
if (!require(remotes)) {
  install.packages("remotes") 
  }

# install package from github
remotes::install_github("ewenme/fplr")
```

Usage
-----

### Example analysis

[FPL Mythbusting with fplr](https://ewen.io/2017/06/25/fpl-mythbusting-with-fplr/)

### Player data

Get data on all players in the current FPL season:

``` r
# load package
library(fplr)

fpl_get_players()
##      id      photo         web_name team_code    status   code
## 1     1  11334.jpg             Cech         3 Available  11334
## 2     2  80201.jpg             Leno         3 Available  80201
## 3     3  51507.jpg        Koscielny         3   Injured  51507
## 4     4  98745.jpg         Bellerín         3 Available  98745
## 5     5  38411.jpg          Monreal         3 Available  38411
## 6     6 156074.jpg          Holding         3 Available 156074
## 7     7  69140.jpg          Mustafi         3 Available  69140
## 8     8 111457.jpg        Kolasinac         3 Available 111457
## 9     9 101184.jpg         Chambers         3 Available 101184
## 10   10 233963.jpg       Mavropanos         3 Available 233963
## 11   11  27335.jpg     Lichtsteiner         3 Available  27335
## 12   12  39476.jpg         Sokratis         3 Available  39476
## 13   13  37605.jpg             Özil         3 Available  37605
## 14   14  41792.jpg           Ramsey         3 Available  41792
## 15   15 153133.jpg            Iwobi         3 Available 153133
## 16   16 153256.jpg           Elneny         3 Available 153256
## 17   17  84450.jpg            Xhaka         3 Available  84450
## 18   18  57249.jpg       Mkhitaryan         3 Available  57249
## 19   19 200641.jpg           Nelson         3 Available 200641
## 20   20 154043.jpg   Maitland-Niles         3 Available 154043
## 21   21  50175.jpg          Welbeck         3 Available  50175
## 22   22  59966.jpg        Lacazette         3 Available  59966
## 23   23  54694.jpg       Aubameyang         3 Available  54694
## 24   24  40349.jpg          Begovic        91 Available  40349
## 25   25  18726.jpg            Boruc        91 Available  18726
## 26   26  15149.jpg          Francis        91 Available  15149
## 27   27  56917.jpg       Steve Cook        91 Available  56917
## 28   28  41320.jpg          Daniels        91 Available  41320
## 29   29  54469.jpg       Adam Smith        91 Available  54469
## 30   30 149484.jpg            Mings        91 Available 149484
## 31   31 126184.jpg              Aké        91 Available 126184
## 32   32 222434.jpg          Simpson        91 Available 222434
## 33   33  48615.jpg            Arter        91 Available  48615
## 34   34  20037.jpg             Pugh        91 Available  20037
## 35   35  15237.jpg           Surman        91 Available  15237
## 36   36  56872.jpg        Stanislas        91   Injured  56872
## 37   37  40387.jpg          Gosling        91 Available  40387
## 38   38 103912.jpg              Ibe        91 Available 103912
## 39   39 155408.jpg       Lewis Cook        91 Available 155408
## 40   40  90105.jpg           Fraser        91 Available  90105
## 41   41 122342.jpg          Hyndman        91 Available 122342
## 42   42 111317.jpg           Brooks        91 Available 111317
## 43   43  75115.jpg           Wilson        91 Available  75115
## 44   44 178304.jpg          Mousset        91 Available 178304
## 45   45  78007.jpg             King        91 Available  78007
## 46   46   7958.jpg            Defoe        91 Available   7958
## 47   47 131897.jpg             Ryan        36 Available 131897
## 48   48  83299.jpg             Dunk        36 Available  83299
## 49   49  61933.jpg            Duffy        36  Doubtful  61933
## 50   50  11352.jpg            Bruno        36 Available  11352
## 51   51  42748.jpg             Bong        36 Available  42748
## 52   52  43808.jpg          Suttner        36 Available  43808
## 53   53  74375.jpg        Schelotto        36 Available  74375
## 54   54  52484.jpg          Balogun        36 Available  52484
## 55   55  83543.jpg        Knockaert        36 Available  83543
## 56   56  40845.jpg         Stephens        36 Available  40845
## 57   57  38490.jpg            Kayal        36 Available  38490
## 58   58 109345.jpg            March        36 Available 109345
## 59   59  60307.jpg             Groß        36 Available  60307
## 60   60  66242.jpg          Pröpper        36 Available  66242
## 61   61 167473.jpg        Izquierdo        36 Available 167473
## 62   62  20529.jpg           Murray        36 Available  20529
## 63   63  38499.jpg            Hemed        36 Available  38499
## 64   64  28462.jpg          Baldock        36 Available  28462
## 65   65 106757.jpg          Locadia        36 Available 106757
## 66   66  93284.jpg           Andone        36 Available  93284
## 67   67  21205.jpg           Heaton        90 Available  21205
## 68   68  98747.jpg             Pope        90 Available  98747
## 69   69  68983.jpg           Lowton        90 Available  68983
## 70   70  51927.jpg              Mee        90 Available  51927
## 71   71  40616.jpg             Ward        90 Available  40616
## 72   72  17761.jpg        Tarkowski        90 Available  17761
## 73   73  41674.jpg             Long        90 Available  41674
## 74   74 103914.jpg           Taylor        90 Available 103914
## 75   75  17997.jpg         Bardsley        90 Available  17997
## 76   76  60586.jpg      Gudmundsson        90 Available  60586
## 77   77  39847.jpg           Defour        90  Doubtful  39847
## 78   78  83314.jpg         Hendrick        90 Available  83314
## 79   79  90517.jpg            Brady        90  Doubtful  90517
## 80   80  60551.jpg         Westwood        90 Available  60551
## 81   81  12813.jpg          Walters        90 Available  12813
## 82   82  40145.jpg             Cork        90 Available  40145
## 83   83  17349.jpg           Lennon        90 Available  17349
## 84   84  40399.jpg            Vokes        90 Available  40399
## 85   85  44699.jpg           Barnes        90 Available  44699
## 86   86  92383.jpg            Wells        90 Available  92383
## 87   87  60689.jpg             Wood        90 Available  60689
## 88   88  88734.jpg        Etheridge        97 Available  88734
## 89   89  45220.jpg         Smithies        97 Available  45220
## 90   90  49982.jpg         Morrison        97 Available  49982
## 91   91  19523.jpg            Bamba        97 Available  19523
## 92   92  49382.jpg     Ecuele Manga        97 Available  49382
## 93   93  27698.jpg         Connolly        97 Available  27698
## 94   94  56981.jpg          Bennett        97 Available  56981
## 95   95  38716.jpg          Peltier        97 Available  38716
## 96   96  73459.jpg    Jazz Richards        97 Available  73459
## 97   97  14927.jpg          Halford        97 Available  14927
## 98   98 104073.jpg            Ralls        97 Available 104073
## 99   99  49806.jpg          Hoilett        97 Available  49806
## 100 100  76360.jpg     Mendez-Laing        97 Available  76360
## 101 101 122797.jpg         Paterson        97 Available 122797
## 102 102  49845.jpg       Gunnarsson        97 Available  49845
## 103 103  40451.jpg       Pilkington        97 Available  40451
## 104 104  54527.jpg           Damour        97 Available  54527
## 105 105  75826.jpg             Ward        97 Available  75826
## 106 106 114245.jpg           Murphy        97 Available 114245
## 107 107  82078.jpg           Zohore        97 Available  82078
## 108 108 114054.jpg            Bogle        97 Available 114054
## 109 109  45196.jpg           Madine        97 Available  45196
## 110 110  96994.jpg             Reid        97 Available  96994
## 111 111  60772.jpg         Courtois         8 Available  60772
## 112 112  20310.jpg        Caballero         8 Available  20310
## 113 113  41328.jpg      Azpilicueta         8 Available  41328
## 114 114  19419.jpg           Cahill         8 Available  19419
## 115 115  82263.jpg           Alonso         8 Available  82263
## 116 116  41270.jpg       David Luiz         8  Doubtful  41270
## 117 117  49013.jpg            Moses         8 Available  49013
## 118 118 102380.jpg          Rüdiger         8 Available 102380
## 119 119 135363.jpg      Christensen         8 Available 135363
## 120 120 105700.jpg       Zappacosta         8 Available 105700
## 121 121 109533.jpg          Emerson         8 Available 109533
## 122 122  42786.jpg           Hazard         8 Available  42786
## 123 123  17878.jpg         Fàbregas         8 Available  17878
## 124 124  47431.jpg          Willian         8 Available  47431
## 125 125  49579.jpg            Pedro         8 Available  49579
## 126 126 116594.jpg            Kanté         8 Available 116594
## 127 127  88894.jpg          Barkley         8 Available  88894
## 128 128  61603.jpg       Drinkwater         8 Available  61603
## 129 129 169102.jpg         Bakayoko         8 Available 169102
## 130 130 199598.jpg           Ampadu         8  Doubtful 199598
## 131 131 209046.jpg      Hudson-Odoi         8 Available 209046
## 132 132 126187.jpg     Loftus-Cheek         8 Available 126187
## 133 133  44346.jpg           Giroud         8 Available  44346
## 134 134  88482.jpg           Morata         8 Available  88482
## 135 135  20066.jpg        Hennessey        31 Available  20066
## 136 136  11554.jpg          Speroni        31 Available  11554
## 137 137  40836.jpg           Guaita        31 Available  40836
## 138 138  49413.jpg          Tomkins        31 Available  49413
## 139 139  19188.jpg             Dann        31   Injured  19188
## 140 140  58786.jpg            Kelly        31 Available  58786
## 141 141  86417.jpg          Schlupp        31 Available  86417
## 142 142  74230.jpg      van Aanholt        31 Available  74230
## 143 143  40784.jpg            Sakho        31 Available  40784
## 144 144 173954.jpg        Riedewald        31 Available 173954
## 145 145 214590.jpg      Wan-Bissaka        31 Available 214590
## 146 146  19197.jpg         Puncheon        31 Available  19197
## 147 147  50471.jpg         McArthur        31 Available  50471
## 148 148  44343.jpg             Sako        31  Doubtful  44343
## 149 149  60252.jpg         Townsend        31 Available  60252
## 150 150  66975.jpg      Milivojevic        31 Available  66975
## 151 151  82403.jpg             Zaha        31 Available  82403
## 152 152  54861.jpg          Benteke        31 Available  54861
## 153 153 143877.jpg          Sørloth        31 Available 143877
## 154 154 111234.jpg         Pickford        11 Available 111234
## 155 155  10318.jpg     Stekelenburg        11  Doubtful  10318
## 156 156  12745.jpg           Baines        11 Available  12745
## 157 157  59949.jpg          Coleman        11 Available  59949
## 158 158   7645.jpg         Jagielka        11 Available   7645
## 159 159  19159.jpg         Williams        11 Available  19159
## 160 160 194164.jpg          Holgate        11 Available 194164
## 161 161 153673.jpg            Kenny        11 Available 153673
## 162 162 106611.jpg            Keane        11 Available 106611
## 163 163  56192.jpg          Martina        11 Available  56192
## 164 164  20467.jpg          Walcott        11 Available  20467
## 165 165  55452.jpg          Bolasie        11 Available  55452
## 166 166  50472.jpg         McCarthy        11   Injured  50472
## 167 167  42774.jpg     Schneiderlin        11 Available  42774
## 168 168  80801.jpg            Gueye        11 Available  80801
## 169 169 173807.jpg           Davies        11 Available 173807
## 170 170 219352.jpg          Lookman        11 Available 219352
## 171 171 109065.jpg         Klaassen        11 Available 109065
## 172 172  55422.jpg       Sigurdsson        11 Available  55422
## 173 173 180151.jpg           Vlasic        11 Available 180151
## 174 174 195855.jpg        Baningime        11 Available 195855
## 175 175 177815.jpg    Calvert-Lewin        11 Available 177815
## 176 176 113688.jpg           Niasse        11 Available 113688
## 177 177  66838.jpg            Tosun        11 Available  66838
## 178 178 122074.jpg       Bettinelli        54 Available 122074
## 179 179  50093.jpg           Button        54 Available  50093
## 180 180  82514.jpg             Ream        54 Available  82514
## 181 181  72681.jpg             Odoi        54 Available  72681
## 182 182  76357.jpg          Cairney        54 Available  76357
## 183 183  55038.jpg         McDonald        54 Available  55038
## 184 184 184349.jpg        Sessegnon        54 Available 184349
## 185 185  61916.jpg         Johansen        54 Available  61916
## 186 186  54421.jpg            Ayité        54 Available  54421
## 187 187  92259.jpg           Kebano        54 Available  92259
## 188 188  58476.jpg            Fonte        54 Available  58476
## 189 189 197030.jpg           Kamara        54 Available 197030
## 190 190  38038.jpg            Hamer        38 Available  38038
## 191 191  57513.jpg            Lössl        38 Available  57513
## 192 192  85368.jpg        Schindler        38 Available  85368
## 193 193  54284.jpg             Löwe        38 Available  54284
## 194 194 104545.jpg            Smith        38 Available 104545
## 195 195  48760.jpg            Zanka        38 Available  48760
## 196 196  79733.jpg           Malone        38 Available  79733
## 197 197 172246.jpg      Hadergjonaj        38 Available 172246
## 198 198 109434.jpg          Kongolo        38 Available 109434
## 199 199  74471.jpg             Mooy        38 Available  74471
## 200 200  51344.jpg     van La Parra        38 Available  51344
## 201 201  79619.jpg             Hogg        38 Available  79619
## 202 202 168991.jpg          Billing        38 Available 168991
## 203 203  86176.jpg             Ince        38 Available  86176
## 204 204  80755.jpg         Williams        38   Injured  80755
## 205 205 246878.jpg           Sabiri        38 Available 246878
## 206 206 106450.jpg        Pritchard        38 Available 106450
## 207 207 205102.jpg            Sobhi        38 Available 205102
## 208 208 204380.jpg           Bacuna        38 Available 204380
## 209 209  84112.jpg           Quaner        38 Available  84112
## 210 210 147303.jpg         Depoitre        38 Available 147303
## 211 211 169141.jpg           Mounie        38 Available 169141
## 212 212  87428.jpg         Kachunga        38  Doubtful  87428
## 213 213  17745.jpg       Schmeichel        13 Available  17745
## 214 214  11974.jpg        Jakupovic        13 Available  11974
## 215 215  15033.jpg           Morgan        13 Available  15033
## 216 216  37402.jpg            Fuchs        13 Available  37402
## 217 217  40725.jpg          Simpson        13 Available  40725
## 218 218  41321.jpg       Benalouane        13 Available  41321
## 219 219 172850.jpg         Chilwell        13  Doubtful 172850
## 220 220  95658.jpg          Maguire        13 Available  95658
## 221 221 111931.jpg          Pereira        13 Available 111931
## 222 222  37642.jpg            Evans        13 Available  37642
## 223 223 103025.jpg           Mahrez        13 Available 103025
## 224 224  51938.jpg       Albrighton        13 Available  51938
## 225 225 172632.jpg             Gray        13 Available 172632
## 226 226 155569.jpg          Amartey        13 Available 155569
## 227 227 203341.jpg            Ndidi        13 Available 203341
## 228 228  54513.jpg           Iborra        13 Available  54513
## 229 229  61604.jpg            James        13  Doubtful  61604
## 230 230 197469.jpg        Choudhury        13 Available 197469
## 231 231  46483.jpg            Silva        13 Available  46483
## 232 232 210207.jpg          Diabaté        13 Available 210207
## 233 233 172780.jpg         Maddison        13  Doubtful 172780
## 234 234 101668.jpg            Vardy        13 Available 101668
## 235 235  78412.jpg          Okazaki        13 Available  78412
## 236 236 173515.jpg        Iheanacho        13 Available 173515
## 237 237  66797.jpg         Mignolet        14 Available  66797
## 238 238 104542.jpg           Karius        14 Available 104542
## 239 239  38454.jpg           Lovren        14 Available  38454
## 240 240 100059.jpg           Moreno        14 Available 100059
## 241 241  57328.jpg            Clyne        14 Available  57328
## 242 242 171287.jpg            Gomez        14  Doubtful 171287
## 243 243  60914.jpg            Matip        14 Available  60914
## 244 244  33871.jpg           Klavan        14 Available  33871
## 245 245 169187.jpg Alexander-Arnold        14 Available 169187
## 246 246  97032.jpg         van Dijk        14 Available  97032
## 247 247 122798.jpg        Robertson        14 Available 122798
## 248 248  81880.jpg      Chamberlain        14   Injured  81880
## 249 249  56979.jpg        Henderson        14 Available  56979
## 250 250  39155.jpg          Lallana        14 Available  39155
## 251 251 110979.jpg             Mané        14 Available 110979
## 252 252  41733.jpg        Wijnaldum        14 Available  41733
## 253 253 118748.jpg            Salah        14 Available 118748
## 254 254  15157.jpg           Milner        14 Available  15157
## 255 255 116643.jpg          Fabinho        14 Available 116643
## 256 256 175592.jpg            Keita        14 Available 175592
## 257 257  92217.jpg          Firmino        14 Available  92217
## 258 258  84939.jpg             Ings        14 Available  84939
## 259 259 154566.jpg          Solanke        14 Available 154566
## 260 260 121160.jpg          Ederson        43 Available 121160
## 261 261  33148.jpg            Bravo        43 Available  33148
## 262 262  97299.jpg           Stones        43 Available  97299
## 263 263  17476.jpg          Kompany        43 Available  17476
## 264 264  57410.jpg         Otamendi        43 Available  57410
## 265 265  58621.jpg           Walker        43 Available  58621
## 266 266 100180.jpg           Danilo        43 Available 100180
## 267 267 102826.jpg            Mendy        43 Available 102826
## 268 268 146941.jpg          Laporte        43 Available 146941
## 269 269  41823.jpg            Delph        43 Available  41823
## 270 270 103955.jpg         Sterling        43 Available 103955
## 271 271  20664.jpg      David Silva        43 Available  20664
## 272 272  27789.jpg      Fernandinho        43 Available  27789
## 273 273  61366.jpg        De Bruyne        43 Available  61366
## 274 274  59859.jpg         Gündogan        43 Available  59859
## 275 275 182156.jpg             Sané        43 Available 182156
## 276 276 165809.jpg   Bernardo Silva        43 Available 165809
## 277 277 209244.jpg            Foden        43 Available 209244
## 278 278 216183.jpg             Diaz        43 Available 216183
## 279 279 206325.jpg        Zinchenko        43 Available 206325
## 280 280  37572.jpg           Agüero        43 Available  37572
## 281 281 205651.jpg            Jesus        43 Available 205651
## 282 282  51940.jpg           De Gea         1 Available  51940
## 283 283  42899.jpg           Romero         1 Available  42899
## 284 284  55909.jpg         Smalling         1 Available  55909
## 285 285  76359.jpg            Jones         1 Available  76359
## 286 286 106760.jpg             Shaw         1 Available 106760
## 287 287  58893.jpg             Rojo         1 Available  58893
## 288 288  20695.jpg         Valencia         1 Available  20695
## 289 289  40002.jpg          Darmian         1 Available  40002
## 290 290  58877.jpg            Blind         1 Available  58877
## 291 291 197365.jpg           Bailly         1 Available 197365
## 292 292 184667.jpg         Lindelöf         1 Available 184667
## 293 293  18892.jpg            Young         1 Available  18892
## 294 294 216051.jpg            Dalot         1 Available 216051
## 295 295  37265.jpg          Sánchez         1 Available  37265
## 296 296  62398.jpg            Matic         1 Available  62398
## 297 297  43670.jpg             Mata         1 Available  43670
## 298 298  41184.jpg         Fellaini         1 Available  41184
## 299 299  59846.jpg          Herrera         1 Available  59846
## 300 300 109322.jpg          Lingard         1 Available 109322
## 301 301 148225.jpg          Martial         1 Available 148225
## 302 302  74208.jpg            Pogba         1 Available  74208
## 303 303 195851.jpg        McTominay         1 Available 195851
## 304 304 101582.jpg             Fred         1 Available 101582
## 305 305 176297.jpg         Rashford         1 Available 176297
## 306 306  66749.jpg           Lukaku         1 Available  66749
## 307 307  19838.jpg           Elliot         4 Available  19838
## 308 308  59735.jpg           Darlow         4 Available  59735
## 309 309  67089.jpg         Dubravka         4 Available  67089
## 310 310 151119.jpg           Yedlin         4 Available 151119
## 311 311  58845.jpg            Clark         4  Doubtful  58845
## 312 312 101148.jpg        Lascelles         4 Available 101148
## 313 313 106618.jpg          Dummett         4 Available 106618
## 314 314  77359.jpg          Lejeune         4 Available  77359
## 315 315 109528.jpg        Manquillo         4 Available 109528
## 316 316 149736.jpg           Mbemba         4 Available 149736
## 317 317  56983.jpg          Ritchie         4 Available  56983
## 318 318  50232.jpg          Shelvey         4 Available  50232
## 319 319  28147.jpg            Diamé         4 Available  28147
## 320 320 104953.jpg             Atsu         4  Doubtful 104953
## 321 321 114243.jpg           Murphy         4 Available 114243
## 322 322 195384.jpg           Merino         4 Available 195384
## 323 323 153127.jpg           Hayden         4 Available 153127
## 324 324  76542.jpg    Ki Sung-yueng         4 Available  76542
## 325 325 104547.jpg            Gayle         4 Available 104547
## 326 326 168580.jpg            Pérez         4 Available 168580
## 327 327  61316.jpg           Joselu         4 Available  61316
## 328 328  58376.jpg         McCarthy        20 Available  58376
## 329 329  40383.jpg          Forster        20 Available  40383
## 330 330  40146.jpg         Bertrand        20 Available  40146
## 331 331  80447.jpg          Yoshida        20 Available  80447
## 332 332  58822.jpg           Cédric        20 Available  58822
## 333 333  88900.jpg         Stephens        20 Available  88900
## 334 334 153373.jpg          McQueen        20 Available 153373
## 335 335 171771.jpg         Bednarek        20 Available 171771
## 336 336 167075.jpg            Hoedt        20 Available 167075
## 337 337  17339.jpg            Davis        20 Available  17339
## 338 338 101178.jpg      Ward-Prowse        20 Available 101178
## 339 339  78056.jpg      Oriol Romeu        20 Available  78056
## 340 340 132015.jpg         Højbjerg        20 Available 132015
## 341 341 128198.jpg           Boufal        20 Available 128198
## 342 342 153379.jpg             Sims        20 Available 153379
## 343 343  83283.jpg          Redmond        20 Available  83283
## 344 344 151086.jpg           Lemina        20 Available 151086
## 345 345  91047.jpg        Armstrong        20 Available  91047
## 346 346  96787.jpg      Elyounoussi        20 Available  96787
## 347 347  20452.jpg             Long        20 Available  20452
## 348 348  78356.jpg           Austin        20 Available  78356
## 349 349  61548.jpg       Gabbiadini        20 Available  61548
## 350 350  98914.jpg         Carrillo        20 Available  98914
## 351 351  37915.jpg           Lloris         6 Available  37915
## 352 352  39215.jpg             Vorm         6 Available  39215
## 353 353  55605.jpg     Alderweireld         6 Available  55605
## 354 354  38290.jpg             Rose         6 Available  38290
## 355 355  39194.jpg       Vertonghen         6 Available  39194
## 356 356 115556.jpg           Davies         6 Available 115556
## 357 357  77794.jpg         Trippier         6 Available  77794
## 358 358 158534.jpg    Walker-Peters         6 Available 158534
## 359 359 173904.jpg          Sánchez         6 Available 173904
## 360 360  80226.jpg           Aurier         6 Available  80226
## 361 361  93264.jpg             Dier         6 Available  93264
## 362 362  39104.jpg          Dembélé         6 Available  39104
## 363 363  62974.jpg           Lamela         6 Available  62974
## 364 364  80607.jpg          Eriksen         6 Available  80607
## 365 365 108823.jpg             Alli         6 Available 108823
## 366 366  54756.jpg          Wanyama         6 Available  54756
## 367 367  85971.jpg              Son         6 Available  85971
## 368 368 157668.jpg            Winks         6  Doubtful 157668
## 369 369  45268.jpg          Sissoko         6 Available  45268
## 370 370  95715.jpg      Lucas Moura         6 Available  95715
## 371 371  19760.jpg         Llorente         6 Available  19760
## 372 372  78830.jpg             Kane         6 Available  78830
## 373 373  18656.jpg            Gomes        57 Available  18656
## 374 374 206882.jpg         Dahlberg        57 Available 206882
## 375 375  37742.jpg           Kaboul        57 Available  37742
## 376 376  41338.jpg         Cathcart        57 Available  41338
## 377 377  41945.jpg            Prödl        57 Available  41945
## 378 378  40868.jpg          Holebas        57 Available  40868
## 379 379  52153.jpg           Britos        57 Available  52153
## 380 380  85624.jpg         Kabasele        57 Available  85624
## 381 381  52940.jpg          Janmaat        57 Available  52940
## 382 382  20145.jpg         Mariappa        57 Available  20145
## 383 383  54484.jpg     Kiko Femenía        57 Available  54484
## 384 384  66247.jpg        Zeegelaar        57 Available  66247
## 385 385 220166.jpg          Navarro        57 Available 220166
## 386 386 155651.jpg           Masina        57 Available 155651
## 387 387  89085.jpg         Chalobah        57 Available  89085
## 388 388  43250.jpg        Cleverley        57  Doubtful  43250
## 389 389  38439.jpg           Capoue        57 Available  38439
## 390 390 121599.jpg         Doucouré        57 Available 121599
## 391 391  61566.jpg          Pereyra        57 Available  61566
## 392 392 108413.jpg           Hughes        57 Available 108413
## 393 393 212319.jpg      Richarlison        57 Available 212319
## 394 394  94924.jpg         Deulofeu        57 Available  94924
## 395 395  73426.jpg             Gray        57 Available  73426
## 396 396  41725.jpg           Deeney        57 Available  41725
## 397 397  20046.jpg            Okaka        57  Doubtful  20046
## 398 398 133801.jpg         Sinclair        57 Available 133801
## 399 399  60706.jpg           Adrián        21 Available  60706
## 400 400  37096.jpg        Fabianski        21 Available  37096
## 401 401  48717.jpg             Reid        21  Doubtful  48717
## 402 402  55459.jpg        Cresswell        21 Available  55459
## 403 403  40669.jpg          Ogbonna        21 Available  40669
## 404 404 113564.jpg            Byram        21  Doubtful 113564
## 405 405  20658.jpg         Zabaleta        21 Available  20658
## 406 406 204480.jpg             Rice        21 Available 204480
## 407 407 173792.jpg           Oxford        21 Available 173792
## 408 408  81012.jpg       Fredericks        21 Available  81012
## 409 409 219924.jpg             Diop        21 Available 219924
## 410 410 105717.jpg          Masuaku        21 Available 105717
## 411 411  18073.jpg            Noble        21 Available  18073
## 412 412  55037.jpg          Kouyaté        21 Available  55037
## 413 413  59779.jpg           Obiang        21 Available  59779
## 414 414  86934.jpg          Lanzini        21   Injured  86934
## 415 415  57531.jpg          Antonio        21 Available  57531
## 416 416 163526.jpg        Fernandes        21 Available 163526
## 417 417  41464.jpg       Arnautovic        21 Available  41464
## 418 418  40142.jpg          Carroll        21 Available  40142
## 419 419  43020.jpg       Chicharito        21 Available  43020
## 420 420 167522.jpg           Hugill        21 Available 167522
## 421 421  19236.jpg            Ruddy        39 Available  19236
## 422 422 168399.jpg           Norris        39 Available 168399
## 423 423  90585.jpg             Boly        39 Available  90585
## 424 424  57913.jpg          Douglas        39 Available  57913
## 425 425  87835.jpg          Doherty        39 Available  87835
## 426 426 107613.jpg            Saïss        39 Available 107613
## 427 427  41727.jpg          Bennett        39 Available  41727
## 428 428  77610.jpg            Batth        39 Available  77610
## 429 429  67184.jpg          Miranda        39 Available  67184
## 430 430  94147.jpg            Coady        39 Available  94147
## 431 431 216054.jpg          Vinagre        39 Available 216054
## 432 432 194634.jpg             Jota        39 Available 194634
## 433 433 171317.jpg            Neves        39 Available 171317
## 434 434 166324.jpg        Cavaleiro        39 Available 166324
## 435 435 165808.jpg            Costa        39 Available 165808
## 436 436 198847.jpg       Enobakhare        39 Available 198847
## 437 437 102057.jpg          Jiménez        39 Available 102057
## 438 438 141569.jpg         Bonatini        39 Available 141569
##               first_name               second_name squad_number
## 1                   Petr                      Cech            1
## 2                  Bernd                      Leno           NA
## 3                Laurent                 Koscielny            6
## 4                 Héctor                  Bellerín            2
## 5                  Nacho                   Monreal           18
## 6                    Rob                   Holding           16
## 7               Shkodran                   Mustafi           20
## 8                   Sead                 Kolasinac           31
## 9                  Calum                  Chambers           21
## 10          Konstantinos                Mavropanos           27
## 11               Stephan              Lichtsteiner           12
## 12              Sokratis          Papastathopoulos            5
## 13                 Mesut                      Özil           10
## 14                 Aaron                    Ramsey            8
## 15                  Alex                     Iwobi           17
## 16               Mohamed                    Elneny            4
## 17                Granit                     Xhaka           34
## 18               Henrikh                Mkhitaryan            7
## 19                 Reiss                    Nelson           61
## 20               Ainsley            Maitland-Niles           15
## 21                 Danny                   Welbeck           23
## 22             Alexandre                 Lacazette            9
## 23        Pierre-Emerick                Aubameyang           14
## 24                 Asmir                   Begovic           27
## 25                 Artur                     Boruc            1
## 26                 Simon                   Francis            2
## 27                 Steve                      Cook            3
## 28               Charlie                   Daniels           11
## 29                  Adam                     Smith           15
## 30                Tyrone                     Mings           26
## 31                Nathan                       Aké            5
## 32                  Jack                   Simpson           42
## 33                 Harry                     Arter            8
## 34                  Marc                      Pugh            7
## 35                Andrew                    Surman            6
## 36                Junior                 Stanislas           19
## 37                   Dan                   Gosling            4
## 38                Jordon                       Ibe           33
## 39                 Lewis                      Cook           16
## 40                  Ryan                    Fraser           24
## 41               Emerson                   Hyndman           22
## 42                 David                    Brooks           NA
## 43                Callum                    Wilson           13
## 44                   Lys                   Mousset           31
## 45                Joshua                      King           17
## 46               Jermain                     Defoe           18
## 47                Mathew                      Ryan            1
## 48                 Lewis                      Dunk            5
## 49                 Shane                     Duffy           22
## 50                 Bruno               Saltor Grau            2
## 51                Gaëtan                      Bong            3
## 52                Markus                   Suttner           29
## 53              Ezequiel                 Schelotto           21
## 54                  Leon                   Balogun           NA
## 55               Anthony                 Knockaert           11
## 56                  Dale                  Stephens            6
## 57                 Beram                     Kayal            7
## 58               Solomon                     March           20
## 59                Pascal                      Groß           13
## 60                  Davy                   Pröpper           24
## 61        José Heriberto            Izquierdo Mena           19
## 62                 Glenn                    Murray           17
## 63                 Tomer                     Hemed           10
## 64                   Sam                   Baldock            9
## 65                Jürgen                   Locadia           25
## 66                Florin                    Andone           NA
## 67                   Tom                    Heaton            1
## 68                  Nick                      Pope           29
## 69               Matthew                    Lowton            2
## 70                   Ben                       Mee            6
## 71               Stephen                      Ward           23
## 72                 James                 Tarkowski            5
## 73                 Kevin                      Long           28
## 74               Charlie                    Taylor            3
## 75                  Phil                  Bardsley           26
## 76           Johann Berg               Gudmundsson           17
## 77                Steven                    Defour           16
## 78                  Jeff                  Hendrick           13
## 79                Robbie                     Brady           12
## 80                Ashley                  Westwood           18
## 81              Jonathan                   Walters           19
## 82                  Jack                      Cork            4
## 83                 Aaron                    Lennon           25
## 84                   Sam                     Vokes            9
## 85                Ashley                    Barnes           10
## 86                 Nahki                     Wells           21
## 87                 Chris                      Wood           11
## 88                  Neil                 Etheridge           25
## 89                  Alex                  Smithies           NA
## 90                  Sean                  Morrison            4
## 91                   Sol                     Bamba           14
## 92                 Bruno              Ecuele Manga            5
## 93               Matthew                  Connolly           16
## 94                   Joe                   Bennett            3
## 95                   Lee                   Peltier            2
## 96     Ashley Darel Jazz                  Richards            6
## 97                  Greg                   Halford           NA
## 98                   Joe                     Ralls            8
## 99          David Junior                   Hoilett           33
## 100            Nathaniel              Mendez-Laing           19
## 101               Callum                  Paterson           18
## 102                 Aron                Gunnarsson           NA
## 103              Anthony                Pilkington           13
## 104                 Loïc                    Damour           20
## 105                Danny                      Ward            9
## 106                 Josh                    Murphy           NA
## 107              Kenneth                    Zohore           10
## 108                 Omar                     Bogle           30
## 109                 Gary                    Madine           44
## 110                Bobby                      Reid           NA
## 111              Thibaut                  Courtois           13
## 112                Willy                 Caballero            1
## 113                César               Azpilicueta           28
## 114                 Gary                    Cahill           24
## 115               Marcos                    Alonso            3
## 116                David      Luiz Moreira Marinho           30
## 117               Victor                     Moses           15
## 118              Antonio                   Rüdiger            2
## 119              Andreas               Christensen           27
## 120               Davide                Zappacosta           21
## 121              Emerson       Palmieri dos Santos           33
## 122                 Eden                    Hazard           10
## 123                 Cesc                  Fàbregas            4
## 124              Willian           Borges Da Silva           22
## 125                Pedro         Rodríguez Ledesma           11
## 126               N'Golo                     Kanté            7
## 127                 Ross                   Barkley            8
## 128               Daniel                Drinkwater            6
## 129              Tiemoué                  Bakayoko           14
## 130                Ethan                    Ampadu           44
## 131               Callum               Hudson-Odoi           70
## 132                Ruben              Loftus-Cheek           NA
## 133              Olivier                    Giroud           18
## 134               Álvaro                    Morata            9
## 135                Wayne                 Hennessey           13
## 136               Julian                   Speroni            1
## 137              Vicente                    Guaita           NA
## 138                James                   Tomkins            5
## 139                Scott                      Dann            6
## 140               Martin                     Kelly           34
## 141              Jeffrey                   Schlupp           15
## 142              Patrick               van Aanholt            3
## 143              Mamadou                     Sakho           12
## 144                Jairo                 Riedewald           44
## 145                Aaron               Wan-Bissaka           29
## 146                Jason                  Puncheon           42
## 147                James                  McArthur           18
## 148               Bakary                      Sako           NA
## 149               Andros                  Townsend           10
## 150                 Luka               Milivojevic            4
## 151             Wilfried                      Zaha           11
## 152            Christian                   Benteke           17
## 153            Alexander                   Sørloth            9
## 154               Jordan                  Pickford            1
## 155              Maarten              Stekelenburg           22
## 156             Leighton                    Baines            3
## 157               Seamus                   Coleman           23
## 158                 Phil                  Jagielka            6
## 159               Ashley                  Williams            5
## 160                Mason                   Holgate           30
## 161               Jonjoe                     Kenny           43
## 162              Michael                     Keane            4
## 163                 Cuco                   Martina           15
## 164                 Theo                   Walcott           11
## 165              Yannick                   Bolasie            7
## 166                James                  McCarthy           16
## 167               Morgan              Schneiderlin            2
## 168              Idrissa                     Gueye           17
## 169                  Tom                    Davies           26
## 170              Ademola                   Lookman           NA
## 171                 Davy                  Klaassen           20
## 172                Gylfi                Sigurdsson           18
## 173               Nikola                    Vlasic           27
## 174                 Beni                 Baningime           54
## 175              Dominic             Calvert-Lewin           29
## 176                Oumar                    Niasse           19
## 177                 Cenk                     Tosun           14
## 178               Marcus                Bettinelli            1
## 179                David                    Button           27
## 180                  Tim                      Ream           13
## 181                Denis                      Odoi            4
## 182                  Tom                   Cairney           10
## 183                Kevin                  McDonald            6
## 184                 Ryan                 Sessegnon            3
## 185               Stefan                  Johansen            8
## 186                Floyd                     Ayité           11
## 187             Neeskens                    Kebano            7
## 188            Rui Pedro            da Rocha Fonte            9
## 189            Aboubakar                    Kamara           47
## 190                  Ben                     Hamer           NA
## 191                Jonas                     Lössl            1
## 192          Christopher                 Schindler           26
## 193                Chris                      Löwe           15
## 194                Tommy                     Smith            2
## 195              Mathias                 Jorgensen           25
## 196                Scott                    Malone            3
## 197              Florent               Hadergjonaj           NA
## 198              Terence                   Kongolo           NA
## 199                Aaron                      Mooy           10
## 200                Rajiv              van La Parra           17
## 201             Jonathan                      Hogg            6
## 202               Philip                   Billing            8
## 203                  Tom                      Ince           22
## 204                Danny                  Williams           19
## 205           Abdelhamid                    Sabiri           11
## 206                 Alex                 Pritchard           21
## 207              Ramadan                     Sobhi           NA
## 208              Juninho                    Bacuna           NA
## 209               Collin                    Quaner           23
## 210              Laurent                  Depoitre           20
## 211                Steve                    Mounie           24
## 212                Elias                  Kachunga            9
## 213               Kasper                Schmeichel            1
## 214                Eldin                 Jakupovic           17
## 215                  Wes                    Morgan            5
## 216            Christian                     Fuchs           28
## 217                Danny                   Simpson            2
## 218                Yohan                Benalouane           29
## 219             Benjamin                  Chilwell            3
## 220                Harry                   Maguire           15
## 221     Ricardo Domingos           Barbosa Pereira           NA
## 222                Jonny                     Evans           NA
## 223                Riyad                    Mahrez           26
## 224                 Marc                Albrighton           11
## 225              Demarai                      Gray            7
## 226               Daniel                   Amartey           18
## 227              Wilfred                     Ndidi           25
## 228              Vicente                    Iborra           21
## 229                Matty                     James           22
## 230                Hamza                 Choudhury           38
## 231     Adrien Sebastian           Perruchet Silva           14
## 232             Fousseni                   Diabaté           33
## 233                James                  Maddison           NA
## 234                Jamie                     Vardy            9
## 235               Shinji                   Okazaki           20
## 236              Kelechi                 Iheanacho            8
## 237                Simon                  Mignolet           22
## 238                Loris                    Karius            1
## 239                Dejan                    Lovren            6
## 240              Alberto                    Moreno           18
## 241            Nathaniel                     Clyne            2
## 242               Joseph                     Gomez           12
## 243                 Joel                     Matip           32
## 244               Ragnar                    Klavan           17
## 245                Trent          Alexander-Arnold           66
## 246               Virgil                  van Dijk            4
## 247               Andrew                 Robertson           26
## 248                 Alex        Oxlade-Chamberlain           21
## 249               Jordan                 Henderson           14
## 250                 Adam                   Lallana           20
## 251                Sadio                      Mané           19
## 252            Georginio                 Wijnaldum            5
## 253              Mohamed                     Salah           11
## 254                James                    Milner            7
## 255       Fabio Henrique                   Tavares           NA
## 256                 Naby                     Keita            8
## 257              Roberto                   Firmino            9
## 258                Danny                      Ings           28
## 259              Dominic                   Solanke           29
## 260              Ederson         Santana de Moraes           31
## 261              Claudio                     Bravo            1
## 262                 John                    Stones            5
## 263              Vincent                   Kompany            4
## 264              Nicolás                  Otamendi           30
## 265                 Kyle                    Walker            2
## 266          Danilo Luiz                  da Silva            3
## 267             Benjamin                     Mendy           22
## 268              Aymeric                   Laporte           14
## 269               Fabian                     Delph           18
## 270               Raheem                  Sterling            7
## 271                David                     Silva           21
## 272             Fernando                 Luiz Rosa           25
## 273                Kevin                 De Bruyne           17
## 274                Ilkay                  Gündogan            8
## 275                Leroy                      Sané           19
## 276        Bernardo Mota Veiga de Carvalho e Silva           20
## 277                 Phil                     Foden           47
## 278               Brahim                      Diaz           55
## 279            Oleksandr                 Zinchenko           35
## 280               Sergio                    Agüero           10
## 281     Gabriel Fernando                  de Jesus           33
## 282                David                    De Gea            1
## 283               Sergio                    Romero           20
## 284                Chris                  Smalling           12
## 285                 Phil                     Jones            4
## 286                 Luke                      Shaw           23
## 287               Marcos                      Rojo            5
## 288              Antonio                  Valencia           25
## 289               Matteo                   Darmian           36
## 290                Daley                     Blind           17
## 291                 Eric                    Bailly            3
## 292               Victor                  Lindelöf            2
## 293               Ashley                     Young           18
## 294           José Diogo            Dalot Teixeira           NA
## 295               Alexis                   Sánchez            7
## 296              Nemanja                     Matic           31
## 297                 Juan                      Mata            8
## 298             Marouane                  Fellaini           27
## 299                Ander                   Herrera           21
## 300                Jesse                   Lingard           14
## 301              Anthony                   Martial           11
## 302                 Paul                     Pogba            6
## 303                Scott                 McTominay           39
## 304            Frederico Rodrigues de Paula Santos           NA
## 305               Marcus                  Rashford           19
## 306               Romelu                    Lukaku            9
## 307               Robert                    Elliot            1
## 308                 Karl                    Darlow           26
## 309               Martin                  Dubravka           12
## 310              DeAndre                    Yedlin           22
## 311               Ciaran                     Clark            2
## 312               Jamaal                 Lascelles            6
## 313                 Paul                   Dummett            3
## 314              Florian                   Lejeune           20
## 315               Javier                 Manquillo           19
## 316              Chancel                    Mbemba           18
## 317                 Matt                   Ritchie           11
## 318                Jonjo                   Shelvey            8
## 319              Mohamed                     Diamé           10
## 320            Christian                      Atsu           30
## 321                Jacob                    Murphy            7
## 322                Mikel                    Merino           23
## 323                Isaac                    Hayden           14
## 324           Sung-yueng                        Ki           NA
## 325               Dwight                     Gayle            9
## 326                Ayoze                     Pérez           17
## 327            Jose Luis            Mato Sanmartín           21
## 328                 Alex                  McCarthy            1
## 329               Fraser                   Forster           44
## 330                 Ryan                  Bertrand           21
## 331                 Maya                   Yoshida            3
## 332               Cédric                    Soares            2
## 333                 Jack                  Stephens            5
## 334                  Sam                   McQueen           38
## 335                  Jan                  Bednarek           35
## 336               Wesley                     Hoedt            6
## 337               Steven                     Davis            8
## 338                James               Ward-Prowse           16
## 339                Oriol               Romeu Vidal           14
## 340         Pierre-Emile                  Højbjerg           23
## 341              Sofiane                    Boufal           19
## 342               Joshua                      Sims           39
## 343               Nathan                   Redmond           22
## 344                Mario                    Lemina           18
## 345               Stuart                 Armstrong           17
## 346              Mohamed               Elyounoussi           11
## 347                Shane                      Long            7
## 348              Charlie                    Austin           10
## 349               Manolo                Gabbiadini           20
## 350                Guido                  Carrillo            9
## 351                 Hugo                    Lloris            1
## 352               Michel                      Vorm           13
## 353                 Toby              Alderweireld            4
## 354                Danny                      Rose            3
## 355                  Jan                Vertonghen            5
## 356                  Ben                    Davies           33
## 357               Kieran                  Trippier            2
## 358                 Kyle             Walker-Peters           37
## 359             Davinson                   Sánchez            6
## 360                Serge                    Aurier           24
## 361                 Eric                      Dier           15
## 362                Mousa                   Dembélé           19
## 363                 Erik                    Lamela           11
## 364            Christian                   Eriksen           23
## 365             Bamidele                      Alli           20
## 366               Victor                   Wanyama           12
## 367            Heung-Min                       Son            7
## 368                Harry                     Winks           29
## 369               Moussa                   Sissoko           17
## 370                Lucas  Rodrigues Moura da Silva           27
## 371             Fernando                  Llorente           18
## 372                Harry                      Kane           10
## 373             Heurelho                     Gomes            1
## 374               Pontus                  Dahlberg           NA
## 375               Younes                    Kaboul            4
## 376                Craig                  Cathcart           15
## 377            Sebastian                     Prödl            5
## 378                 José                   Holebas           25
## 379               Miguel                    Britos            3
## 380            Christian                  Kabasele           27
## 381                Daryl                   Janmaat            2
## 382               Adrian                  Mariappa            6
## 383            Francisco               Femenía Far           21
## 384               Marvin                 Zeegelaar           22
## 385                 Marc                   Navarro           NA
## 386                 Adam                    Masina           NA
## 387            Nathaniel                  Chalobah           14
## 388                  Tom                 Cleverley            8
## 389              Etienne                    Capoue           29
## 390            Abdoulaye                  Doucouré           16
## 391              Roberto                   Pereyra           37
## 392                 Will                    Hughes           19
## 393          Richarlison                de Andrade           11
## 394               Gerard                  Deulofeu            7
## 395                Andre                      Gray           18
## 396                 Troy                    Deeney            9
## 397              Stefano                     Okaka           33
## 398               Jerome                  Sinclair           17
## 399               Adrián   San Miguel del Castillo           13
## 400               Lukasz                 Fabianski           NA
## 401              Winston                      Reid            2
## 402                Aaron                 Cresswell            3
## 403               Angelo                   Ogbonna           21
## 404                  Sam                     Byram           22
## 405                Pablo                  Zabaleta            5
## 406               Declan                      Rice           41
## 407                Reece                    Oxford           35
## 408                 Ryan                Fredericks           NA
## 409                 Issa                      Diop           NA
## 410               Arthur                   Masuaku           26
## 411                 Mark                     Noble           16
## 412             Cheikhou                   Kouyaté            8
## 413                Pedro                    Obiang           14
## 414               Manuel                   Lanzini           10
## 415              Michail                   Antonio           30
## 416            Edimilson                 Fernandes           31
## 417                Marko                Arnautovic            7
## 418                 Andy                   Carroll            9
## 419               Javier        Hernández Balcázar           17
## 420               Jordan                    Hugill           12
## 421                 John                     Ruddy           21
## 422                 Will                    Norris           31
## 423                Willy                      Boly           15
## 424                Barry                   Douglas            3
## 425                 Matt                   Doherty            2
## 426               Romain                     Saïss           27
## 427                 Ryan                   Bennett            5
## 428                Danny                     Batth            6
## 429   Roderick Jefferson         Gonçalves Miranda           25
## 430                Conor                     Coady           16
## 431        Rúben Gonçalo  Silva Nascimento Vinagre           29
## 432                Diogo                      Jota           NA
## 433          Rúben Diogo            da Silva Neves            8
## 434                 Ivan                 Cavaleiro            7
## 435               Hélder                     Costa           17
## 436               Bright                Enobakhare           26
## 437                 Raúl                   Jiménez           NA
## 438 Bonatini Lohner Maia                  Bonatini           33
##                                         news now_cost           news_added
## 1                                                 5.0                 <NA>
## 2                                                 5.0                 <NA>
## 3      Achilles injury - Unknown return date      5.5 2018-07-05T14:31:07Z
## 4                                                 5.5                 <NA>
## 5                                                 5.5                 <NA>
## 6                                                 4.5                 <NA>
## 7                                                 5.5                 <NA>
## 8                                                 5.0                 <NA>
## 9                                                 4.5                 <NA>
## 10                                                5.0                 <NA>
## 11                                                5.0                 <NA>
## 12                                                5.5                 <NA>
## 13                                                8.5                 <NA>
## 14                                                7.5                 <NA>
## 15                                                5.5                 <NA>
## 16                                                4.5                 <NA>
## 17                                                5.5                 <NA>
## 18                                                7.0                 <NA>
## 19                                                4.5                 <NA>
## 20                                                4.5                 <NA>
## 21                                                6.5                 <NA>
## 22                                                9.5                 <NA>
## 23                                               11.0                 <NA>
## 24                                                4.5                 <NA>
## 25                                                4.0                 <NA>
## 26                                                4.5                 <NA>
## 27                                                4.5                 <NA>
## 28                                                4.5                 <NA>
## 29                                                4.5                 <NA>
## 30                                                4.5                 <NA>
## 31                                                5.0                 <NA>
## 32                                                4.0                 <NA>
## 33                                                5.0                 <NA>
## 34                                                4.5                 <NA>
## 35                                                5.0                 <NA>
## 36         Knee injury - Unknown return date      6.0 2018-07-05T14:31:07Z
## 37                                                5.0                 <NA>
## 38                                                5.5                 <NA>
## 39                                                5.0                 <NA>
## 40                                                5.5                 <NA>
## 41                                                4.5                 <NA>
## 42                                                5.0                 <NA>
## 43                                                6.0                 <NA>
## 44                                                5.0                 <NA>
## 45                                                6.5                 <NA>
## 46                                                6.0                 <NA>
## 47                                                4.5                 <NA>
## 48                                                4.5                 <NA>
## 49      Groin Injury - 75% chance of playing      4.5 2018-07-05T14:31:07Z
## 50                                                4.5                 <NA>
## 51                                                4.5                 <NA>
## 52                                                4.0                 <NA>
## 53                                                4.0                 <NA>
## 54                                                4.5                 <NA>
## 55                                                5.5                 <NA>
## 56                                                4.5                 <NA>
## 57                                                4.5                 <NA>
## 58                                                5.0                 <NA>
## 59                                                7.0                 <NA>
## 60                                                5.0                 <NA>
## 61                                                6.0                 <NA>
## 62                                                6.5                 <NA>
## 63                                                5.0                 <NA>
## 64                                                4.5                 <NA>
## 65                                                5.5                 <NA>
## 66                                                5.0                 <NA>
## 67                                                5.0                 <NA>
## 68                                                5.0                 <NA>
## 69                                                5.0                 <NA>
## 70                                                5.0                 <NA>
## 71                                                5.0                 <NA>
## 72                                                5.0                 <NA>
## 73                                                4.5                 <NA>
## 74                                                4.5                 <NA>
## 75                                                4.5                 <NA>
## 76                                                6.0                 <NA>
## 77       Knee injury - 75% chance of playing      5.5 2018-07-05T14:31:07Z
## 78                                                5.5                 <NA>
## 79       Knee injury - 75% chance of playing      5.5 2018-07-05T14:31:07Z
## 80                                                4.5                 <NA>
## 81                                                5.0                 <NA>
## 82                                                5.0                 <NA>
## 83                                                5.0                 <NA>
## 84                                                5.5                 <NA>
## 85                                                6.0                 <NA>
## 86                                                4.5                 <NA>
## 87                                                6.5                 <NA>
## 88                                                4.5                 <NA>
## 89                                                4.5                 <NA>
## 90                                                5.0                 <NA>
## 91                                                4.5                 <NA>
## 92                                                4.5                 <NA>
## 93                                                4.0                 <NA>
## 94                                                4.5                 <NA>
## 95                                                4.0                 <NA>
## 96                                                4.0                 <NA>
## 97                                                4.0                 <NA>
## 98                                                5.0                 <NA>
## 99                                                5.5                 <NA>
## 100                                               5.0                 <NA>
## 101                                               5.5                 <NA>
## 102                                               4.5                 <NA>
## 103                                               4.5                 <NA>
## 104                                               4.5                 <NA>
## 105                                               4.5                 <NA>
## 106                                               5.0                 <NA>
## 107                                               5.0                 <NA>
## 108                                               4.5                 <NA>
## 109                                               4.5                 <NA>
## 110                                               5.5                 <NA>
## 111                                               5.5                 <NA>
## 112                                               5.0                 <NA>
## 113                                               6.5                 <NA>
## 114                                               5.5                 <NA>
## 115                                               6.5                 <NA>
## 116      Knee injury - 75% chance of playing      5.5 2018-07-05T14:31:07Z
## 117                                               6.0                 <NA>
## 118                                               6.0                 <NA>
## 119                                               5.5                 <NA>
## 120                                               5.5                 <NA>
## 121                                               5.5                 <NA>
## 122                                              10.5                 <NA>
## 123                                               6.5                 <NA>
## 124                                               7.5                 <NA>
## 125                                               6.5                 <NA>
## 126                                               5.0                 <NA>
## 127                                               6.0                 <NA>
## 128                                               5.0                 <NA>
## 129                                               5.0                 <NA>
## 130     Ankle injury - 75% chance of playing      4.5 2018-07-05T14:31:07Z
## 131                                               4.5                 <NA>
## 132                                               5.5                 <NA>
## 133                                               8.0                 <NA>
## 134                                               9.0                 <NA>
## 135                                               4.5                 <NA>
## 136                                               4.0                 <NA>
## 137                                               4.5                 <NA>
## 138                                               4.5                 <NA>
## 139        Knee injury - Unknown return date      4.5 2018-07-05T14:31:07Z
## 140                                               4.0                 <NA>
## 141                                               4.5                 <NA>
## 142                                               5.5                 <NA>
## 143                                               5.0                 <NA>
## 144                                               4.5                 <NA>
## 145                                               4.0                 <NA>
## 146                                               4.5                 <NA>
## 147                                               5.0                 <NA>
## 148     Ankle injury - 75% chance of playing      5.0 2018-07-05T14:31:07Z
## 149                                               6.0                 <NA>
## 150                                               6.5                 <NA>
## 151                                               7.0                 <NA>
## 152                                               6.5                 <NA>
## 153                                               5.0                 <NA>
## 154                                               5.0                 <NA>
## 155     Groin Injury - 75% chance of playing      4.0 2018-07-05T14:31:07Z
## 156                                               5.5                 <NA>
## 157                                               5.5                 <NA>
## 158                                               4.5                 <NA>
## 159                                               4.5                 <NA>
## 160                                               4.5                 <NA>
## 161                                               4.5                 <NA>
## 162                                               5.0                 <NA>
## 163                                               4.5                 <NA>
## 164                                               6.5                 <NA>
## 165                                               6.0                 <NA>
## 166         Leg injury - Unknown return date      4.5 2018-07-05T14:31:07Z
## 167                                               4.5                 <NA>
## 168                                               5.0                 <NA>
## 169                                               5.5                 <NA>
## 170                                               5.5                 <NA>
## 171                                               6.0                 <NA>
## 172                                               7.5                 <NA>
## 173                                               5.0                 <NA>
## 174                                               4.5                 <NA>
## 175                                               5.5                 <NA>
## 176                                               5.5                 <NA>
## 177                                               7.0                 <NA>
## 178                                               4.5                 <NA>
## 179                                               4.0                 <NA>
## 180                                               4.5                 <NA>
## 181                                               4.5                 <NA>
## 182                                               5.0                 <NA>
## 183                                               4.5                 <NA>
## 184                                               6.5                 <NA>
## 185                                               5.5                 <NA>
## 186                                               4.5                 <NA>
## 187                                               4.5                 <NA>
## 188                                               4.5                 <NA>
## 189                                               4.5                 <NA>
## 190                                               4.0                 <NA>
## 191                                               4.5                 <NA>
## 192                                               4.5                 <NA>
## 193                                               4.5                 <NA>
## 194                                               4.5                 <NA>
## 195                                               4.5                 <NA>
## 196                                               4.0                 <NA>
## 197                                               4.5                 <NA>
## 198                                               4.5                 <NA>
## 199                                               5.5                 <NA>
## 200                                               5.0                 <NA>
## 201                                               4.5                 <NA>
## 202                                               4.5                 <NA>
## 203                                               5.0                 <NA>
## 204       Ankle injury - Unknown return date      4.5 2018-07-05T14:31:07Z
## 205                                               4.5                 <NA>
## 206                                               5.0                 <NA>
## 207                                               5.0                 <NA>
## 208                                               4.5                 <NA>
## 209                                               4.5                 <NA>
## 210                                               5.5                 <NA>
## 211                                               6.0                 <NA>
## 212     Ankle injury - 75% chance of playing      5.0 2018-07-05T14:31:07Z
## 213                                               5.0                 <NA>
## 214                                               4.5                 <NA>
## 215                                               4.5                 <NA>
## 216                                               4.5                 <NA>
## 217                                               4.5                 <NA>
## 218                                               4.0                 <NA>
## 219      Calf injury - 75% chance of playing      5.0 2018-07-05T14:31:07Z
## 220                                               5.5                 <NA>
## 221                                               5.0                 <NA>
## 222                                               5.0                 <NA>
## 223                                               9.0                 <NA>
## 224                                               5.5                 <NA>
## 225                                               5.5                 <NA>
## 226                                               4.5                 <NA>
## 227                                               5.0                 <NA>
## 228                                               5.0                 <NA>
## 229  Achilles injury - 75% chance of playing      4.5 2018-07-05T14:31:07Z
## 230                                               4.5                 <NA>
## 231                                               5.0                 <NA>
## 232                                               5.0                 <NA>
## 233      Knee injury - 75% chance of playing      6.5 2018-07-05T14:31:07Z
## 234                                               9.0                 <NA>
## 235                                               5.5                 <NA>
## 236                                               6.0                 <NA>
## 237                                               5.0                 <NA>
## 238                                               5.0                 <NA>
## 239                                               5.0                 <NA>
## 240                                               4.5                 <NA>
## 241                                               5.0                 <NA>
## 242     Ankle injury - 75% chance of playing      5.0 2018-07-05T14:31:07Z
## 243                                               5.0                 <NA>
## 244                                               4.5                 <NA>
## 245                                               5.0                 <NA>
## 246                                               6.0                 <NA>
## 247                                               6.0                 <NA>
## 248        Knee injury - Unknown return date      6.5 2018-07-05T14:31:07Z
## 249                                               5.5                 <NA>
## 250                                               7.0                 <NA>
## 251                                               9.5                 <NA>
## 252                                               5.5                 <NA>
## 253                                              13.0                 <NA>
## 254                                               5.5                 <NA>
## 255                                               6.0                 <NA>
## 256                                               7.5                 <NA>
## 257                                               9.5                 <NA>
## 258                                               5.5                 <NA>
## 259                                               5.0                 <NA>
## 260                                               5.5                 <NA>
## 261                                               5.0                 <NA>
## 262                                               5.5                 <NA>
## 263                                               5.5                 <NA>
## 264                                               6.5                 <NA>
## 265                                               6.5                 <NA>
## 266                                               5.5                 <NA>
## 267                                               6.0                 <NA>
## 268                                               5.5                 <NA>
## 269                                               5.5                 <NA>
## 270                                              11.0                 <NA>
## 271                                               8.5                 <NA>
## 272                                               5.5                 <NA>
## 273                                              10.0                 <NA>
## 274                                               5.5                 <NA>
## 275                                               9.5                 <NA>
## 276                                               7.5                 <NA>
## 277                                               5.0                 <NA>
## 278                                               5.0                 <NA>
## 279                                               5.0                 <NA>
## 280                                              11.0                 <NA>
## 281                                              10.5                 <NA>
## 282                                               6.0                 <NA>
## 283                                               5.0                 <NA>
## 284                                               6.0                 <NA>
## 285                                               5.5                 <NA>
## 286                                               5.0                 <NA>
## 287                                               5.0                 <NA>
## 288                                               6.5                 <NA>
## 289                                               5.0                 <NA>
## 290                                               5.0                 <NA>
## 291                                               5.5                 <NA>
## 292                                               5.0                 <NA>
## 293                                               6.0                 <NA>
## 294                                               5.5                 <NA>
## 295                                              10.5                 <NA>
## 296                                               5.0                 <NA>
## 297                                               6.5                 <NA>
## 298                                               5.0                 <NA>
## 299                                               5.0                 <NA>
## 300                                               7.0                 <NA>
## 301                                               7.5                 <NA>
## 302                                               8.0                 <NA>
## 303                                               4.5                 <NA>
## 304                                               6.0                 <NA>
## 305                                               7.0                 <NA>
## 306                                              11.0                 <NA>
## 307                                               4.5                 <NA>
## 308                                               4.5                 <NA>
## 309                                               5.0                 <NA>
## 310                                               4.5                 <NA>
## 311      Knee injury - 75% chance of playing      4.5 2018-07-05T14:31:07Z
## 312                                               5.0                 <NA>
## 313                                               4.5                 <NA>
## 314                                               4.5                 <NA>
## 315                                               4.5                 <NA>
## 316                                               4.0                 <NA>
## 317                                               6.0                 <NA>
## 318                                               5.5                 <NA>
## 319                                               5.0                 <NA>
## 320            Knock - 75% chance of playing      5.5 2018-07-05T14:31:07Z
## 321                                               5.0                 <NA>
## 322                                               5.0                 <NA>
## 323                                               4.5                 <NA>
## 324                                               5.0                 <NA>
## 325                                               6.0                 <NA>
## 326                                               6.5                 <NA>
## 327                                               5.0                 <NA>
## 328                                               4.5                 <NA>
## 329                                               4.5                 <NA>
## 330                                               5.0                 <NA>
## 331                                               4.5                 <NA>
## 332                                               4.5                 <NA>
## 333                                               4.5                 <NA>
## 334                                               4.0                 <NA>
## 335                                               4.0                 <NA>
## 336                                               4.5                 <NA>
## 337                                               5.0                 <NA>
## 338                                               5.5                 <NA>
## 339                                               4.5                 <NA>
## 340                                               4.5                 <NA>
## 341                                               5.5                 <NA>
## 342                                               4.5                 <NA>
## 343                                               5.5                 <NA>
## 344                                               5.0                 <NA>
## 345                                               5.5                 <NA>
## 346                                               6.5                 <NA>
## 347                                               5.0                 <NA>
## 348                                               6.0                 <NA>
## 349                                               6.0                 <NA>
## 350                                               5.5                 <NA>
## 351                                               5.5                 <NA>
## 352                                               5.0                 <NA>
## 353                                               6.0                 <NA>
## 354                                               6.0                 <NA>
## 355                                               6.0                 <NA>
## 356                                               6.0                 <NA>
## 357                                               6.0                 <NA>
## 358                                               4.5                 <NA>
## 359                                               6.0                 <NA>
## 360                                               6.0                 <NA>
## 361                                               5.0                 <NA>
## 362                                               5.0                 <NA>
## 363                                               6.5                 <NA>
## 364                                               9.5                 <NA>
## 365                                               9.0                 <NA>
## 366                                               5.0                 <NA>
## 367                                               8.5                 <NA>
## 368     Ankle injury - 75% chance of playing      5.5 2018-07-05T14:31:07Z
## 369                                               5.0                 <NA>
## 370                                               7.0                 <NA>
## 371                                               6.0                 <NA>
## 372                                              12.5                 <NA>
## 373                                               4.5                 <NA>
## 374                                               4.5                 <NA>
## 375                                               4.5                 <NA>
## 376                                               4.5                 <NA>
## 377                                               4.5                 <NA>
## 378                                               4.5                 <NA>
## 379                                               4.5                 <NA>
## 380                                               4.5                 <NA>
## 381                                               5.0                 <NA>
## 382                                               4.5                 <NA>
## 383                                               4.5                 <NA>
## 384                                               4.5                 <NA>
## 385                                               4.5                 <NA>
## 386                                               4.5                 <NA>
## 387                                               4.5                 <NA>
## 388 Hamstring injury - 75% chance of playing      5.0 2018-07-05T14:31:07Z
## 389                                               5.0                 <NA>
## 390                                               6.0                 <NA>
## 391                                               6.0                 <NA>
## 392                                               5.0                 <NA>
## 393                                               6.5                 <NA>
## 394                                               5.5                 <NA>
## 395                                               6.0                 <NA>
## 396                                               6.0                 <NA>
## 397     Thigh injury - 75% chance of playing      5.0 2018-07-05T14:31:07Z
## 398                                               4.5                 <NA>
## 399                                               4.5                 <NA>
## 400                                               4.5                 <NA>
## 401      Knee injury - 75% chance of playing      4.5 2018-07-05T14:31:07Z
## 402                                               5.5                 <NA>
## 403                                               4.5                 <NA>
## 404     Ankle injury - 75% chance of playing      4.5 2018-07-05T14:31:07Z
## 405                                               4.5                 <NA>
## 406                                               4.5                 <NA>
## 407                                               4.5                 <NA>
## 408                                               5.0                 <NA>
## 409                                               4.5                 <NA>
## 410                                               4.5                 <NA>
## 411                                               5.0                 <NA>
## 412                                               5.0                 <NA>
## 413                                               4.5                 <NA>
## 414        Knee injury - Unknown return date      6.5 2018-07-05T14:31:07Z
## 415                                               7.0                 <NA>
## 416                                               4.5                 <NA>
## 417                                               7.0                 <NA>
## 418                                               5.5                 <NA>
## 419                                               6.5                 <NA>
## 420                                               5.0                 <NA>
## 421                                               4.5                 <NA>
## 422                                               4.0                 <NA>
## 423                                               4.5                 <NA>
## 424                                               5.0                 <NA>
## 425                                               4.5                 <NA>
## 426                                               4.5                 <NA>
## 427                                               4.0                 <NA>
## 428                                               4.0                 <NA>
## 429                                               4.0                 <NA>
## 430                                               4.5                 <NA>
## 431                                               4.5                 <NA>
## 432                                               6.5                 <NA>
## 433                                               5.0                 <NA>
## 434                                               5.5                 <NA>
## 435                                               5.0                 <NA>
## 436                                               4.5                 <NA>
## 437                                               5.5                 <NA>
## 438                                               5.0                 <NA>
##     chance_of_playing_this_round chance_of_playing_next_round value_form
## 1                             NA                           NA          0
## 2                             NA                           NA          0
## 3                             NA                            0          0
## 4                             NA                           NA          0
## 5                             NA                           NA          0
## 6                             NA                           NA          0
## 7                             NA                           NA          0
## 8                             NA                           NA          0
## 9                             NA                           NA          0
## 10                            NA                           NA          0
## 11                            NA                           NA          0
## 12                            NA                           NA          0
## 13                            NA                           NA          0
## 14                            NA                           NA          0
## 15                            NA                           NA          0
## 16                            NA                           NA          0
## 17                            NA                           NA          0
## 18                            NA                           NA          0
## 19                            NA                           NA          0
## 20                            NA                           NA          0
## 21                            NA                           NA          0
## 22                            NA                           NA          0
## 23                            NA                           NA          0
## 24                            NA                           NA          0
## 25                            NA                           NA          0
## 26                            NA                           NA          0
## 27                            NA                           NA          0
## 28                            NA                           NA          0
## 29                            NA                           NA          0
## 30                            NA                           NA          0
## 31                            NA                           NA          0
## 32                            NA                           NA          0
## 33                            NA                           NA          0
## 34                            NA                           NA          0
## 35                            NA                           NA          0
## 36                            NA                            0          0
## 37                            NA                           NA          0
## 38                            NA                           NA          0
## 39                            NA                           NA          0
## 40                            NA                           NA          0
## 41                            NA                           NA          0
## 42                            NA                           NA          0
## 43                            NA                           NA          0
## 44                            NA                           NA          0
## 45                            NA                           NA          0
## 46                            NA                           NA          0
## 47                            NA                           NA          0
## 48                            NA                           NA          0
## 49                            NA                           75          0
## 50                            NA                           NA          0
## 51                            NA                           NA          0
## 52                            NA                           NA          0
## 53                            NA                           NA          0
## 54                            NA                           NA          0
## 55                            NA                           NA          0
## 56                            NA                           NA          0
## 57                            NA                           NA          0
## 58                            NA                           NA          0
## 59                            NA                           NA          0
## 60                            NA                           NA          0
## 61                            NA                           NA          0
## 62                            NA                           NA          0
## 63                            NA                           NA          0
## 64                            NA                           NA          0
## 65                            NA                           NA          0
## 66                            NA                           NA          0
## 67                            NA                           NA          0
## 68                            NA                           NA          0
## 69                            NA                           NA          0
## 70                            NA                           NA          0
## 71                            NA                           NA          0
## 72                            NA                           NA          0
## 73                            NA                           NA          0
## 74                            NA                           NA          0
## 75                            NA                           NA          0
## 76                            NA                           NA          0
## 77                            NA                           75          0
## 78                            NA                           NA          0
## 79                            NA                           75          0
## 80                            NA                           NA          0
## 81                            NA                           NA          0
## 82                            NA                           NA          0
## 83                            NA                           NA          0
## 84                            NA                           NA          0
## 85                            NA                           NA          0
## 86                            NA                           NA          0
## 87                            NA                           NA          0
## 88                            NA                           NA          0
## 89                            NA                           NA          0
## 90                            NA                           NA          0
## 91                            NA                           NA          0
## 92                            NA                           NA          0
## 93                            NA                           NA          0
## 94                            NA                           NA          0
## 95                            NA                           NA          0
## 96                            NA                           NA          0
## 97                            NA                           NA          0
## 98                            NA                           NA          0
## 99                            NA                           NA          0
## 100                           NA                           NA          0
## 101                           NA                           NA          0
## 102                           NA                           NA          0
## 103                           NA                           NA          0
## 104                           NA                           NA          0
## 105                           NA                           NA          0
## 106                           NA                           NA          0
## 107                           NA                           NA          0
## 108                           NA                           NA          0
## 109                           NA                           NA          0
## 110                           NA                           NA          0
## 111                           NA                           NA          0
## 112                           NA                           NA          0
## 113                           NA                           NA          0
## 114                           NA                           NA          0
## 115                           NA                           NA          0
## 116                           NA                           75          0
## 117                           NA                           NA          0
## 118                           NA                           NA          0
## 119                           NA                           NA          0
## 120                           NA                           NA          0
## 121                           NA                           NA          0
## 122                           NA                           NA          0
## 123                           NA                           NA          0
## 124                           NA                           NA          0
## 125                           NA                           NA          0
## 126                           NA                           NA          0
## 127                           NA                           NA          0
## 128                           NA                           NA          0
## 129                           NA                           NA          0
## 130                           NA                           75          0
## 131                           NA                           NA          0
## 132                           NA                           NA          0
## 133                           NA                           NA          0
## 134                           NA                           NA          0
## 135                           NA                           NA          0
## 136                           NA                           NA          0
## 137                           NA                           NA          0
## 138                           NA                           NA          0
## 139                           NA                            0          0
## 140                           NA                           NA          0
## 141                           NA                           NA          0
## 142                           NA                           NA          0
## 143                           NA                           NA          0
## 144                           NA                           NA          0
## 145                           NA                           NA          0
## 146                           NA                           NA          0
## 147                           NA                           NA          0
## 148                           NA                           75          0
## 149                           NA                           NA          0
## 150                           NA                           NA          0
## 151                           NA                           NA          0
## 152                           NA                           NA          0
## 153                           NA                           NA          0
## 154                           NA                           NA          0
## 155                           NA                           75          0
## 156                           NA                           NA          0
## 157                           NA                           NA          0
## 158                           NA                           NA          0
## 159                           NA                           NA          0
## 160                           NA                           NA          0
## 161                           NA                           NA          0
## 162                           NA                           NA          0
## 163                           NA                           NA          0
## 164                           NA                           NA          0
## 165                           NA                           NA          0
## 166                           NA                            0          0
## 167                           NA                           NA          0
## 168                           NA                           NA          0
## 169                           NA                           NA          0
## 170                           NA                           NA          0
## 171                           NA                           NA          0
## 172                           NA                           NA          0
## 173                           NA                           NA          0
## 174                           NA                           NA          0
## 175                           NA                           NA          0
## 176                           NA                           NA          0
## 177                           NA                           NA          0
## 178                           NA                           NA          0
## 179                           NA                           NA          0
## 180                           NA                           NA          0
## 181                           NA                           NA          0
## 182                           NA                           NA          0
## 183                           NA                           NA          0
## 184                           NA                           NA          0
## 185                           NA                           NA          0
## 186                           NA                           NA          0
## 187                           NA                           NA          0
## 188                           NA                           NA          0
## 189                           NA                           NA          0
## 190                           NA                           NA          0
## 191                           NA                           NA          0
## 192                           NA                           NA          0
## 193                           NA                           NA          0
## 194                           NA                           NA          0
## 195                           NA                           NA          0
## 196                           NA                           NA          0
## 197                           NA                           NA          0
## 198                           NA                           NA          0
## 199                           NA                           NA          0
## 200                           NA                           NA          0
## 201                           NA                           NA          0
## 202                           NA                           NA          0
## 203                           NA                           NA          0
## 204                           NA                            0          0
## 205                           NA                           NA          0
## 206                           NA                           NA          0
## 207                           NA                           NA          0
## 208                           NA                           NA          0
## 209                           NA                           NA          0
## 210                           NA                           NA          0
## 211                           NA                           NA          0
## 212                           NA                           75          0
## 213                           NA                           NA          0
## 214                           NA                           NA          0
## 215                           NA                           NA          0
## 216                           NA                           NA          0
## 217                           NA                           NA          0
## 218                           NA                           NA          0
## 219                           NA                           75          0
## 220                           NA                           NA          0
## 221                           NA                           NA          0
## 222                           NA                           NA          0
## 223                           NA                           NA          0
## 224                           NA                           NA          0
## 225                           NA                           NA          0
## 226                           NA                           NA          0
## 227                           NA                           NA          0
## 228                           NA                           NA          0
## 229                           NA                           75          0
## 230                           NA                           NA          0
## 231                           NA                           NA          0
## 232                           NA                           NA          0
## 233                           NA                           75          0
## 234                           NA                           NA          0
## 235                           NA                           NA          0
## 236                           NA                           NA          0
## 237                           NA                           NA          0
## 238                           NA                           NA          0
## 239                           NA                           NA          0
## 240                           NA                           NA          0
## 241                           NA                           NA          0
## 242                           NA                           75          0
## 243                           NA                           NA          0
## 244                           NA                           NA          0
## 245                           NA                           NA          0
## 246                           NA                           NA          0
## 247                           NA                           NA          0
## 248                           NA                            0          0
## 249                           NA                           NA          0
## 250                           NA                           NA          0
## 251                           NA                           NA          0
## 252                           NA                           NA          0
## 253                           NA                           NA          0
## 254                           NA                           NA          0
## 255                           NA                           NA          0
## 256                           NA                           NA          0
## 257                           NA                           NA          0
## 258                           NA                           NA          0
## 259                           NA                           NA          0
## 260                           NA                           NA          0
## 261                           NA                           NA          0
## 262                           NA                           NA          0
## 263                           NA                           NA          0
## 264                           NA                           NA          0
## 265                           NA                           NA          0
## 266                           NA                           NA          0
## 267                           NA                           NA          0
## 268                           NA                           NA          0
## 269                           NA                           NA          0
## 270                           NA                           NA          0
## 271                           NA                           NA          0
## 272                           NA                           NA          0
## 273                           NA                           NA          0
## 274                           NA                           NA          0
## 275                           NA                           NA          0
## 276                           NA                           NA          0
## 277                           NA                           NA          0
## 278                           NA                           NA          0
## 279                           NA                           NA          0
## 280                           NA                           NA          0
## 281                           NA                           NA          0
## 282                           NA                           NA          0
## 283                           NA                           NA          0
## 284                           NA                           NA          0
## 285                           NA                           NA          0
## 286                           NA                           NA          0
## 287                           NA                           NA          0
## 288                           NA                           NA          0
## 289                           NA                           NA          0
## 290                           NA                           NA          0
## 291                           NA                           NA          0
## 292                           NA                           NA          0
## 293                           NA                           NA          0
## 294                           NA                           NA          0
## 295                           NA                           NA          0
## 296                           NA                           NA          0
## 297                           NA                           NA          0
## 298                           NA                           NA          0
## 299                           NA                           NA          0
## 300                           NA                           NA          0
## 301                           NA                           NA          0
## 302                           NA                           NA          0
## 303                           NA                           NA          0
## 304                           NA                           NA          0
## 305                           NA                           NA          0
## 306                           NA                           NA          0
## 307                           NA                           NA          0
## 308                           NA                           NA          0
## 309                           NA                           NA          0
## 310                           NA                           NA          0
## 311                           NA                           75          0
## 312                           NA                           NA          0
## 313                           NA                           NA          0
## 314                           NA                           NA          0
## 315                           NA                           NA          0
## 316                           NA                           NA          0
## 317                           NA                           NA          0
## 318                           NA                           NA          0
## 319                           NA                           NA          0
## 320                           NA                           75          0
## 321                           NA                           NA          0
## 322                           NA                           NA          0
## 323                           NA                           NA          0
## 324                           NA                           NA          0
## 325                           NA                           NA          0
## 326                           NA                           NA          0
## 327                           NA                           NA          0
## 328                           NA                           NA          0
## 329                           NA                           NA          0
## 330                           NA                           NA          0
## 331                           NA                           NA          0
## 332                           NA                           NA          0
## 333                           NA                           NA          0
## 334                           NA                           NA          0
## 335                           NA                           NA          0
## 336                           NA                           NA          0
## 337                           NA                           NA          0
## 338                           NA                           NA          0
## 339                           NA                           NA          0
## 340                           NA                           NA          0
## 341                           NA                           NA          0
## 342                           NA                           NA          0
## 343                           NA                           NA          0
## 344                           NA                           NA          0
## 345                           NA                           NA          0
## 346                           NA                           NA          0
## 347                           NA                           NA          0
## 348                           NA                           NA          0
## 349                           NA                           NA          0
## 350                           NA                           NA          0
## 351                           NA                           NA          0
## 352                           NA                           NA          0
## 353                           NA                           NA          0
## 354                           NA                           NA          0
## 355                           NA                           NA          0
## 356                           NA                           NA          0
## 357                           NA                           NA          0
## 358                           NA                           NA          0
## 359                           NA                           NA          0
## 360                           NA                           NA          0
## 361                           NA                           NA          0
## 362                           NA                           NA          0
## 363                           NA                           NA          0
## 364                           NA                           NA          0
## 365                           NA                           NA          0
## 366                           NA                           NA          0
## 367                           NA                           NA          0
## 368                           NA                           75          0
## 369                           NA                           NA          0
## 370                           NA                           NA          0
## 371                           NA                           NA          0
## 372                           NA                           NA          0
## 373                           NA                           NA          0
## 374                           NA                           NA          0
## 375                           NA                           NA          0
## 376                           NA                           NA          0
## 377                           NA                           NA          0
## 378                           NA                           NA          0
## 379                           NA                           NA          0
## 380                           NA                           NA          0
## 381                           NA                           NA          0
## 382                           NA                           NA          0
## 383                           NA                           NA          0
## 384                           NA                           NA          0
## 385                           NA                           NA          0
## 386                           NA                           NA          0
## 387                           NA                           NA          0
## 388                           NA                           75          0
## 389                           NA                           NA          0
## 390                           NA                           NA          0
## 391                           NA                           NA          0
## 392                           NA                           NA          0
## 393                           NA                           NA          0
## 394                           NA                           NA          0
## 395                           NA                           NA          0
## 396                           NA                           NA          0
## 397                           NA                           75          0
## 398                           NA                           NA          0
## 399                           NA                           NA          0
## 400                           NA                           NA          0
## 401                           NA                           75          0
## 402                           NA                           NA          0
## 403                           NA                           NA          0
## 404                           NA                           75          0
## 405                           NA                           NA          0
## 406                           NA                           NA          0
## 407                           NA                           NA          0
## 408                           NA                           NA          0
## 409                           NA                           NA          0
## 410                           NA                           NA          0
## 411                           NA                           NA          0
## 412                           NA                           NA          0
## 413                           NA                           NA          0
## 414                           NA                            0          0
## 415                           NA                           NA          0
## 416                           NA                           NA          0
## 417                           NA                           NA          0
## 418                           NA                           NA          0
## 419                           NA                           NA          0
## 420                           NA                           NA          0
## 421                           NA                           NA          0
## 422                           NA                           NA          0
## 423                           NA                           NA          0
## 424                           NA                           NA          0
## 425                           NA                           NA          0
## 426                           NA                           NA          0
## 427                           NA                           NA          0
## 428                           NA                           NA          0
## 429                           NA                           NA          0
## 430                           NA                           NA          0
## 431                           NA                           NA          0
## 432                           NA                           NA          0
## 433                           NA                           NA          0
## 434                           NA                           NA          0
## 435                           NA                           NA          0
## 436                           NA                           NA          0
## 437                           NA                           NA          0
## 438                           NA                           NA          0
##     value_season cost_change_start cost_change_event
## 1              0                 0                 0
## 2              0                 0                 0
## 3              0                 0                 0
## 4              0                 0                 0
## 5              0                 0                 0
## 6              0                 0                 0
## 7              0                 0                 0
## 8              0                 0                 0
## 9              0                 0                 0
## 10             0                 0                 0
## 11             0                 0                 0
## 12             0                 0                 0
## 13             0                 0                 0
## 14             0                 0                 0
## 15             0                 0                 0
## 16             0                 0                 0
## 17             0                 0                 0
## 18             0                 0                 0
## 19             0                 0                 0
## 20             0                 0                 0
## 21             0                 0                 0
## 22             0                 0                 0
## 23             0                 0                 0
## 24             0                 0                 0
## 25             0                 0                 0
## 26             0                 0                 0
## 27             0                 0                 0
## 28             0                 0                 0
## 29             0                 0                 0
## 30             0                 0                 0
## 31             0                 0                 0
## 32             0                 0                 0
## 33             0                 0                 0
## 34             0                 0                 0
## 35             0                 0                 0
## 36             0                 0                 0
## 37             0                 0                 0
## 38             0                 0                 0
## 39             0                 0                 0
## 40             0                 0                 0
## 41             0                 0                 0
## 42             0                 0                 0
## 43             0                 0                 0
## 44             0                 0                 0
## 45             0                 0                 0
## 46             0                 0                 0
## 47             0                 0                 0
## 48             0                 0                 0
## 49             0                 0                 0
## 50             0                 0                 0
## 51             0                 0                 0
## 52             0                 0                 0
## 53             0                 0                 0
## 54             0                 0                 0
## 55             0                 0                 0
## 56             0                 0                 0
## 57             0                 0                 0
## 58             0                 0                 0
## 59             0                 0                 0
## 60             0                 0                 0
## 61             0                 0                 0
## 62             0                 0                 0
## 63             0                 0                 0
## 64             0                 0                 0
## 65             0                 0                 0
## 66             0                 0                 0
## 67             0                 0                 0
## 68             0                 0                 0
## 69             0                 0                 0
## 70             0                 0                 0
## 71             0                 0                 0
## 72             0                 0                 0
## 73             0                 0                 0
## 74             0                 0                 0
## 75             0                 0                 0
## 76             0                 0                 0
## 77             0                 0                 0
## 78             0                 0                 0
## 79             0                 0                 0
## 80             0                 0                 0
## 81             0                 0                 0
## 82             0                 0                 0
## 83             0                 0                 0
## 84             0                 0                 0
## 85             0                 0                 0
## 86             0                 0                 0
## 87             0                 0                 0
## 88             0                 0                 0
## 89             0                 0                 0
## 90             0                 0                 0
## 91             0                 0                 0
## 92             0                 0                 0
## 93             0                 0                 0
## 94             0                 0                 0
## 95             0                 0                 0
## 96             0                 0                 0
## 97             0                 0                 0
## 98             0                 0                 0
## 99             0                 0                 0
## 100            0                 0                 0
## 101            0                 0                 0
## 102            0                 0                 0
## 103            0                 0                 0
## 104            0                 0                 0
## 105            0                 0                 0
## 106            0                 0                 0
## 107            0                 0                 0
## 108            0                 0                 0
## 109            0                 0                 0
## 110            0                 0                 0
## 111            0                 0                 0
## 112            0                 0                 0
## 113            0                 0                 0
## 114            0                 0                 0
## 115            0                 0                 0
## 116            0                 0                 0
## 117            0                 0                 0
## 118            0                 0                 0
## 119            0                 0                 0
## 120            0                 0                 0
## 121            0                 0                 0
## 122            0                 0                 0
## 123            0                 0                 0
## 124            0                 0                 0
## 125            0                 0                 0
## 126            0                 0                 0
## 127            0                 0                 0
## 128            0                 0                 0
## 129            0                 0                 0
## 130            0                 0                 0
## 131            0                 0                 0
## 132            0                 0                 0
## 133            0                 0                 0
## 134            0                 0                 0
## 135            0                 0                 0
## 136            0                 0                 0
## 137            0                 0                 0
## 138            0                 0                 0
## 139            0                 0                 0
## 140            0                 0                 0
## 141            0                 0                 0
## 142            0                 0                 0
## 143            0                 0                 0
## 144            0                 0                 0
## 145            0                 0                 0
## 146            0                 0                 0
## 147            0                 0                 0
## 148            0                 0                 0
## 149            0                 0                 0
## 150            0                 0                 0
## 151            0                 0                 0
## 152            0                 0                 0
## 153            0                 0                 0
## 154            0                 0                 0
## 155            0                 0                 0
## 156            0                 0                 0
## 157            0                 0                 0
## 158            0                 0                 0
## 159            0                 0                 0
## 160            0                 0                 0
## 161            0                 0                 0
## 162            0                 0                 0
## 163            0                 0                 0
## 164            0                 0                 0
## 165            0                 0                 0
## 166            0                 0                 0
## 167            0                 0                 0
## 168            0                 0                 0
## 169            0                 0                 0
## 170            0                 0                 0
## 171            0                 0                 0
## 172            0                 0                 0
## 173            0                 0                 0
## 174            0                 0                 0
## 175            0                 0                 0
## 176            0                 0                 0
## 177            0                 0                 0
## 178            0                 0                 0
## 179            0                 0                 0
## 180            0                 0                 0
## 181            0                 0                 0
## 182            0                 0                 0
## 183            0                 0                 0
## 184            0                 0                 0
## 185            0                 0                 0
## 186            0                 0                 0
## 187            0                 0                 0
## 188            0                 0                 0
## 189            0                 0                 0
## 190            0                 0                 0
## 191            0                 0                 0
## 192            0                 0                 0
## 193            0                 0                 0
## 194            0                 0                 0
## 195            0                 0                 0
## 196            0                 0                 0
## 197            0                 0                 0
## 198            0                 0                 0
## 199            0                 0                 0
## 200            0                 0                 0
## 201            0                 0                 0
## 202            0                 0                 0
## 203            0                 0                 0
## 204            0                 0                 0
## 205            0                 0                 0
## 206            0                 0                 0
## 207            0                 0                 0
## 208            0                 0                 0
## 209            0                 0                 0
## 210            0                 0                 0
## 211            0                 0                 0
## 212            0                 0                 0
## 213            0                 0                 0
## 214            0                 0                 0
## 215            0                 0                 0
## 216            0                 0                 0
## 217            0                 0                 0
## 218            0                 0                 0
## 219            0                 0                 0
## 220            0                 0                 0
## 221            0                 0                 0
## 222            0                 0                 0
## 223            0                 0                 0
## 224            0                 0                 0
## 225            0                 0                 0
## 226            0                 0                 0
## 227            0                 0                 0
## 228            0                 0                 0
## 229            0                 0                 0
## 230            0                 0                 0
## 231            0                 0                 0
## 232            0                 0                 0
## 233            0                 0                 0
## 234            0                 0                 0
## 235            0                 0                 0
## 236            0                 0                 0
## 237            0                 0                 0
## 238            0                 0                 0
## 239            0                 0                 0
## 240            0                 0                 0
## 241            0                 0                 0
## 242            0                 0                 0
## 243            0                 0                 0
## 244            0                 0                 0
## 245            0                 0                 0
## 246            0                 0                 0
## 247            0                 0                 0
## 248            0                 0                 0
## 249            0                 0                 0
## 250            0                 0                 0
## 251            0                 0                 0
## 252            0                 0                 0
## 253            0                 0                 0
## 254            0                 0                 0
## 255            0                 0                 0
## 256            0                 0                 0
## 257            0                 0                 0
## 258            0                 0                 0
## 259            0                 0                 0
## 260            0                 0                 0
## 261            0                 0                 0
## 262            0                 0                 0
## 263            0                 0                 0
## 264            0                 0                 0
## 265            0                 0                 0
## 266            0                 0                 0
## 267            0                 0                 0
## 268            0                 0                 0
## 269            0                 0                 0
## 270            0                 0                 0
## 271            0                 0                 0
## 272            0                 0                 0
## 273            0                 0                 0
## 274            0                 0                 0
## 275            0                 0                 0
## 276            0                 0                 0
## 277            0                 0                 0
## 278            0                 0                 0
## 279            0                 0                 0
## 280            0                 0                 0
## 281            0                 0                 0
## 282            0                 0                 0
## 283            0                 0                 0
## 284            0                 0                 0
## 285            0                 0                 0
## 286            0                 0                 0
## 287            0                 0                 0
## 288            0                 0                 0
## 289            0                 0                 0
## 290            0                 0                 0
## 291            0                 0                 0
## 292            0                 0                 0
## 293            0                 0                 0
## 294            0                 0                 0
## 295            0                 0                 0
## 296            0                 0                 0
## 297            0                 0                 0
## 298            0                 0                 0
## 299            0                 0                 0
## 300            0                 0                 0
## 301            0                 0                 0
## 302            0                 0                 0
## 303            0                 0                 0
## 304            0                 0                 0
## 305            0                 0                 0
## 306            0                 0                 0
## 307            0                 0                 0
## 308            0                 0                 0
## 309            0                 0                 0
## 310            0                 0                 0
## 311            0                 0                 0
## 312            0                 0                 0
## 313            0                 0                 0
## 314            0                 0                 0
## 315            0                 0                 0
## 316            0                 0                 0
## 317            0                 0                 0
## 318            0                 0                 0
## 319            0                 0                 0
## 320            0                 0                 0
## 321            0                 0                 0
## 322            0                 0                 0
## 323            0                 0                 0
## 324            0                 0                 0
## 325            0                 0                 0
## 326            0                 0                 0
## 327            0                 0                 0
## 328            0                 0                 0
## 329            0                 0                 0
## 330            0                 0                 0
## 331            0                 0                 0
## 332            0                 0                 0
## 333            0                 0                 0
## 334            0                 0                 0
## 335            0                 0                 0
## 336            0                 0                 0
## 337            0                 0                 0
## 338            0                 0                 0
## 339            0                 0                 0
## 340            0                 0                 0
## 341            0                 0                 0
## 342            0                 0                 0
## 343            0                 0                 0
## 344            0                 0                 0
## 345            0                 0                 0
## 346            0                 0                 0
## 347            0                 0                 0
## 348            0                 0                 0
## 349            0                 0                 0
## 350            0                 0                 0
## 351            0                 0                 0
## 352            0                 0                 0
## 353            0                 0                 0
## 354            0                 0                 0
## 355            0                 0                 0
## 356            0                 0                 0
## 357            0                 0                 0
## 358            0                 0                 0
## 359            0                 0                 0
## 360            0                 0                 0
## 361            0                 0                 0
## 362            0                 0                 0
## 363            0                 0                 0
## 364            0                 0                 0
## 365            0                 0                 0
## 366            0                 0                 0
## 367            0                 0                 0
## 368            0                 0                 0
## 369            0                 0                 0
## 370            0                 0                 0
## 371            0                 0                 0
## 372            0                 0                 0
## 373            0                 0                 0
## 374            0                 0                 0
## 375            0                 0                 0
## 376            0                 0                 0
## 377            0                 0                 0
## 378            0                 0                 0
## 379            0                 0                 0
## 380            0                 0                 0
## 381            0                 0                 0
## 382            0                 0                 0
## 383            0                 0                 0
## 384            0                 0                 0
## 385            0                 0                 0
## 386            0                 0                 0
## 387            0                 0                 0
## 388            0                 0                 0
## 389            0                 0                 0
## 390            0                 0                 0
## 391            0                 0                 0
## 392            0                 0                 0
## 393            0                 0                 0
## 394            0                 0                 0
## 395            0                 0                 0
## 396            0                 0                 0
## 397            0                 0                 0
## 398            0                 0                 0
## 399            0                 0                 0
## 400            0                 0                 0
## 401            0                 0                 0
## 402            0                 0                 0
## 403            0                 0                 0
## 404            0                 0                 0
## 405            0                 0                 0
## 406            0                 0                 0
## 407            0                 0                 0
## 408            0                 0                 0
## 409            0                 0                 0
## 410            0                 0                 0
## 411            0                 0                 0
## 412            0                 0                 0
## 413            0                 0                 0
## 414            0                 0                 0
## 415            0                 0                 0
## 416            0                 0                 0
## 417            0                 0                 0
## 418            0                 0                 0
## 419            0                 0                 0
## 420            0                 0                 0
## 421            0                 0                 0
## 422            0                 0                 0
## 423            0                 0                 0
## 424            0                 0                 0
## 425            0                 0                 0
## 426            0                 0                 0
## 427            0                 0                 0
## 428            0                 0                 0
## 429            0                 0                 0
## 430            0                 0                 0
## 431            0                 0                 0
## 432            0                 0                 0
## 433            0                 0                 0
## 434            0                 0                 0
## 435            0                 0                 0
## 436            0                 0                 0
## 437            0                 0                 0
## 438            0                 0                 0
##     cost_change_start_fall cost_change_event_fall in_dreamteam
## 1                        0                      0        FALSE
## 2                        0                      0        FALSE
## 3                        0                      0        FALSE
## 4                        0                      0        FALSE
## 5                        0                      0        FALSE
## 6                        0                      0        FALSE
## 7                        0                      0        FALSE
## 8                        0                      0        FALSE
## 9                        0                      0        FALSE
## 10                       0                      0        FALSE
## 11                       0                      0        FALSE
## 12                       0                      0        FALSE
## 13                       0                      0        FALSE
## 14                       0                      0        FALSE
## 15                       0                      0        FALSE
## 16                       0                      0        FALSE
## 17                       0                      0        FALSE
## 18                       0                      0        FALSE
## 19                       0                      0        FALSE
## 20                       0                      0        FALSE
## 21                       0                      0        FALSE
## 22                       0                      0        FALSE
## 23                       0                      0        FALSE
## 24                       0                      0        FALSE
## 25                       0                      0        FALSE
## 26                       0                      0        FALSE
## 27                       0                      0        FALSE
## 28                       0                      0        FALSE
## 29                       0                      0        FALSE
## 30                       0                      0        FALSE
## 31                       0                      0        FALSE
## 32                       0                      0        FALSE
## 33                       0                      0        FALSE
## 34                       0                      0        FALSE
## 35                       0                      0        FALSE
## 36                       0                      0        FALSE
## 37                       0                      0        FALSE
## 38                       0                      0        FALSE
## 39                       0                      0        FALSE
## 40                       0                      0        FALSE
## 41                       0                      0        FALSE
## 42                       0                      0        FALSE
## 43                       0                      0        FALSE
## 44                       0                      0        FALSE
## 45                       0                      0        FALSE
## 46                       0                      0        FALSE
## 47                       0                      0        FALSE
## 48                       0                      0        FALSE
## 49                       0                      0        FALSE
## 50                       0                      0        FALSE
## 51                       0                      0        FALSE
## 52                       0                      0        FALSE
## 53                       0                      0        FALSE
## 54                       0                      0        FALSE
## 55                       0                      0        FALSE
## 56                       0                      0        FALSE
## 57                       0                      0        FALSE
## 58                       0                      0        FALSE
## 59                       0                      0        FALSE
## 60                       0                      0        FALSE
## 61                       0                      0        FALSE
## 62                       0                      0        FALSE
## 63                       0                      0        FALSE
## 64                       0                      0        FALSE
## 65                       0                      0        FALSE
## 66                       0                      0        FALSE
## 67                       0                      0        FALSE
## 68                       0                      0        FALSE
## 69                       0                      0        FALSE
## 70                       0                      0        FALSE
## 71                       0                      0        FALSE
## 72                       0                      0        FALSE
## 73                       0                      0        FALSE
## 74                       0                      0        FALSE
## 75                       0                      0        FALSE
## 76                       0                      0        FALSE
## 77                       0                      0        FALSE
## 78                       0                      0        FALSE
## 79                       0                      0        FALSE
## 80                       0                      0        FALSE
## 81                       0                      0        FALSE
## 82                       0                      0        FALSE
## 83                       0                      0        FALSE
## 84                       0                      0        FALSE
## 85                       0                      0        FALSE
## 86                       0                      0        FALSE
## 87                       0                      0        FALSE
## 88                       0                      0        FALSE
## 89                       0                      0        FALSE
## 90                       0                      0        FALSE
## 91                       0                      0        FALSE
## 92                       0                      0        FALSE
## 93                       0                      0        FALSE
## 94                       0                      0        FALSE
## 95                       0                      0        FALSE
## 96                       0                      0        FALSE
## 97                       0                      0        FALSE
## 98                       0                      0        FALSE
## 99                       0                      0        FALSE
## 100                      0                      0        FALSE
## 101                      0                      0        FALSE
## 102                      0                      0        FALSE
## 103                      0                      0        FALSE
## 104                      0                      0        FALSE
## 105                      0                      0        FALSE
## 106                      0                      0        FALSE
## 107                      0                      0        FALSE
## 108                      0                      0        FALSE
## 109                      0                      0        FALSE
## 110                      0                      0        FALSE
## 111                      0                      0        FALSE
## 112                      0                      0        FALSE
## 113                      0                      0        FALSE
## 114                      0                      0        FALSE
## 115                      0                      0        FALSE
## 116                      0                      0        FALSE
## 117                      0                      0        FALSE
## 118                      0                      0        FALSE
## 119                      0                      0        FALSE
## 120                      0                      0        FALSE
## 121                      0                      0        FALSE
## 122                      0                      0        FALSE
## 123                      0                      0        FALSE
## 124                      0                      0        FALSE
## 125                      0                      0        FALSE
## 126                      0                      0        FALSE
## 127                      0                      0        FALSE
## 128                      0                      0        FALSE
## 129                      0                      0        FALSE
## 130                      0                      0        FALSE
## 131                      0                      0        FALSE
## 132                      0                      0        FALSE
## 133                      0                      0        FALSE
## 134                      0                      0        FALSE
## 135                      0                      0        FALSE
## 136                      0                      0        FALSE
## 137                      0                      0        FALSE
## 138                      0                      0        FALSE
## 139                      0                      0        FALSE
## 140                      0                      0        FALSE
## 141                      0                      0        FALSE
## 142                      0                      0        FALSE
## 143                      0                      0        FALSE
## 144                      0                      0        FALSE
## 145                      0                      0        FALSE
## 146                      0                      0        FALSE
## 147                      0                      0        FALSE
## 148                      0                      0        FALSE
## 149                      0                      0        FALSE
## 150                      0                      0        FALSE
## 151                      0                      0        FALSE
## 152                      0                      0        FALSE
## 153                      0                      0        FALSE
## 154                      0                      0        FALSE
## 155                      0                      0        FALSE
## 156                      0                      0        FALSE
## 157                      0                      0        FALSE
## 158                      0                      0        FALSE
## 159                      0                      0        FALSE
## 160                      0                      0        FALSE
## 161                      0                      0        FALSE
## 162                      0                      0        FALSE
## 163                      0                      0        FALSE
## 164                      0                      0        FALSE
## 165                      0                      0        FALSE
## 166                      0                      0        FALSE
## 167                      0                      0        FALSE
## 168                      0                      0        FALSE
## 169                      0                      0        FALSE
## 170                      0                      0        FALSE
## 171                      0                      0        FALSE
## 172                      0                      0        FALSE
## 173                      0                      0        FALSE
## 174                      0                      0        FALSE
## 175                      0                      0        FALSE
## 176                      0                      0        FALSE
## 177                      0                      0        FALSE
## 178                      0                      0        FALSE
## 179                      0                      0        FALSE
## 180                      0                      0        FALSE
## 181                      0                      0        FALSE
## 182                      0                      0        FALSE
## 183                      0                      0        FALSE
## 184                      0                      0        FALSE
## 185                      0                      0        FALSE
## 186                      0                      0        FALSE
## 187                      0                      0        FALSE
## 188                      0                      0        FALSE
## 189                      0                      0        FALSE
## 190                      0                      0        FALSE
## 191                      0                      0        FALSE
## 192                      0                      0        FALSE
## 193                      0                      0        FALSE
## 194                      0                      0        FALSE
## 195                      0                      0        FALSE
## 196                      0                      0        FALSE
## 197                      0                      0        FALSE
## 198                      0                      0        FALSE
## 199                      0                      0        FALSE
## 200                      0                      0        FALSE
## 201                      0                      0        FALSE
## 202                      0                      0        FALSE
## 203                      0                      0        FALSE
## 204                      0                      0        FALSE
## 205                      0                      0        FALSE
## 206                      0                      0        FALSE
## 207                      0                      0        FALSE
## 208                      0                      0        FALSE
## 209                      0                      0        FALSE
## 210                      0                      0        FALSE
## 211                      0                      0        FALSE
## 212                      0                      0        FALSE
## 213                      0                      0        FALSE
## 214                      0                      0        FALSE
## 215                      0                      0        FALSE
## 216                      0                      0        FALSE
## 217                      0                      0        FALSE
## 218                      0                      0        FALSE
## 219                      0                      0        FALSE
## 220                      0                      0        FALSE
## 221                      0                      0        FALSE
## 222                      0                      0        FALSE
## 223                      0                      0        FALSE
## 224                      0                      0        FALSE
## 225                      0                      0        FALSE
## 226                      0                      0        FALSE
## 227                      0                      0        FALSE
## 228                      0                      0        FALSE
## 229                      0                      0        FALSE
## 230                      0                      0        FALSE
## 231                      0                      0        FALSE
## 232                      0                      0        FALSE
## 233                      0                      0        FALSE
## 234                      0                      0        FALSE
## 235                      0                      0        FALSE
## 236                      0                      0        FALSE
## 237                      0                      0        FALSE
## 238                      0                      0        FALSE
## 239                      0                      0        FALSE
## 240                      0                      0        FALSE
## 241                      0                      0        FALSE
## 242                      0                      0        FALSE
## 243                      0                      0        FALSE
## 244                      0                      0        FALSE
## 245                      0                      0        FALSE
## 246                      0                      0        FALSE
## 247                      0                      0        FALSE
## 248                      0                      0        FALSE
## 249                      0                      0        FALSE
## 250                      0                      0        FALSE
## 251                      0                      0        FALSE
## 252                      0                      0        FALSE
## 253                      0                      0        FALSE
## 254                      0                      0        FALSE
## 255                      0                      0        FALSE
## 256                      0                      0        FALSE
## 257                      0                      0        FALSE
## 258                      0                      0        FALSE
## 259                      0                      0        FALSE
## 260                      0                      0        FALSE
## 261                      0                      0        FALSE
## 262                      0                      0        FALSE
## 263                      0                      0        FALSE
## 264                      0                      0        FALSE
## 265                      0                      0        FALSE
## 266                      0                      0        FALSE
## 267                      0                      0        FALSE
## 268                      0                      0        FALSE
## 269                      0                      0        FALSE
## 270                      0                      0        FALSE
## 271                      0                      0        FALSE
## 272                      0                      0        FALSE
## 273                      0                      0        FALSE
## 274                      0                      0        FALSE
## 275                      0                      0        FALSE
## 276                      0                      0        FALSE
## 277                      0                      0        FALSE
## 278                      0                      0        FALSE
## 279                      0                      0        FALSE
## 280                      0                      0        FALSE
## 281                      0                      0        FALSE
## 282                      0                      0        FALSE
## 283                      0                      0        FALSE
## 284                      0                      0        FALSE
## 285                      0                      0        FALSE
## 286                      0                      0        FALSE
## 287                      0                      0        FALSE
## 288                      0                      0        FALSE
## 289                      0                      0        FALSE
## 290                      0                      0        FALSE
## 291                      0                      0        FALSE
## 292                      0                      0        FALSE
## 293                      0                      0        FALSE
## 294                      0                      0        FALSE
## 295                      0                      0        FALSE
## 296                      0                      0        FALSE
## 297                      0                      0        FALSE
## 298                      0                      0        FALSE
## 299                      0                      0        FALSE
## 300                      0                      0        FALSE
## 301                      0                      0        FALSE
## 302                      0                      0        FALSE
## 303                      0                      0        FALSE
## 304                      0                      0        FALSE
## 305                      0                      0        FALSE
## 306                      0                      0        FALSE
## 307                      0                      0        FALSE
## 308                      0                      0        FALSE
## 309                      0                      0        FALSE
## 310                      0                      0        FALSE
## 311                      0                      0        FALSE
## 312                      0                      0        FALSE
## 313                      0                      0        FALSE
## 314                      0                      0        FALSE
## 315                      0                      0        FALSE
## 316                      0                      0        FALSE
## 317                      0                      0        FALSE
## 318                      0                      0        FALSE
## 319                      0                      0        FALSE
## 320                      0                      0        FALSE
## 321                      0                      0        FALSE
## 322                      0                      0        FALSE
## 323                      0                      0        FALSE
## 324                      0                      0        FALSE
## 325                      0                      0        FALSE
## 326                      0                      0        FALSE
## 327                      0                      0        FALSE
## 328                      0                      0        FALSE
## 329                      0                      0        FALSE
## 330                      0                      0        FALSE
## 331                      0                      0        FALSE
## 332                      0                      0        FALSE
## 333                      0                      0        FALSE
## 334                      0                      0        FALSE
## 335                      0                      0        FALSE
## 336                      0                      0        FALSE
## 337                      0                      0        FALSE
## 338                      0                      0        FALSE
## 339                      0                      0        FALSE
## 340                      0                      0        FALSE
## 341                      0                      0        FALSE
## 342                      0                      0        FALSE
## 343                      0                      0        FALSE
## 344                      0                      0        FALSE
## 345                      0                      0        FALSE
## 346                      0                      0        FALSE
## 347                      0                      0        FALSE
## 348                      0                      0        FALSE
## 349                      0                      0        FALSE
## 350                      0                      0        FALSE
## 351                      0                      0        FALSE
## 352                      0                      0        FALSE
## 353                      0                      0        FALSE
## 354                      0                      0        FALSE
## 355                      0                      0        FALSE
## 356                      0                      0        FALSE
## 357                      0                      0        FALSE
## 358                      0                      0        FALSE
## 359                      0                      0        FALSE
## 360                      0                      0        FALSE
## 361                      0                      0        FALSE
## 362                      0                      0        FALSE
## 363                      0                      0        FALSE
## 364                      0                      0        FALSE
## 365                      0                      0        FALSE
## 366                      0                      0        FALSE
## 367                      0                      0        FALSE
## 368                      0                      0        FALSE
## 369                      0                      0        FALSE
## 370                      0                      0        FALSE
## 371                      0                      0        FALSE
## 372                      0                      0        FALSE
## 373                      0                      0        FALSE
## 374                      0                      0        FALSE
## 375                      0                      0        FALSE
## 376                      0                      0        FALSE
## 377                      0                      0        FALSE
## 378                      0                      0        FALSE
## 379                      0                      0        FALSE
## 380                      0                      0        FALSE
## 381                      0                      0        FALSE
## 382                      0                      0        FALSE
## 383                      0                      0        FALSE
## 384                      0                      0        FALSE
## 385                      0                      0        FALSE
## 386                      0                      0        FALSE
## 387                      0                      0        FALSE
## 388                      0                      0        FALSE
## 389                      0                      0        FALSE
## 390                      0                      0        FALSE
## 391                      0                      0        FALSE
## 392                      0                      0        FALSE
## 393                      0                      0        FALSE
## 394                      0                      0        FALSE
## 395                      0                      0        FALSE
## 396                      0                      0        FALSE
## 397                      0                      0        FALSE
## 398                      0                      0        FALSE
## 399                      0                      0        FALSE
## 400                      0                      0        FALSE
## 401                      0                      0        FALSE
## 402                      0                      0        FALSE
## 403                      0                      0        FALSE
## 404                      0                      0        FALSE
## 405                      0                      0        FALSE
## 406                      0                      0        FALSE
## 407                      0                      0        FALSE
## 408                      0                      0        FALSE
## 409                      0                      0        FALSE
## 410                      0                      0        FALSE
## 411                      0                      0        FALSE
## 412                      0                      0        FALSE
## 413                      0                      0        FALSE
## 414                      0                      0        FALSE
## 415                      0                      0        FALSE
## 416                      0                      0        FALSE
## 417                      0                      0        FALSE
## 418                      0                      0        FALSE
## 419                      0                      0        FALSE
## 420                      0                      0        FALSE
## 421                      0                      0        FALSE
## 422                      0                      0        FALSE
## 423                      0                      0        FALSE
## 424                      0                      0        FALSE
## 425                      0                      0        FALSE
## 426                      0                      0        FALSE
## 427                      0                      0        FALSE
## 428                      0                      0        FALSE
## 429                      0                      0        FALSE
## 430                      0                      0        FALSE
## 431                      0                      0        FALSE
## 432                      0                      0        FALSE
## 433                      0                      0        FALSE
## 434                      0                      0        FALSE
## 435                      0                      0        FALSE
## 436                      0                      0        FALSE
## 437                      0                      0        FALSE
## 438                      0                      0        FALSE
##     dreamteam_count selected_by_percent form transfers_out transfers_in
## 1                 0                 1.0    0             0            0
## 2                 0                 4.8    0             0            0
## 3                 0                 0.3    0             0            0
## 4                 0                10.4    0             0            0
## 5                 0                 4.6    0             0            0
## 6                 0                 0.9    0             0            0
## 7                 0                 0.9    0             0            0
## 8                 0                 4.7    0             0            0
## 9                 0                 0.6    0             0            0
## 10                0                 0.3    0             0            0
## 11                0                 2.5    0             0            0
## 12                0                 3.5    0             0            0
## 13                0                 2.2    0             0            0
## 14                0                 5.4    0             0            0
## 15                0                 1.0    0             0            0
## 16                0                 4.7    0             0            0
## 17                0                 4.8    0             0            0
## 18                0                24.7    0             0            0
## 19                0                 1.4    0             0            0
## 20                0                 0.7    0             0            0
## 21                0                 0.7    0             0            0
## 22                0                 2.2    0             0            0
## 23                0                19.2    0             0            0
## 24                0                 5.9    0             0            0
## 25                0                 6.8    0             0            0
## 26                0                 0.5    0             0            0
## 27                0                 1.0    0             0            0
## 28                0                17.9    0             0            0
## 29                0                 0.3    0             0            0
## 30                0                 0.2    0             0            0
## 31                0                 5.9    0             0            0
## 32                0                 5.9    0             0            0
## 33                0                 0.7    0             0            0
## 34                0                 1.4    0             0            0
## 35                0                 0.9    0             0            0
## 36                0                 0.3    0             0            0
## 37                0                 0.1    0             0            0
## 38                0                 0.8    0             0            0
## 39                0                 0.3    0             0            0
## 40                0                 1.0    0             0            0
## 41                0                 0.3    0             0            0
## 42                0                 0.1    0             0            0
## 43                0                 4.2    0             0            0
## 44                0                 0.4    0             0            0
## 45                0                 3.2    0             0            0
## 46                0                 0.5    0             0            0
## 47                0                 8.3    0             0            0
## 48                0                 4.3    0             0            0
## 49                0                 0.8    0             0            0
## 50                0                 0.3    0             0            0
## 51                0                 0.2    0             0            0
## 52                0                 5.5    0             0            0
## 53                0                 3.9    0             0            0
## 54                0                 0.2    0             0            0
## 55                0                 0.6    0             0            0
## 56                0                11.1    0             0            0
## 57                0                 0.2    0             0            0
## 58                0                 0.2    0             0            0
## 59                0                16.4    0             0            0
## 60                0                 0.2    0             0            0
## 61                0                 1.0    0             0            0
## 62                0                 1.7    0             0            0
## 63                0                 0.4    0             0            0
## 64                0                 2.7    0             0            0
## 65                0                 0.5    0             0            0
## 66                0                 0.4    0             0            0
## 67                0                 0.5    0             0            0
## 68                0                10.2    0             0            0
## 69                0                 1.2    0             0            0
## 70                0                 5.4    0             0            0
## 71                0                11.1    0             0            0
## 72                0                 8.9    0             0            0
## 73                0                 1.5    0             0            0
## 74                0                 0.2    0             0            0
## 75                0                 0.2    0             0            0
## 76                0                 3.1    0             0            0
## 77                0                 0.0    0             0            0
## 78                0                 0.2    0             0            0
## 79                0                 0.1    0             0            0
## 80                0                 0.3    0             0            0
## 81                0                 0.1    0             0            0
## 82                0                 1.2    0             0            0
## 83                0                 0.5    0             0            0
## 84                0                 1.1    0             0            0
## 85                0                 1.9    0             0            0
## 86                0                 2.5    0             0            0
## 87                0                 2.8    0             0            0
## 88                0                 0.6    0             0            0
## 89                0                 0.9    0             0            0
## 90                0                 2.1    0             0            0
## 91                0                 1.5    0             0            0
## 92                0                 0.2    0             0            0
## 93                0                 2.2    0             0            0
## 94                0                 0.3    0             0            0
## 95                0                 1.2    0             0            0
## 96                0                 0.8    0             0            0
## 97                0                 0.6    0             0            0
## 98                0                 0.4    0             0            0
## 99                0                 0.9    0             0            0
## 100               0                 0.2    0             0            0
## 101               0                 0.4    0             0            0
## 102               0                 2.5    0             0            0
## 103               0                 0.4    0             0            0
## 104               0                 0.1    0             0            0
## 105               0                 0.3    0             0            0
## 106               0                 0.3    0             0            0
## 107               0                 1.4    0             0            0
## 108               0                 1.2    0             0            0
## 109               0                 0.8    0             0            0
## 110               0                 2.1    0             0            0
## 111               0                 8.4    0             0            0
## 112               0                 0.1    0             0            0
## 113               0                14.2    0             0            0
## 114               0                 1.0    0             0            0
## 115               0                18.7    0             0            0
## 116               0                 0.1    0             0            0
## 117               0                 8.1    0             0            0
## 118               0                 3.7    0             0            0
## 119               0                 2.3    0             0            0
## 120               0                 0.3    0             0            0
## 121               0                 0.2    0             0            0
## 122               0                10.3    0             0            0
## 123               0                 1.3    0             0            0
## 124               0                 8.5    0             0            0
## 125               0                 0.6    0             0            0
## 126               0                10.2    0             0            0
## 127               0                 0.3    0             0            0
## 128               0                 0.2    0             0            0
## 129               0                 0.4    0             0            0
## 130               0                 0.0    0             0            0
## 131               0                 0.1    0             0            0
## 132               0                 2.5    0             0            0
## 133               0                10.8    0             0            0
## 134               0                 1.8    0             0            0
## 135               0                 2.3    0             0            0
## 136               0                13.1    0             0            0
## 137               0                 0.9    0             0            0
## 138               0                11.1    0             0            0
## 139               0                 0.0    0             0            0
## 140               0                 4.7    0             0            0
## 141               0                 0.3    0             0            0
## 142               0                 6.4    0             0            0
## 143               0                 1.3    0             0            0
## 144               0                 0.1    0             0            0
## 145               0                 2.4    0             0            0
## 146               0                 0.8    0             0            0
## 147               0                 2.6    0             0            0
## 148               0                 0.0    0             0            0
## 149               0                 2.0    0             0            0
## 150               0                14.8    0             0            0
## 151               0                32.3    0             0            0
## 152               0                 1.3    0             0            0
## 153               0                 0.4    0             0            0
## 154               0                19.1    0             0            0
## 155               0                 0.6    0             0            0
## 156               0                 2.4    0             0            0
## 157               0                 4.5    0             0            0
## 158               0                 1.7    0             0            0
## 159               0                 1.4    0             0            0
## 160               0                 0.4    0             0            0
## 161               0                 0.3    0             0            0
## 162               0                 2.0    0             0            0
## 163               0                 0.2    0             0            0
## 164               0                 5.5    0             0            0
## 165               0                 0.6    0             0            0
## 166               0                 0.0    0             0            0
## 167               0                 1.5    0             0            0
## 168               0                 0.6    0             0            0
## 169               0                 0.2    0             0            0
## 170               0                 0.3    0             0            0
## 171               0                 0.2    0             0            0
## 172               0                 3.0    0             0            0
## 173               0                 0.1    0             0            0
## 174               0                 0.1    0             0            0
## 175               0                 2.6    0             0            0
## 176               0                 1.2    0             0            0
## 177               0                11.1    0             0            0
## 178               0                 1.0    0             0            0
## 179               0                 3.3    0             0            0
## 180               0                 0.9    0             0            0
## 181               0                 0.5    0             0            0
## 182               0                 5.0    0             0            0
## 183               0                 0.7    0             0            0
## 184               0                16.4    0             0            0
## 185               0                 0.6    0             0            0
## 186               0                 0.3    0             0            0
## 187               0                 0.2    0             0            0
## 188               0                 0.5    0             0            0
## 189               0                 6.2    0             0            0
## 190               0                 2.0    0             0            0
## 191               0                 3.8    0             0            0
## 192               0                 3.3    0             0            0
## 193               0                 0.2    0             0            0
## 194               0                 0.1    0             0            0
## 195               0                11.5    0             0            0
## 196               0                 8.6    0             0            0
## 197               0                 0.2    0             0            0
## 198               0                 0.3    0             0            0
## 199               0                 4.6    0             0            0
## 200               0                 0.2    0             0            0
## 201               0                 0.3    0             0            0
## 202               0                 0.1    0             0            0
## 203               0                 0.3    0             0            0
## 204               0                 0.0    0             0            0
## 205               0                 0.1    0             0            0
## 206               0                 0.2    0             0            0
## 207               0                 1.1    0             0            0
## 208               0                 0.2    0             0            0
## 209               0                 9.0    0             0            0
## 210               0                 1.8    0             0            0
## 211               0                 0.4    0             0            0
## 212               0                 0.0    0             0            0
## 213               0                 5.6    0             0            0
## 214               0                 0.2    0             0            0
## 215               0                 0.9    0             0            0
## 216               0                 0.7    0             0            0
## 217               0                 0.5    0             0            0
## 218               0                 0.6    0             0            0
## 219               0                 0.1    0             0            0
## 220               0                13.8    0             0            0
## 221               0                 1.4    0             0            0
## 222               0                 1.5    0             0            0
## 223               0                 4.8    0             0            0
## 224               0                 1.4    0             0            0
## 225               0                 0.7    0             0            0
## 226               0                 0.3    0             0            0
## 227               0                 0.6    0             0            0
## 228               0                 0.1    0             0            0
## 229               0                 0.0    0             0            0
## 230               0                 0.1    0             0            0
## 231               0                 0.3    0             0            0
## 232               0                 0.1    0             0            0
## 233               0                 0.5    0             0            0
## 234               0                 9.5    0             0            0
## 235               0                 1.3    0             0            0
## 236               0                 0.6    0             0            0
## 237               0                 0.2    0             0            0
## 238               0                 2.5    0             0            0
## 239               0                 8.8    0             0            0
## 240               0                 0.3    0             0            0
## 241               0                 0.4    0             0            0
## 242               0                 0.1    0             0            0
## 243               0                 0.5    0             0            0
## 244               0                 0.4    0             0            0
## 245               0                21.0    0             0            0
## 246               0                13.0    0             0            0
## 247               0                16.3    0             0            0
## 248               0                 0.2    0             0            0
## 249               0                 1.0    0             0            0
## 250               0                 6.6    0             0            0
## 251               0                13.0    0             0            0
## 252               0                 0.5    0             0            0
## 253               0                47.8    0             0            0
## 254               0                 0.6    0             0            0
## 255               0                 2.8    0             0            0
## 256               0                 7.0    0             0            0
## 257               0                37.6    0             0            0
## 258               0                 0.2    0             0            0
## 259               0                 0.4    0             0            0
## 260               0                17.1    0             0            0
## 261               0                 0.2    0             0            0
## 262               0                 8.0    0             0            0
## 263               0                 1.4    0             0            0
## 264               0                 8.9    0             0            0
## 265               0                 7.4    0             0            0
## 266               0                 0.9    0             0            0
## 267               0                 7.0    0             0            0
## 268               0                 1.3    0             0            0
## 269               0                 0.3    0             0            0
## 270               0                 4.7    0             0            0
## 271               0                 9.6    0             0            0
## 272               0                 5.0    0             0            0
## 273               0                22.9    0             0            0
## 274               0                 1.8    0             0            0
## 275               0                21.1    0             0            0
## 276               0                 0.8    0             0            0
## 277               0                 0.1    0             0            0
## 278               0                 0.1    0             0            0
## 279               0                 0.1    0             0            0
## 280               0                10.3    0             0            0
## 281               0                 2.5    0             0            0
## 282               0                33.3    0             0            0
## 283               0                 0.1    0             0            0
## 284               0                 5.6    0             0            0
## 285               0                 5.8    0             0            0
## 286               0                 0.3    0             0            0
## 287               0                 0.6    0             0            0
## 288               0                 5.3    0             0            0
## 289               0                 0.1    0             0            0
## 290               0                 0.2    0             0            0
## 291               0                 4.5    0             0            0
## 292               0                 0.7    0             0            0
## 293               0                 6.2    0             0            0
## 294               0                 0.6    0             0            0
## 295               0                 4.6    0             0            0
## 296               0                 3.1    0             0            0
## 297               0                 0.5    0             0            0
## 298               0                 1.0    0             0            0
## 299               0                 0.2    0             0            0
## 300               0                19.3    0             0            0
## 301               0                 0.6    0             0            0
## 302               0                11.8    0             0            0
## 303               0                 0.6    0             0            0
## 304               0                 3.7    0             0            0
## 305               0                 6.2    0             0            0
## 306               0                18.3    0             0            0
## 307               0                 0.6    0             0            0
## 308               0                 0.2    0             0            0
## 309               0                 1.1    0             0            0
## 310               0                 1.9    0             0            0
## 311               0                 0.0    0             0            0
## 312               0                 7.6    0             0            0
## 313               0                 0.3    0             0            0
## 314               0                 0.5    0             0            0
## 315               0                 0.2    0             0            0
## 316               0                 3.1    0             0            0
## 317               0                 1.1    0             0            0
## 318               0                 0.9    0             0            0
## 319               0                 0.1    0             0            0
## 320               0                 0.0    0             0            0
## 321               0                 0.1    0             0            0
## 322               0                 0.1    0             0            0
## 323               0                 0.3    0             0            0
## 324               0                 0.7    0             0            0
## 325               0                 0.7    0             0            0
## 326               0                 3.7    0             0            0
## 327               0                 2.3    0             0            0
## 328               0                 1.3    0             0            0
## 329               0                 1.9    0             0            0
## 330               0                 4.2    0             0            0
## 331               0                 1.9    0             0            0
## 332               0                14.7    0             0            0
## 333               0                 0.3    0             0            0
## 334               0                 0.7    0             0            0
## 335               0                11.4    0             0            0
## 336               0                 0.4    0             0            0
## 337               0                 0.2    0             0            0
## 338               0                 0.7    0             0            0
## 339               0                 2.7    0             0            0
## 340               0                 0.6    0             0            0
## 341               0                 0.2    0             0            0
## 342               0                 0.2    0             0            0
## 343               0                 0.6    0             0            0
## 344               0                 0.3    0             0            0
## 345               0                 0.3    0             0            0
## 346               0                 1.5    0             0            0
## 347               0                 1.4    0             0            0
## 348               0                 2.2    0             0            0
## 349               0                 0.3    0             0            0
## 350               0                 0.2    0             0            0
## 351               0                 7.8    0             0            0
## 352               0                 0.1    0             0            0
## 353               0                 3.7    0             0            0
## 354               0                 2.6    0             0            0
## 355               0                 8.9    0             0            0
## 356               0                 9.2    0             0            0
## 357               0                17.5    0             0            0
## 358               0                 0.3    0             0            0
## 359               0                 3.4    0             0            0
## 360               0                 2.3    0             0            0
## 361               0                 1.4    0             0            0
## 362               0                 1.0    0             0            0
## 363               0                 0.5    0             0            0
## 364               0                15.4    0             0            0
## 365               0                 3.3    0             0            0
## 366               0                 0.2    0             0            0
## 367               0                 9.7    0             0            0
## 368               0                 0.0    0             0            0
## 369               0                 0.1    0             0            0
## 370               0                 2.5    0             0            0
## 371               0                 0.2    0             0            0
## 372               0                39.3    0             0            0
## 373               0                 0.8    0             0            0
## 374               0                 0.1    0             0            0
## 375               0                 0.2    0             0            0
## 376               0                 0.1    0             0            0
## 377               0                 0.2    0             0            0
## 378               0                 2.0    0             0            0
## 379               0                 0.1    0             0            0
## 380               0                 0.4    0             0            0
## 381               0                 0.4    0             0            0
## 382               0                 0.3    0             0            0
## 383               0                 1.6    0             0            0
## 384               0                 0.2    0             0            0
## 385               0                 0.2    0             0            0
## 386               0                 0.2    0             0            0
## 387               0                 1.1    0             0            0
## 388               0                 0.0    0             0            0
## 389               0                 0.3    0             0            0
## 390               0                 6.3    0             0            0
## 391               0                 0.5    0             0            0
## 392               0                 0.6    0             0            0
## 393               0                 3.7    0             0            0
## 394               0                 5.9    0             0            0
## 395               0                 0.5    0             0            0
## 396               0                 0.7    0             0            0
## 397               0                 0.0    0             0            0
## 398               0                 1.7    0             0            0
## 399               0                 0.6    0             0            0
## 400               0                26.8    0             0            0
## 401               0                 0.0    0             0            0
## 402               0                 2.5    0             0            0
## 403               0                 1.0    0             0            0
## 404               0                 0.0    0             0            0
## 405               0                 2.1    0             0            0
## 406               0                 0.3    0             0            0
## 407               0                 0.2    0             0            0
## 408               0                 0.6    0             0            0
## 409               0                 1.0    0             0            0
## 410               0                 5.0    0             0            0
## 411               0                 0.4    0             0            0
## 412               0                 0.4    0             0            0
## 413               0                 1.5    0             0            0
## 414               0                 0.1    0             0            0
## 415               0                 7.0    0             0            0
## 416               0                 0.5    0             0            0
## 417               0                22.8    0             0            0
## 418               0                 0.6    0             0            0
## 419               0                 2.1    0             0            0
## 420               0                 0.1    0             0            0
## 421               0                 2.0    0             0            0
## 422               0                 4.0    0             0            0
## 423               0                 3.2    0             0            0
## 424               0                 4.6    0             0            0
## 425               0                 0.8    0             0            0
## 426               0                 0.6    0             0            0
## 427               0                 3.9    0             0            0
## 428               0                 1.3    0             0            0
## 429               0                 3.4    0             0            0
## 430               0                 0.7    0             0            0
## 431               0                 0.2    0             0            0
## 432               0                 9.0    0             0            0
## 433               0                21.4    0             0            0
## 434               0                 0.8    0             0            0
## 435               0                 0.9    0             0            0
## 436               0                 0.8    0             0            0
## 437               0                 3.9    0             0            0
## 438               0                 1.5    0             0            0
##     transfers_out_event transfers_in_event loans_in loans_out loaned_in
## 1                     0                  0        0         0         0
## 2                     0                  0        0         0         0
## 3                     0                  0        0         0         0
## 4                     0                  0        0         0         0
## 5                     0                  0        0         0         0
## 6                     0                  0        0         0         0
## 7                     0                  0        0         0         0
## 8                     0                  0        0         0         0
## 9                     0                  0        0         0         0
## 10                    0                  0        0         0         0
## 11                    0                  0        0         0         0
## 12                    0                  0        0         0         0
## 13                    0                  0        0         0         0
## 14                    0                  0        0         0         0
## 15                    0                  0        0         0         0
## 16                    0                  0        0         0         0
## 17                    0                  0        0         0         0
## 18                    0                  0        0         0         0
## 19                    0                  0        0         0         0
## 20                    0                  0        0         0         0
## 21                    0                  0        0         0         0
## 22                    0                  0        0         0         0
## 23                    0                  0        0         0         0
## 24                    0                  0        0         0         0
## 25                    0                  0        0         0         0
## 26                    0                  0        0         0         0
## 27                    0                  0        0         0         0
## 28                    0                  0        0         0         0
## 29                    0                  0        0         0         0
## 30                    0                  0        0         0         0
## 31                    0                  0        0         0         0
## 32                    0                  0        0         0         0
## 33                    0                  0        0         0         0
## 34                    0                  0        0         0         0
## 35                    0                  0        0         0         0
## 36                    0                  0        0         0         0
## 37                    0                  0        0         0         0
## 38                    0                  0        0         0         0
## 39                    0                  0        0         0         0
## 40                    0                  0        0         0         0
## 41                    0                  0        0         0         0
## 42                    0                  0        0         0         0
## 43                    0                  0        0         0         0
## 44                    0                  0        0         0         0
## 45                    0                  0        0         0         0
## 46                    0                  0        0         0         0
## 47                    0                  0        0         0         0
## 48                    0                  0        0         0         0
## 49                    0                  0        0         0         0
## 50                    0                  0        0         0         0
## 51                    0                  0        0         0         0
## 52                    0                  0        0         0         0
## 53                    0                  0        0         0         0
## 54                    0                  0        0         0         0
## 55                    0                  0        0         0         0
## 56                    0                  0        0         0         0
## 57                    0                  0        0         0         0
## 58                    0                  0        0         0         0
## 59                    0                  0        0         0         0
## 60                    0                  0        0         0         0
## 61                    0                  0        0         0         0
## 62                    0                  0        0         0         0
## 63                    0                  0        0         0         0
## 64                    0                  0        0         0         0
## 65                    0                  0        0         0         0
## 66                    0                  0        0         0         0
## 67                    0                  0        0         0         0
## 68                    0                  0        0         0         0
## 69                    0                  0        0         0         0
## 70                    0                  0        0         0         0
## 71                    0                  0        0         0         0
## 72                    0                  0        0         0         0
## 73                    0                  0        0         0         0
## 74                    0                  0        0         0         0
## 75                    0                  0        0         0         0
## 76                    0                  0        0         0         0
## 77                    0                  0        0         0         0
## 78                    0                  0        0         0         0
## 79                    0                  0        0         0         0
## 80                    0                  0        0         0         0
## 81                    0                  0        0         0         0
## 82                    0                  0        0         0         0
## 83                    0                  0        0         0         0
## 84                    0                  0        0         0         0
## 85                    0                  0        0         0         0
## 86                    0                  0        0         0         0
## 87                    0                  0        0         0         0
## 88                    0                  0        0         0         0
## 89                    0                  0        0         0         0
## 90                    0                  0        0         0         0
## 91                    0                  0        0         0         0
## 92                    0                  0        0         0         0
## 93                    0                  0        0         0         0
## 94                    0                  0        0         0         0
## 95                    0                  0        0         0         0
## 96                    0                  0        0         0         0
## 97                    0                  0        0         0         0
## 98                    0                  0        0         0         0
## 99                    0                  0        0         0         0
## 100                   0                  0        0         0         0
## 101                   0                  0        0         0         0
## 102                   0                  0        0         0         0
## 103                   0                  0        0         0         0
## 104                   0                  0        0         0         0
## 105                   0                  0        0         0         0
## 106                   0                  0        0         0         0
## 107                   0                  0        0         0         0
## 108                   0                  0        0         0         0
## 109                   0                  0        0         0         0
## 110                   0                  0        0         0         0
## 111                   0                  0        0         0         0
## 112                   0                  0        0         0         0
## 113                   0                  0        0         0         0
## 114                   0                  0        0         0         0
## 115                   0                  0        0         0         0
## 116                   0                  0        0         0         0
## 117                   0                  0        0         0         0
## 118                   0                  0        0         0         0
## 119                   0                  0        0         0         0
## 120                   0                  0        0         0         0
## 121                   0                  0        0         0         0
## 122                   0                  0        0         0         0
## 123                   0                  0        0         0         0
## 124                   0                  0        0         0         0
## 125                   0                  0        0         0         0
## 126                   0                  0        0         0         0
## 127                   0                  0        0         0         0
## 128                   0                  0        0         0         0
## 129                   0                  0        0         0         0
## 130                   0                  0        0         0         0
## 131                   0                  0        0         0         0
## 132                   0                  0        0         0         0
## 133                   0                  0        0         0         0
## 134                   0                  0        0         0         0
## 135                   0                  0        0         0         0
## 136                   0                  0        0         0         0
## 137                   0                  0        0         0         0
## 138                   0                  0        0         0         0
## 139                   0                  0        0         0         0
## 140                   0                  0        0         0         0
## 141                   0                  0        0         0         0
## 142                   0                  0        0         0         0
## 143                   0                  0        0         0         0
## 144                   0                  0        0         0         0
## 145                   0                  0        0         0         0
## 146                   0                  0        0         0         0
## 147                   0                  0        0         0         0
## 148                   0                  0        0         0         0
## 149                   0                  0        0         0         0
## 150                   0                  0        0         0         0
## 151                   0                  0        0         0         0
## 152                   0                  0        0         0         0
## 153                   0                  0        0         0         0
## 154                   0                  0        0         0         0
## 155                   0                  0        0         0         0
## 156                   0                  0        0         0         0
## 157                   0                  0        0         0         0
## 158                   0                  0        0         0         0
## 159                   0                  0        0         0         0
## 160                   0                  0        0         0         0
## 161                   0                  0        0         0         0
## 162                   0                  0        0         0         0
## 163                   0                  0        0         0         0
## 164                   0                  0        0         0         0
## 165                   0                  0        0         0         0
## 166                   0                  0        0         0         0
## 167                   0                  0        0         0         0
## 168                   0                  0        0         0         0
## 169                   0                  0        0         0         0
## 170                   0                  0        0         0         0
## 171                   0                  0        0         0         0
## 172                   0                  0        0         0         0
## 173                   0                  0        0         0         0
## 174                   0                  0        0         0         0
## 175                   0                  0        0         0         0
## 176                   0                  0        0         0         0
## 177                   0                  0        0         0         0
## 178                   0                  0        0         0         0
## 179                   0                  0        0         0         0
## 180                   0                  0        0         0         0
## 181                   0                  0        0         0         0
## 182                   0                  0        0         0         0
## 183                   0                  0        0         0         0
## 184                   0                  0        0         0         0
## 185                   0                  0        0         0         0
## 186                   0                  0        0         0         0
## 187                   0                  0        0         0         0
## 188                   0                  0        0         0         0
## 189                   0                  0        0         0         0
## 190                   0                  0        0         0         0
## 191                   0                  0        0         0         0
## 192                   0                  0        0         0         0
## 193                   0                  0        0         0         0
## 194                   0                  0        0         0         0
## 195                   0                  0        0         0         0
## 196                   0                  0        0         0         0
## 197                   0                  0        0         0         0
## 198                   0                  0        0         0         0
## 199                   0                  0        0         0         0
## 200                   0                  0        0         0         0
## 201                   0                  0        0         0         0
## 202                   0                  0        0         0         0
## 203                   0                  0        0         0         0
## 204                   0                  0        0         0         0
## 205                   0                  0        0         0         0
## 206                   0                  0        0         0         0
## 207                   0                  0        0         0         0
## 208                   0                  0        0         0         0
## 209                   0                  0        0         0         0
## 210                   0                  0        0         0         0
## 211                   0                  0        0         0         0
## 212                   0                  0        0         0         0
## 213                   0                  0        0         0         0
## 214                   0                  0        0         0         0
## 215                   0                  0        0         0         0
## 216                   0                  0        0         0         0
## 217                   0                  0        0         0         0
## 218                   0                  0        0         0         0
## 219                   0                  0        0         0         0
## 220                   0                  0        0         0         0
## 221                   0                  0        0         0         0
## 222                   0                  0        0         0         0
## 223                   0                  0        0         0         0
## 224                   0                  0        0         0         0
## 225                   0                  0        0         0         0
## 226                   0                  0        0         0         0
## 227                   0                  0        0         0         0
## 228                   0                  0        0         0         0
## 229                   0                  0        0         0         0
## 230                   0                  0        0         0         0
## 231                   0                  0        0         0         0
## 232                   0                  0        0         0         0
## 233                   0                  0        0         0         0
## 234                   0                  0        0         0         0
## 235                   0                  0        0         0         0
## 236                   0                  0        0         0         0
## 237                   0                  0        0         0         0
## 238                   0                  0        0         0         0
## 239                   0                  0        0         0         0
## 240                   0                  0        0         0         0
## 241                   0                  0        0         0         0
## 242                   0                  0        0         0         0
## 243                   0                  0        0         0         0
## 244                   0                  0        0         0         0
## 245                   0                  0        0         0         0
## 246                   0                  0        0         0         0
## 247                   0                  0        0         0         0
## 248                   0                  0        0         0         0
## 249                   0                  0        0         0         0
## 250                   0                  0        0         0         0
## 251                   0                  0        0         0         0
## 252                   0                  0        0         0         0
## 253                   0                  0        0         0         0
## 254                   0                  0        0         0         0
## 255                   0                  0        0         0         0
## 256                   0                  0        0         0         0
## 257                   0                  0        0         0         0
## 258                   0                  0        0         0         0
## 259                   0                  0        0         0         0
## 260                   0                  0        0         0         0
## 261                   0                  0        0         0         0
## 262                   0                  0        0         0         0
## 263                   0                  0        0         0         0
## 264                   0                  0        0         0         0
## 265                   0                  0        0         0         0
## 266                   0                  0        0         0         0
## 267                   0                  0        0         0         0
## 268                   0                  0        0         0         0
## 269                   0                  0        0         0         0
## 270                   0                  0        0         0         0
## 271                   0                  0        0         0         0
## 272                   0                  0        0         0         0
## 273                   0                  0        0         0         0
## 274                   0                  0        0         0         0
## 275                   0                  0        0         0         0
## 276                   0                  0        0         0         0
## 277                   0                  0        0         0         0
## 278                   0                  0        0         0         0
## 279                   0                  0        0         0         0
## 280                   0                  0        0         0         0
## 281                   0                  0        0         0         0
## 282                   0                  0        0         0         0
## 283                   0                  0        0         0         0
## 284                   0                  0        0         0         0
## 285                   0                  0        0         0         0
## 286                   0                  0        0         0         0
## 287                   0                  0        0         0         0
## 288                   0                  0        0         0         0
## 289                   0                  0        0         0         0
## 290                   0                  0        0         0         0
## 291                   0                  0        0         0         0
## 292                   0                  0        0         0         0
## 293                   0                  0        0         0         0
## 294                   0                  0        0         0         0
## 295                   0                  0        0         0         0
## 296                   0                  0        0         0         0
## 297                   0                  0        0         0         0
## 298                   0                  0        0         0         0
## 299                   0                  0        0         0         0
## 300                   0                  0        0         0         0
## 301                   0                  0        0         0         0
## 302                   0                  0        0         0         0
## 303                   0                  0        0         0         0
## 304                   0                  0        0         0         0
## 305                   0                  0        0         0         0
## 306                   0                  0        0         0         0
## 307                   0                  0        0         0         0
## 308                   0                  0        0         0         0
## 309                   0                  0        0         0         0
## 310                   0                  0        0         0         0
## 311                   0                  0        0         0         0
## 312                   0                  0        0         0         0
## 313                   0                  0        0         0         0
## 314                   0                  0        0         0         0
## 315                   0                  0        0         0         0
## 316                   0                  0        0         0         0
## 317                   0                  0        0         0         0
## 318                   0                  0        0         0         0
## 319                   0                  0        0         0         0
## 320                   0                  0        0         0         0
## 321                   0                  0        0         0         0
## 322                   0                  0        0         0         0
## 323                   0                  0        0         0         0
## 324                   0                  0        0         0         0
## 325                   0                  0        0         0         0
## 326                   0                  0        0         0         0
## 327                   0                  0        0         0         0
## 328                   0                  0        0         0         0
## 329                   0                  0        0         0         0
## 330                   0                  0        0         0         0
## 331                   0                  0        0         0         0
## 332                   0                  0        0         0         0
## 333                   0                  0        0         0         0
## 334                   0                  0        0         0         0
## 335                   0                  0        0         0         0
## 336                   0                  0        0         0         0
## 337                   0                  0        0         0         0
## 338                   0                  0        0         0         0
## 339                   0                  0        0         0         0
## 340                   0                  0        0         0         0
## 341                   0                  0        0         0         0
## 342                   0                  0        0         0         0
## 343                   0                  0        0         0         0
## 344                   0                  0        0         0         0
## 345                   0                  0        0         0         0
## 346                   0                  0        0         0         0
## 347                   0                  0        0         0         0
## 348                   0                  0        0         0         0
## 349                   0                  0        0         0         0
## 350                   0                  0        0         0         0
## 351                   0                  0        0         0         0
## 352                   0                  0        0         0         0
## 353                   0                  0        0         0         0
## 354                   0                  0        0         0         0
## 355                   0                  0        0         0         0
## 356                   0                  0        0         0         0
## 357                   0                  0        0         0         0
## 358                   0                  0        0         0         0
## 359                   0                  0        0         0         0
## 360                   0                  0        0         0         0
## 361                   0                  0        0         0         0
## 362                   0                  0        0         0         0
## 363                   0                  0        0         0         0
## 364                   0                  0        0         0         0
## 365                   0                  0        0         0         0
## 366                   0                  0        0         0         0
## 367                   0                  0        0         0         0
## 368                   0                  0        0         0         0
## 369                   0                  0        0         0         0
## 370                   0                  0        0         0         0
## 371                   0                  0        0         0         0
## 372                   0                  0        0         0         0
## 373                   0                  0        0         0         0
## 374                   0                  0        0         0         0
## 375                   0                  0        0         0         0
## 376                   0                  0        0         0         0
## 377                   0                  0        0         0         0
## 378                   0                  0        0         0         0
## 379                   0                  0        0         0         0
## 380                   0                  0        0         0         0
## 381                   0                  0        0         0         0
## 382                   0                  0        0         0         0
## 383                   0                  0        0         0         0
## 384                   0                  0        0         0         0
## 385                   0                  0        0         0         0
## 386                   0                  0        0         0         0
## 387                   0                  0        0         0         0
## 388                   0                  0        0         0         0
## 389                   0                  0        0         0         0
## 390                   0                  0        0         0         0
## 391                   0                  0        0         0         0
## 392                   0                  0        0         0         0
## 393                   0                  0        0         0         0
## 394                   0                  0        0         0         0
## 395                   0                  0        0         0         0
## 396                   0                  0        0         0         0
## 397                   0                  0        0         0         0
## 398                   0                  0        0         0         0
## 399                   0                  0        0         0         0
## 400                   0                  0        0         0         0
## 401                   0                  0        0         0         0
## 402                   0                  0        0         0         0
## 403                   0                  0        0         0         0
## 404                   0                  0        0         0         0
## 405                   0                  0        0         0         0
## 406                   0                  0        0         0         0
## 407                   0                  0        0         0         0
## 408                   0                  0        0         0         0
## 409                   0                  0        0         0         0
## 410                   0                  0        0         0         0
## 411                   0                  0        0         0         0
## 412                   0                  0        0         0         0
## 413                   0                  0        0         0         0
## 414                   0                  0        0         0         0
## 415                   0                  0        0         0         0
## 416                   0                  0        0         0         0
## 417                   0                  0        0         0         0
## 418                   0                  0        0         0         0
## 419                   0                  0        0         0         0
## 420                   0                  0        0         0         0
## 421                   0                  0        0         0         0
## 422                   0                  0        0         0         0
## 423                   0                  0        0         0         0
## 424                   0                  0        0         0         0
## 425                   0                  0        0         0         0
## 426                   0                  0        0         0         0
## 427                   0                  0        0         0         0
## 428                   0                  0        0         0         0
## 429                   0                  0        0         0         0
## 430                   0                  0        0         0         0
## 431                   0                  0        0         0         0
## 432                   0                  0        0         0         0
## 433                   0                  0        0         0         0
## 434                   0                  0        0         0         0
## 435                   0                  0        0         0         0
## 436                   0                  0        0         0         0
## 437                   0                  0        0         0         0
## 438                   0                  0        0         0         0
##     loaned_out total_points event_points points_per_game ep_this ep_next
## 1            0          124            0             3.6      NA     2.0
## 2            0            0            0             0.0      NA     2.0
## 3            0          100            0             4.0      NA     0.0
## 4            0          132            0             3.8      NA     2.3
## 5            0          130            0             4.6      NA     2.3
## 6            0           27            0             2.3      NA     1.1
## 7            0          109            0             4.0      NA     2.3
## 8            0          108            0             4.0      NA     1.7
## 9            0           23            0             1.9      NA     1.1
## 10           0            4            0             1.3      NA     1.7
## 11           0            0            0             0.0      NA     1.7
## 12           0            0            0             0.0      NA     2.3
## 13           0          112            0             4.3      NA     2.3
## 14           0          130            0             5.4      NA     2.0
## 15           0           89            0             3.4      NA     1.3
## 16           0           22            0             1.7      NA     0.5
## 17           0          109            0             2.9      NA     1.3
## 18           0          107            0             4.1      NA     1.9
## 19           0            5            0             1.7      NA     0.5
## 20           0           25            0             1.7      NA     0.5
## 21           0           70            0             2.5      NA     1.5
## 22           0          138            0             4.3      NA     2.5
## 23           0           87            0             6.7      NA     3.0
## 24           0          112            0             2.9      NA     2.2
## 25           0            0            0             0.0      NA     1.5
## 26           0           56            0             1.8      NA     2.1
## 27           0           83            0             2.4      NA     2.1
## 28           0           94            0             2.7      NA     2.1
## 29           0           56            0             2.1      NA     2.1
## 30           0            3            0             0.8      NA     2.1
## 31           0          102            0             2.7      NA     2.7
## 32           0            1            0             1.0      NA     1.5
## 33           0           27            0             2.1      NA     1.9
## 34           0           32            0             1.6      NA     1.5
## 35           0           82            0             3.3      NA     1.9
## 36           0           75            0             3.9      NA     0.0
## 37           0           59            0             2.1      NA     1.9
## 38           0           85            0             2.7      NA     2.3
## 39           0           58            0             2.0      NA     1.9
## 40           0           97            0             3.7      NA     2.3
## 41           0            1            0             1.0      NA     1.5
## 42           0            0            0             0.0      NA     1.9
## 43           0          102            0             3.6      NA     2.3
## 44           0           36            0             1.6      NA     1.8
## 45           0          110            0             3.3      NA     2.5
## 46           0           60            0             2.5      NA     2.3
## 47           0          146            0             3.8      NA     1.7
## 48           0           97            0             2.6      NA     1.6
## 49           0          100            0             2.7      NA     1.2
## 50           0           84            0             3.4      NA     1.6
## 51           0           63            0             2.5      NA     1.6
## 52           0           38            0             2.7      NA     1.0
## 53           0           20            0             1.0      NA     1.0
## 54           0            0            0             0.0      NA     1.6
## 55           0           88            0             2.7      NA     1.8
## 56           0           87            0             2.4      NA     1.0
## 57           0           25            0             1.3      NA     1.0
## 58           0           74            0             2.1      NA     1.4
## 59           0          164            0             4.3      NA     2.4
## 60           0           87            0             2.5      NA     1.4
## 61           0          101            0             3.2      NA     2.1
## 62           0          111            0             3.2      NA     2.0
## 63           0           43            0             2.7      NA     1.3
## 64           0            2            0             1.0      NA     1.1
## 65           0           16            0             2.7      NA     1.5
## 66           0            0            0             0.0      NA     1.3
## 67           0            8            0             2.0      NA     3.0
## 68           0          152            0             4.3      NA     3.0
## 69           0           89            0             3.4      NA     2.7
## 70           0           90            0             3.1      NA     2.7
## 71           0          102            0             3.6      NA     2.7
## 72           0          101            0             3.3      NA     2.7
## 73           0           57            0             3.6      NA     2.1
## 74           0           23            0             2.1      NA     2.1
## 75           0           33            0             2.5      NA     2.1
## 76           0          117            0             3.3      NA     2.6
## 77           0           62            0             2.6      NA     1.8
## 78           0           85            0             2.5      NA     2.3
## 79           0           56            0             3.7      NA     1.8
## 80           0           35            0             1.8      NA     1.5
## 81           0            3            0             1.0      NA     1.9
## 82           0          100            0             2.6      NA     1.9
## 83           0           65            0             2.2      NA     1.9
## 84           0           63            0             2.1      NA     2.0
## 85           0           92            0             2.6      NA     2.3
## 86           0            9            0             1.0      NA     1.6
## 87           0          104            0             4.3      NA     2.5
## 88           0            0            0             0.0      NA     1.2
## 89           0            0            0             0.0      NA     1.2
## 90           0            0            0             0.0      NA     1.7
## 91           0            0            0             0.0      NA     1.1
## 92           0            0            0             0.0      NA     1.1
## 93           0            0            0             0.0      NA     0.5
## 94           0            0            0             0.0      NA     1.1
## 95           0            0            0             0.0      NA     0.5
## 96           0            0            0             0.0      NA     0.5
## 97           0            0            0             0.0      NA     0.5
## 98           0            0            0             0.0      NA     0.9
## 99           0            0            0             0.0      NA     1.3
## 100          0            0            0             0.0      NA     0.9
## 101          0            0            0             0.0      NA     1.3
## 102          0            0            0             0.0      NA     0.5
## 103          0            0            0             0.0      NA     0.5
## 104          0            0            0             0.0      NA     0.5
## 105          0            0            0             0.0      NA     0.5
## 106          0            0            0             0.0      NA     0.9
## 107          0            0            0             0.0      NA     0.8
## 108          0            0            0             0.0      NA     0.6
## 109          0            0            0             0.0      NA     0.6
## 110          0            0            0             0.0      NA     1.0
## 111          0          136            0             3.9      NA     4.2
## 112          0           11            0             3.7      NA     3.5
## 113          0          175            0             4.7      NA     5.0
## 114          0           74            0             2.7      NA     3.8
## 115          0          165            0             5.0      NA     5.0
## 116          0           32            0             3.2      NA     2.8
## 117          0          131            0             4.7      NA     4.4
## 118          0          115            0             4.3      NA     4.4
## 119          0           79            0             2.9      NA     3.8
## 120          0           58            0             2.6      NA     3.8
## 121          0           14            0             2.8      NA     3.8
## 122          0          173            0             5.1      NA     4.3
## 123          0           89            0             2.8      NA     3.2
## 124          0          130            0             3.6      NA     3.5
## 125          0           81            0             2.6      NA     3.2
## 126          0          101            0             3.0      NA     2.4
## 127          0            3            0             1.5      NA     3.1
## 128          0           24            0             2.0      NA     2.4
## 129          0           77            0             2.7      NA     2.4
## 130          0            1            0             1.0      NA     1.5
## 131          0            2            0             1.0      NA     2.0
## 132          0           77            0             3.2      NA     2.8
## 133          0           77            0             2.7      NA     3.5
## 134          0          122            0             3.9      NA     3.8
## 135          0           99            0             3.7      NA     2.2
## 136          0           36            0             3.3      NA     1.5
## 137          0            0            0             0.0      NA     2.2
## 138          0           99            0             3.5      NA     2.1
## 139          0           32            0             1.9      NA     0.0
## 140          0           34            0             2.3      NA     1.5
## 141          0           50            0             2.1      NA     2.1
## 142          0           95            0             3.4      NA     3.3
## 143          0           81            0             4.3      NA     2.7
## 144          0           23            0             1.9      NA     2.1
## 145          0           15            0             2.1      NA     1.5
## 146          0           11            0             1.1      NA     1.5
## 147          0          101            0             3.1      NA     1.9
## 148          0           36            0             2.3      NA     1.4
## 149          0          121            0             3.4      NA     2.6
## 150          0          144            0             4.0      NA     2.7
## 151          0          136            0             4.7      NA     2.7
## 152          0           84            0             2.7      NA     2.5
## 153          0            8            0             2.0      NA     1.8
## 154          0          145            0             3.8      NA     3.0
## 155          0            0            0             0.0      NA     1.1
## 156          0           82            0             3.7      NA     3.3
## 157          0           39            0             3.3      NA     3.3
## 158          0           60            0             2.4      NA     2.1
## 159          0           56            0             2.3      NA     2.1
## 160          0           37            0             2.5      NA     2.1
## 161          0           50            0             2.6      NA     2.1
## 162          0           81            0             2.7      NA     2.7
## 163          0           55            0             2.6      NA     2.1
## 164          0           62            0             3.1      NA     2.7
## 165          0           35            0             2.2      NA     2.6
## 166          0            6            0             1.5      NA     0.0
## 167          0           52            0             1.7      NA     1.5
## 168          0           87            0             2.6      NA     1.9
## 169          0           66            0             2.0      NA     2.3
## 170          0           10            0             1.4      NA     2.3
## 171          0            7            0             1.0      NA     2.6
## 172          0           96            0             3.6      NA     3.0
## 173          0           18            0             1.5      NA     1.9
## 174          0            7            0             0.9      NA     1.5
## 175          0           88            0             2.8      NA     2.0
## 176          0           83            0             3.8      NA     2.0
## 177          0           55            0             3.9      NA     2.7
## 178          0            0            0             0.0      NA     1.2
## 179          0            0            0             0.0      NA     0.5
## 180          0            0            0             0.0      NA     1.1
## 181          0            0            0             0.0      NA     1.1
## 182          0            0            0             0.0      NA     0.9
## 183          0            0            0             0.0      NA     0.5
## 184          0            0            0             0.0      NA     1.7
## 185          0            0            0             0.0      NA     1.3
## 186          0            0            0             0.0      NA     0.5
## 187          0            0            0             0.0      NA     0.5
## 188          0            0            0             0.0      NA     0.5
## 189          0            0            0             0.0      NA     0.6
## 190          0            9            0             2.3      NA     0.0
## 191          0          135            0             3.6      NA     0.7
## 192          0          102            0             2.8      NA     0.6
## 193          0           60            0             2.6      NA     0.6
## 194          0           50            0             2.1      NA     0.6
## 195          0          107            0             2.8      NA     0.6
## 196          0           41            0             1.9      NA     0.0
## 197          0           51            0             2.2      NA     0.6
## 198          0           30            0             2.3      NA     0.6
## 199          0          113            0             3.1      NA     0.8
## 200          0           74            0             2.2      NA     0.4
## 201          0           53            0             1.8      NA     0.0
## 202          0           22            0             1.4      NA     0.0
## 203          0           82            0             2.5      NA     0.4
## 204          0           28            0             1.4      NA     0.0
## 205          0           10            0             2.0      NA     0.0
## 206          0           40            0             2.9      NA     0.4
## 207          0           51            0             2.1      NA     0.4
## 208          0            0            0             0.0      NA     0.0
## 209          0           44            0             1.7      NA     0.1
## 210          0           94            0             2.8      NA     0.5
## 211          0           92            0             3.3      NA     0.8
## 212          0           46            0             2.4      NA     0.2
## 213          0          123            0             3.7      NA     2.0
## 214          0            4            0             2.0      NA     1.2
## 215          0           61            0             1.9      NA     1.1
## 216          0           57            0             2.3      NA     1.1
## 217          0           55            0             2.0      NA     1.1
## 218          0            1            0             1.0      NA     0.5
## 219          0           65            0             2.7      NA     1.2
## 220          0          117            0             3.1      NA     2.3
## 221          0            0            0             0.0      NA     1.7
## 222          0           78            0             2.8      NA     1.7
## 223          0          195            0             5.4      NA     2.4
## 224          0          107            0             3.1      NA     1.3
## 225          0           80            0             2.3      NA     1.3
## 226          0           13            0             1.6      NA     0.5
## 227          0           78            0             2.4      NA     0.9
## 228          0           58            0             3.1      NA     0.9
## 229          0           26            0             2.0      NA     0.4
## 230          0           13            0             1.6      NA     0.5
## 231          0           23            0             1.9      NA     0.9
## 232          0           21            0             1.5      NA     0.9
## 233          0            0            0             0.0      NA     1.3
## 234          0          183            0             4.9      NA     2.3
## 235          0           76            0             2.8      NA     1.0
## 236          0           54            0             2.6      NA     1.3
## 237          0           67            0             3.5      NA     3.5
## 238          0           88            0             4.6      NA     3.5
## 239          0          110            0             3.8      NA     3.2
## 240          0           52            0             3.3      NA     2.6
## 241          0            7            0             2.3      NA     3.2
## 242          0           86            0             3.7      NA     2.4
## 243          0           81            0             3.2      NA     3.2
## 244          0           78            0             4.1      NA     2.6
## 245          0           83            0             4.4      NA     3.2
## 246          0           78            0             3.0      NA     4.4
## 247          0          111            0             5.0      NA     4.4
## 248          0           94            0             2.7      NA     0.0
## 249          0           75            0             2.8      NA     2.8
## 250          0           13            0             1.1      NA     3.4
## 251          0          147            0             5.1      NA     4.0
## 252          0           85            0             2.6      NA     2.8
## 253          0          303            0             8.4      NA     5.0
## 254          0           77            0             2.4      NA     2.8
## 255          0            0            0             0.0      NA     3.1
## 256          0            0            0             0.0      NA     3.5
## 257          0          181            0             4.9      NA     4.0
## 258          0           18            0             2.3      NA     2.5
## 259          0           38            0             1.8      NA     2.3
## 260          0          158            0             4.4      NA     3.7
## 261          0           10            0             3.3      NA     3.0
## 262          0           70            0             3.9      NA     3.3
## 263          0           60            0             3.5      NA     3.3
## 264          0          156            0             4.6      NA     4.5
## 265          0          138            0             4.3      NA     4.5
## 266          0          100            0             4.3      NA     3.3
## 267          0           20            0             2.9      NA     3.9
## 268          0           35            0             3.9      NA     3.3
## 269          0           55            0             2.5      NA     3.3
## 270          0          229            0             6.9      NA     4.0
## 271          0          169            0             5.8      NA     3.3
## 272          0          120            0             3.5      NA     2.3
## 273          0          209            0             5.6      NA     3.7
## 274          0           82            0             2.7      NA     2.3
## 275          0          179            0             5.6      NA     3.5
## 276          0          112            0             3.2      NA     3.0
## 277          0            8            0             1.6      NA     1.9
## 278          0            5            0             1.0      NA     1.9
## 279          0           16            0             2.0      NA     1.9
## 280          0          169            0             6.8      NA     4.0
## 281          0          126            0             4.3      NA     3.8
## 282          0          172            0             4.6      NA     4.5
## 283          0            7            0             7.0      NA     3.0
## 284          0          123            0             4.2      NA     3.9
## 285          0          116            0             5.0      NA     3.3
## 286          0           48            0             4.4      NA     2.7
## 287          0           23            0             2.6      NA     2.7
## 288          0          146            0             4.7      NA     4.5
## 289          0           27            0             3.4      NA     2.7
## 290          0           28            0             4.0      NA     2.7
## 291          0           55            0             4.2      NA     3.3
## 292          0           47            0             2.8      NA     2.7
## 293          0           98            0             3.3      NA     3.9
## 294          0            0            0             0.0      NA     3.3
## 295          0          152            0             4.9      NA     3.8
## 296          0           91            0             2.5      NA     1.9
## 297          0          100            0             3.6      NA     2.7
## 298          0           47            0             2.9      NA     1.9
## 299          0           44            0             1.7      NA     1.9
## 300          0          128            0             3.9      NA     2.9
## 301          0          125            0             4.2      NA     3.0
## 302          0          138            0             5.1      NA     3.1
## 303          0           21            0             1.6      NA     1.5
## 304          0            0            0             0.0      NA     2.6
## 305          0          104            0             3.0      NA     2.7
## 306          0          162            0             4.8      NA     4.0
## 307          0           57            0             3.6      NA     0.7
## 308          0           33            0             3.3      NA     0.7
## 309          0           53            0             4.4      NA     1.5
## 310          0           88            0             2.6      NA     0.6
## 311          0           64            0             3.2      NA     0.4
## 312          0          116            0             3.5      NA     1.2
## 313          0           52            0             2.6      NA     0.6
## 314          0           66            0             2.8      NA     0.6
## 315          0           49            0             2.3      NA     0.6
## 316          0           20            0             2.2      NA     0.0
## 317          0          116            0             3.3      NA     1.1
## 318          0           73            0             2.4      NA     0.8
## 319          0           70            0             2.3      NA     0.4
## 320          0           78            0             2.8      NA     0.6
## 321          0           51            0             2.0      NA     0.4
## 322          0           49            0             2.0      NA     0.4
## 323          0           41            0             1.6      NA     0.0
## 324          0           73            0             2.9      NA     0.4
## 325          0           94            0             2.7      NA     0.8
## 326          0          124            0             3.4      NA     1.0
## 327          0           69            0             2.3      NA     0.3
## 328          0           52            0             2.9      NA     1.2
## 329          0           73            0             3.6      NA     1.2
## 330          0          103            0             2.9      NA     1.7
## 331          0           76            0             3.2      NA     1.1
## 332          0           85            0             2.7      NA     1.1
## 333          0           58            0             2.6      NA     1.1
## 334          0           14            0             2.0      NA     0.5
## 335          0           22            0             4.4      NA     0.5
## 336          0           74            0             2.6      NA     1.1
## 337          0           71            0             3.1      NA     0.9
## 338          0           84            0             2.8      NA     1.3
## 339          0           68            0             2.0      NA     0.5
## 340          0           39            0             1.7      NA     0.5
## 341          0           55            0             2.1      NA     1.3
## 342          0            8            0             1.3      NA     0.5
## 343          0           72            0             2.3      NA     1.3
## 344          0           58            0             2.3      NA     0.9
## 345          0            0            0             0.0      NA     1.3
## 346          0            0            0             0.0      NA     1.7
## 347          0           53            0             1.8      NA     0.8
## 348          0           72            0             3.0      NA     1.3
## 349          0           66            0             2.4      NA     1.3
## 350          0           15            0             2.1      NA     1.0
## 351          0          144            0             4.0      NA     4.2
## 352          0            3            0             3.0      NA     3.5
## 353          0           43            0             3.1      NA     4.4
## 354          0           24            0             2.4      NA     4.4
## 355          0          138            0             3.8      NA     4.4
## 356          0          143            0             4.9      NA     4.4
## 357          0          113            0             4.7      NA     4.4
## 358          0           13            0             4.3      NA     2.6
## 359          0          107            0             3.5      NA     4.4
## 360          0           77            0             4.5      NA     4.4
## 361          0           85            0             2.5      NA     2.4
## 362          0           52            0             1.9      NA     2.4
## 363          0           55            0             2.2      NA     3.2
## 364          0          199            0             5.4      NA     4.0
## 365          0          175            0             4.9      NA     3.9
## 366          0           32            0             1.8      NA     2.4
## 367          0          178            0             4.8      NA     3.8
## 368          0           31            0             1.9      NA     2.1
## 369          0           58            0             1.8      NA     2.4
## 370          0           11            0             1.8      NA     3.4
## 371          0           22            0             1.4      NA     2.8
## 372          0          217            0             5.9      NA     5.0
## 373          0           64            0             2.7      NA     1.7
## 374          0            0            0             0.0      NA     1.7
## 375          0            7            0             3.5      NA     1.6
## 376          0           14            0             2.0      NA     1.6
## 377          0           42            0             2.0      NA     1.6
## 378          0           72            0             2.6      NA     1.6
## 379          0           22            0             1.8      NA     1.6
## 380          0           68            0             2.4      NA     1.6
## 381          0           59            0             2.6      NA     2.2
## 382          0           58            0             2.1      NA     1.6
## 383          0           65            0             2.8      NA     1.6
## 384          0           28            0             2.3      NA     1.6
## 385          0            0            0             0.0      NA     1.6
## 386          0            0            0             0.0      NA     1.6
## 387          0           13            0             2.2      NA     1.0
## 388          0           58            0             2.5      NA     1.1
## 389          0           48            0             2.1      NA     1.4
## 390          0          136            0             3.7      NA     2.1
## 391          0           81            0             2.5      NA     2.1
## 392          0           53            0             3.5      NA     1.4
## 393          0          125            0             3.3      NA     2.2
## 394          0           25            0             3.6      NA     1.8
## 395          0           79            0             2.5      NA     1.8
## 396          0           73            0             2.5      NA     1.8
## 397          0           24            0             1.6      NA     1.0
## 398          0            4            0             1.0      NA     1.1
## 399          0           72            0             3.8      NA     0.7
## 400          0          157            0             4.1      NA     0.7
## 401          0           42            0             2.5      NA     0.4
## 402          0          118            0             3.3      NA     1.8
## 403          0           77            0             2.4      NA     0.6
## 404          0            5            0             1.0      NA     0.4
## 405          0           90            0             2.4      NA     0.6
## 406          0           41            0             1.6      NA     0.6
## 407          0            1            0             1.0      NA     0.6
## 408          0            0            0             0.0      NA     1.2
## 409          0            0            0             0.0      NA     0.6
## 410          0           68            0             2.5      NA     0.0
## 411          0           84            0             2.9      NA     0.4
## 412          0           86            0             2.6      NA     0.4
## 413          0           54            0             2.6      NA     0.0
## 414          0          106            0             3.9      NA     0.0
## 415          0           62            0             3.0      NA     1.4
## 416          0           29            0             2.1      NA     0.0
## 417          0          144            0             4.6      NA     1.2
## 418          0           36            0             2.3      NA     0.5
## 419          0           93            0             3.3      NA     1.0
## 420          0            3            0             1.0      NA     0.3
## 421          0            0            0             0.0      NA     1.2
## 422          0            0            0             0.0      NA     0.5
## 423          0            0            0             0.0      NA     1.1
## 424          0            0            0             0.0      NA     1.7
## 425          0            0            0             0.0      NA     1.1
## 426          0            0            0             0.0      NA     1.1
## 427          0            0            0             0.0      NA     0.5
## 428          0            0            0             0.0      NA     0.5
## 429          0            0            0             0.0      NA     0.5
## 430          0            0            0             0.0      NA     1.1
## 431          0            0            0             0.0      NA     1.1
## 432          0            0            0             0.0      NA     1.7
## 433          0            0            0             0.0      NA     0.9
## 434          0            0            0             0.0      NA     1.3
## 435          0            0            0             0.0      NA     0.9
## 436          0            0            0             0.0      NA     0.5
## 437          0            0            0             0.0      NA     1.0
## 438          0            0            0             0.0      NA     0.8
##     special minutes goals_scored assists clean_sheets goals_conceded
## 1     FALSE    3039            0       0           11             48
## 2     FALSE       0            0       0            0              0
## 3     FALSE    2225            2       0            9             32
## 4     FALSE    3050            2       4           12             44
## 5     FALSE    2241            5       2           10             29
## 6     FALSE     819            0       1            3             17
## 7     FALSE    2272            3       1           10             30
## 8     FALSE    2146            2       4           10             30
## 9     FALSE     864            0       0            2             14
## 10    FALSE     194            0       0            1              5
## 11    FALSE       0            0       0            0              0
## 12    FALSE       0            0       0            0              0
## 13    FALSE    2161            4       9            8             36
## 14    FALSE    1844            7      10            9             25
## 15    FALSE    1827            3       5            9             26
## 16    FALSE     865            0       1            3             12
## 17    FALSE    3259            1       8           12             50
## 18    FALSE    1712            3       9           12             17
## 19    FALSE     144            0       0            0              3
## 20    FALSE     908            0       0            3             16
## 21    FALSE    1178            5       2            4             21
## 22    FALSE    2197           14       5           10             28
## 23    FALSE    1056           10       4            4             15
## 24    FALSE    3420            0       0            6             61
## 25    FALSE       0            0       0            0              0
## 26    FALSE    2708            0       1            4             47
## 27    FALSE    2764            2       1            5             53
## 28    FALSE    3001            1       3            6             50
## 29    FALSE    2067            1       3            2             38
## 30    FALSE     201            0       0            0              5
## 31    FALSE    3352            2       3            6             59
## 32    FALSE      71            0       0            0              2
## 33    FALSE     959            1       0            3             13
## 34    FALSE     974            0       0            5             17
## 35    FALSE    1851            2       5            5             29
## 36    FALSE    1285            5       3            2             22
## 37    FALSE    1941            2       1            1             41
## 38    FALSE    1988            2       6            4             33
## 39    FALSE    2234            0       2            3             42
## 40    FALSE    2003            5       3            2             38
## 41    FALSE      58            0       0            0              1
## 42    FALSE       0            0       0            0              0
## 43    FALSE    1981            8       2            6             33
## 44    FALSE     581            2       0            1             16
## 45    FALSE    2450            8       4            7             38
## 46    FALSE    1075            4       2            2             21
## 47    FALSE    3420            0       0           10             54
## 48    FALSE    3420            1       1           10             54
## 49    FALSE    3292            0       2           10             52
## 50    FALSE    2014            0       0           10             23
## 51    FALSE    2237            0       0            6             36
## 52    FALSE    1178            0       0            4             18
## 53    FALSE    1313            0       0            0             30
## 54    FALSE       0            0       0            0              0
## 55    FALSE    2415            3       1           11             29
## 56    FALSE    3240            0       3           10             50
## 57    FALSE     735            0       0            1             14
## 58    FALSE    1838            1       3            6             29
## 59    FALSE    2928            7       8           10             46
## 60    FALSE    3118            0       4            9             50
## 61    FALSE    1976            5       5            5             32
## 62    FALSE    2184           12       0            8             36
## 63    FALSE     842            2       2            3              8
## 64    FALSE      30            0       0            0              1
## 65    FALSE     221            1       1            1              8
## 66    FALSE       0            0       0            0              0
## 67    FALSE     305            0       0            0              4
## 68    FALSE    3114            0       0           11             35
## 69    FALSE    2295            0       3            8             26
## 70    FALSE    2610            0       0            9             27
## 71    FALSE    2460            1       1            9             27
## 72    FALSE    2790            0       1           11             30
## 73    FALSE    1440            1       2            4             21
## 74    FALSE     949            0       0            2             12
## 75    FALSE    1125            0       0            4             13
## 76    FALSE    2831            2       9           10             33
## 77    FALSE    1998            1       1           12             17
## 78    FALSE    2326            2       2            9             28
## 79    FALSE    1277            1       4            6             12
## 80    FALSE    1105            0       1            2             17
## 81    FALSE      36            0       0            0              2
## 82    FALSE    3420            2       1           12             39
## 83    FALSE    1906            0       4            6             30
## 84    FALSE     977            4       2            2             16
## 85    FALSE    2150            9       0            5             23
## 86    FALSE      46            0       0            0              3
## 87    FALSE    1621           10       1           10             11
## 88    FALSE       0            0       0            0              0
## 89    FALSE       0            0       0            0              0
## 90    FALSE       0            0       0            0              0
## 91    FALSE       0            0       0            0              0
## 92    FALSE       0            0       0            0              0
## 93    FALSE       0            0       0            0              0
## 94    FALSE       0            0       0            0              0
## 95    FALSE       0            0       0            0              0
## 96    FALSE       0            0       0            0              0
## 97    FALSE       0            0       0            0              0
## 98    FALSE       0            0       0            0              0
## 99    FALSE       0            0       0            0              0
## 100   FALSE       0            0       0            0              0
## 101   FALSE       0            0       0            0              0
## 102   FALSE       0            0       0            0              0
## 103   FALSE       0            0       0            0              0
## 104   FALSE       0            0       0            0              0
## 105   FALSE       0            0       0            0              0
## 106   FALSE       0            0       0            0              0
## 107   FALSE       0            0       0            0              0
## 108   FALSE       0            0       0            0              0
## 109   FALSE       0            0       0            0              0
## 110   FALSE       0            0       0            0              0
## 111   FALSE    3150            0       0           15             34
## 112   FALSE     270            0       0            1              4
## 113   FALSE    3330            2       6           15             38
## 114   FALSE    2082            0       0            9             27
## 115   FALSE    2855            7       2           13             30
## 116   FALSE     838            1       2            3             13
## 117   FALSE    2109            3       6           11             20
## 118   FALSE    2336            2       1           12             22
## 119   FALSE    2067            0       0            8             23
## 120   FALSE    1087            1       1            5             15
## 121   FALSE     278            0       1            1              4
## 122   FALSE    2417           12       6           12             27
## 123   FALSE    2300            2       4           11             26
## 124   FALSE    1874            6       8            9             19
## 125   FALSE    1511            4       2            8             14
## 126   FALSE    2994            1       2           16             32
## 127   FALSE     129            0       0            0              4
## 128   FALSE     520            1       0            1              7
## 129   FALSE    2121            2       2           11             24
## 130   FALSE      10            0       0            0              1
## 131   FALSE      27            0       0            0              1
## 132   FALSE    1871            2       5            6             30
## 133   FALSE     981            7       1            5             11
## 134   FALSE    2055           11       6           11             19
## 135   FALSE    2430            0       0            7             41
## 136   FALSE     990            0       0            2             14
## 137   FALSE       0            0       0            0              0
## 138   FALSE    2386            3       0            9             32
## 139   FALSE    1434            1       0            1             26
## 140   FALSE    1193            0       0            4             21
## 141   FALSE    1742            0       2            3             30
## 142   FALSE    2182            5       1            6             38
## 143   FALSE    1597            1       2            6             23
## 144   FALSE     435            0       0            2              6
## 145   FALSE     627            0       0            2             10
## 146   FALSE     574            0       0            0             14
## 147   FALSE    2425            5       2            7             35
## 148   FALSE     466            3       0            1             10
## 149   FALSE    3120            2       9            9             48
## 150   FALSE    3079           10       2            8             52
## 151   FALSE    2549            9       7           10             31
## 152   FALSE    2234            3       7            6             36
## 153   FALSE     360            0       0            0              9
## 154   FALSE    3420            0       0           10             58
## 155   FALSE       0            0       0            0              0
## 156   FALSE    1909            2       3            5             34
## 157   FALSE    1035            0       1            4             12
## 158   FALSE    2063            0       0            6             39
## 159   FALSE    1830            1       0            5             31
## 160   FALSE    1183            0       0            4             14
## 161   FALSE    1589            0       2            5             31
## 162   FALSE    2559            0       1            7             46
## 163   FALSE    1830            0       2            5             30
## 164   FALSE    1214            3       3            4             17
## 165   FALSE     848            1       1            3             14
## 166   FALSE     204            0       0            0              6
## 167   FALSE    2124            0       0            6             38
## 168   FALSE    2749            2       2            9             45
## 169   FALSE    1892            2       2            6             24
## 170   FALSE     153            0       1            0              6
## 171   FALSE     248            0       0            0              6
## 172   FALSE    2257            4       4            6             40
## 173   FALSE     572            0       0            1             12
## 174   FALSE     192            0       0            0              2
## 175   FALSE    1871            4       8            6             28
## 176   FALSE    1076            8       3            0             23
## 177   FALSE     984            5       0            4             13
## 178   FALSE       0            0       0            0              0
## 179   FALSE       0            0       0            0              0
## 180   FALSE       0            0       0            0              0
## 181   FALSE       0            0       0            0              0
## 182   FALSE       0            0       0            0              0
## 183   FALSE       0            0       0            0              0
## 184   FALSE       0            0       0            0              0
## 185   FALSE       0            0       0            0              0
## 186   FALSE       0            0       0            0              0
## 187   FALSE       0            0       0            0              0
## 188   FALSE       0            0       0            0              0
## 189   FALSE       0            0       0            0              0
## 190   FALSE     274            0       0            1              7
## 191   FALSE    3420            0       1           10             58
## 192   FALSE    3264            0       2            9             53
## 193   FALSE    1585            0       0            7             26
## 194   FALSE    1902            0       1            5             31
## 195   FALSE    3420            0       3           10             58
## 196   FALSE    1110            0       1            3             23
## 197   FALSE    1670            0       1            4             28
## 198   FALSE    1047            0       0            2             14
## 199   FALSE    3066            4       3           10             52
## 200   FALSE    2131            3       0            6             36
## 201   FALSE    2396            0       0            7             40
## 202   FALSE     755            0       0            3             11
## 203   FALSE    2450            2       1            7             39
## 204   FALSE    1115            0       0            0             22
## 205   FALSE     217            0       1            1              5
## 206   FALSE     997            1       2            3             12
## 207   FALSE    1227            2       1            2             30
## 208   FALSE       0            0       0            0              0
## 209   FALSE    1268            0       4            3             23
## 210   FALSE    1807            6       2            4             34
## 211   FALSE    1849            7       2            6             32
## 212   FALSE    1327            1       1            6             23
## 213   FALSE    2965            0       0            8             47
## 214   FALSE     180            0       0            0              6
## 215   FALSE    2817            0       0            5             52
## 216   FALSE    1917            0       1            4             35
## 217   FALSE    2306            0       0            5             41
## 218   FALSE      90            0       0            0              2
## 219   FALSE    1848            0       2            6             30
## 220   FALSE    3420            2       4            9             60
## 221   FALSE       0            0       0            0              0
## 222   FALSE    2269            2       2            6             38
## 223   FALSE    2948           12      13            9             51
## 224   FALSE    2533            2       8            8             42
## 225   FALSE    1683            3       3            4             35
## 226   FALSE     486            0       0            3              7
## 227   FALSE    2896            0       4            9             45
## 228   FALSE    1411            3       0            3             23
## 229   FALSE     991            0       0            4             15
## 230   FALSE     375            0       1            0              9
## 231   FALSE     760            0       2            1             18
## 232   FALSE     579            0       1            0             12
## 233   FALSE       0            0       0            0              0
## 234   FALSE    3248           20       2            8             57
## 235   FALSE    1314            6       3            5             19
## 236   FALSE     818            3       4            1             17
## 237   FALSE    1710            0       0            7             24
## 238   FALSE    1710            0       0           10             14
## 239   FALSE    2124            2       1           11             24
## 240   FALSE    1264            0       1            6             19
## 241   FALSE     173            0       0            1              1
## 242   FALSE    1901            0       2            9             22
## 243   FALSE    1995            1       0            9             27
## 244   FALSE    1449            1       0            8             15
## 245   FALSE    1573            1       2            8             17
## 246   FALSE    2253            0       0            8             28
## 247   FALSE    1940            1       5           10             18
## 248   FALSE    1718            3       7            5             28
## 249   FALSE    2169            1       1           14             21
## 250   FALSE     234            0       0            1              1
## 251   FALSE    2189           10       8           15             24
## 252   FALSE    2381            1       2           15             23
## 253   FALSE    2905           32      12           15             29
## 254   FALSE    1759            0       3            6             25
## 255   FALSE       0            0       0            0              0
## 256   FALSE       0            0       0            0              0
## 257   FALSE    2760           15       8           16             32
## 258   FALSE     262            1       1            3              0
## 259   FALSE     581            1       2            3              4
## 260   FALSE    3195            0       0           16             26
## 261   FALSE     224            0       0            1              1
## 262   FALSE    1301            0       0            9             11
## 263   FALSE    1394            1       1            6             11
## 264   FALSE    2966            4       0           15             25
## 265   FALSE    2784            0       6           15             22
## 266   FALSE    1340            3       2            9             11
## 267   FALSE     360            0       1            2              1
## 268   FALSE     806            0       0            4              5
## 269   FALSE    1740            1       2            6             17
## 270   FALSE    2584           18      17           13             23
## 271   FALSE    2431            9      11           14             18
## 272   FALSE    2880            5       4           15             24
## 273   FALSE    3073            8      18           19             22
## 274   FALSE    1504            4       2            6             15
## 275   FALSE    2415           10      15           12             22
## 276   FALSE    1514            6       5            9             10
## 277   FALSE      45            0       1            0              1
## 278   FALSE      50            0       0            0              1
## 279   FALSE     530            0       0            3              3
## 280   FALSE    1960           21       6           13             12
## 281   FALSE    1660           13       7            9             12
## 282   FALSE    3330            0       0           18             28
## 283   FALSE      90            0       0            1              0
## 284   FALSE    2535            4       0           11             24
## 285   FALSE    1973            0       0           15             11
## 286   FALSE     787            0       0            7              2
## 287   FALSE     639            0       0            3              8
## 288   FALSE    2741            3       1           16             22
## 289   FALSE     443            0       0            3              3
## 290   FALSE     360            0       0            4              0
## 291   FALSE    1000            1       0            7              6
## 292   FALSE    1284            0       0            5             14
## 293   FALSE    2444            2       6            9             26
## 294   FALSE       0            0       0            0              0
## 295   FALSE    2546            9      10           11             32
## 296   FALSE    3117            1       1           16             26
## 297   FALSE    1919            3       5           15             10
## 298   FALSE     611            4       0            4              1
## 299   FALSE    1257            0       2            5             14
## 300   FALSE    1807            8       6            9             18
## 301   FALSE    1572            9       6            9             13
## 302   FALSE    2145            6      13           11             20
## 303   FALSE     629            0       0            4              3
## 304   FALSE       0            0       0            0              0
## 305   FALSE    1799            7       5           10             16
## 306   FALSE    2866           16       7           14             26
## 307   FALSE    1440            0       0            3             21
## 308   FALSE     900            0       0            2             15
## 309   FALSE    1080            0       0            4             11
## 310   FALSE    2842            0       2            7             37
## 311   FALSE    1745            2       1            4             30
## 312   FALSE    2927            3       0            9             31
## 313   FALSE    1602            0       0            5             18
## 314   FALSE    2103            0       2            5             32
## 315   FALSE    1757            0       1            4             31
## 316   FALSE     670            0       0            1             11
## 317   FALSE    2802            3       7            9             35
## 318   FALSE    2264            1       4            6             30
## 319   FALSE    2034            2       0            6             27
## 320   FALSE    1776            2       4            6             22
## 321   FALSE    1137            1       2            2             25
## 322   FALSE    1337            1       1            3             18
## 323   FALSE    1365            1       0            3             25
## 324   FALSE    1865            2       2            5             29
## 325   FALSE    1946            6       3            6             31
## 326   FALSE    2486            8       6            8             28
## 327   FALSE    1703            4       1            5             25
## 328   FALSE    1620            0       0            4             26
## 329   FALSE    1800            0       0            4             30
## 330   FALSE    3135            0       5            8             49
## 331   FALSE    2049            2       1            6             32
## 332   FALSE    2794            0       3            7             44
## 333   FALSE    1980            2       0            5             33
## 334   FALSE     142            0       0            1              2
## 335   FALSE     427            1       0            2              5
## 336   FALSE    2520            0       2            5             42
## 337   FALSE    1515            3       2            4             21
## 338   FALSE    1708            3       5            2             29
## 339   FALSE    2897            1       0            8             47
## 340   FALSE    1666            0       0            3             30
## 341   FALSE    1206            2       2            1             24
## 342   FALSE     160            0       0            1              2
## 343   FALSE    1938            1       3            7             31
## 344   FALSE    1715            1       1            4             31
## 345   FALSE       0            0       0            0              0
## 346   FALSE       0            0       0            0              0
## 347   FALSE    1570            2       2            4             28
## 348   FALSE    1024            7       1            4             15
## 349   FALSE    1067            5       0            4             17
## 350   FALSE     449            0       1            1              8
## 351   FALSE    3240            0       0           15             35
## 352   FALSE      90            0       0            0              1
## 353   FALSE    1177            0       0            5             13
## 354   FALSE     800            0       2            2             14
## 355   FALSE    3203            0       1           16             31
## 356   FALSE    2323            2       7           12             20
## 357   FALSE    1912            0       7            9             21
## 358   FALSE     188            0       2            1              4
## 359   FALSE    2532            0       0           13             21
## 360   FALSE    1427            2       2            6             13
## 361   FALSE    2822            0       2           15             30
## 362   FALSE    1875            0       0            7             22
## 363   FALSE     826            2       4            4             12
## 364   FALSE    3218           11      10           17             33
## 365   FALSE    2957            9      13           16             28
## 366   FALSE     837            1       0            2             11
## 367   FALSE    2292           12       8           14             18
## 368   FALSE     768            0       1            4              9
## 369   FALSE    1385            1       1            7             18
## 370   FALSE     206            0       1            0              6
## 371   FALSE     224            1       0            1              2
## 372   FALSE    3074           29       2           15             34
## 373   FALSE    2128            0       0            5             40
## 374   FALSE       0            0       0            0              0
## 375   FALSE     151            0       0            1              3
## 376   FALSE     495            0       0            1              6
## 377   FALSE    1566            0       0            5             29
## 378   FALSE    2381            0       4            6             47
## 379   FALSE     795            1       0            2             16
## 380   FALSE    2329            2       0            6             43
## 381   FALSE    1818            3       1            2             37
## 382   FALSE    2206            0       0            6             43
## 383   FALSE    1709            1       1            5             34
## 384   FALSE     993            0       2            2             18
## 385   FALSE       0            0       0            0              0
## 386   FALSE       0            0       0            0              0
## 387   FALSE     447            0       0            3              7
## 388   FALSE    1900            1       2            6             33
## 389   FALSE    1537            1       1            4             29
## 390   FALSE    3324            7       4            9             63
## 391   FALSE    1610            5       3            1             34
## 392   FALSE     987            2       3            4             16
## 393   FALSE    2817            5       8            8             54
## 394   FALSE     433            1       1            2              3
## 395   FALSE    1486            5       3            5             30
## 396   FALSE    1836            5       2            6             30
## 397   FALSE     442            1       1            2              9
## 398   FALSE      29            0       0            0              1
## 399   FALSE    1710            0       0            6             29
## 400   FALSE    3420            0       0            9             56
## 401   FALSE    1452            0       0            5             27
## 402   FALSE    3069            1       7           10             60
## 403   FALSE    2880            1       0            7             60
## 404   FALSE     246            0       0            0              7
## 405   FALSE    3289            0       1           10             62
## 406   FALSE    1421            0       0            3             29
## 407   FALSE       4            0       0            0              0
## 408   FALSE       0            0       0            0              0
## 409   FALSE       0            0       0            0              0
## 410   FALSE    1867            0       3            6             29
## 411   FALSE    2400            4       0            7             45
## 412   FALSE    2798            2       3            7             56
## 413   FALSE    1562            2       0            5             29
## 414   FALSE    2039            5       7            6             44
## 415   FALSE    1350            3       2            7             23
## 416   FALSE     840            0       2            2             20
## 417   FALSE    2309           11       7            7             50
## 418   FALSE     742            3       1            3             13
## 419   FALSE    1537            8       2            6             36
## 420   FALSE      22            0       0            0              0
## 421   FALSE       0            0       0            0              0
## 422   FALSE       0            0       0            0              0
## 423   FALSE       0            0       0            0              0
## 424   FALSE       0            0       0            0              0
## 425   FALSE       0            0       0            0              0
## 426   FALSE       0            0       0            0              0
## 427   FALSE       0            0       0            0              0
## 428   FALSE       0            0       0            0              0
## 429   FALSE       0            0       0            0              0
## 430   FALSE       0            0       0            0              0
## 431   FALSE       0            0       0            0              0
## 432   FALSE       0            0       0            0              0
## 433   FALSE       0            0       0            0              0
## 434   FALSE       0            0       0            0              0
## 435   FALSE       0            0       0            0              0
## 436   FALSE       0            0       0            0              0
## 437   FALSE       0            0       0            0              0
## 438   FALSE       0            0       0            0              0
##     own_goals penalties_saved penalties_missed yellow_cards red_cards
## 1           0               1                0            1         0
## 2           0               0                0            0         0
## 3           0               0                0            4         0
## 4           0               0                0            5         0
## 5           0               0                0            3         0
## 6           0               0                0            3         0
## 7           0               0                0            6         0
## 8           0               0                0            3         0
## 9           0               0                0            1         0
## 10          0               0                0            0         1
## 11          0               0                0            0         0
## 12          0               0                0            0         0
## 13          0               0                0            4         0
## 14          0               0                0            0         0
## 15          0               0                0            1         0
## 16          0               0                0            3         1
## 17          0               0                0           10         0
## 18          0               0                0            2         0
## 19          0               0                0            0         0
## 20          0               0                0            1         0
## 21          0               0                0            1         0
## 22          0               0                0            1         0
## 23          0               0                1            0         0
## 24          0               1                0            2         0
## 25          0               0                0            0         0
## 26          0               0                0            8         1
## 27          1               0                0            5         0
## 28          0               0                0            0         0
## 29          0               0                0            6         0
## 30          0               0                0            1         0
## 31          0               0                0            5         0
## 32          0               0                0            0         0
## 33          0               0                0            4         0
## 34          0               0                0            2         0
## 35          0               0                0            2         0
## 36          0               0                0            1         0
## 37          0               0                0            8         0
## 38          0               0                0            1         0
## 39          0               0                0            5         0
## 40          0               0                0            0         0
## 41          0               0                0            0         0
## 42          0               0                0            0         0
## 43          0               0                0            0         0
## 44          0               0                0            1         0
## 45          0               0                0            3         0
## 46          0               0                0            1         0
## 47          0               2                0            0         0
## 48          4               0                0            7         0
## 49          0               0                0            8         0
## 50          0               0                0            3         0
## 51          1               0                0            2         0
## 52          0               0                0            0         0
## 53          0               0                0            3         0
## 54          0               0                0            0         0
## 55          0               0                0            4         1
## 56          0               0                0            6         0
## 57          0               0                0            2         0
## 58          0               0                0            3         0
## 59          0               0                0            2         0
## 60          0               0                0            2         1
## 61          0               0                0            2         0
## 62          0               0                2            9         0
## 63          0               0                0            0         0
## 64          0               0                0            0         0
## 65          0               0                0            0         0
## 66          0               0                0            0         0
## 67          0               0                0            0         0
## 68          0               1                0            3         0
## 69          0               0                0            1         0
## 70          0               0                0            5         0
## 71          0               0                0            1         0
## 72          0               0                0            5         0
## 73          1               0                0            1         0
## 74          0               0                0            3         0
## 75          0               0                0            5         0
## 76          0               0                0            2         0
## 77          0               0                0            6         0
## 78          0               0                0            1         0
## 79          0               0                0            3         0
## 80          0               0                0            2         0
## 81          0               0                0            0         0
## 82          0               0                0            7         0
## 83          0               0                0            2         0
## 84          0               0                0            3         0
## 85          0               0                0           10         0
## 86          0               0                0            0         0
## 87          0               0                0            1         0
## 88          0               0                0            0         0
## 89          0               0                0            0         0
## 90          0               0                0            0         0
## 91          0               0                0            0         0
## 92          0               0                0            0         0
## 93          0               0                0            0         0
## 94          0               0                0            0         0
## 95          0               0                0            0         0
## 96          0               0                0            0         0
## 97          0               0                0            0         0
## 98          0               0                0            0         0
## 99          0               0                0            0         0
## 100         0               0                0            0         0
## 101         0               0                0            0         0
## 102         0               0                0            0         0
## 103         0               0                0            0         0
## 104         0               0                0            0         0
## 105         0               0                0            0         0
## 106         0               0                0            0         0
## 107         0               0                0            0         0
## 108         0               0                0            0         0
## 109         0               0                0            0         0
## 110         0               0                0            0         0
## 111         0               0                0            2         0
## 112         0               0                0            0         0
## 113         1               0                0            1         0
## 114         0               0                0            1         1
## 115         0               0                0            6         0
## 116         0               0                0            3         1
## 117         0               0                0            3         0
## 118         0               0                0            4         0
## 119         0               0                0            0         0
## 120         0               0                0            0         0
## 121         0               0                0            0         0
## 122         0               0                0            2         0
## 123         0               0                0            4         1
## 124         0               0                0            1         0
## 125         0               0                0            1         0
## 126         0               0                0            3         0
## 127         0               0                0            0         0
## 128         0               0                0            0         0
## 129         0               0                0            3         1
## 130         0               0                0            0         0
## 131         0               0                0            0         0
## 132         0               0                0            1         0
## 133         0               0                0            0         0
## 134         0               0                0            7         0
## 135         0               0                0            1         0
## 136         0               0                0            0         0
## 137         0               0                0            0         0
## 138         0               0                0            8         0
## 139         0               0                0            4         0
## 140         1               0                0            1         0
## 141         0               0                0            3         0
## 142         0               0                0            7         0
## 143         0               0                0            1         0
## 144         0               0                0            0         0
## 145         0               0                0            1         0
## 146         0               0                0            5         0
## 147         0               0                0            5         0
## 148         0               0                0            0         0
## 149         0               0                0            3         0
## 150         0               0                1            8         0
## 151         0               0                0            5         0
## 152         0               0                1            6         0
## 153         0               0                0            0         0
## 154         0               1                0            0         0
## 155         0               0                0            0         0
## 156         0               0                0            1         0
## 157         0               0                0            0         0
## 158         0               0                0            2         0
## 159         0               0                0            3         1
## 160         0               0                0            3         0
## 161         0               0                0            2         0
## 162         0               0                0            3         0
## 163         0               0                0            2         0
## 164         0               0                0            2         0
## 165         0               0                0            0         0
## 166         0               0                0            0         0
## 167         0               0                0            4         1
## 168         0               0                0            6         1
## 169         0               0                0            7         0
## 170         0               0                0            0         0
## 171         0               0                0            0         0
## 172         0               0                0            2         0
## 173         0               0                0            0         0
## 174         0               0                0            1         0
## 175         0               0                0            4         0
## 176         0               0                0            2         0
## 177         0               0                0            0         0
## 178         0               0                0            0         0
## 179         0               0                0            0         0
## 180         0               0                0            0         0
## 181         0               0                0            0         0
## 182         0               0                0            0         0
## 183         0               0                0            0         0
## 184         0               0                0            0         0
## 185         0               0                0            0         0
## 186         0               0                0            0         0
## 187         0               0                0            0         0
## 188         0               0                0            0         0
## 189         0               0                0            0         0
## 190         0               0                0            0         0
## 191         1               2                0            1         0
## 192         0               0                0            6         1
## 193         0               0                0            1         0
## 194         0               0                0            7         0
## 195         0               0                0            6         0
## 196         0               0                0            3         0
## 197         0               0                0            3         0
## 198         0               0                0            0         0
## 199         0               0                0            4         0
## 200         0               0                0            3         1
## 201         0               0                0            8         1
## 202         0               0                0            3         0
## 203         0               0                0            0         0
## 204         0               0                0            2         0
## 205         0               0                0            1         0
## 206         0               0                0            1         0
## 207         0               0                0            2         0
## 208         0               0                0            0         0
## 209         0               0                0            4         0
## 210         0               0                0            1         0
## 211         0               0                0            2         0
## 212         0               0                0            1         0
## 213         1               2                0            3         0
## 214         0               0                0            0         0
## 215         0               0                0            4         0
## 216         1               0                0            1         0
## 217         0               0                0            4         0
## 218         0               0                0            0         0
## 219         0               0                0            1         1
## 220         0               0                0            7         0
## 221         0               0                0            0         0
## 222         1               0                0            7         0
## 223         0               0                0            2         0
## 224         0               0                0            5         1
## 225         0               0                0            2         0
## 226         0               0                0            0         1
## 227         0               0                0            6         2
## 228         0               0                0            0         0
## 229         0               0                0            2         0
## 230         0               0                0            1         0
## 231         0               0                0            3         0
## 232         0               0                0            1         0
## 233         0               0                0            0         0
## 234         0               0                1            3         0
## 235         0               0                0            2         0
## 236         0               0                0            2         0
## 237         0               1                0            3         0
## 238         0               1                0            1         0
## 239         0               0                0            4         0
## 240         0               0                0            1         0
## 241         0               0                0            1         0
## 242         0               0                0            3         0
## 243         0               0                0            3         0
## 244         0               0                0            0         0
## 245         0               0                0            3         0
## 246         0               0                0            1         0
## 247         0               0                0            2         0
## 248         0               0                0            3         0
## 249         0               0                0            1         0
## 250         0               0                0            1         0
## 251         0               0                0            3         1
## 252         0               0                0            1         0
## 253         0               0                1            1         0
## 254         0               0                0            3         0
## 255         0               0                0            0         0
## 256         0               0                0            0         0
## 257         0               0                0            1         0
## 258         0               0                0            0         0
## 259         0               0                0            0         0
## 260         0               2                0            1         0
## 261         0               0                0            0         0
## 262         0               0                0            0         0
## 263         0               0                0            6         0
## 264         1               0                0            9         0
## 265         1               0                0            2         1
## 266         0               0                0            2         0
## 267         0               0                0            2         0
## 268         0               0                0            1         0
## 269         0               0                0            2         0
## 270         0               0                0            3         1
## 271         0               0                0            5         0
## 272         0               0                0            7         0
## 273         0               0                0            2         0
## 274         0               0                0            3         0
## 275         0               0                0            4         0
## 276         0               0                0            0         0
## 277         0               0                0            0         0
## 278         0               0                0            0         0
## 279         0               0                0            1         0
## 280         0               0                0            2         0
## 281         0               0                2            6         0
## 282         0               0                0            0         0
## 283         0               0                0            0         0
## 284         0               0                0            4         0
## 285         1               0                0            2         0
## 286         0               0                0            2         0
## 287         0               0                0            6         0
## 288         0               0                0            7         0
## 289         0               0                0            0         0
## 290         0               0                0            0         0
## 291         1               0                0            2         0
## 292         0               0                0            1         0
## 293         0               0                0            7         0
## 294         0               0                0            0         0
## 295         0               0                1            5         0
## 296         0               0                0            6         0
## 297         0               0                0            1         0
## 298         0               0                0            1         0
## 299         0               0                0            5         0
## 300         0               0                0            2         0
## 301         0               0                0            1         0
## 302         0               0                0            5         1
## 303         0               0                0            2         0
## 304         0               0                0            0         0
## 305         0               0                0            3         0
## 306         0               0                1            4         0
## 307         0               1                0            0         0
## 308         1               0                0            0         0
## 309         0               1                0            0         0
## 310         1               0                0            5         0
## 311         0               0                0            3         0
## 312         0               0                0            5         0
## 313         0               0                0            1         0
## 314         0               0                0            3         0
## 315         0               0                0            2         0
## 316         0               0                0            0         0
## 317         0               0                0            6         0
## 318         0               0                0            2         2
## 319         0               0                0            3         0
## 320         0               0                0            1         0
## 321         0               0                0            0         0
## 322         0               0                0            4         0
## 323         0               0                0            7         0
## 324         0               0                0            2         0
## 325         0               0                0            3         0
## 326         1               0                0            3         0
## 327         0               0                1            2         0
## 328         0               0                0            2         0
## 329         0               1                0            0         0
## 330         0               0                0            2         0
## 331         0               0                0            2         1
## 332         0               0                0            3         0
## 333         0               0                0            6         1
## 334         0               0                0            0         0
## 335         0               0                0            1         0
## 336         0               0                0            7         0
## 337         0               0                0            0         0
## 338         0               0                0            3         0
## 339         0               0                0           11         0
## 340         0               0                0            6         0
## 341         0               0                0            1         0
## 342         0               0                0            0         0
## 343         0               0                0            3         0
## 344         0               0                0            2         0
## 345         0               0                0            0         0
## 346         0               0                0            0         0
## 347         0               0                0            6         0
## 348         0               0                0            2         0
## 349         0               0                0            2         0
## 350         0               0                0            0         0
## 351         0               0                0            1         0
## 352         0               0                0            0         0
## 353         0               0                0            3         0
## 354         0               0                0            4         0
## 355         0               0                0            4         0
## 356         0               0                0            3         0
## 357         0               0                0            1         0
## 358         0               0                0            0         0
## 359         1               0                0            1         1
## 360         0               0                0            1         1
## 361         0               0                0            4         0
## 362         0               0                0            6         0
## 363         0               0                0            4         0
## 364         0               0                0            0         0
## 365         0               0                0            7         0
## 366         0               0                0            2         0
## 367         0               0                0            0         0
## 368         0               0                0            0         0
## 369         0               0                0            3         0
## 370         0               0                0            0         0
## 371         0               0                0            1         0
## 372         0               0                1            5         0
## 373         0               0                0            0         0
## 374         0               0                0            0         0
## 375         0               0                0            0         0
## 376         0               0                0            1         0
## 377         0               0                0            5         0
## 378         0               0                0            7         0
## 379         0               0                0            3         1
## 380         1               0                0            5         0
## 381         0               0                0            3         0
## 382         0               0                0            4         0
## 383         0               0                0            2         0
## 384         0               0                0            4         1
## 385         0               0                0            0         0
## 386         0               0                0            0         0
## 387         0               0                0            1         0
## 388         0               0                1            1         1
## 389         0               0                0            3         0
## 390         0               0                0           10         0
## 391         0               0                0            3         0
## 392         0               0                0            0         0
## 393         0               0                0            4         0
## 394         0               0                0            0         0
## 395         0               0                0            1         0
## 396         0               0                2            1         1
## 397         0               0                0            2         0
## 398         0               0                0            0         0
## 399         0               0                0            2         0
## 400         0               3                0            0         0
## 401         0               0                0            5         0
## 402         0               0                0            7         0
## 403         0               0                0            3         0
## 404         0               0                0            1         0
## 405         1               0                0            9         0
## 406         0               0                0            1         0
## 407         0               0                0            0         0
## 408         0               0                0            0         0
## 409         0               0                0            0         0
## 410         0               0                0            5         0
## 411         0               0                0            6         0
## 412         0               0                0            5         0
## 413         0               0                0            3         0
## 414         0               0                1            4         0
## 415         0               0                0            1         0
## 416         0               0                0            1         0
## 417         0               0                0            5         1
## 418         0               0                0            5         1
## 419         0               0                0            3         0
## 420         0               0                0            0         0
## 421         0               0                0            0         0
## 422         0               0                0            0         0
## 423         0               0                0            0         0
## 424         0               0                0            0         0
## 425         0               0                0            0         0
## 426         0               0                0            0         0
## 427         0               0                0            0         0
## 428         0               0                0            0         0
## 429         0               0                0            0         0
## 430         0               0                0            0         0
## 431         0               0                0            0         0
## 432         0               0                0            0         0
## 433         0               0                0            0         0
## 434         0               0                0            0         0
## 435         0               0                0            0         0
## 436         0               0                0            0         0
## 437         0               0                0            0         0
## 438         0               0                0            0         0
##     saves bonus bps influence creativity threat ict_index ea_index
## 1      90     7 627     722.4        0.0      0      71.9        0
## 2       0     0   0       0.0        0.0      0       0.0        0
## 3       0    16 556     692.0      123.8    137      95.5        0
## 4       0    11 656     554.0      561.0    484     160.1        0
## 5       0    15 604     693.6      238.7    305     124.0        0
## 6       0     1 196     212.2       39.3     24      27.5        0
## 7       0    13 610     836.6      129.9    202     117.0        0
## 8       0     6 510     443.2      334.9    404     118.3        0
## 9       0     0 171     227.8       40.0    134      40.2        0
## 10      0     0  41      52.2        1.3      2       5.5        0
## 11      0     0   0       0.0        0.0      0       0.0        0
## 12      0     0   0       0.0        0.0      0       0.0        0
## 13      0    11 506     640.6     1287.5    555     248.6        0
## 14      0    12 503     631.2      478.3    734     184.2        0
## 15      0     2 426     430.0      592.9    635     165.6        0
## 16      0     0 156     138.2      194.4     92      42.5        0
## 17      0     3 593     753.4      822.8    378     195.3        0
## 18      0     9 411     506.8      727.8    400     163.8        0
## 19      0     0  23      12.0       29.7     11       5.3        0
## 20      0     0 160     168.4      141.3     67      37.8        0
## 21      0     6 249     309.8      212.8    435      96.0        0
## 22      0    11 543     725.6      566.0   1291     258.0        0
## 23      0    12 354     484.0      207.1    580     127.1        0
## 24    111     6 631     790.8       20.0      0      80.8        0
## 25      0     0   0       0.0        0.0      0       0.0        0
## 26      0     3 491     726.8      418.4    163     131.0        0
## 27      0     9 495     870.0       65.6    271     120.6        0
## 28      0     4 587     582.2      479.7    196     125.9        0
## 29      0     3 376     455.0      345.5    144      94.5        0
## 30      0     0  40      46.6       14.8     10       7.2        0
## 31      0     8 642     932.4      115.1    287     133.5        0
## 32      0     0  10       6.2        0.0      0       0.6        0
## 33      0     0 156     146.0       76.1     69      29.2        0
## 34      0     0  97      99.2      195.5    224      51.6        0
## 35      0     9 363     458.0      261.1    121      84.0        0
## 36      0     7 285     394.8      377.2    483     125.1        0
## 37      0     4 254     396.4      262.2    274      93.3        0
## 38      0     5 289     362.0      602.7    610     157.3        0
## 39      0     0 337     456.4      423.3    126     100.7        0
## 40      0    13 390     492.8      646.6    413     155.0        0
## 41      0     0   6       5.0       12.5      0       1.8        0
## 42      0     0   0       0.0        0.0      0       0.0        0
## 43      0    13 282     392.2      288.4    799     147.5        0
## 44      0     3 106     120.4       69.5    252      43.9        0
## 45      0    10 381     577.0      556.7    902     203.7        0
## 46      0     5 191     209.4      144.9    539      88.9        0
## 47    124    13 726     911.6        0.0      0      91.1        0
## 48      0     7 637    1002.8      147.8    425     157.9        0
## 49      0     7 614    1027.6       98.9    361     148.9        0
## 50      0     8 423     360.4      174.1     35      57.2        0
## 51      0     5 369     346.2      154.6     18      52.1        0
## 52      0     3 204     187.4      105.6     17      30.8        0
## 53      0     0 183     210.0       99.2     73      38.2        0
## 54      0     0   0       0.0        0.0      0       0.0        0
## 55      0     6 383     404.0      557.2    530     149.1        0
## 56      0     2 550     625.8      272.5    176     107.7        0
## 57      0     0 115     111.2      137.0     48      29.6        0
## 58      0     3 303     357.4      320.9    316      99.8        0
## 59      0    24 635     735.4     1311.0    527     257.6        0
## 60      0     1 446     535.8      297.1    255     108.9        0
## 61      0     4 324     385.4      311.3    618     131.3        0
## 62      0    16 319     492.4      271.8    779     153.1        0
## 63      0     5 110     152.0       66.1    227      44.2        0
## 64      0     0   4       0.4        0.8      6       0.7        0
## 65      0     2  47      50.4       24.6     89      15.8        0
## 66      0     0   0       0.0        0.0      0       0.0        0
## 67      8     0  48      53.4        0.0      0       5.3        0
## 68    113    19 701     862.4       40.0      0      90.1        0
## 69      0     4 450     574.6      264.9     46      89.0        0
## 70      0     6 491     748.6       74.5    349     117.3        0
## 71      0     9 484     498.4      270.9     82      85.4        0
## 72      0     4 539     822.0       98.4    253     117.8        0
## 73      0     6 282     460.0       64.8    220      74.5        0
## 74      0     0 132     184.2       86.8      4      27.5        0
## 75      0     0 193     229.4      117.5     35      38.3        0
## 76      0     7 467     599.0     1052.0    539     219.2        0
## 77      0     0 353     353.8      310.8    117      78.4        0
## 78      0     1 307     265.6      408.2    335     100.9        0
## 79      0     7 216     273.8      477.9    221      97.3        0
## 80      0     1 189     182.4      134.8     90      40.7        0
## 81      0     0   3       1.2        0.7     12       1.1        0
## 82      0     6 533     589.6      332.8    265     119.0        0
## 83      0     0 204     232.2      203.2    297      73.3        0
## 84      0     7 170     208.4      128.0    384      71.1        0
## 85      0     9 290     407.2      274.8    797     145.8        0
## 86      0     0  20       7.2        3.5     37       4.7        0
## 87      0    20 314     442.0      203.5    692     133.8        0
## 88      0     0   0       0.0        0.0      0       0.0        0
## 89      0     0   0       0.0        0.0      0       0.0        0
## 90      0     0   0       0.0        0.0      0       0.0        0
## 91      0     0   0       0.0        0.0      0       0.0        0
## 92      0     0   0       0.0        0.0      0       0.0        0
## 93      0     0   0       0.0        0.0      0       0.0        0
## 94      0     0   0       0.0        0.0      0       0.0        0
## 95      0     0   0       0.0        0.0      0       0.0        0
## 96      0     0   0       0.0        0.0      0       0.0        0
## 97      0     0   0       0.0        0.0      0       0.0        0
## 98      0     0   0       0.0        0.0      0       0.0        0
## 99      0     0   0       0.0        0.0      0       0.0        0
## 100     0     0   0       0.0        0.0      0       0.0        0
## 101     0     0   0       0.0        0.0      0       0.0        0
## 102     0     0   0       0.0        0.0      0       0.0        0
## 103     0     0   0       0.0        0.0      0       0.0        0
## 104     0     0   0       0.0        0.0      0       0.0        0
## 105     0     0   0       0.0        0.0      0       0.0        0
## 106     0     0   0       0.0        0.0      0       0.0        0
## 107     0     0   0       0.0        0.0      0       0.0        0
## 108     0     0   0       0.0        0.0      0       0.0        0
## 109     0     0   0       0.0        0.0      0       0.0        0
## 110     0     0   0       0.0        0.0      0       0.0        0
## 111    77     4 635     549.0        0.0      0      55.2        0
## 112     7     0  54      55.2        0.0      0       5.5        0
## 113     0    25 913     967.4      535.7    168     167.5        0
## 114     0     2 447     496.6       55.6     99      65.4        0
## 115     0    15 650     697.8      549.6    822     207.1        0
## 116     0     0 186     210.2       22.3     65      29.6        0
## 117     0     9 486     417.0      358.1    482     125.9        0
## 118     0     8 557     546.6       83.0    217      84.8        0
## 119     0     4 475     466.6       66.5    109      64.3        0
## 120     0     1 226     255.2      245.3    329      82.6        0
## 121     0     0  68      61.8       28.7     48      13.8        0
## 122     0    24 699     928.0     1127.3   1115     317.3        0
## 123     0     7 539     713.8     1349.3    485     254.9        0
## 124     0    13 522     640.0      891.5    715     224.5        0
## 125     0     2 272     338.4      410.0    498     124.6        0
## 126     0     9 655     676.0      638.2    199     151.7        0
## 127     0     0  11      21.0       34.7     45      10.1        0
## 128     0     1 117     116.4       88.1     54      25.7        0
## 129     0     5 346     415.4      279.5    434     113.2        0
## 130     0     0   6       7.4        0.0      0       0.7        0
## 131     0     0  11       8.8        1.7     27       3.8        0
## 132     0     2 337     379.2      377.0    487     124.5        0
## 133     0    10 273     307.0      311.1    673     129.0        0
## 134     0    13 356     620.6      478.9   1192     228.8        0
## 135    91    11 506     603.8       10.0      0      61.4        0
## 136    30     3 175     213.6        0.0      0      21.3        0
## 137     0     0   0       0.0        0.0      0       0.0        0
## 138     0     9 512     712.6       22.4    309     104.7        0
## 139     0     0 211     342.2       62.3    268      67.0        0
## 140     0     1 185     222.6       25.7     84      33.3        0
## 141     0     0 281     339.6      189.7    155      68.6        0
## 142     0     7 448     537.0      303.8    319     116.3        0
## 143     0    18 405     426.2       30.7     77      53.6        0
## 144     0     0 100      74.4       21.5     12      10.6        0
## 145     0     0 116     207.2       60.0      2      26.8        0
## 146     0     0  38      46.4       93.9    112      25.1        0
## 147     0     9 416     490.6      333.0    566     138.9        0
## 148     0     1 115     143.2      103.1    227      46.9        0
## 149     0     7 552     626.0     1012.1    587     222.8        0
## 150     0    21 630     873.8      379.0    432     168.6        0
## 151     0     8 404     668.0      716.9   1125     251.0        0
## 152     0     5 174     325.2      406.7    845     157.5        0
## 153     0     0  25      48.6       74.0    102      22.5        0
## 154   121    16 724     873.6       30.1      4      90.7        0
## 155     0     0   0       0.0        0.0      0       0.0        0
## 156     0    10 381     407.4      373.5    102      88.2        0
## 157     0     0 198     227.6      113.7     69      41.2        0
## 158     0     5 415     529.2       24.1    108      66.2        0
## 159     0     3 332     518.0       39.0    132      68.9        0
## 160     0     0 214     285.8       93.9    105      48.5        0
## 161     0     2 309     362.4      184.5     47      59.5        0
## 162     0    11 513     703.4       58.4    124      88.7        0
## 163     0     0 367     468.8      238.8     39      74.9        0
## 164     0     3 226     316.6      234.9    406      95.9        0
## 165     0     0  80      98.6      109.0    204      40.8        0
## 166     0     0  41      33.8       19.3      4       5.8        0
## 167     0     1 344     361.2      159.2     52      57.2        0
## 168     0     7 552     577.0      303.6    166     104.6        0
## 169     0     3 223     242.8      207.2    218      65.8        0
## 170     0     0  30      12.0       20.5     43       7.5        0
## 171     0     0  18      23.0       33.7     28       8.3        0
## 172     0     8 396     485.6      614.9    437     154.0        0
## 173     0     0  80      91.8      159.1     85      33.6        0
## 174     0     0  20       9.4        3.8      0       1.3        0
## 175     0     3 255     354.0      322.6    630     130.2        0
## 176     0    14 248     370.6      159.2    634     115.2        0
## 177     0     9 192     232.4      226.4    304      75.6        0
## 178     0     0   0       0.0        0.0      0       0.0        0
## 179     0     0   0       0.0        0.0      0       0.0        0
## 180     0     0   0       0.0        0.0      0       0.0        0
## 181     0     0   0       0.0        0.0      0       0.0        0
## 182     0     0   0       0.0        0.0      0       0.0        0
## 183     0     0   0       0.0        0.0      0       0.0        0
## 184     0     0   0       0.0        0.0      0       0.0        0
## 185     0     0   0       0.0        0.0      0       0.0        0
## 186     0     0   0       0.0        0.0      0       0.0        0
## 187     0     0   0       0.0        0.0      0       0.0        0
## 188     0     0   0       0.0        0.0      0       0.0        0
## 189     0     0   0       0.0        0.0      0       0.0        0
## 190     6     0  54      51.8        0.0      0       5.1        0
## 191   103    11 701     846.8       30.0      0      87.8        0
## 192     0    15 692     928.0      107.1    149     119.1        0
## 193     0     0 321     266.0      125.5     39      43.0        0
## 194     0     2 311     322.0      251.6     50      62.8        0
## 195     0     9 623     768.6      123.6    169     106.2        0
## 196     0     4 211     221.6      146.8     97      46.5        0
## 197     0     5 274     310.0      381.8     95      78.8        0
## 198     0     2 182     268.0       52.2     47      36.7        0
## 199     0     8 576     753.2      848.8    350     195.2        0
## 200     0     3 240     322.6      261.6    544     112.7        0
## 201     0     0 400     475.0      172.8     61      71.2        0
## 202     0     0  98     111.4       58.6     26      19.3        0
## 203     0     3 269     253.0      331.3    794     138.0        0
## 204     0     0 134     131.4       83.0     56      27.0        0
## 205     0     0  30      30.8       40.6     53      12.4        0
## 206     0     3 168     173.6      300.3    213      68.7        0
## 207     0     2 226     237.6      237.9    206      68.1        0
## 208     0     0   0       0.0        0.0      0       0.0        0
## 209     0     0 173     209.0      255.7    283      74.8        0
## 210     0    14 283     352.0      191.4    451      99.6        0
## 211     0    12 269     377.0      270.7    600     124.5        0
## 212     0     0 151     151.0      152.1    246      54.5        0
## 213    93    17 592     687.2       11.1      0      69.9        0
## 214     8     0  36      67.8        0.0      0       6.8        0
## 215     0     1 390     530.0       62.0    158      75.1        0
## 216     0     8 370     396.6      282.2     55      73.5        0
## 217     0     0 342     444.2      121.2     42      60.7        0
## 218     0     0   7      24.8        1.3     18       4.4        0
## 219     0     4 381     382.8      332.1     63      78.0        0
## 220     0    10 716     955.8      254.3    478     168.8        0
## 221     0     0   0       0.0        0.0      0       0.0        0
## 222     0     5 455     536.2      104.2    211      85.1        0
## 223     0    19 682     966.0      924.0    932     282.6        0
## 224     0    12 458     580.0      718.3    300     160.2        0
## 225     0     2 308     290.6      412.8    461     116.7        0
## 226     0     0  53      81.2       10.3      0       9.2        0
## 227     0     4 449     640.4      230.7    299     117.2        0
## 228     0     6 293     341.6      131.6    150      62.3        0
## 229     0     0 121     114.6       52.7    145      31.4        0
## 230     0     0  60      68.0       20.2     16      10.4        0
## 231     0     0 128     133.2      120.0     65      31.8        0
## 232     0     0  72      98.6      130.8     67      29.7        0
## 233     0     0   0       0.0        0.0      0       0.0        0
## 234     0    28 674     822.8      439.9   1222     248.6        0
## 235     0     7 275     347.6      228.1    508     107.9        0
## 236     0     5 171     214.2      185.6    350      74.5        0
## 237    36     0 329     281.0        0.0      0      28.0        0
## 238    31     5 382     280.6        0.0      0      27.9        0
## 239     0    10 539     656.4      104.5    242     100.2        0
## 240     0     3 328     261.8      250.1    106      61.7        0
## 241     0     0  25      21.8       23.8     41       8.7        0
## 242     0     9 480     437.4      285.6     46      76.9        0
## 243     0     3 470     544.8       96.1    140      78.1        0
## 244     0     9 384     357.2       65.0     43      46.6        0
## 245     0    10 385     358.2      399.2    142      90.1        0
## 246     0     5 481     601.0      122.6    277     100.2        0
## 247     0    12 514     424.0      414.5    174     101.3        0
## 248     0     5 423     548.0      625.1    494     166.5        0
## 249     0     3 382     417.0      448.8    110      97.8        0
## 250     0     0  37      32.6      113.4    128      27.3        0
## 251     0     8 499     677.4      739.1    964     238.0        0
## 252     0     1 406     341.8      356.2    399     109.9        0
## 253     0    26 881    1496.2      942.5   2109     454.4        0
## 254     0     4 459     437.2      615.5    272     132.5        0
## 255     0     0   0       0.0        0.0      0       0.0        0
## 256     0     0   0       0.0        0.0      0       0.0        0
## 257     0    29 758     951.0      834.5   1341     312.7        0
## 258     0     0  53      57.8       42.0    143      24.0        0
## 259     0     2 107     123.8      199.4    350      66.4        0
## 260    58    10 666     546.2       10.0      0      55.6        0
## 261     4     1  42      45.2        0.0      0       4.5        0
## 262     0     5 334     283.4       26.3    120      43.2        0
## 263     0     2 326     399.6       76.5    116      59.2        0
## 264     0    21 742     846.6      224.6    363     143.7        0
## 265     0     8 691     542.4      511.4    117     117.1        0
## 266     0     8 398     376.0      158.1    176      71.1        0
## 267     0     1  96      84.2      139.3     48      27.2        0
## 268     0     2 204     165.8       52.8     34      25.4        0
## 269     0     0 398     369.2      263.7     62      69.4        0
## 270     0    19 701     969.8      838.2   1488     329.7        0
## 271     0    26 671     875.8     1118.5    867     286.5        0
## 272     0     9 596     800.2      511.9    411     172.4        0
## 273     0    25 872    1146.6     1744.2    797     368.9        0
## 274     0     9 376     381.4      406.4    408     119.3        0
## 275     0    17 647     842.4      891.3   1013     274.4        0
## 276     0     8 440     475.6      508.7    464     144.4        0
## 277     0     0  31      29.2       32.1     10       7.1        0
## 278     0     0  14       6.8        5.6     53       6.6        0
## 279     0     0 104     116.4      145.9     21      28.3        0
## 280     0    22 740     966.4      570.8   1484     302.5        0
## 281     0    18 473     603.6      360.3   1089     204.9        0
## 282   115    10 757     821.2       10.0      0      83.4        0
## 283     3     0  26      26.4        0.0      0       2.6        0
## 284     0     9 590     743.8       35.3    230     101.2        0
## 285     0    19 554     486.4       36.6     12      53.6        0
## 286     0     4 216     142.6      127.0    144      41.5        0
## 287     0     4 126     151.4       26.0     47      22.5        0
## 288     0    13 660     559.2      438.5    259     125.5        0
## 289     0     3 119      95.0       25.3      6      12.6        0
## 290     0     1 119      65.8       93.0     15      17.3        0
## 291     0     3 248     222.0       28.4     79      33.0        0
## 292     0     1 297     272.8       37.7      8      32.0        0
## 293     0    11 479     601.2      502.3    213     131.6        0
## 294     0     0   0       0.0        0.0      0       0.0        0
## 295     0    13 515     823.2     1155.2   1281     326.1        0
## 296     0     3 576     681.4      427.9    168     127.9        0
## 297     0     6 418     422.8      849.9    453     172.1        0
## 298     0     3 171     246.0       88.2    264      59.8        0
## 299     0     0 229     294.4      229.4    101      62.7        0
## 300     0    10 450     526.6      519.1    711     175.3        0
## 301     0     7 403     535.4      509.3    748     179.5        0
## 302     0    15 528     710.8      663.5    780     215.6        0
## 303     0     0  96      78.2       53.6     11      14.2        0
## 304     0     0   0       0.0        0.0      0       0.0        0
## 305     0    11 387     470.8      412.1    838     171.7        0
## 306     0    18 593     831.0      572.4   1334     273.2        0
## 307    44     4 280     364.2        0.0      0      36.5        0
## 308    35     2 172     258.8        0.0      0      25.9        0
## 309    26     5 215     234.6        0.0      0      23.3        0
## 310     0     5 467     494.4      340.7     63      90.0        0
## 311     0     6 317     433.6       50.8    190      67.5        0
## 312     0     9 567     800.0       77.2    234     111.5        0
## 313     0     0 280     333.6       97.8     58      49.0        0
## 314     0     6 406     557.0       92.3    139      78.9        0
## 315     0     1 247     266.0      164.8     26      45.9        0
## 316     0     3 133     158.2       67.1      6      23.2        0
## 317     0    10 489     561.2      844.4    520     192.6        0
## 318     0     4 360     442.6      639.9    243     132.3        0
## 319     0     3 340     431.8      214.2    203      85.3        0
## 320     0     5 236     308.8      340.6    480     112.9        0
## 321     0     2 171     161.8      159.7    227      54.7        0
## 322     0     4 271     374.8      236.7    156      76.9        0
## 323     0     0 171     273.6      164.7    144      58.2        0
## 324     0     9 340     307.2      338.1    152      79.7        0
## 325     0     8 276     352.0      333.6    808     148.7        0
## 326     0    15 420     571.8      539.0    809     191.7        0
## 327     0     5 227     291.2      254.8    526     106.5        0
## 328    42     3 278     280.8        0.0      0      28.1        0
## 329    69     6 351     488.2        0.0      0      48.9        0
## 330     0     4 553     515.2      589.1    286     139.3        0
## 331     0     6 413     525.2       67.0    236      83.0        0
## 332     0     2 481     507.0      455.6    159     112.3        0
## 333     0     2 360     506.6       68.3    224      79.9        0
## 334     0     2  49      29.4       34.2      8       7.2        0
## 335     0     0  88     110.0        1.9     19      13.1        0
## 336     0    11 532     661.6      130.9    146      93.8        0
## 337     0     6 337     345.2      350.8    126      82.5        0
## 338     0     8 367     363.4      613.9    296     127.1        0
## 339     0     0 474     616.2      338.7    231     118.7        0
## 340     0     0 261     266.6      258.4    148      67.6        0
## 341     0     2 215     289.4      351.6    397     103.7        0
## 342     0     0  18      32.6       43.5    149      22.5        0
## 343     0     3 296     347.0      630.9    493     147.2        0
## 344     0     5 337     363.6      170.6    145      67.8        0
## 345     0     0   0       0.0        0.0      0       0.0        0
## 346     0     0   0       0.0        0.0      0       0.0        0
## 347     0     0 167     235.6      301.9    512     104.6        0
## 348     0     9 215     302.8       89.4    689     107.7        0
## 349     0    10 204     203.0      133.9    269      58.6        0
## 350     0     0  40      50.2       64.2    179      29.4        0
## 351    87     6 694     726.4        0.1      0      72.3        0
## 352     4     0  17      19.0        0.0      0       1.9        0
## 353     0     3 247     249.2       67.8     50      36.8        0
## 354     0     0 136     159.4      181.6    117      45.9        0
## 355     0    13 778     774.4      205.7    243     122.7        0
## 356     0    14 615     610.0      698.8    201     151.0        0
## 357     0    18 539     459.0      617.5     78     115.6        0
## 358     0     0  73      70.4       48.3     10      12.9        0
## 359     0     8 597     598.0       74.8     89      76.2        0
## 360     0     9 335     367.2      236.5    209      81.4        0
## 361     0     2 477     604.2      293.4    289     118.6        0
## 362     0     3 358     309.2      303.1     73      68.5        0
## 363     0     1 186     204.8      283.1    364      84.7        0
## 364     0    23 826    1072.6     1487.0   1021     358.2        0
## 365     0    12 565     775.2      878.5    934     258.8        0
## 366     0     1 174     206.0       96.8     77      37.8        0
## 367     0    16 544     725.8      588.2   1177     249.1        0
## 368     0     0 167     144.4      172.2     14      33.1        0
## 369     0     0 246     245.8      384.7    281      91.1        0
## 370     0     0  36      49.0       83.2     41      17.5        0
## 371     0     2  70      60.2       66.7     99      22.6        0
## 372     0    31 781    1214.4      502.1   2355     407.4        0
## 373    61     4 394     457.0        0.2      0      45.6        0
## 374     0     0   0       0.0        0.0      0       0.0        0
## 375     0     0  35      47.4        0.9      2       5.0        0
## 376     0     0  90     120.0        2.0     23      14.6        0
## 377     0     0 267     276.4       25.9     89      39.3        0
## 378     0     6 412     510.0      632.8    125     127.0        0
## 379     0     0 149     180.4       42.7     51      27.3        0
## 380     0     2 407     645.0       52.0    137      83.7        0
## 381     0     3 342     445.0      230.6    253      92.9        0
## 382     0     2 378     462.0       59.4    106      62.8        0
## 383     0     9 389     327.2      302.8    113      74.5        0
## 384     0     5 186     185.2      142.1     24      35.2        0
## 385     0     0   0       0.0        0.0      0       0.0        0
## 386     0     0   0       0.0        0.0      0       0.0        0
## 387     0     0  40      78.8       26.5     95      20.0        0
## 388     0     3 300     332.2      464.8    124      92.1        0
## 389     0     0 262     280.2      165.9    150      59.7        0
## 390     0    16 679     859.0      595.8    537     199.7        0
## 391     0     5 299     346.0      370.6    472     118.8        0
## 392     0     5 190     238.6      267.0    136      64.3        0
## 393     0     4 304     497.0      384.7   1217     209.3        0
## 394     0     3  87      92.4      141.3    124      35.8        0
## 395     0     4 237     251.2      254.0    594     108.2        0
## 396     0     7 241     343.0      349.4    566     125.3        0
## 397     0     1  52      74.4       92.0    145      29.8        0
## 398     0     0  12       4.4       11.0      4       1.9        0
## 399    69     5 374     470.4        0.0      0      47.0        0
## 400   137    14 772    1087.8       10.0      0     109.9        0
## 401     0     3 264     322.4       48.8     64      43.6        0
## 402     0    10 613     690.2      562.7    193     145.0        0
## 403     0     4 520     687.8       81.4    145      91.4        0
## 404     0     0  41      71.0       37.6     36      14.5        0
## 405     0     6 563     635.0      293.7     77     100.7        0
## 406     0     0 280     310.4       35.7     29      37.5        0
## 407     0     0   2       3.0        0.0      0       0.3        0
## 408     0     0   0       0.0        0.0      0       0.0        0
## 409     0     0   0       0.0        0.0      0       0.0        0
## 410     0     2 352     385.0      295.1    128      80.7        0
## 411     0     7 461     527.6      337.8    141     100.8        0
## 412     0     2 367     480.0      262.4    320     106.1        0
## 413     0     6 270     377.8      132.1     88      60.1        0
## 414     0    11 470     559.4      624.9    502     168.8        0
## 415     0     1 188     296.6      256.3    393      94.6        0
## 416     0     0 123     110.8       97.3     77      28.6        0
## 417     0    12 440     713.8      543.0   1155     241.1        0
## 418     0     6 106     145.4      110.2    344      58.8        0
## 419     0    14 309     373.6      312.4    476     115.0        0
## 420     0     0   4       0.0        0.4      0       0.0        0
## 421     0     0   0       0.0        0.0      0       0.0        0
## 422     0     0   0       0.0        0.0      0       0.0        0
## 423     0     0   0       0.0        0.0      0       0.0        0
## 424     0     0   0       0.0        0.0      0       0.0        0
## 425     0     0   0       0.0        0.0      0       0.0        0
## 426     0     0   0       0.0        0.0      0       0.0        0
## 427     0     0   0       0.0        0.0      0       0.0        0
## 428     0     0   0       0.0        0.0      0       0.0        0
## 429     0     0   0       0.0        0.0      0       0.0        0
## 430     0     0   0       0.0        0.0      0       0.0        0
## 431     0     0   0       0.0        0.0      0       0.0        0
## 432     0     0   0       0.0        0.0      0       0.0        0
## 433     0     0   0       0.0        0.0      0       0.0        0
## 434     0     0   0       0.0        0.0      0       0.0        0
## 435     0     0   0       0.0        0.0      0       0.0        0
## 436     0     0   0       0.0        0.0      0       0.0        0
## 437     0     0   0       0.0        0.0      0       0.0        0
## 438     0     0   0       0.0        0.0      0       0.0        0
##     element_type team      team_name   position
## 1              1    1        Arsenal Goalkeeper
## 2              1    1        Arsenal Goalkeeper
## 3              2    1        Arsenal   Defender
## 4              2    1        Arsenal   Defender
## 5              2    1        Arsenal   Defender
## 6              2    1        Arsenal   Defender
## 7              2    1        Arsenal   Defender
## 8              2    1        Arsenal   Defender
## 9              2    1        Arsenal   Defender
## 10             2    1        Arsenal   Defender
## 11             2    1        Arsenal   Defender
## 12             2    1        Arsenal   Defender
## 13             3    1        Arsenal Midfielder
## 14             3    1        Arsenal Midfielder
## 15             3    1        Arsenal Midfielder
## 16             3    1        Arsenal Midfielder
## 17             3    1        Arsenal Midfielder
## 18             3    1        Arsenal Midfielder
## 19             3    1        Arsenal Midfielder
## 20             3    1        Arsenal Midfielder
## 21             4    1        Arsenal    Forward
## 22             4    1        Arsenal    Forward
## 23             4    1        Arsenal    Forward
## 24             1    2    Bournemouth Goalkeeper
## 25             1    2    Bournemouth Goalkeeper
## 26             2    2    Bournemouth   Defender
## 27             2    2    Bournemouth   Defender
## 28             2    2    Bournemouth   Defender
## 29             2    2    Bournemouth   Defender
## 30             2    2    Bournemouth   Defender
## 31             2    2    Bournemouth   Defender
## 32             2    2    Bournemouth   Defender
## 33             3    2    Bournemouth Midfielder
## 34             3    2    Bournemouth Midfielder
## 35             3    2    Bournemouth Midfielder
## 36             3    2    Bournemouth Midfielder
## 37             3    2    Bournemouth Midfielder
## 38             3    2    Bournemouth Midfielder
## 39             3    2    Bournemouth Midfielder
## 40             3    2    Bournemouth Midfielder
## 41             3    2    Bournemouth Midfielder
## 42             3    2    Bournemouth Midfielder
## 43             4    2    Bournemouth    Forward
## 44             4    2    Bournemouth    Forward
## 45             4    2    Bournemouth    Forward
## 46             4    2    Bournemouth    Forward
## 47             1    3       Brighton Goalkeeper
## 48             2    3       Brighton   Defender
## 49             2    3       Brighton   Defender
## 50             2    3       Brighton   Defender
## 51             2    3       Brighton   Defender
## 52             2    3       Brighton   Defender
## 53             2    3       Brighton   Defender
## 54             2    3       Brighton   Defender
## 55             3    3       Brighton Midfielder
## 56             3    3       Brighton Midfielder
## 57             3    3       Brighton Midfielder
## 58             3    3       Brighton Midfielder
## 59             3    3       Brighton Midfielder
## 60             3    3       Brighton Midfielder
## 61             3    3       Brighton Midfielder
## 62             4    3       Brighton    Forward
## 63             4    3       Brighton    Forward
## 64             4    3       Brighton    Forward
## 65             4    3       Brighton    Forward
## 66             4    3       Brighton    Forward
## 67             1    4        Burnley Goalkeeper
## 68             1    4        Burnley Goalkeeper
## 69             2    4        Burnley   Defender
## 70             2    4        Burnley   Defender
## 71             2    4        Burnley   Defender
## 72             2    4        Burnley   Defender
## 73             2    4        Burnley   Defender
## 74             2    4        Burnley   Defender
## 75             2    4        Burnley   Defender
## 76             3    4        Burnley Midfielder
## 77             3    4        Burnley Midfielder
## 78             3    4        Burnley Midfielder
## 79             3    4        Burnley Midfielder
## 80             3    4        Burnley Midfielder
## 81             3    4        Burnley Midfielder
## 82             3    4        Burnley Midfielder
## 83             3    4        Burnley Midfielder
## 84             4    4        Burnley    Forward
## 85             4    4        Burnley    Forward
## 86             4    4        Burnley    Forward
## 87             4    4        Burnley    Forward
## 88             1    5        Cardiff Goalkeeper
## 89             1    5        Cardiff Goalkeeper
## 90             2    5        Cardiff   Defender
## 91             2    5        Cardiff   Defender
## 92             2    5        Cardiff   Defender
## 93             2    5        Cardiff   Defender
## 94             2    5        Cardiff   Defender
## 95             2    5        Cardiff   Defender
## 96             2    5        Cardiff   Defender
## 97             2    5        Cardiff   Defender
## 98             3    5        Cardiff Midfielder
## 99             3    5        Cardiff Midfielder
## 100            3    5        Cardiff Midfielder
## 101            3    5        Cardiff Midfielder
## 102            3    5        Cardiff Midfielder
## 103            3    5        Cardiff Midfielder
## 104            3    5        Cardiff Midfielder
## 105            3    5        Cardiff Midfielder
## 106            3    5        Cardiff Midfielder
## 107            4    5        Cardiff    Forward
## 108            4    5        Cardiff    Forward
## 109            4    5        Cardiff    Forward
## 110            4    5        Cardiff    Forward
## 111            1    6        Chelsea Goalkeeper
## 112            1    6        Chelsea Goalkeeper
## 113            2    6        Chelsea   Defender
## 114            2    6        Chelsea   Defender
## 115            2    6        Chelsea   Defender
## 116            2    6        Chelsea   Defender
## 117            2    6        Chelsea   Defender
## 118            2    6        Chelsea   Defender
## 119            2    6        Chelsea   Defender
## 120            2    6        Chelsea   Defender
## 121            2    6        Chelsea   Defender
## 122            3    6        Chelsea Midfielder
## 123            3    6        Chelsea Midfielder
## 124            3    6        Chelsea Midfielder
## 125            3    6        Chelsea Midfielder
## 126            3    6        Chelsea Midfielder
## 127            3    6        Chelsea Midfielder
## 128            3    6        Chelsea Midfielder
## 129            3    6        Chelsea Midfielder
## 130            3    6        Chelsea Midfielder
## 131            3    6        Chelsea Midfielder
## 132            3    6        Chelsea Midfielder
## 133            4    6        Chelsea    Forward
## 134            4    6        Chelsea    Forward
## 135            1    7 Crystal Palace Goalkeeper
## 136            1    7 Crystal Palace Goalkeeper
## 137            1    7 Crystal Palace Goalkeeper
## 138            2    7 Crystal Palace   Defender
## 139            2    7 Crystal Palace   Defender
## 140            2    7 Crystal Palace   Defender
## 141            2    7 Crystal Palace   Defender
## 142            2    7 Crystal Palace   Defender
## 143            2    7 Crystal Palace   Defender
## 144            2    7 Crystal Palace   Defender
## 145            2    7 Crystal Palace   Defender
## 146            3    7 Crystal Palace Midfielder
## 147            3    7 Crystal Palace Midfielder
## 148            3    7 Crystal Palace Midfielder
## 149            3    7 Crystal Palace Midfielder
## 150            3    7 Crystal Palace Midfielder
## 151            4    7 Crystal Palace    Forward
## 152            4    7 Crystal Palace    Forward
## 153            4    7 Crystal Palace    Forward
## 154            1    8        Everton Goalkeeper
## 155            1    8        Everton Goalkeeper
## 156            2    8        Everton   Defender
## 157            2    8        Everton   Defender
## 158            2    8        Everton   Defender
## 159            2    8        Everton   Defender
## 160            2    8        Everton   Defender
## 161            2    8        Everton   Defender
## 162            2    8        Everton   Defender
## 163            2    8        Everton   Defender
## 164            3    8        Everton Midfielder
## 165            3    8        Everton Midfielder
## 166            3    8        Everton Midfielder
## 167            3    8        Everton Midfielder
## 168            3    8        Everton Midfielder
## 169            3    8        Everton Midfielder
## 170            3    8        Everton Midfielder
## 171            3    8        Everton Midfielder
## 172            3    8        Everton Midfielder
## 173            3    8        Everton Midfielder
## 174            3    8        Everton Midfielder
## 175            4    8        Everton    Forward
## 176            4    8        Everton    Forward
## 177            4    8        Everton    Forward
## 178            1    9         Fulham Goalkeeper
## 179            1    9         Fulham Goalkeeper
## 180            2    9         Fulham   Defender
## 181            2    9         Fulham   Defender
## 182            3    9         Fulham Midfielder
## 183            3    9         Fulham Midfielder
## 184            3    9         Fulham Midfielder
## 185            3    9         Fulham Midfielder
## 186            3    9         Fulham Midfielder
## 187            3    9         Fulham Midfielder
## 188            3    9         Fulham Midfielder
## 189            4    9         Fulham    Forward
## 190            1   10   Huddersfield Goalkeeper
## 191            1   10   Huddersfield Goalkeeper
## 192            2   10   Huddersfield   Defender
## 193            2   10   Huddersfield   Defender
## 194            2   10   Huddersfield   Defender
## 195            2   10   Huddersfield   Defender
## 196            2   10   Huddersfield   Defender
## 197            2   10   Huddersfield   Defender
## 198            2   10   Huddersfield   Defender
## 199            3   10   Huddersfield Midfielder
## 200            3   10   Huddersfield Midfielder
## 201            3   10   Huddersfield Midfielder
## 202            3   10   Huddersfield Midfielder
## 203            3   10   Huddersfield Midfielder
## 204            3   10   Huddersfield Midfielder
## 205            3   10   Huddersfield Midfielder
## 206            3   10   Huddersfield Midfielder
## 207            3   10   Huddersfield Midfielder
## 208            3   10   Huddersfield Midfielder
## 209            4   10   Huddersfield    Forward
## 210            4   10   Huddersfield    Forward
## 211            4   10   Huddersfield    Forward
## 212            4   10   Huddersfield    Forward
## 213            1   11      Leicester Goalkeeper
## 214            1   11      Leicester Goalkeeper
## 215            2   11      Leicester   Defender
## 216            2   11      Leicester   Defender
## 217            2   11      Leicester   Defender
## 218            2   11      Leicester   Defender
## 219            2   11      Leicester   Defender
## 220            2   11      Leicester   Defender
## 221            2   11      Leicester   Defender
## 222            2   11      Leicester   Defender
## 223            3   11      Leicester Midfielder
## 224            3   11      Leicester Midfielder
## 225            3   11      Leicester Midfielder
## 226            3   11      Leicester Midfielder
## 227            3   11      Leicester Midfielder
## 228            3   11      Leicester Midfielder
## 229            3   11      Leicester Midfielder
## 230            3   11      Leicester Midfielder
## 231            3   11      Leicester Midfielder
## 232            3   11      Leicester Midfielder
## 233            3   11      Leicester Midfielder
## 234            4   11      Leicester    Forward
## 235            4   11      Leicester    Forward
## 236            4   11      Leicester    Forward
## 237            1   12      Liverpool Goalkeeper
## 238            1   12      Liverpool Goalkeeper
## 239            2   12      Liverpool   Defender
## 240            2   12      Liverpool   Defender
## 241            2   12      Liverpool   Defender
## 242            2   12      Liverpool   Defender
## 243            2   12      Liverpool   Defender
## 244            2   12      Liverpool   Defender
## 245            2   12      Liverpool   Defender
## 246            2   12      Liverpool   Defender
## 247            2   12      Liverpool   Defender
## 248            3   12      Liverpool Midfielder
## 249            3   12      Liverpool Midfielder
## 250            3   12      Liverpool Midfielder
## 251            3   12      Liverpool Midfielder
## 252            3   12      Liverpool Midfielder
## 253            3   12      Liverpool Midfielder
## 254            3   12      Liverpool Midfielder
## 255            3   12      Liverpool Midfielder
## 256            3   12      Liverpool Midfielder
## 257            4   12      Liverpool    Forward
## 258            4   12      Liverpool    Forward
## 259            4   12      Liverpool    Forward
## 260            1   13       Man City Goalkeeper
## 261            1   13       Man City Goalkeeper
## 262            2   13       Man City   Defender
## 263            2   13       Man City   Defender
## 264            2   13       Man City   Defender
## 265            2   13       Man City   Defender
## 266            2   13       Man City   Defender
## 267            2   13       Man City   Defender
## 268            2   13       Man City   Defender
## 269            2   13       Man City   Defender
## 270            3   13       Man City Midfielder
## 271            3   13       Man City Midfielder
## 272            3   13       Man City Midfielder
## 273            3   13       Man City Midfielder
## 274            3   13       Man City Midfielder
## 275            3   13       Man City Midfielder
## 276            3   13       Man City Midfielder
## 277            3   13       Man City Midfielder
## 278            3   13       Man City Midfielder
## 279            3   13       Man City Midfielder
## 280            4   13       Man City    Forward
## 281            4   13       Man City    Forward
## 282            1   14        Man Utd Goalkeeper
## 283            1   14        Man Utd Goalkeeper
## 284            2   14        Man Utd   Defender
## 285            2   14        Man Utd   Defender
## 286            2   14        Man Utd   Defender
## 287            2   14        Man Utd   Defender
## 288            2   14        Man Utd   Defender
## 289            2   14        Man Utd   Defender
## 290            2   14        Man Utd   Defender
## 291            2   14        Man Utd   Defender
## 292            2   14        Man Utd   Defender
## 293            2   14        Man Utd   Defender
## 294            2   14        Man Utd   Defender
## 295            3   14        Man Utd Midfielder
## 296            3   14        Man Utd Midfielder
## 297            3   14        Man Utd Midfielder
## 298            3   14        Man Utd Midfielder
## 299            3   14        Man Utd Midfielder
## 300            3   14        Man Utd Midfielder
## 301            3   14        Man Utd Midfielder
## 302            3   14        Man Utd Midfielder
## 303            3   14        Man Utd Midfielder
## 304            3   14        Man Utd Midfielder
## 305            4   14        Man Utd    Forward
## 306            4   14        Man Utd    Forward
## 307            1   15      Newcastle Goalkeeper
## 308            1   15      Newcastle Goalkeeper
## 309            1   15      Newcastle Goalkeeper
## 310            2   15      Newcastle   Defender
## 311            2   15      Newcastle   Defender
## 312            2   15      Newcastle   Defender
## 313            2   15      Newcastle   Defender
## 314            2   15      Newcastle   Defender
## 315            2   15      Newcastle   Defender
## 316            2   15      Newcastle   Defender
## 317            3   15      Newcastle Midfielder
## 318            3   15      Newcastle Midfielder
## 319            3   15      Newcastle Midfielder
## 320            3   15      Newcastle Midfielder
## 321            3   15      Newcastle Midfielder
## 322            3   15      Newcastle Midfielder
## 323            3   15      Newcastle Midfielder
## 324            3   15      Newcastle Midfielder
## 325            4   15      Newcastle    Forward
## 326            4   15      Newcastle    Forward
## 327            4   15      Newcastle    Forward
## 328            1   16    Southampton Goalkeeper
## 329            1   16    Southampton Goalkeeper
## 330            2   16    Southampton   Defender
## 331            2   16    Southampton   Defender
## 332            2   16    Southampton   Defender
## 333            2   16    Southampton   Defender
## 334            2   16    Southampton   Defender
## 335            2   16    Southampton   Defender
## 336            2   16    Southampton   Defender
## 337            3   16    Southampton Midfielder
## 338            3   16    Southampton Midfielder
## 339            3   16    Southampton Midfielder
## 340            3   16    Southampton Midfielder
## 341            3   16    Southampton Midfielder
## 342            3   16    Southampton Midfielder
## 343            3   16    Southampton Midfielder
## 344            3   16    Southampton Midfielder
## 345            3   16    Southampton Midfielder
## 346            3   16    Southampton Midfielder
## 347            4   16    Southampton    Forward
## 348            4   16    Southampton    Forward
## 349            4   16    Southampton    Forward
## 350            4   16    Southampton    Forward
## 351            1   17          Spurs Goalkeeper
## 352            1   17          Spurs Goalkeeper
## 353            2   17          Spurs   Defender
## 354            2   17          Spurs   Defender
## 355            2   17          Spurs   Defender
## 356            2   17          Spurs   Defender
## 357            2   17          Spurs   Defender
## 358            2   17          Spurs   Defender
## 359            2   17          Spurs   Defender
## 360            2   17          Spurs   Defender
## 361            3   17          Spurs Midfielder
## 362            3   17          Spurs Midfielder
## 363            3   17          Spurs Midfielder
## 364            3   17          Spurs Midfielder
## 365            3   17          Spurs Midfielder
## 366            3   17          Spurs Midfielder
## 367            3   17          Spurs Midfielder
## 368            3   17          Spurs Midfielder
## 369            3   17          Spurs Midfielder
## 370            3   17          Spurs Midfielder
## 371            4   17          Spurs    Forward
## 372            4   17          Spurs    Forward
## 373            1   18        Watford Goalkeeper
## 374            1   18        Watford Goalkeeper
## 375            2   18        Watford   Defender
## 376            2   18        Watford   Defender
## 377            2   18        Watford   Defender
## 378            2   18        Watford   Defender
## 379            2   18        Watford   Defender
## 380            2   18        Watford   Defender
## 381            2   18        Watford   Defender
## 382            2   18        Watford   Defender
## 383            2   18        Watford   Defender
## 384            2   18        Watford   Defender
## 385            2   18        Watford   Defender
## 386            2   18        Watford   Defender
## 387            3   18        Watford Midfielder
## 388            3   18        Watford Midfielder
## 389            3   18        Watford Midfielder
## 390            3   18        Watford Midfielder
## 391            3   18        Watford Midfielder
## 392            3   18        Watford Midfielder
## 393            3   18        Watford Midfielder
## 394            3   18        Watford Midfielder
## 395            4   18        Watford    Forward
## 396            4   18        Watford    Forward
## 397            4   18        Watford    Forward
## 398            4   18        Watford    Forward
## 399            1   19       West Ham Goalkeeper
## 400            1   19       West Ham Goalkeeper
## 401            2   19       West Ham   Defender
## 402            2   19       West Ham   Defender
## 403            2   19       West Ham   Defender
## 404            2   19       West Ham   Defender
## 405            2   19       West Ham   Defender
## 406            2   19       West Ham   Defender
## 407            2   19       West Ham   Defender
## 408            2   19       West Ham   Defender
## 409            2   19       West Ham   Defender
## 410            3   19       West Ham Midfielder
## 411            3   19       West Ham Midfielder
## 412            3   19       West Ham Midfielder
## 413            3   19       West Ham Midfielder
## 414            3   19       West Ham Midfielder
## 415            3   19       West Ham Midfielder
## 416            3   19       West Ham Midfielder
## 417            4   19       West Ham    Forward
## 418            4   19       West Ham    Forward
## 419            4   19       West Ham    Forward
## 420            4   19       West Ham    Forward
## 421            1   20         Wolves Goalkeeper
## 422            1   20         Wolves Goalkeeper
## 423            2   20         Wolves   Defender
## 424            2   20         Wolves   Defender
## 425            2   20         Wolves   Defender
## 426            2   20         Wolves   Defender
## 427            2   20         Wolves   Defender
## 428            2   20         Wolves   Defender
## 429            2   20         Wolves   Defender
## 430            2   20         Wolves   Defender
## 431            2   20         Wolves   Defender
## 432            3   20         Wolves Midfielder
## 433            3   20         Wolves Midfielder
## 434            3   20         Wolves Midfielder
## 435            3   20         Wolves Midfielder
## 436            3   20         Wolves Midfielder
## 437            4   20         Wolves    Forward
## 438            4   20         Wolves    Forward
```

### User data

Get data on a user's performance in the current FPL season:

``` r
fpl_get_user_performance(user_id = 123)
## $chips
## list()
## 
## $entry
## $entry$id
## [1] 123
## 
## $entry$player_first_name
## [1] "Pavlos"
## 
## $entry$player_last_name
## [1] "Anagnou"
## 
## $entry$player_region_id
## [1] 83
## 
## $entry$player_region_name
## [1] "Greece"
## 
## $entry$player_region_short_iso
## [1] "GR"
## 
## $entry$summary_overall_points
## NULL
## 
## $entry$summary_overall_rank
## NULL
## 
## $entry$summary_event_points
## NULL
## 
## $entry$summary_event_rank
## NULL
## 
## $entry$joined_seconds
## [1] 78796
## 
## $entry$current_event
## NULL
## 
## $entry$total_transfers
## [1] 0
## 
## $entry$total_loans
## [1] 0
## 
## $entry$total_loans_active
## [1] 0
## 
## $entry$transfers_or_loans
## [1] "transfers"
## 
## $entry$deleted
## [1] FALSE
## 
## $entry$email
## [1] TRUE
## 
## $entry$joined_time
## [1] "2018-07-05T14:35:18Z"
## 
## $entry$name
## [1] "Baglamades"
## 
## $entry$bank
## [1] 15
## 
## $entry$value
## [1] 985
## 
## $entry$kit
## NULL
## 
## $entry$event_transfers
## [1] 0
## 
## $entry$event_transfers_cost
## [1] 0
## 
## $entry$extra_free_transfers
## [1] 0
## 
## $entry$strategy
## NULL
## 
## $entry$favourite_team
## [1] 17
## 
## $entry$started_event
## [1] 1
## 
## $entry$player
## [1] 9356614
## 
## 
## $leagues
## $leagues$cup
## list()
## 
## $leagues$h2h
## list()
## 
## $leagues$classic
##       id entry_rank entry_last_rank entry_movement entry_change
## 1     17          0               0            new           NA
## 2    103          0               0            new           NA
## 3    275          0               0            new           NA
## 4    313          0               0            new           NA
## 5    448          0               0            new           NA
## 6    481          0               0            new           NA
## 7   1218          0               0            new           NA
## 8   1936          0               0            new           NA
## 9   7585          0               0            new           NA
## 10 15255          0               0            new           NA
##    entry_can_leave entry_can_admin entry_can_invite entry_can_forum
## 1            FALSE           FALSE            FALSE           FALSE
## 2            FALSE           FALSE            FALSE           FALSE
## 3            FALSE           FALSE            FALSE           FALSE
## 4            FALSE           FALSE            FALSE           FALSE
## 5             TRUE           FALSE            FALSE            TRUE
## 6             TRUE           FALSE            FALSE            TRUE
## 7            FALSE            TRUE             TRUE            TRUE
## 8             TRUE           FALSE            FALSE            TRUE
## 9             TRUE           FALSE            FALSE            TRUE
## 10            TRUE           FALSE            FALSE            TRUE
##    entry_code                          name short_name
## 1        <NA>                         Spurs    team-17
## 2        <NA>                        Greece  region-83
## 3        <NA>                    Gameweek 1    event-1
## 4        <NA>                       Overall    overall
## 5        <NA>  Always Cheating Super League       <NA>
## 6        <NA> @FPLSecrets Follow on Twitter       <NA>
## 7    123-1218  Tea Trade Wharf Primera Liga       <NA>
## 8        <NA>    FantasyFootballScout.co.uk       <NA>
## 9        <NA>         Beat the @FPLGeneral        <NA>
## 10       <NA>        fantasyfootballfix.com       <NA>
##                 created closed forum_disabled make_code_public rank size
## 1  2018-07-05T12:12:23Z  FALSE          FALSE            FALSE   NA   NA
## 2  2018-07-05T12:12:23Z  FALSE          FALSE            FALSE   NA   NA
## 3  2018-07-05T12:12:24Z  FALSE          FALSE            FALSE   NA   NA
## 4  2018-07-05T12:12:24Z  FALSE          FALSE            FALSE   NA   NA
## 5  2018-07-05T14:41:15Z  FALSE          FALSE            FALSE   NA   NA
## 6  2018-07-05T14:42:30Z  FALSE          FALSE            FALSE   NA   NA
## 7  2018-07-05T15:03:33Z  FALSE          FALSE            FALSE   NA   NA
## 8  2018-07-05T15:23:35Z  FALSE          FALSE            FALSE   NA   NA
## 9  2018-07-05T17:27:11Z  FALSE          FALSE            FALSE   NA   NA
## 10 2018-07-05T22:10:43Z  FALSE          FALSE            FALSE   NA   NA
##    league_type _scoring reprocess_standings admin_entry start_event
## 1            s        c               FALSE          NA           1
## 2            s        c               FALSE          NA           1
## 3            s        c               FALSE          NA           1
## 4            s        c               FALSE          NA           1
## 5            x        c               FALSE         513           1
## 6            x        c               FALSE         602           1
## 7            x        c               FALSE         123           1
## 8            x        c               FALSE        6025           1
## 9            x        c               FALSE       29104           1
## 10           x        c               FALSE       70403           1
## 
## 
## $season
##         id season_name total_points    rank season  player
## 1 13210862     2011/12         1788  865160      6 9356614
## 2 19303061     2012/13         1590 1837292      7 9356614
## 3 20622589     2013/14         2135  508248      8 9356614
## 4 31254280     2014/15         2043  123156      9 9356614
## 5 34458590     2015/16         2178   64735     10 9356614
## 6 38105936     2016/17         2313    8699     11 9356614
## 7 42627235     2017/18         2304   13153     12 9356614
## 
## $history
## list()
```

Collaborators
-------------

If you want to contribute to the package:

-   I followed the principles in Hadley Wickham's [R packages book](http://r-pkgs.had.co.nz/)
-   Follow the GitHub fork/pull request [model](https://guides.github.com/introduction/flow/), or contact me directly

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
