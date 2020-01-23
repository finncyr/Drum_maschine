--source: https://www.doulos.com/knowhow/vhdl_designers_guide/models/sine_wave_generator/
--modified by Manuel Faatz
--added support for 24 bit outputs
--adjusted LUT accordingly
--last change: 15.01.2020
--modified by Carsten Thumm and Angelo Pavicic
library ieee;
use ieee.std_logic_1164.all;

package sine_package is

  constant max_table_value: integer := 16777216;
  subtype table_value_type is integer range 0 to max_table_value;

  constant max_table_index: integer := 24523;
  subtype table_index_type is integer range 0 to max_table_index;

  subtype sine_vector_type is std_logic_vector( 23 downto 0 );

  function get_table_value (table_index: table_index_type) return table_value_type;

end;

package body sine_package is

  function get_table_value (table_index: table_index_type) return table_value_type is
    variable table_value: table_value_type;
  begin
    case table_index is
      
when 0 =>
table_value := 1047728
;
when 1 =>
table_value := 1046048
;
when 2 =>
table_value := 1044512
;
when 3 =>
table_value := 1043520
;
when 4 =>
table_value := 1042448
;
when 5 =>
table_value := 1041472
;
when 6 =>
table_value := 1040512
;
when 7 =>
table_value := 1039648
;
when 8 =>
table_value := 1038832
;
when 9 =>
table_value := 1038048
;
when 10 =>
table_value := 1037328
;
when 11 =>
table_value := 1036688
;
when 12 =>
table_value := 1036032
;
when 13 =>
table_value := 1035440
;
when 14 =>
table_value := 1034896
;
when 15 =>
table_value := 1034368
;
when 16 =>
table_value := 1033840
;
when 17 =>
table_value := 1033376
;
when 18 =>
table_value := 1032928
;
when 19 =>
table_value := 1032480
;
when 20 =>
table_value := 1032064
;
when 21 =>
table_value := 1031680
;
when 22 =>
table_value := 1031296
;
when 23 =>
table_value := 1030944
;
when 24 =>
table_value := 1030576
;
when 25 =>
table_value := 1030224
;
when 26 =>
table_value := 1029904
;
when 27 =>
table_value := 1029584
;
when 28 =>
table_value := 1029248
;
when 29 =>
table_value := 1028960
;
when 30 =>
table_value := 1028640
;
when 31 =>
table_value := 1028352
;
when 32 =>
table_value := 1028080
;
when 33 =>
table_value := 1027808
;
when 34 =>
table_value := 1027536
;
when 35 =>
table_value := 1027264
;
when 36 =>
table_value := 1027024
;
when 37 =>
table_value := 1026752
;
when 38 =>
table_value := 1026512
;
when 39 =>
table_value := 1026256
;
when 40 =>
table_value := 1026032
;
when 41 =>
table_value := 1025792
;
when 42 =>
table_value := 1025552
;
when 43 =>
table_value := 1025344
;
when 44 =>
table_value := 1025104
;
when 45 =>
table_value := 1024880
;
when 46 =>
table_value := 1024672
;
when 47 =>
table_value := 1024464
;
when 48 =>
table_value := 1024256
;
when 49 =>
table_value := 1024032
;
when 50 =>
table_value := 1023824
;
when 51 =>
table_value := 1023616
;
when 52 =>
table_value := 1023424
;
when 53 =>
table_value := 1023232
;
when 54 =>
table_value := 1023040
;
when 55 =>
table_value := 1022816
;
when 56 =>
table_value := 1022640
;
when 57 =>
table_value := 1022448
;
when 58 =>
table_value := 1022272
;
when 59 =>
table_value := 1022080
;
when 60 =>
table_value := 1021904
;
when 61 =>
table_value := 1021728
;
when 62 =>
table_value := 1021552
;
when 63 =>
table_value := 1021360
;
when 64 =>
table_value := 1021216
;
when 65 =>
table_value := 1021008
;
when 66 =>
table_value := 1020864
;
when 67 =>
table_value := 1020688
;
when 68 =>
table_value := 1020512
;
when 69 =>
table_value := 1020368
;
when 70 =>
table_value := 1020192
;
when 71 =>
table_value := 1020048
;
when 72 =>
table_value := 1019872
;
when 73 =>
table_value := 1019712
;
when 74 =>
table_value := 1019552
;
when 75 =>
table_value := 1019408
;
when 76 =>
table_value := 1019264
;
when 77 =>
table_value := 1019088
;
when 78 =>
table_value := 1018960
;
when 79 =>
table_value := 1018816
;
when 80 =>
table_value := 1018640
;
when 81 =>
table_value := 1018528
;
when 82 =>
table_value := 1018352
;
when 83 =>
table_value := 1018208
;
when 84 =>
table_value := 1018064
;
when 85 =>
table_value := 1017920
;
when 86 =>
table_value := 1017808
;
when 87 =>
table_value := 1017664
;
when 88 =>
table_value := 1017520
;
when 89 =>
table_value := 1017392
;
when 90 =>
table_value := 1017280
;
when 91 =>
table_value := 1017200
;
when 92 =>
table_value := 1017024
;
when 93 =>
table_value := 1016912
;
when 94 =>
table_value := 1016768
;
when 95 =>
table_value := 1016736
;
when 96 =>
table_value := 1016592
;
when 97 =>
table_value := 1016464
;
when 98 =>
table_value := 1016288
;
when 99 =>
table_value := 1016192
;
when 100 =>
table_value := 1016048
;
when 101 =>
table_value := 1016000
;
when 102 =>
table_value := 1015808
;
when 103 =>
table_value := 1015792
;
when 104 =>
table_value := 1015536
;
when 105 =>
table_value := 1015536
;
when 106 =>
table_value := 1015344
;
when 107 =>
table_value := 1015424
;
when 108 =>
table_value := 1015152
;
when 109 =>
table_value := 1015184
;
when 110 =>
table_value := 1014768
;
when 111 =>
table_value := 1014912
;
when 112 =>
table_value := 1014512
;
when 113 =>
table_value := 1014880
;
when 114 =>
table_value := 1014304
;
when 115 =>
table_value := 1014912
;
when 116 =>
table_value := 1013792
;
when 117 =>
table_value := 1022480
;
when 118 =>
table_value := 1029200
;
when 119 =>
table_value := 1021456
;
when 120 =>
table_value := 1019920
;
when 121 =>
table_value := 1017456
;
when 122 =>
table_value := 1029008
;
when 123 =>
table_value := 1038928
;
when 124 =>
table_value := 1034656
;
when 125 =>
table_value := 1027120
;
when 126 =>
table_value := 1022592
;
when 127 =>
table_value := 1022768
;
when 128 =>
table_value := 1026880
;
when 129 =>
table_value := 1026336
;
when 130 =>
table_value := 1022416
;
when 131 =>
table_value := 1020800
;
when 132 =>
table_value := 1024320
;
when 133 =>
table_value := 1031760
;
when 134 =>
table_value := 1039584
;
when 135 =>
table_value := 1041968
;
when 136 =>
table_value := 1034752
;
when 137 =>
table_value := 1027456
;
when 138 =>
table_value := 1022784
;
when 139 =>
table_value := 1021088
;
when 140 =>
table_value := 1024672
;
when 141 =>
table_value := 1029248
;
when 142 =>
table_value := 1033776
;
when 143 =>
table_value := 1037088
;
when 144 =>
table_value := 1040672
;
when 145 =>
table_value := 1045680
;
when 146 =>
table_value := 1840
;
when 147 =>
table_value := 3120
;
when 148 =>
table_value := 1045648
;
when 149 =>
table_value := 1036080
;
when 150 =>
table_value := 1029792
;
when 151 =>
table_value := 1024560
;
when 152 =>
table_value := 1023616
;
when 153 =>
table_value := 1026016
;
when 154 =>
table_value := 1031104
;
when 155 =>
table_value := 1035952
;
when 156 =>
table_value := 1036576
;
when 157 =>
table_value := 1033600
;
when 158 =>
table_value := 1031744
;
when 159 =>
table_value := 1032272
;
when 160 =>
table_value := 1034192
;
when 161 =>
table_value := 1039936
;
when 162 =>
table_value := 5584
;
when 163 =>
table_value := 17424
;
when 164 =>
table_value := 26336
;
when 165 =>
table_value := 34512
;
when 166 =>
table_value := 41888
;
when 167 =>
table_value := 48448
;
when 168 =>
table_value := 54512
;
when 169 =>
table_value := 59808
;
when 170 =>
table_value := 64816
;
when 171 =>
table_value := 69008
;
when 172 =>
table_value := 73056
;
when 173 =>
table_value := 65568
;
when 174 =>
table_value := 51696
;
when 175 =>
table_value := 45680
;
when 176 =>
table_value := 53296
;
when 177 =>
table_value := 62528
;
when 178 =>
table_value := 67344
;
when 179 =>
table_value := 72480
;
when 180 =>
table_value := 76384
;
when 181 =>
table_value := 80336
;
when 182 =>
table_value := 83920
;
when 183 =>
table_value := 87200
;
when 184 =>
table_value := 90064
;
when 185 =>
table_value := 92624
;
when 186 =>
table_value := 95008
;
when 187 =>
table_value := 96992
;
when 188 =>
table_value := 98944
;
when 189 =>
table_value := 100144
;
when 190 =>
table_value := 101840
;
when 191 =>
table_value := 96240
;
when 192 =>
table_value := 89488
;
when 193 =>
table_value := 93712
;
when 194 =>
table_value := 96320
;
when 195 =>
table_value := 98016
;
when 196 =>
table_value := 99264
;
when 197 =>
table_value := 98192
;
when 198 =>
table_value := 93712
;
when 199 =>
table_value := 93104
;
when 200 =>
table_value := 96512
;
when 201 =>
table_value := 98112
;
when 202 =>
table_value := 98768
;
when 203 =>
table_value := 98768
;
when 204 =>
table_value := 98768
;
when 205 =>
table_value := 98432
;
when 206 =>
table_value := 98144
;
when 207 =>
table_value := 98320
;
when 208 =>
table_value := 98624
;
when 209 =>
table_value := 98448
;
when 210 =>
table_value := 98224
;
when 211 =>
table_value := 97840
;
when 212 =>
table_value := 97392
;
when 213 =>
table_value := 96624
;
when 214 =>
table_value := 95760
;
when 215 =>
table_value := 95200
;
when 216 =>
table_value := 95200
;
when 217 =>
table_value := 95024
;
when 218 =>
table_value := 94528
;
when 219 =>
table_value := 93808
;
when 220 =>
table_value := 92704
;
when 221 =>
table_value := 91056
;
when 222 =>
table_value := 89280
;
when 223 =>
table_value := 88896
;
when 224 =>
table_value := 89792
;
when 225 =>
table_value := 90064
;
when 226 =>
table_value := 89472
;
when 227 =>
table_value := 88688
;
when 228 =>
table_value := 87696
;
when 229 =>
table_value := 86400
;
when 230 =>
table_value := 84432
;
when 231 =>
table_value := 82448
;
when 232 =>
table_value := 81680
;
when 233 =>
table_value := 81472
;
when 234 =>
table_value := 81168
;
when 235 =>
table_value := 80016
;
when 236 =>
table_value := 77808
;
when 237 =>
table_value := 74560
;
when 238 =>
table_value := 71024
;
when 239 =>
table_value := 68256
;
when 240 =>
table_value := 66080
;
when 241 =>
table_value := 64752
;
when 242 =>
table_value := 64640
;
when 243 =>
table_value := 64528
;
when 244 =>
table_value := 62320
;
when 245 =>
table_value := 57152
;
when 246 =>
table_value := 51088
;
when 247 =>
table_value := 46320
;
when 248 =>
table_value := 42736
;
when 249 =>
table_value := 38384
;
when 250 =>
table_value := 32992
;
when 251 =>
table_value := 29328
;
when 252 =>
table_value := 34448
;
when 253 =>
table_value := 44464
;
when 254 =>
table_value := 50400
;
when 255 =>
table_value := 55920
;
when 256 =>
table_value := 57152
;
when 257 =>
table_value := 53680
;
when 258 =>
table_value := 52496
;
when 259 =>
table_value := 56576
;
when 260 =>
table_value := 61056
;
when 261 =>
table_value := 62288
;
when 262 =>
table_value := 61888
;
when 263 =>
table_value := 60864
;
when 264 =>
table_value := 58944
;
when 265 =>
table_value := 56720
;
when 266 =>
table_value := 56544
;
when 267 =>
table_value := 57728
;
when 268 =>
table_value := 58192
;
when 269 =>
table_value := 57776
;
when 270 =>
table_value := 57120
;
when 271 =>
table_value := 56288
;
when 272 =>
table_value := 55376
;
when 273 =>
table_value := 54800
;
when 274 =>
table_value := 54240
;
when 275 =>
table_value := 53600
;
when 276 =>
table_value := 52880
;
when 277 =>
table_value := 52208
;
when 278 =>
table_value := 51456
;
when 279 =>
table_value := 50656
;
when 280 =>
table_value := 49744
;
when 281 =>
table_value := 48784
;
when 282 =>
table_value := 47824
;
when 283 =>
table_value := 46928
;
when 284 =>
table_value := 46272
;
when 285 =>
table_value := 45936
;
when 286 =>
table_value := 45488
;
when 287 =>
table_value := 44480
;
when 288 =>
table_value := 41392
;
when 289 =>
table_value := 33216
;
when 290 =>
table_value := 21504
;
when 291 =>
table_value := 14160
;
when 292 =>
table_value := 14944
;
when 293 =>
table_value := 22176
;
when 294 =>
table_value := 31584
;
when 295 =>
table_value := 38464
;
when 296 =>
table_value := 41280
;
when 297 =>
table_value := 41008
;
when 298 =>
table_value := 39424
;
when 299 =>
table_value := 35072
;
when 300 =>
table_value := 26944
;
when 301 =>
table_value := 18944
;
when 302 =>
table_value := 15184
;
when 303 =>
table_value := 13840
;
when 304 =>
table_value := 11024
;
when 305 =>
table_value := 5008
;
when 306 =>
table_value := 1045040
;
when 307 =>
table_value := 1037152
;
when 308 =>
table_value := 1035168
;
when 309 =>
table_value := 1041424
;
when 310 =>
table_value := 5632
;
when 311 =>
table_value := 17296
;
when 312 =>
table_value := 23744
;
when 313 =>
table_value := 25152
;
when 314 =>
table_value := 23616
;
when 315 =>
table_value := 22080
;
when 316 =>
table_value := 21296
;
when 317 =>
table_value := 18656
;
when 318 =>
table_value := 11776
;
when 319 =>
table_value := 2880
;
when 320 =>
table_value := 1046272
;
when 321 =>
table_value := 1047504
;
when 322 =>
table_value := 4032
;
when 323 =>
table_value := 8272
;
when 324 =>
table_value := 8928
;
when 325 =>
table_value := 4928
;
when 326 =>
table_value := 1046496
;
when 327 =>
table_value := 1040064
;
when 328 =>
table_value := 1037616
;
when 329 =>
table_value := 1040288
;
when 330 =>
table_value := 1045408
;
when 331 =>
table_value := 1047136
;
when 332 =>
table_value := 1040912
;
when 333 =>
table_value := 1026560
;
when 334 =>
table_value := 1012864
;
when 335 =>
table_value := 1004032
;
when 336 =>
table_value := 1002992
;
when 337 =>
table_value := 1007344
;
when 338 =>
table_value := 1011824
;
when 339 =>
table_value := 1012624
;
when 340 =>
table_value := 1004592
;
when 341 =>
table_value := 992816
;
when 342 =>
table_value := 984016
;
when 343 =>
table_value := 978176
;
when 344 =>
table_value := 980336
;
when 345 =>
table_value := 985456
;
when 346 =>
table_value := 988000
;
when 347 =>
table_value := 986208
;
when 348 =>
table_value := 980656
;
when 349 =>
table_value := 973792
;
when 350 =>
table_value := 969104
;
when 351 =>
table_value := 969840
;
when 352 =>
table_value := 973152
;
when 353 =>
table_value := 972752
;
when 354 =>
table_value := 965984
;
when 355 =>
table_value := 959584
;
when 356 =>
table_value := 955760
;
when 357 =>
table_value := 960224
;
when 358 =>
table_value := 974624
;
when 359 =>
table_value := 991632
;
when 360 =>
table_value := 1000400
;
when 361 =>
table_value := 995904
;
when 362 =>
table_value := 984960
;
when 363 =>
table_value := 976896
;
when 364 =>
table_value := 976400
;
when 365 =>
table_value := 983248
;
when 366 =>
table_value := 992144
;
when 367 =>
table_value := 996720
;
when 368 =>
table_value := 993232
;
when 369 =>
table_value := 983872
;
when 370 =>
table_value := 975840
;
when 371 =>
table_value := 974912
;
when 372 =>
table_value := 983120
;
when 373 =>
table_value := 995744
;
when 374 =>
table_value := 1003712
;
when 375 =>
table_value := 1001008
;
when 376 =>
table_value := 989664
;
when 377 =>
table_value := 979648
;
when 378 =>
table_value := 972368
;
when 379 =>
table_value := 965712
;
when 380 =>
table_value := 960128
;
when 381 =>
table_value := 956208
;
when 382 =>
table_value := 956160
;
when 383 =>
table_value := 960304
;
when 384 =>
table_value := 967856
;
when 385 =>
table_value := 976480
;
when 386 =>
table_value := 982448
;
when 387 =>
table_value := 984240
;
when 388 =>
table_value := 983760
;
when 389 =>
table_value := 983616
;
when 390 =>
table_value := 987136
;
when 391 =>
table_value := 996208
;
when 392 =>
table_value := 1008752
;
when 393 =>
table_value := 1018432
;
when 394 =>
table_value := 1019536
;
when 395 =>
table_value := 1012656
;
when 396 =>
table_value := 1001280
;
when 397 =>
table_value := 990608
;
when 398 =>
table_value := 985136
;
when 399 =>
table_value := 988960
;
when 400 =>
table_value := 999920
;
when 401 =>
table_value := 1009536
;
when 402 =>
table_value := 1012736
;
when 403 =>
table_value := 1009920
;
when 404 =>
table_value := 1005584
;
when 405 =>
table_value := 1004528
;
when 406 =>
table_value := 1009584
;
when 407 =>
table_value := 1019040
;
when 408 =>
table_value := 1029568
;
when 409 =>
table_value := 1035712
;
when 410 =>
table_value := 1034272
;
when 411 =>
table_value := 1023552
;
when 412 =>
table_value := 1009088
;
when 413 =>
table_value := 998048
;
when 414 =>
table_value := 990000
;
when 415 =>
table_value := 987744
;
when 416 =>
table_value := 990480
;
when 417 =>
table_value := 997312
;
when 418 =>
table_value := 1007696
;
when 419 =>
table_value := 1019136
;
when 420 =>
table_value := 1027200
;
when 421 =>
table_value := 1029952
;
when 422 =>
table_value := 1030544
;
when 423 =>
table_value := 1034320
;
when 424 =>
table_value := 1043392
;
when 425 =>
table_value := 6640
;
when 426 =>
table_value := 16160
;
when 427 =>
table_value := 18720
;
when 428 =>
table_value := 11920
;
when 429 =>
table_value := 1044848
;
when 430 =>
table_value := 1027440
;
when 431 =>
table_value := 1014688
;
when 432 =>
table_value := 1002960
;
when 433 =>
table_value := 993168
;
when 434 =>
table_value := 984288
;
when 435 =>
table_value := 982592
;
when 436 =>
table_value := 991632
;
when 437 =>
table_value := 1011344
;
when 438 =>
table_value := 1034736
;
when 439 =>
table_value := 3472
;
when 440 =>
table_value := 10304
;
when 441 =>
table_value := 5344
;
when 442 =>
table_value := 1045328
;
when 443 =>
table_value := 1039568
;
when 444 =>
table_value := 1041552
;
when 445 =>
table_value := 1648
;
when 446 =>
table_value := 11344
;
when 447 =>
table_value := 16768
;
when 448 =>
table_value := 16768
;
when 449 =>
table_value := 14800
;
when 450 =>
table_value := 14496
;
when 451 =>
table_value := 16096
;
when 452 =>
table_value := 18224
;
when 453 =>
table_value := 19056
;
when 454 =>
table_value := 16512
;
when 455 =>
table_value := 9760
;
when 456 =>
table_value := 1008
;
when 457 =>
table_value := 1041696
;
when 458 =>
table_value := 1037440
;
when 459 =>
table_value := 1039888
;
when 460 =>
table_value := 816
;
when 461 =>
table_value := 14064
;
when 462 =>
table_value := 26576
;
when 463 =>
table_value := 33856
;
when 464 =>
table_value := 33248
;
when 465 =>
table_value := 26992
;
when 466 =>
table_value := 19936
;
when 467 =>
table_value := 17424
;
when 468 =>
table_value := 22336
;
when 469 =>
table_value := 30080
;
when 470 =>
table_value := 33904
;
when 471 =>
table_value := 30384
;
when 472 =>
table_value := 22176
;
when 473 =>
table_value := 15600
;
when 474 =>
table_value := 15728
;
when 475 =>
table_value := 20576
;
when 476 =>
table_value := 24720
;
when 477 =>
table_value := 23920
;
when 478 =>
table_value := 19120
;
when 479 =>
table_value := 14352
;
when 480 =>
table_value := 11568
;
when 481 =>
table_value := 9968
;
when 482 =>
table_value := 8112
;
when 483 =>
table_value := 7008
;
when 484 =>
table_value := 8704
;
when 485 =>
table_value := 15232
;
when 486 =>
table_value := 26368
;
when 487 =>
table_value := 39104
;
when 488 =>
table_value := 49408
;
when 489 =>
table_value := 55408
;
when 490 =>
table_value := 56528
;
when 491 =>
table_value := 53056
;
when 492 =>
table_value := 45184
;
when 493 =>
table_value := 35088
;
when 494 =>
table_value := 27184
;
when 495 =>
table_value := 24704
;
when 496 =>
table_value := 28160
;
when 497 =>
table_value := 35872
;
when 498 =>
table_value := 44272
;
when 499 =>
table_value := 50160
;
when 500 =>
table_value := 52912
;
when 501 =>
table_value := 53248
;
when 502 =>
table_value := 52048
;
when 503 =>
table_value := 50064
;
when 504 =>
table_value := 49216
;
when 505 =>
table_value := 51600
;
when 506 =>
table_value := 57264
;
when 507 =>
table_value := 62608
;
when 508 =>
table_value := 64480
;
when 509 =>
table_value := 64064
;
when 510 =>
table_value := 62512
;
when 511 =>
table_value := 60384
;
when 512 =>
table_value := 57792
;
when 513 =>
table_value := 55040
;
when 514 =>
table_value := 52016
;
when 515 =>
table_value := 48224
;
when 516 =>
table_value := 43120
;
when 517 =>
table_value := 37504
;
when 518 =>
table_value := 33488
;
when 519 =>
table_value := 34000
;
when 520 =>
table_value := 38864
;
when 521 =>
table_value := 43856
;
when 522 =>
table_value := 46048
;
when 523 =>
table_value := 45232
;
when 524 =>
table_value := 42240
;
when 525 =>
table_value := 39248
;
when 526 =>
table_value := 37968
;
when 527 =>
table_value := 39424
;
when 528 =>
table_value := 41360
;
when 529 =>
table_value := 41744
;
when 530 =>
table_value := 40176
;
when 531 =>
table_value := 36864
;
when 532 =>
table_value := 33088
;
when 533 =>
table_value := 30464
;
when 534 =>
table_value := 29232
;
when 535 =>
table_value := 29184
;
when 536 =>
table_value := 29360
;
when 537 =>
table_value := 29952
;
when 538 =>
table_value := 31136
;
when 539 =>
table_value := 33088
;
when 540 =>
table_value := 35552
;
when 541 =>
table_value := 37552
;
when 542 =>
table_value := 38352
;
when 543 =>
table_value := 38512
;
when 544 =>
table_value := 38048
;
when 545 =>
table_value := 37488
;
when 546 =>
table_value := 36864
;
when 547 =>
table_value := 36096
;
when 548 =>
table_value := 35280
;
when 549 =>
table_value := 34512
;
when 550 =>
table_value := 33712
;
when 551 =>
table_value := 32864
;
when 552 =>
table_value := 31936
;
when 553 =>
table_value := 30976
;
when 554 =>
table_value := 30208
;
when 555 =>
table_value := 29552
;
when 556 =>
table_value := 29040
;
when 557 =>
table_value := 28496
;
when 558 =>
table_value := 27792
;
when 559 =>
table_value := 26832
;
when 560 =>
table_value := 25584
;
when 561 =>
table_value := 23792
;
when 562 =>
table_value := 21696
;
when 563 =>
table_value := 20272
;
when 564 =>
table_value := 20432
;
when 565 =>
table_value := 21312
;
when 566 =>
table_value := 21952
;
when 567 =>
table_value := 21760
;
when 568 =>
table_value := 21088
;
when 569 =>
table_value := 20128
;
when 570 =>
table_value := 19264
;
when 571 =>
table_value := 18608
;
when 572 =>
table_value := 18336
;
when 573 =>
table_value := 18256
;
when 574 =>
table_value := 17808
;
when 575 =>
table_value := 17168
;
when 576 =>
table_value := 16464
;
when 577 =>
table_value := 15824
;
when 578 =>
table_value := 15280
;
when 579 =>
table_value := 14624
;
when 580 =>
table_value := 13984
;
when 581 =>
table_value := 12848
;
when 582 =>
table_value := 11216
;
when 583 =>
table_value := 9648
;
when 584 =>
table_value := 9216
;
when 585 =>
table_value := 10048
;
when 586 =>
table_value := 10576
;
when 587 =>
table_value := 10352
;
when 588 =>
table_value := 9680
;
when 589 =>
table_value := 8992
;
when 590 =>
table_value := 8288
;
when 591 =>
table_value := 7904
;
when 592 =>
table_value := 7440
;
when 593 =>
table_value := 7088
;
when 594 =>
table_value := 6528
;
when 595 =>
table_value := 5808
;
when 596 =>
table_value := 5120
;
when 597 =>
table_value := 4528
;
when 598 =>
table_value := 4064
;
when 599 =>
table_value := 3488
;
when 600 =>
table_value := 3072
;
when 601 =>
table_value := 2656
;
when 602 =>
table_value := 2320
;
when 603 =>
table_value := 2112
;
when 604 =>
table_value := 1776
;
when 605 =>
table_value := 1360
;
when 606 =>
table_value := 720
;
when 607 =>
table_value := 1048528
;
when 608 =>
table_value := 1047520
;
when 609 =>
table_value := 1046208
;
when 610 =>
table_value := 1044944
;
when 611 =>
table_value := 1043952
;
when 612 =>
table_value := 1043072
;
when 613 =>
table_value := 1042096
;
when 614 =>
table_value := 1041088
;
when 615 =>
table_value := 1040128
;
when 616 =>
table_value := 1039728
;
when 617 =>
table_value := 1040000
;
when 618 =>
table_value := 1040656
;
when 619 =>
table_value := 1041376
;
when 620 =>
table_value := 1041840
;
when 621 =>
table_value := 1042016
;
when 622 =>
table_value := 1041744
;
when 623 =>
table_value := 1041264
;
when 624 =>
table_value := 1040384
;
when 625 =>
table_value := 1039680
;
when 626 =>
table_value := 1039248
;
when 627 =>
table_value := 1039440
;
when 628 =>
table_value := 1039872
;
when 629 =>
table_value := 1039936
;
when 630 =>
table_value := 1039760
;
when 631 =>
table_value := 1039216
;
when 632 =>
table_value := 1038544
;
when 633 =>
table_value := 1037920
;
when 634 =>
table_value := 1037376
;
when 635 =>
table_value := 1036912
;
when 636 =>
table_value := 1036448
;
when 637 =>
table_value := 1035648
;
when 638 =>
table_value := 1034752
;
when 639 =>
table_value := 1034128
;
when 640 =>
table_value := 1033920
;
when 641 =>
table_value := 1033712
;
when 642 =>
table_value := 1033152
;
when 643 =>
table_value := 1031936
;
when 644 =>
table_value := 1030064
;
when 645 =>
table_value := 1028336
;
when 646 =>
table_value := 1027792
;
when 647 =>
table_value := 1028304
;
when 648 =>
table_value := 1029024
;
when 649 =>
table_value := 1029536
;
when 650 =>
table_value := 1029760
;
when 651 =>
table_value := 1029920
;
when 652 =>
table_value := 1029936
;
when 653 =>
table_value := 1029584
;
when 654 =>
table_value := 1028800
;
when 655 =>
table_value := 1027552
;
when 656 =>
table_value := 1026064
;
when 657 =>
table_value := 1023936
;
when 658 =>
table_value := 1020656
;
when 659 =>
table_value := 1015216
;
when 660 =>
table_value := 1007600
;
when 661 =>
table_value := 999200
;
when 662 =>
table_value := 993168
;
when 663 =>
table_value := 991536
;
when 664 =>
table_value := 993632
;
when 665 =>
table_value := 996192
;
when 666 =>
table_value := 996368
;
when 667 =>
table_value := 993216
;
when 668 =>
table_value := 987792
;
when 669 =>
table_value := 982288
;
when 670 =>
table_value := 977488
;
when 671 =>
table_value := 971696
;
when 672 =>
table_value := 963104
;
when 673 =>
table_value := 955232
;
when 674 =>
table_value := 949056
;
when 675 =>
table_value := 943296
;
when 676 =>
table_value := 940880
;
when 677 =>
table_value := 942224
;
when 678 =>
table_value := 941408
;
when 679 =>
table_value := 936368
;
when 680 =>
table_value := 932032
;
when 681 =>
table_value := 930672
;
when 682 =>
table_value := 930624
;
when 683 =>
table_value := 930912
;
when 684 =>
table_value := 931264
;
when 685 =>
table_value := 931632
;
when 686 =>
table_value := 931952
;
when 687 =>
table_value := 932272
;
when 688 =>
table_value := 932576
;
when 689 =>
table_value := 932880
;
when 690 =>
table_value := 933184
;
when 691 =>
table_value := 933536
;
when 692 =>
table_value := 933904
;
when 693 =>
table_value := 934288
;
when 694 =>
table_value := 934592
;
when 695 =>
table_value := 934896
;
when 696 =>
table_value := 935184
;
when 697 =>
table_value := 935504
;
when 698 =>
table_value := 935808
;
when 699 =>
table_value := 936112
;
when 700 =>
table_value := 936400
;
when 701 =>
table_value := 936688
;
when 702 =>
table_value := 936992
;
when 703 =>
table_value := 937296
;
when 704 =>
table_value := 937600
;
when 705 =>
table_value := 937920
;
when 706 =>
table_value := 938224
;
when 707 =>
table_value := 938496
;
when 708 =>
table_value := 938832
;
when 709 =>
table_value := 939152
;
when 710 =>
table_value := 939456
;
when 711 =>
table_value := 939744
;
when 712 =>
table_value := 940080
;
when 713 =>
table_value := 940368
;
when 714 =>
table_value := 940704
;
when 715 =>
table_value := 941008
;
when 716 =>
table_value := 941312
;
when 717 =>
table_value := 941664
;
when 718 =>
table_value := 941984
;
when 719 =>
table_value := 942320
;
when 720 =>
table_value := 942608
;
when 721 =>
table_value := 942912
;
when 722 =>
table_value := 943264
;
when 723 =>
table_value := 943632
;
when 724 =>
table_value := 944016
;
when 725 =>
table_value := 944304
;
when 726 =>
table_value := 944512
;
when 727 =>
table_value := 944768
;
when 728 =>
table_value := 945056
;
when 729 =>
table_value := 945360
;
when 730 =>
table_value := 945632
;
when 731 =>
table_value := 945936
;
when 732 =>
table_value := 946240
;
when 733 =>
table_value := 946560
;
when 734 =>
table_value := 946864
;
when 735 =>
table_value := 947120
;
when 736 =>
table_value := 947424
;
when 737 =>
table_value := 947744
;
when 738 =>
table_value := 948048
;
when 739 =>
table_value := 948368
;
when 740 =>
table_value := 948736
;
when 741 =>
table_value := 949088
;
when 742 =>
table_value := 949664
;
when 743 =>
table_value := 951040
;
when 744 =>
table_value := 954368
;
when 745 =>
table_value := 958544
;
when 746 =>
table_value := 961776
;
when 747 =>
table_value := 963648
;
when 748 =>
table_value := 964672
;
when 749 =>
table_value := 965760
;
when 750 =>
table_value := 968288
;
when 751 =>
table_value := 971696
;
when 752 =>
table_value := 974352
;
when 753 =>
table_value := 975008
;
when 754 =>
table_value := 973664
;
when 755 =>
table_value := 970976
;
when 756 =>
table_value := 968704
;
when 757 =>
table_value := 967856
;
when 758 =>
table_value := 968432
;
when 759 =>
table_value := 970224
;
when 760 =>
table_value := 972080
;
when 761 =>
table_value := 973488
;
when 762 =>
table_value := 974752
;
when 763 =>
table_value := 976224
;
when 764 =>
table_value := 978592
;
when 765 =>
table_value := 981680
;
when 766 =>
table_value := 984880
;
when 767 =>
table_value := 987568
;
when 768 =>
table_value := 989600
;
when 769 =>
table_value := 991088
;
when 770 =>
table_value := 991872
;
when 771 =>
table_value := 991616
;
when 772 =>
table_value := 990672
;
when 773 =>
table_value := 990160
;
when 774 =>
table_value := 991696
;
when 775 =>
table_value := 995504
;
when 776 =>
table_value := 1000880
;
when 777 =>
table_value := 1005776
;
when 778 =>
table_value := 1007856
;
when 779 =>
table_value := 1006176
;
when 780 =>
table_value := 1002416
;
when 781 =>
table_value := 999584
;
when 782 =>
table_value := 999728
;
when 783 =>
table_value := 1002608
;
when 784 =>
table_value := 1006624
;
when 785 =>
table_value := 1010192
;
when 786 =>
table_value := 1012016
;
when 787 =>
table_value := 1012576
;
when 788 =>
table_value := 1012768
;
when 789 =>
table_value := 1013200
;
when 790 =>
table_value := 1013680
;
when 791 =>
table_value := 1014192
;
when 792 =>
table_value := 1014704
;
when 793 =>
table_value := 1015536
;
when 794 =>
table_value := 1017616
;
when 795 =>
table_value := 1021936
;
when 796 =>
table_value := 1028480
;
when 797 =>
table_value := 1036432
;
when 798 =>
table_value := 1045424
;
when 799 =>
table_value := 6112
;
when 800 =>
table_value := 15712
;
when 801 =>
table_value := 25232
;
when 802 =>
table_value := 33856
;
when 803 =>
table_value := 41952
;
when 804 =>
table_value := 49568
;
when 805 =>
table_value := 56320
;
when 806 =>
table_value := 62032
;
when 807 =>
table_value := 65392
;
when 808 =>
table_value := 66240
;
when 809 =>
table_value := 65904
;
when 810 =>
table_value := 65392
;
when 811 =>
table_value := 65584
;
when 812 =>
table_value := 66752
;
when 813 =>
table_value := 68608
;
when 814 =>
table_value := 70272
;
when 815 =>
table_value := 71936
;
when 816 =>
table_value := 74016
;
when 817 =>
table_value := 77520
;
when 818 =>
table_value := 83168
;
when 819 =>
table_value := 89744
;
when 820 =>
table_value := 94672
;
when 821 =>
table_value := 96128
;
when 822 =>
table_value := 94640
;
when 823 =>
table_value := 91872
;
when 824 =>
table_value := 90560
;
when 825 =>
table_value := 92256
;
when 826 =>
table_value := 97040
;
when 827 =>
table_value := 103168
;
when 828 =>
table_value := 108576
;
when 829 =>
table_value := 112160
;
when 830 =>
table_value := 114096
;
when 831 =>
table_value := 115440
;
when 832 =>
table_value := 116464
;
when 833 =>
table_value := 116560
;
when 834 =>
table_value := 116224
;
when 835 =>
table_value := 115920
;
when 836 =>
table_value := 115600
;
when 837 =>
table_value := 115280
;
when 838 =>
table_value := 114912
;
when 839 =>
table_value := 114576
;
when 840 =>
table_value := 114208
;
when 841 =>
table_value := 113888
;
when 842 =>
table_value := 113568
;
when 843 =>
table_value := 113248
;
when 844 =>
table_value := 112912
;
when 845 =>
table_value := 112608
;
when 846 =>
table_value := 112320
;
when 847 =>
table_value := 112032
;
when 848 =>
table_value := 111728
;
when 849 =>
table_value := 111392
;
when 850 =>
table_value := 111072
;
when 851 =>
table_value := 110768
;
when 852 =>
table_value := 110480
;
when 853 =>
table_value := 110176
;
when 854 =>
table_value := 109888
;
when 855 =>
table_value := 109568
;
when 856 =>
table_value := 109280
;
when 857 =>
table_value := 108976
;
when 858 =>
table_value := 108736
;
when 859 =>
table_value := 108128
;
when 860 =>
table_value := 106976
;
when 861 =>
table_value := 105888
;
when 862 =>
table_value := 105200
;
when 863 =>
table_value := 104480
;
when 864 =>
table_value := 103936
;
when 865 =>
table_value := 103392
;
when 866 =>
table_value := 102688
;
when 867 =>
table_value := 102000
;
when 868 =>
table_value := 101200
;
when 869 =>
table_value := 100304
;
when 870 =>
table_value := 99312
;
when 871 =>
table_value := 98288
;
when 872 =>
table_value := 97184
;
when 873 =>
table_value := 96320
;
when 874 =>
table_value := 95520
;
when 875 =>
table_value := 94560
;
when 876 =>
table_value := 93584
;
when 877 =>
table_value := 92496
;
when 878 =>
table_value := 91328
;
when 879 =>
table_value := 90416
;
when 880 =>
table_value := 89600
;
when 881 =>
table_value := 88896
;
when 882 =>
table_value := 88160
;
when 883 =>
table_value := 87088
;
when 884 =>
table_value := 85904
;
when 885 =>
table_value := 84656
;
when 886 =>
table_value := 83568
;
when 887 =>
table_value := 83008
;
when 888 =>
table_value := 82672
;
when 889 =>
table_value := 82352
;
when 890 =>
table_value := 81760
;
when 891 =>
table_value := 80880
;
when 892 =>
table_value := 79760
;
when 893 =>
table_value := 78208
;
when 894 =>
table_value := 76560
;
when 895 =>
table_value := 74640
;
when 896 =>
table_value := 72880
;
when 897 =>
table_value := 71616
;
when 898 =>
table_value := 70768
;
when 899 =>
table_value := 70528
;
when 900 =>
table_value := 70736
;
when 901 =>
table_value := 70976
;
when 902 =>
table_value := 70912
;
when 903 =>
table_value := 70608
;
when 904 =>
table_value := 69904
;
when 905 =>
table_value := 69136
;
when 906 =>
table_value := 68176
;
when 907 =>
table_value := 67152
;
when 908 =>
table_value := 66176
;
when 909 =>
table_value := 65296
;
when 910 =>
table_value := 64384
;
when 911 =>
table_value := 63696
;
when 912 =>
table_value := 62576
;
when 913 =>
table_value := 61424
;
when 914 =>
table_value := 60128
;
when 915 =>
table_value := 58832
;
when 916 =>
table_value := 57584
;
when 917 =>
table_value := 56384
;
when 918 =>
table_value := 55408
;
when 919 =>
table_value := 54192
;
when 920 =>
table_value := 53136
;
when 921 =>
table_value := 52192
;
when 922 =>
table_value := 51312
;
when 923 =>
table_value := 50608
;
when 924 =>
table_value := 49792
;
when 925 =>
table_value := 48880
;
when 926 =>
table_value := 47904
;
when 927 =>
table_value := 46704
;
when 928 =>
table_value := 45232
;
when 929 =>
table_value := 43424
;
when 930 =>
table_value := 41248
;
when 931 =>
table_value := 38544
;
when 932 =>
table_value := 35856
;
when 933 =>
table_value := 33328
;
when 934 =>
table_value := 31104
;
when 935 =>
table_value := 29488
;
when 936 =>
table_value := 28224
;
when 937 =>
table_value := 27296
;
when 938 =>
table_value := 26480
;
when 939 =>
table_value := 25408
;
when 940 =>
table_value := 23968
;
when 941 =>
table_value := 21856
;
when 942 =>
table_value := 19392
;
when 943 =>
table_value := 16640
;
when 944 =>
table_value := 13888
;
when 945 =>
table_value := 11104
;
when 946 =>
table_value := 8320
;
when 947 =>
table_value := 5920
;
when 948 =>
table_value := 4288
;
when 949 =>
table_value := 2944
;
when 950 =>
table_value := 1232
;
when 951 =>
table_value := 1047408
;
when 952 =>
table_value := 1044512
;
when 953 =>
table_value := 1041328
;
when 954 =>
table_value := 1038528
;
when 955 =>
table_value := 1036320
;
when 956 =>
table_value := 1034752
;
when 957 =>
table_value := 1033376
;
when 958 =>
table_value := 1031616
;
when 959 =>
table_value := 1029616
;
when 960 =>
table_value := 1027424
;
when 961 =>
table_value := 1025808
;
when 962 =>
table_value := 1024992
;
when 963 =>
table_value := 1024912
;
when 964 =>
table_value := 1025200
;
when 965 =>
table_value := 1025072
;
when 966 =>
table_value := 1024256
;
when 967 =>
table_value := 1023008
;
when 968 =>
table_value := 1022080
;
when 969 =>
table_value := 1021584
;
when 970 =>
table_value := 1021184
;
when 971 =>
table_value := 1020320
;
when 972 =>
table_value := 1018512
;
when 973 =>
table_value := 1015968
;
when 974 =>
table_value := 1013056
;
when 975 =>
table_value := 1010656
;
when 976 =>
table_value := 1009264
;
when 977 =>
table_value := 1009120
;
when 978 =>
table_value := 1009712
;
when 979 =>
table_value := 1010560
;
when 980 =>
table_value := 1011264
;
when 981 =>
table_value := 1011856
;
when 982 =>
table_value := 1012112
;
when 983 =>
table_value := 1012176
;
when 984 =>
table_value := 1013040
;
when 985 =>
table_value := 1014784
;
when 986 =>
table_value := 1016960
;
when 987 =>
table_value := 1018784
;
when 988 =>
table_value := 1019760
;
when 989 =>
table_value := 1019552
;
when 990 =>
table_value := 1018496
;
when 991 =>
table_value := 1016576
;
when 992 =>
table_value := 1014048
;
when 993 =>
table_value := 1011312
;
when 994 =>
table_value := 1008336
;
when 995 =>
table_value := 1005440
;
when 996 =>
table_value := 1002912
;
when 997 =>
table_value := 1001408
;
when 998 =>
table_value := 1001008
;
when 999 =>
table_value := 1000368
;
when 1000 =>
table_value := 998656
;
when 1001 =>
table_value := 995648
;
when 1002 =>
table_value := 991808
;
when 1003 =>
table_value := 988304
;
when 1004 =>
table_value := 985808
;
when 1005 =>
table_value := 984864
;
when 1006 =>
table_value := 984960
;
when 1007 =>
table_value := 984800
;
when 1008 =>
table_value := 983200
;
when 1009 =>
table_value := 980032
;
when 1010 =>
table_value := 976768
;
when 1011 =>
table_value := 974688
;
when 1012 =>
table_value := 974768
;
when 1013 =>
table_value := 976304
;
when 1014 =>
table_value := 977888
;
when 1015 =>
table_value := 978400
;
when 1016 =>
table_value := 977952
;
when 1017 =>
table_value := 977168
;
when 1018 =>
table_value := 976768
;
when 1019 =>
table_value := 976896
;
when 1020 =>
table_value := 977472
;
when 1021 =>
table_value := 977936
;
when 1022 =>
table_value := 977808
;
when 1023 =>
table_value := 977088
;
when 1024 =>
table_value := 976112
;
when 1025 =>
table_value := 975296
;
when 1026 =>
table_value := 974448
;
when 1027 =>
table_value := 972864
;
when 1028 =>
table_value := 970512
;
when 1029 =>
table_value := 968496
;
when 1030 =>
table_value := 967536
;
when 1031 =>
table_value := 968160
;
when 1032 =>
table_value := 970048
;
when 1033 =>
table_value := 972704
;
when 1034 =>
table_value := 975344
;
when 1035 =>
table_value := 977328
;
when 1036 =>
table_value := 978656
;
when 1037 =>
table_value := 979248
;
when 1038 =>
table_value := 979712
;
when 1039 =>
table_value := 980448
;
when 1040 =>
table_value := 981536
;
when 1041 =>
table_value := 983264
;
when 1042 =>
table_value := 985200
;
when 1043 =>
table_value := 987328
;
when 1044 =>
table_value := 989248
;
when 1045 =>
table_value := 990704
;
when 1046 =>
table_value := 991216
;
when 1047 =>
table_value := 991056
;
when 1048 =>
table_value := 990544
;
when 1049 =>
table_value := 990384
;
when 1050 =>
table_value := 990480
;
when 1051 =>
table_value := 991264
;
when 1052 =>
table_value := 992896
;
when 1053 =>
table_value := 994928
;
when 1054 =>
table_value := 997312
;
when 1055 =>
table_value := 999744
;
when 1056 =>
table_value := 1001968
;
when 1057 =>
table_value := 1003920
;
when 1058 =>
table_value := 1005584
;
when 1059 =>
table_value := 1007104
;
when 1060 =>
table_value := 1008752
;
when 1061 =>
table_value := 1010272
;
when 1062 =>
table_value := 1011600
;
when 1063 =>
table_value := 1012720
;
when 1064 =>
table_value := 1013696
;
when 1065 =>
table_value := 1014480
;
when 1066 =>
table_value := 1015200
;
when 1067 =>
table_value := 1015920
;
when 1068 =>
table_value := 1017280
;
when 1069 =>
table_value := 1019856
;
when 1070 =>
table_value := 1023936
;
when 1071 =>
table_value := 1028752
;
when 1072 =>
table_value := 1033248
;
when 1073 =>
table_value := 1036832
;
when 1074 =>
table_value := 1039376
;
when 1075 =>
table_value := 1041088
;
when 1076 =>
table_value := 1042336
;
when 1077 =>
table_value := 1043264
;
when 1078 =>
table_value := 1044112
;
when 1079 =>
table_value := 1045344
;
when 1080 =>
table_value := 1046640
;
when 1081 =>
table_value := 1048224
;
when 1082 =>
table_value := 1232
;
when 1083 =>
table_value := 3200
;
when 1084 =>
table_value := 5792
;
when 1085 =>
table_value := 8544
;
when 1086 =>
table_value := 10928
;
when 1087 =>
table_value := 12016
;
when 1088 =>
table_value := 11792
;
when 1089 =>
table_value := 10320
;
when 1090 =>
table_value := 8816
;
when 1091 =>
table_value := 7680
;
when 1092 =>
table_value := 7008
;
when 1093 =>
table_value := 6560
;
when 1094 =>
table_value := 5936
;
when 1095 =>
table_value := 5280
;
when 1096 =>
table_value := 4736
;
when 1097 =>
table_value := 4432
;
when 1098 =>
table_value := 4496
;
when 1099 =>
table_value := 4992
;
when 1100 =>
table_value := 5584
;
when 1101 =>
table_value := 6544
;
when 1102 =>
table_value := 7648
;
when 1103 =>
table_value := 8800
;
when 1104 =>
table_value := 9920
;
when 1105 =>
table_value := 10928
;
when 1106 =>
table_value := 11664
;
when 1107 =>
table_value := 12256
;
when 1108 =>
table_value := 12800
;
when 1109 =>
table_value := 13360
;
when 1110 =>
table_value := 13568
;
when 1111 =>
table_value := 13712
;
when 1112 =>
table_value := 13824
;
when 1113 =>
table_value := 14208
;
when 1114 =>
table_value := 14464
;
when 1115 =>
table_value := 14720
;
when 1116 =>
table_value := 14928
;
when 1117 =>
table_value := 15040
;
when 1118 =>
table_value := 14880
;
when 1119 =>
table_value := 14384
;
when 1120 =>
table_value := 13840
;
when 1121 =>
table_value := 13488
;
when 1122 =>
table_value := 13296
;
when 1123 =>
table_value := 13552
;
when 1124 =>
table_value := 14080
;
when 1125 =>
table_value := 14736
;
when 1126 =>
table_value := 15664
;
when 1127 =>
table_value := 16752
;
when 1128 =>
table_value := 17920
;
when 1129 =>
table_value := 18960
;
when 1130 =>
table_value := 19616
;
when 1131 =>
table_value := 19872
;
when 1132 =>
table_value := 19472
;
when 1133 =>
table_value := 18912
;
when 1134 =>
table_value := 18368
;
when 1135 =>
table_value := 18320
;
when 1136 =>
table_value := 18512
;
when 1137 =>
table_value := 18480
;
when 1138 =>
table_value := 18208
;
when 1139 =>
table_value := 17664
;
when 1140 =>
table_value := 17344
;
when 1141 =>
table_value := 17552
;
when 1142 =>
table_value := 18016
;
when 1143 =>
table_value := 18400
;
when 1144 =>
table_value := 18608
;
when 1145 =>
table_value := 18576
;
when 1146 =>
table_value := 18848
;
when 1147 =>
table_value := 19424
;
when 1148 =>
table_value := 20528
;
when 1149 =>
table_value := 21376
;
when 1150 =>
table_value := 21808
;
when 1151 =>
table_value := 21360
;
when 1152 =>
table_value := 20624
;
when 1153 =>
table_value := 20464
;
when 1154 =>
table_value := 21264
;
when 1155 =>
table_value := 22704
;
when 1156 =>
table_value := 24160
;
when 1157 =>
table_value := 24960
;
when 1158 =>
table_value := 25072
;
when 1159 =>
table_value := 25056
;
when 1160 =>
table_value := 25792
;
when 1161 =>
table_value := 27152
;
when 1162 =>
table_value := 29072
;
when 1163 =>
table_value := 30832
;
when 1164 =>
table_value := 32096
;
when 1165 =>
table_value := 33200
;
when 1166 =>
table_value := 34560
;
when 1167 =>
table_value := 36640
;
when 1168 =>
table_value := 38720
;
when 1169 =>
table_value := 40576
;
when 1170 =>
table_value := 41408
;
when 1171 =>
table_value := 41344
;
when 1172 =>
table_value := 40544
;
when 1173 =>
table_value := 39776
;
when 1174 =>
table_value := 39264
;
when 1175 =>
table_value := 39152
;
when 1176 =>
table_value := 38944
;
when 1177 =>
table_value := 38320
;
when 1178 =>
table_value := 37072
;
when 1179 =>
table_value := 35392
;
when 1180 =>
table_value := 33632
;
when 1181 =>
table_value := 32320
;
when 1182 =>
table_value := 31408
;
when 1183 =>
table_value := 30528
;
when 1184 =>
table_value := 29504
;
when 1185 =>
table_value := 28464
;
when 1186 =>
table_value := 27296
;
when 1187 =>
table_value := 25888
;
when 1188 =>
table_value := 24256
;
when 1189 =>
table_value := 22560
;
when 1190 =>
table_value := 21328
;
when 1191 =>
table_value := 20752
;
when 1192 =>
table_value := 20576
;
when 1193 =>
table_value := 20176
;
when 1194 =>
table_value := 19040
;
when 1195 =>
table_value := 17520
;
when 1196 =>
table_value := 16096
;
when 1197 =>
table_value := 15008
;
when 1198 =>
table_value := 14448
;
when 1199 =>
table_value := 14112
;
when 1200 =>
table_value := 13488
;
when 1201 =>
table_value := 12704
;
when 1202 =>
table_value := 11920
;
when 1203 =>
table_value := 11264
;
when 1204 =>
table_value := 10928
;
when 1205 =>
table_value := 10496
;
when 1206 =>
table_value := 9936
;
when 1207 =>
table_value := 8960
;
when 1208 =>
table_value := 7776
;
when 1209 =>
table_value := 6560
;
when 1210 =>
table_value := 5712
;
when 1211 =>
table_value := 5552
;
when 1212 =>
table_value := 5920
;
when 1213 =>
table_value := 6864
;
when 1214 =>
table_value := 8144
;
when 1215 =>
table_value := 9456
;
when 1216 =>
table_value := 10832
;
when 1217 =>
table_value := 12128
;
when 1218 =>
table_value := 13184
;
when 1219 =>
table_value := 13744
;
when 1220 =>
table_value := 13664
;
when 1221 =>
table_value := 12944
;
when 1222 =>
table_value := 12048
;
when 1223 =>
table_value := 11248
;
when 1224 =>
table_value := 10352
;
when 1225 =>
table_value := 9456
;
when 1226 =>
table_value := 8400
;
when 1227 =>
table_value := 7424
;
when 1228 =>
table_value := 6816
;
when 1229 =>
table_value := 6240
;
when 1230 =>
table_value := 6000
;
when 1231 =>
table_value := 5984
;
when 1232 =>
table_value := 6176
;
when 1233 =>
table_value := 6688
;
when 1234 =>
table_value := 7712
;
when 1235 =>
table_value := 8816
;
when 1236 =>
table_value := 10112
;
when 1237 =>
table_value := 11632
;
when 1238 =>
table_value := 13008
;
when 1239 =>
table_value := 14128
;
when 1240 =>
table_value := 14832
;
when 1241 =>
table_value := 14912
;
when 1242 =>
table_value := 14720
;
when 1243 =>
table_value := 14336
;
when 1244 =>
table_value := 13856
;
when 1245 =>
table_value := 13168
;
when 1246 =>
table_value := 12000
;
when 1247 =>
table_value := 10464
;
when 1248 =>
table_value := 8848
;
when 1249 =>
table_value := 8016
;
when 1250 =>
table_value := 8032
;
when 1251 =>
table_value := 8912
;
when 1252 =>
table_value := 10112
;
when 1253 =>
table_value := 11376
;
when 1254 =>
table_value := 12544
;
when 1255 =>
table_value := 13712
;
when 1256 =>
table_value := 14704
;
when 1257 =>
table_value := 15568
;
when 1258 =>
table_value := 16336
;
when 1259 =>
table_value := 17024
;
when 1260 =>
table_value := 17440
;
when 1261 =>
table_value := 18032
;
when 1262 =>
table_value := 18624
;
when 1263 =>
table_value := 18896
;
when 1264 =>
table_value := 18960
;
when 1265 =>
table_value := 18608
;
when 1266 =>
table_value := 17920
;
when 1267 =>
table_value := 17024
;
when 1268 =>
table_value := 16272
;
when 1269 =>
table_value := 15696
;
when 1270 =>
table_value := 15264
;
when 1271 =>
table_value := 14944
;
when 1272 =>
table_value := 14416
;
when 1273 =>
table_value := 13600
;
when 1274 =>
table_value := 12688
;
when 1275 =>
table_value := 12032
;
when 1276 =>
table_value := 11968
;
when 1277 =>
table_value := 12176
;
when 1278 =>
table_value := 12592
;
when 1279 =>
table_value := 12848
;
when 1280 =>
table_value := 13056
;
when 1281 =>
table_value := 13312
;
when 1282 =>
table_value := 13632
;
when 1283 =>
table_value := 14176
;
when 1284 =>
table_value := 14688
;
when 1285 =>
table_value := 15152
;
when 1286 =>
table_value := 15360
;
when 1287 =>
table_value := 15424
;
when 1288 =>
table_value := 15376
;
when 1289 =>
table_value := 15456
;
when 1290 =>
table_value := 15744
;
when 1291 =>
table_value := 16144
;
when 1292 =>
table_value := 16640
;
when 1293 =>
table_value := 17216
;
when 1294 =>
table_value := 17680
;
when 1295 =>
table_value := 17792
;
when 1296 =>
table_value := 17392
;
when 1297 =>
table_value := 16384
;
when 1298 =>
table_value := 14816
;
when 1299 =>
table_value := 12976
;
when 1300 =>
table_value := 11008
;
when 1301 =>
table_value := 9280
;
when 1302 =>
table_value := 8080
;
when 1303 =>
table_value := 7696
;
when 1304 =>
table_value := 8208
;
when 1305 =>
table_value := 9424
;
when 1306 =>
table_value := 11008
;
when 1307 =>
table_value := 12608
;
when 1308 =>
table_value := 14080
;
when 1309 =>
table_value := 15504
;
when 1310 =>
table_value := 16960
;
when 1311 =>
table_value := 18560
;
when 1312 =>
table_value := 19920
;
when 1313 =>
table_value := 20640
;
when 1314 =>
table_value := 20560
;
when 1315 =>
table_value := 19856
;
when 1316 =>
table_value := 18896
;
when 1317 =>
table_value := 18176
;
when 1318 =>
table_value := 17696
;
when 1319 =>
table_value := 17280
;
when 1320 =>
table_value := 16752
;
when 1321 =>
table_value := 16432
;
when 1322 =>
table_value := 16624
;
when 1323 =>
table_value := 17536
;
when 1324 =>
table_value := 19104
;
when 1325 =>
table_value := 20896
;
when 1326 =>
table_value := 22640
;
when 1327 =>
table_value := 24048
;
when 1328 =>
table_value := 25136
;
when 1329 =>
table_value := 25952
;
when 1330 =>
table_value := 26512
;
when 1331 =>
table_value := 26976
;
when 1332 =>
table_value := 27424
;
when 1333 =>
table_value := 27808
;
when 1334 =>
table_value := 28368
;
when 1335 =>
table_value := 29152
;
when 1336 =>
table_value := 30240
;
when 1337 =>
table_value := 31312
;
when 1338 =>
table_value := 32240
;
when 1339 =>
table_value := 32752
;
when 1340 =>
table_value := 32720
;
when 1341 =>
table_value := 32464
;
when 1342 =>
table_value := 31872
;
when 1343 =>
table_value := 31008
;
when 1344 =>
table_value := 29872
;
when 1345 =>
table_value := 28480
;
when 1346 =>
table_value := 26848
;
when 1347 =>
table_value := 25104
;
when 1348 =>
table_value := 23312
;
when 1349 =>
table_value := 21600
;
when 1350 =>
table_value := 19952
;
when 1351 =>
table_value := 18448
;
when 1352 =>
table_value := 17248
;
when 1353 =>
table_value := 16416
;
when 1354 =>
table_value := 15968
;
when 1355 =>
table_value := 15856
;
when 1356 =>
table_value := 16064
;
when 1357 =>
table_value := 16496
;
when 1358 =>
table_value := 17072
;
when 1359 =>
table_value := 17808
;
when 1360 =>
table_value := 18512
;
when 1361 =>
table_value := 19184
;
when 1362 =>
table_value := 19824
;
when 1363 =>
table_value := 20416
;
when 1364 =>
table_value := 20832
;
when 1365 =>
table_value := 21152
;
when 1366 =>
table_value := 21280
;
when 1367 =>
table_value := 21440
;
when 1368 =>
table_value := 21584
;
when 1369 =>
table_value := 21840
;
when 1370 =>
table_value := 21920
;
when 1371 =>
table_value := 22032
;
when 1372 =>
table_value := 21920
;
when 1373 =>
table_value := 21568
;
when 1374 =>
table_value := 20736
;
when 1375 =>
table_value := 19408
;
when 1376 =>
table_value := 17728
;
when 1377 =>
table_value := 16048
;
when 1378 =>
table_value := 14592
;
when 1379 =>
table_value := 13440
;
when 1380 =>
table_value := 12592
;
when 1381 =>
table_value := 11520
;
when 1382 =>
table_value := 10208
;
when 1383 =>
table_value := 8480
;
when 1384 =>
table_value := 6656
;
when 1385 =>
table_value := 5072
;
when 1386 =>
table_value := 4000
;
when 1387 =>
table_value := 3552
;
when 1388 =>
table_value := 3520
;
when 1389 =>
table_value := 3632
;
when 1390 =>
table_value := 3552
;
when 1391 =>
table_value := 3136
;
when 1392 =>
table_value := 2640
;
when 1393 =>
table_value := 2192
;
when 1394 =>
table_value := 1840
;
when 1395 =>
table_value := 1680
;
when 1396 =>
table_value := 1664
;
when 1397 =>
table_value := 1904
;
when 1398 =>
table_value := 2528
;
when 1399 =>
table_value := 3504
;
when 1400 =>
table_value := 4848
;
when 1401 =>
table_value := 6336
;
when 1402 =>
table_value := 7840
;
when 1403 =>
table_value := 9248
;
when 1404 =>
table_value := 10560
;
when 1405 =>
table_value := 11728
;
when 1406 =>
table_value := 12832
;
when 1407 =>
table_value := 13776
;
when 1408 =>
table_value := 14528
;
when 1409 =>
table_value := 14928
;
when 1410 =>
table_value := 15072
;
when 1411 =>
table_value := 15216
;
when 1412 =>
table_value := 15472
;
when 1413 =>
table_value := 15952
;
when 1414 =>
table_value := 16448
;
when 1415 =>
table_value := 16848
;
when 1416 =>
table_value := 17104
;
when 1417 =>
table_value := 17088
;
when 1418 =>
table_value := 16816
;
when 1419 =>
table_value := 16272
;
when 1420 =>
table_value := 15568
;
when 1421 =>
table_value := 14832
;
when 1422 =>
table_value := 13936
;
when 1423 =>
table_value := 12912
;
when 1424 =>
table_value := 11792
;
when 1425 =>
table_value := 10640
;
when 1426 =>
table_value := 9360
;
when 1427 =>
table_value := 8016
;
when 1428 =>
table_value := 6464
;
when 1429 =>
table_value := 4656
;
when 1430 =>
table_value := 2688
;
when 1431 =>
table_value := 624
;
when 1432 =>
table_value := 1047232
;
when 1433 =>
table_value := 1045360
;
when 1434 =>
table_value := 1043440
;
when 1435 =>
table_value := 1041600
;
when 1436 =>
table_value := 1039616
;
when 1437 =>
table_value := 1037600
;
when 1438 =>
table_value := 1035696
;
when 1439 =>
table_value := 1034320
;
when 1440 =>
table_value := 1033552
;
when 1441 =>
table_value := 1033264
;
when 1442 =>
table_value := 1033376
;
when 1443 =>
table_value := 1033536
;
when 1444 =>
table_value := 1033648
;
when 1445 =>
table_value := 1033824
;
when 1446 =>
table_value := 1034304
;
when 1447 =>
table_value := 1035072
;
when 1448 =>
table_value := 1035920
;
when 1449 =>
table_value := 1036624
;
when 1450 =>
table_value := 1036864
;
when 1451 =>
table_value := 1036752
;
when 1452 =>
table_value := 1036336
;
when 1453 =>
table_value := 1035840
;
when 1454 =>
table_value := 1035280
;
when 1455 =>
table_value := 1034576
;
when 1456 =>
table_value := 1033504
;
when 1457 =>
table_value := 1032208
;
when 1458 =>
table_value := 1031120
;
when 1459 =>
table_value := 1030368
;
when 1460 =>
table_value := 1030048
;
when 1461 =>
table_value := 1030064
;
when 1462 =>
table_value := 1030080
;
when 1463 =>
table_value := 1030080
;
when 1464 =>
table_value := 1030080
;
when 1465 =>
table_value := 1030336
;
when 1466 =>
table_value := 1030944
;
when 1467 =>
table_value := 1031760
;
when 1468 =>
table_value := 1032496
;
when 1469 =>
table_value := 1033152
;
when 1470 =>
table_value := 1033776
;
when 1471 =>
table_value := 1034336
;
when 1472 =>
table_value := 1034848
;
when 1473 =>
table_value := 1035216
;
when 1474 =>
table_value := 1035424
;
when 1475 =>
table_value := 1035424
;
when 1476 =>
table_value := 1035536
;
when 1477 =>
table_value := 1035856
;
when 1478 =>
table_value := 1036304
;
when 1479 =>
table_value := 1036752
;
when 1480 =>
table_value := 1036864
;
when 1481 =>
table_value := 1036704
;
when 1482 =>
table_value := 1036352
;
when 1483 =>
table_value := 1036208
;
when 1484 =>
table_value := 1036288
;
when 1485 =>
table_value := 1036528
;
when 1486 =>
table_value := 1036736
;
when 1487 =>
table_value := 1036944
;
when 1488 =>
table_value := 1037216
;
when 1489 =>
table_value := 1037712
;
when 1490 =>
table_value := 1038288
;
when 1491 =>
table_value := 1038896
;
when 1492 =>
table_value := 1039424
;
when 1493 =>
table_value := 1039840
;
when 1494 =>
table_value := 1040320
;
when 1495 =>
table_value := 1040800
;
when 1496 =>
table_value := 1041488
;
when 1497 =>
table_value := 1042320
;
when 1498 =>
table_value := 1043296
;
when 1499 =>
table_value := 1044160
;
when 1500 =>
table_value := 1044768
;
when 1501 =>
table_value := 1045152
;
when 1502 =>
table_value := 1045424
;
when 1503 =>
table_value := 1045744
;
when 1504 =>
table_value := 1046032
;
when 1505 =>
table_value := 1046208
;
when 1506 =>
table_value := 1046240
;
when 1507 =>
table_value := 1046032
;
when 1508 =>
table_value := 1045824
;
when 1509 =>
table_value := 1045568
;
when 1510 =>
table_value := 1045280
;
when 1511 =>
table_value := 1044992
;
when 1512 =>
table_value := 1044576
;
when 1513 =>
table_value := 1044128
;
when 1514 =>
table_value := 1043648
;
when 1515 =>
table_value := 1043264
;
when 1516 =>
table_value := 1043024
;
when 1517 =>
table_value := 1042752
;
when 1518 =>
table_value := 1042496
;
when 1519 =>
table_value := 1042112
;
when 1520 =>
table_value := 1041776
;
when 1521 =>
table_value := 1041488
;
when 1522 =>
table_value := 1041312
;
when 1523 =>
table_value := 1041088
;
when 1524 =>
table_value := 1040752
;
when 1525 =>
table_value := 1040256
;
when 1526 =>
table_value := 1039440
;
when 1527 =>
table_value := 1038432
;
when 1528 =>
table_value := 1037328
;
when 1529 =>
table_value := 1036032
;
when 1530 =>
table_value := 1034688
;
when 1531 =>
table_value := 1033280
;
when 1532 =>
table_value := 1031952
;
when 1533 =>
table_value := 1030688
;
when 1534 =>
table_value := 1029600
;
when 1535 =>
table_value := 1028768
;
when 1536 =>
table_value := 1028080
;
when 1537 =>
table_value := 1027584
;
when 1538 =>
table_value := 1027232
;
when 1539 =>
table_value := 1027120
;
when 1540 =>
table_value := 1027456
;
when 1541 =>
table_value := 1028192
;
when 1542 =>
table_value := 1029200
;
when 1543 =>
table_value := 1030304
;
when 1544 =>
table_value := 1031264
;
when 1545 =>
table_value := 1032016
;
when 1546 =>
table_value := 1032352
;
when 1547 =>
table_value := 1032336
;
when 1548 =>
table_value := 1032128
;
when 1549 =>
table_value := 1031904
;
when 1550 =>
table_value := 1031776
;
when 1551 =>
table_value := 1031680
;
when 1552 =>
table_value := 1031456
;
when 1553 =>
table_value := 1031168
;
when 1554 =>
table_value := 1030816
;
when 1555 =>
table_value := 1030448
;
when 1556 =>
table_value := 1030016
;
when 1557 =>
table_value := 1029504
;
when 1558 =>
table_value := 1029040
;
when 1559 =>
table_value := 1028784
;
when 1560 =>
table_value := 1028720
;
when 1561 =>
table_value := 1028960
;
when 1562 =>
table_value := 1029408
;
when 1563 =>
table_value := 1029776
;
when 1564 =>
table_value := 1030016
;
when 1565 =>
table_value := 1030160
;
when 1566 =>
table_value := 1030416
;
when 1567 =>
table_value := 1030720
;
when 1568 =>
table_value := 1031056
;
when 1569 =>
table_value := 1031408
;
when 1570 =>
table_value := 1031584
;
when 1571 =>
table_value := 1031728
;
when 1572 =>
table_value := 1031808
;
when 1573 =>
table_value := 1031936
;
when 1574 =>
table_value := 1032112
;
when 1575 =>
table_value := 1032240
;
when 1576 =>
table_value := 1032192
;
when 1577 =>
table_value := 1032016
;
when 1578 =>
table_value := 1031728
;
when 1579 =>
table_value := 1031520
;
when 1580 =>
table_value := 1031504
;
when 1581 =>
table_value := 1031600
;
when 1582 =>
table_value := 1031760
;
when 1583 =>
table_value := 1031792
;
when 1584 =>
table_value := 1031552
;
when 1585 =>
table_value := 1031120
;
when 1586 =>
table_value := 1030464
;
when 1587 =>
table_value := 1029696
;
when 1588 =>
table_value := 1029008
;
when 1589 =>
table_value := 1028416
;
when 1590 =>
table_value := 1027920
;
when 1591 =>
table_value := 1027568
;
when 1592 =>
table_value := 1027408
;
when 1593 =>
table_value := 1027376
;
when 1594 =>
table_value := 1027488
;
when 1595 =>
table_value := 1027744
;
when 1596 =>
table_value := 1028032
;
when 1597 =>
table_value := 1028352
;
when 1598 =>
table_value := 1028688
;
when 1599 =>
table_value := 1029008
;
when 1600 =>
table_value := 1029264
;
when 1601 =>
table_value := 1029472
;
when 1602 =>
table_value := 1029600
;
when 1603 =>
table_value := 1029664
;
when 1604 =>
table_value := 1029664
;
when 1605 =>
table_value := 1029648
;
when 1606 =>
table_value := 1029504
;
when 1607 =>
table_value := 1029264
;
when 1608 =>
table_value := 1029040
;
when 1609 =>
table_value := 1028784
;
when 1610 =>
table_value := 1028624
;
when 1611 =>
table_value := 1028480
;
when 1612 =>
table_value := 1028512
;
when 1613 =>
table_value := 1028640
;
when 1614 =>
table_value := 1028704
;
when 1615 =>
table_value := 1028864
;
when 1616 =>
table_value := 1028896
;
when 1617 =>
table_value := 1028736
;
when 1618 =>
table_value := 1028352
;
when 1619 =>
table_value := 1027856
;
when 1620 =>
table_value := 1027248
;
when 1621 =>
table_value := 1026592
;
when 1622 =>
table_value := 1026016
;
when 1623 =>
table_value := 1025584
;
when 1624 =>
table_value := 1025136
;
when 1625 =>
table_value := 1024752
;
when 1626 =>
table_value := 1024400
;
when 1627 =>
table_value := 1024016
;
when 1628 =>
table_value := 1023696
;
when 1629 =>
table_value := 1023264
;
when 1630 =>
table_value := 1022880
;
when 1631 =>
table_value := 1022512
;
when 1632 =>
table_value := 1022064
;
when 1633 =>
table_value := 1021632
;
when 1634 =>
table_value := 1021392
;
when 1635 =>
table_value := 1021200
;
when 1636 =>
table_value := 1021264
;
when 1637 =>
table_value := 1021472
;
when 1638 =>
table_value := 1021648
;
when 1639 =>
table_value := 1021824
;
when 1640 =>
table_value := 1021808
;
when 1641 =>
table_value := 1021552
;
when 1642 =>
table_value := 1021168
;
when 1643 =>
table_value := 1020768
;
when 1644 =>
table_value := 1020432
;
when 1645 =>
table_value := 1020336
;
when 1646 =>
table_value := 1020256
;
when 1647 =>
table_value := 1020128
;
when 1648 =>
table_value := 1019776
;
when 1649 =>
table_value := 1019232
;
when 1650 =>
table_value := 1018608
;
when 1651 =>
table_value := 1018144
;
when 1652 =>
table_value := 1017904
;
when 1653 =>
table_value := 1018064
;
when 1654 =>
table_value := 1018288
;
when 1655 =>
table_value := 1018512
;
when 1656 =>
table_value := 1018736
;
when 1657 =>
table_value := 1018736
;
when 1658 =>
table_value := 1018640
;
when 1659 =>
table_value := 1018368
;
when 1660 =>
table_value := 1017920
;
when 1661 =>
table_value := 1017232
;
when 1662 =>
table_value := 1016368
;
when 1663 =>
table_value := 1015424
;
when 1664 =>
table_value := 1014560
;
when 1665 =>
table_value := 1013824
;
when 1666 =>
table_value := 1013248
;
when 1667 =>
table_value := 1012864
;
when 1668 =>
table_value := 1012800
;
when 1669 =>
table_value := 1012896
;
when 1670 =>
table_value := 1013184
;
when 1671 =>
table_value := 1013424
;
when 1672 =>
table_value := 1013568
;
when 1673 =>
table_value := 1013600
;
when 1674 =>
table_value := 1013472
;
when 1675 =>
table_value := 1013296
;
when 1676 =>
table_value := 1013120
;
when 1677 =>
table_value := 1013040
;
when 1678 =>
table_value := 1012992
;
when 1679 =>
table_value := 1012912
;
when 1680 =>
table_value := 1012736
;
when 1681 =>
table_value := 1012368
;
when 1682 =>
table_value := 1011872
;
when 1683 =>
table_value := 1011408
;
when 1684 =>
table_value := 1010976
;
when 1685 =>
table_value := 1010720
;
when 1686 =>
table_value := 1010640
;
when 1687 =>
table_value := 1010896
;
when 1688 =>
table_value := 1011424
;
when 1689 =>
table_value := 1012160
;
when 1690 =>
table_value := 1012928
;
when 1691 =>
table_value := 1013568
;
when 1692 =>
table_value := 1014064
;
when 1693 =>
table_value := 1014528
;
when 1694 =>
table_value := 1015104
;
when 1695 =>
table_value := 1015824
;
when 1696 =>
table_value := 1016624
;
when 1697 =>
table_value := 1017264
;
when 1698 =>
table_value := 1017728
;
when 1699 =>
table_value := 1018144
;
when 1700 =>
table_value := 1018544
;
when 1701 =>
table_value := 1018688
;
when 1702 =>
table_value := 1018704
;
when 1703 =>
table_value := 1018480
;
when 1704 =>
table_value := 1018032
;
when 1705 =>
table_value := 1017664
;
when 1706 =>
table_value := 1017456
;
when 1707 =>
table_value := 1017472
;
when 1708 =>
table_value := 1017680
;
when 1709 =>
table_value := 1017840
;
when 1710 =>
table_value := 1017840
;
when 1711 =>
table_value := 1017568
;
when 1712 =>
table_value := 1017024
;
when 1713 =>
table_value := 1016272
;
when 1714 =>
table_value := 1015376
;
when 1715 =>
table_value := 1014288
;
when 1716 =>
table_value := 1013248
;
when 1717 =>
table_value := 1012272
;
when 1718 =>
table_value := 1011472
;
when 1719 =>
table_value := 1011024
;
when 1720 =>
table_value := 1010864
;
when 1721 =>
table_value := 1010944
;
when 1722 =>
table_value := 1011376
;
when 1723 =>
table_value := 1011856
;
when 1724 =>
table_value := 1012320
;
when 1725 =>
table_value := 1012736
;
when 1726 =>
table_value := 1013280
;
when 1727 =>
table_value := 1014096
;
when 1728 =>
table_value := 1015104
;
when 1729 =>
table_value := 1016208
;
when 1730 =>
table_value := 1017168
;
when 1731 =>
table_value := 1017712
;
when 1732 =>
table_value := 1017664
;
when 1733 =>
table_value := 1016976
;
when 1734 =>
table_value := 1015840
;
when 1735 =>
table_value := 1014528
;
when 1736 =>
table_value := 1013296
;
when 1737 =>
table_value := 1012560
;
when 1738 =>
table_value := 1012160
;
when 1739 =>
table_value := 1012048
;
when 1740 =>
table_value := 1011968
;
when 1741 =>
table_value := 1012176
;
when 1742 =>
table_value := 1012496
;
when 1743 =>
table_value := 1012992
;
when 1744 =>
table_value := 1013520
;
when 1745 =>
table_value := 1014016
;
when 1746 =>
table_value := 1014416
;
when 1747 =>
table_value := 1014640
;
when 1748 =>
table_value := 1014752
;
when 1749 =>
table_value := 1014816
;
when 1750 =>
table_value := 1014944
;
when 1751 =>
table_value := 1015072
;
when 1752 =>
table_value := 1015088
;
when 1753 =>
table_value := 1015024
;
when 1754 =>
table_value := 1014976
;
when 1755 =>
table_value := 1014912
;
when 1756 =>
table_value := 1015088
;
when 1757 =>
table_value := 1015280
;
when 1758 =>
table_value := 1015520
;
when 1759 =>
table_value := 1015952
;
when 1760 =>
table_value := 1016384
;
when 1761 =>
table_value := 1016816
;
when 1762 =>
table_value := 1017200
;
when 1763 =>
table_value := 1017440
;
when 1764 =>
table_value := 1017424
;
when 1765 =>
table_value := 1017216
;
when 1766 =>
table_value := 1016976
;
when 1767 =>
table_value := 1016720
;
when 1768 =>
table_value := 1016560
;
when 1769 =>
table_value := 1016800
;
when 1770 =>
table_value := 1017136
;
when 1771 =>
table_value := 1017600
;
when 1772 =>
table_value := 1018112
;
when 1773 =>
table_value := 1018656
;
when 1774 =>
table_value := 1019264
;
when 1775 =>
table_value := 1019696
;
when 1776 =>
table_value := 1019952
;
when 1777 =>
table_value := 1019968
;
when 1778 =>
table_value := 1019824
;
when 1779 =>
table_value := 1019472
;
when 1780 =>
table_value := 1018960
;
when 1781 =>
table_value := 1018496
;
when 1782 =>
table_value := 1018000
;
when 1783 =>
table_value := 1017840
;
when 1784 =>
table_value := 1017936
;
when 1785 =>
table_value := 1018192
;
when 1786 =>
table_value := 1018624
;
when 1787 =>
table_value := 1019152
;
when 1788 =>
table_value := 1019600
;
when 1789 =>
table_value := 1020000
;
when 1790 =>
table_value := 1020160
;
when 1791 =>
table_value := 1020144
;
when 1792 =>
table_value := 1019920
;
when 1793 =>
table_value := 1019728
;
when 1794 =>
table_value := 1019584
;
when 1795 =>
table_value := 1019648
;
when 1796 =>
table_value := 1019904
;
when 1797 =>
table_value := 1020064
;
when 1798 =>
table_value := 1020112
;
when 1799 =>
table_value := 1020128
;
when 1800 =>
table_value := 1020160
;
when 1801 =>
table_value := 1020144
;
when 1802 =>
table_value := 1020320
;
when 1803 =>
table_value := 1020480
;
when 1804 =>
table_value := 1020608
;
when 1805 =>
table_value := 1021104
;
when 1806 =>
table_value := 1021712
;
when 1807 =>
table_value := 1022336
;
when 1808 =>
table_value := 1022928
;
when 1809 =>
table_value := 1023392
;
when 1810 =>
table_value := 1023792
;
when 1811 =>
table_value := 1024288
;
when 1812 =>
table_value := 1024912
;
when 1813 =>
table_value := 1025712
;
when 1814 =>
table_value := 1026640
;
when 1815 =>
table_value := 1027712
;
when 1816 =>
table_value := 1028976
;
when 1817 =>
table_value := 1030448
;
when 1818 =>
table_value := 1032016
;
when 1819 =>
table_value := 1033616
;
when 1820 =>
table_value := 1035216
;
when 1821 =>
table_value := 1036640
;
when 1822 =>
table_value := 1037968
;
when 1823 =>
table_value := 1038992
;
when 1824 =>
table_value := 1039760
;
when 1825 =>
table_value := 1040112
;
when 1826 =>
table_value := 1040192
;
when 1827 =>
table_value := 1040000
;
when 1828 =>
table_value := 1039760
;
when 1829 =>
table_value := 1039600
;
when 1830 =>
table_value := 1039456
;
when 1831 =>
table_value := 1039488
;
when 1832 =>
table_value := 1039584
;
when 1833 =>
table_value := 1039696
;
when 1834 =>
table_value := 1039840
;
when 1835 =>
table_value := 1040016
;
when 1836 =>
table_value := 1040384
;
when 1837 =>
table_value := 1040928
;
when 1838 =>
table_value := 1041552
;
when 1839 =>
table_value := 1042240
;
when 1840 =>
table_value := 1042848
;
when 1841 =>
table_value := 1043312
;
when 1842 =>
table_value := 1043760
;
when 1843 =>
table_value := 1044000
;
when 1844 =>
table_value := 1044224
;
when 1845 =>
table_value := 1044336
;
when 1846 =>
table_value := 1044288
;
when 1847 =>
table_value := 1044128
;
when 1848 =>
table_value := 1043792
;
when 1849 =>
table_value := 1043360
;
when 1850 =>
table_value := 1042912
;
when 1851 =>
table_value := 1042496
;
when 1852 =>
table_value := 1042192
;
when 1853 =>
table_value := 1042160
;
when 1854 =>
table_value := 1042480
;
when 1855 =>
table_value := 1043056
;
when 1856 =>
table_value := 1043776
;
when 1857 =>
table_value := 1044656
;
when 1858 =>
table_value := 1045792
;
when 1859 =>
table_value := 1047376
;
when 1860 =>
table_value := 720
;
when 1861 =>
table_value := 2928
;
when 1862 =>
table_value := 5168
;
when 1863 =>
table_value := 7168
;
when 1864 =>
table_value := 8704
;
when 1865 =>
table_value := 9776
;
when 1866 =>
table_value := 10608
;
when 1867 =>
table_value := 11280
;
when 1868 =>
table_value := 11872
;
when 1869 =>
table_value := 12288
;
when 1870 =>
table_value := 12592
;
when 1871 =>
table_value := 12720
;
when 1872 =>
table_value := 12640
;
when 1873 =>
table_value := 12512
;
when 1874 =>
table_value := 12464
;
when 1875 =>
table_value := 12368
;
when 1876 =>
table_value := 12112
;
when 1877 =>
table_value := 11552
;
when 1878 =>
table_value := 10896
;
when 1879 =>
table_value := 10368
;
when 1880 =>
table_value := 10032
;
when 1881 =>
table_value := 9904
;
when 1882 =>
table_value := 9952
;
when 1883 =>
table_value := 10032
;
when 1884 =>
table_value := 10272
;
when 1885 =>
table_value := 10464
;
when 1886 =>
table_value := 10704
;
when 1887 =>
table_value := 10960
;
when 1888 =>
table_value := 11360
;
when 1889 =>
table_value := 12064
;
when 1890 =>
table_value := 13312
;
when 1891 =>
table_value := 14960
;
when 1892 =>
table_value := 16704
;
when 1893 =>
table_value := 18320
;
when 1894 =>
table_value := 19568
;
when 1895 =>
table_value := 20560
;
when 1896 =>
table_value := 21424
;
when 1897 =>
table_value := 22288
;
when 1898 =>
table_value := 23072
;
when 1899 =>
table_value := 23824
;
when 1900 =>
table_value := 24464
;
when 1901 =>
table_value := 24928
;
when 1902 =>
table_value := 25424
;
when 1903 =>
table_value := 26064
;
when 1904 =>
table_value := 26848
;
when 1905 =>
table_value := 27888
;
when 1906 =>
table_value := 28912
;
when 1907 =>
table_value := 29888
;
when 1908 =>
table_value := 30704
;
when 1909 =>
table_value := 31392
;
when 1910 =>
table_value := 32192
;
when 1911 =>
table_value := 33168
;
when 1912 =>
table_value := 34144
;
when 1913 =>
table_value := 35088
;
when 1914 =>
table_value := 35920
;
when 1915 =>
table_value := 36736
;
when 1916 =>
table_value := 37504
;
when 1917 =>
table_value := 38336
;
when 1918 =>
table_value := 39136
;
when 1919 =>
table_value := 39888
;
when 1920 =>
table_value := 40592
;
when 1921 =>
table_value := 41280
;
when 1922 =>
table_value := 41936
;
when 1923 =>
table_value := 42496
;
when 1924 =>
table_value := 42800
;
when 1925 =>
table_value := 42880
;
when 1926 =>
table_value := 42848
;
when 1927 =>
table_value := 42640
;
when 1928 =>
table_value := 42368
;
when 1929 =>
table_value := 42032
;
when 1930 =>
table_value := 41520
;
when 1931 =>
table_value := 40864
;
when 1932 =>
table_value := 40016
;
when 1933 =>
table_value := 39040
;
when 1934 =>
table_value := 38000
;
when 1935 =>
table_value := 36864
;
when 1936 =>
table_value := 35728
;
when 1937 =>
table_value := 34480
;
when 1938 =>
table_value := 33328
;
when 1939 =>
table_value := 32304
;
when 1940 =>
table_value := 31504
;
when 1941 =>
table_value := 30752
;
when 1942 =>
table_value := 30128
;
when 1943 =>
table_value := 29408
;
when 1944 =>
table_value := 28736
;
when 1945 =>
table_value := 28160
;
when 1946 =>
table_value := 27744
;
when 1947 =>
table_value := 27616
;
when 1948 =>
table_value := 27728
;
when 1949 =>
table_value := 28000
;
when 1950 =>
table_value := 28368
;
when 1951 =>
table_value := 28672
;
when 1952 =>
table_value := 28896
;
when 1953 =>
table_value := 29216
;
when 1954 =>
table_value := 29424
;
when 1955 =>
table_value := 29472
;
when 1956 =>
table_value := 29280
;
when 1957 =>
table_value := 28848
;
when 1958 =>
table_value := 28272
;
when 1959 =>
table_value := 27712
;
when 1960 =>
table_value := 27232
;
when 1961 =>
table_value := 26768
;
when 1962 =>
table_value := 26384
;
when 1963 =>
table_value := 26032
;
when 1964 =>
table_value := 25728
;
when 1965 =>
table_value := 25680
;
when 1966 =>
table_value := 25808
;
when 1967 =>
table_value := 26176
;
when 1968 =>
table_value := 26624
;
when 1969 =>
table_value := 27232
;
when 1970 =>
table_value := 28080
;
when 1971 =>
table_value := 29200
;
when 1972 =>
table_value := 30464
;
when 1973 =>
table_value := 31632
;
when 1974 =>
table_value := 32528
;
when 1975 =>
table_value := 33056
;
when 1976 =>
table_value := 33216
;
when 1977 =>
table_value := 32976
;
when 1978 =>
table_value := 32592
;
when 1979 =>
table_value := 32096
;
when 1980 =>
table_value := 31472
;
when 1981 =>
table_value := 30736
;
when 1982 =>
table_value := 29904
;
when 1983 =>
table_value := 28992
;
when 1984 =>
table_value := 28080
;
when 1985 =>
table_value := 27296
;
when 1986 =>
table_value := 26704
;
when 1987 =>
table_value := 26416
;
when 1988 =>
table_value := 26432
;
when 1989 =>
table_value := 26800
;
when 1990 =>
table_value := 27456
;
when 1991 =>
table_value := 28208
;
when 1992 =>
table_value := 28608
;
when 1993 =>
table_value := 28704
;
when 1994 =>
table_value := 29152
;
when 1995 =>
table_value := 29648
;
when 1996 =>
table_value := 30240
;
when 1997 =>
table_value := 30736
;
when 1998 =>
table_value := 31056
;
when 1999 =>
table_value := 31296
;
when 2000 =>
table_value := 31440
;
when 2001 =>
table_value := 31504
;
when 2002 =>
table_value := 31584
;
when 2003 =>
table_value := 31744
;
when 2004 =>
table_value := 31840
;
when 2005 =>
table_value := 31888
;
when 2006 =>
table_value := 31888
;
when 2007 =>
table_value := 31904
;
when 2008 =>
table_value := 32048
;
when 2009 =>
table_value := 32400
;
when 2010 =>
table_value := 32960
;
when 2011 =>
table_value := 33520
;
when 2012 =>
table_value := 33936
;
when 2013 =>
table_value := 34160
;
when 2014 =>
table_value := 34176
;
when 2015 =>
table_value := 34192
;
when 2016 =>
table_value := 34208
;
when 2017 =>
table_value := 34224
;
when 2018 =>
table_value := 34144
;
when 2019 =>
table_value := 33952
;
when 2020 =>
table_value := 33600
;
when 2021 =>
table_value := 33088
;
when 2022 =>
table_value := 32448
;
when 2023 =>
table_value := 31504
;
when 2024 =>
table_value := 30208
;
when 2025 =>
table_value := 28880
;
when 2026 =>
table_value := 27824
;
when 2027 =>
table_value := 26912
;
when 2028 =>
table_value := 26016
;
when 2029 =>
table_value := 24864
;
when 2030 =>
table_value := 23456
;
when 2031 =>
table_value := 22112
;
when 2032 =>
table_value := 21328
;
when 2033 =>
table_value := 21008
;
when 2034 =>
table_value := 20752
;
when 2035 =>
table_value := 20160
;
when 2036 =>
table_value := 19216
;
when 2037 =>
table_value := 18112
;
when 2038 =>
table_value := 17120
;
when 2039 =>
table_value := 16512
;
when 2040 =>
table_value := 16224
;
when 2041 =>
table_value := 16096
;
when 2042 =>
table_value := 15760
;
when 2043 =>
table_value := 15152
;
when 2044 =>
table_value := 14272
;
when 2045 =>
table_value := 13440
;
when 2046 =>
table_value := 12816
;
when 2047 =>
table_value := 12384
;
when 2048 =>
table_value := 12096
;
when 2049 =>
table_value := 11856
;
when 2050 =>
table_value := 11712
;
when 2051 =>
table_value := 11648
;
when 2052 =>
table_value := 11728
;
when 2053 =>
table_value := 11984
;
when 2054 =>
table_value := 12272
;
when 2055 =>
table_value := 12432
;
when 2056 =>
table_value := 12176
;
when 2057 =>
table_value := 11584
;
when 2058 =>
table_value := 10592
;
when 2059 =>
table_value := 9392
;
when 2060 =>
table_value := 8048
;
when 2061 =>
table_value := 6720
;
when 2062 =>
table_value := 5488
;
when 2063 =>
table_value := 4512
;
when 2064 =>
table_value := 3792
;
when 2065 =>
table_value := 3504
;
when 2066 =>
table_value := 3520
;
when 2067 =>
table_value := 3952
;
when 2068 =>
table_value := 4496
;
when 2069 =>
table_value := 5120
;
when 2070 =>
table_value := 5776
;
when 2071 =>
table_value := 6336
;
when 2072 =>
table_value := 6944
;
when 2073 =>
table_value := 7488
;
when 2074 =>
table_value := 8032
;
when 2075 =>
table_value := 8544
;
when 2076 =>
table_value := 9088
;
when 2077 =>
table_value := 9504
;
when 2078 =>
table_value := 9648
;
when 2079 =>
table_value := 9440
;
when 2080 =>
table_value := 9104
;
when 2081 =>
table_value := 8848
;
when 2082 =>
table_value := 8720
;
when 2083 =>
table_value := 8560
;
when 2084 =>
table_value := 8384
;
when 2085 =>
table_value := 8144
;
when 2086 =>
table_value := 7728
;
when 2087 =>
table_value := 7232
;
when 2088 =>
table_value := 6752
;
when 2089 =>
table_value := 6224
;
when 2090 =>
table_value := 5712
;
when 2091 =>
table_value := 5216
;
when 2092 =>
table_value := 4640
;
when 2093 =>
table_value := 4016
;
when 2094 =>
table_value := 3440
;
when 2095 =>
table_value := 3056
;
when 2096 =>
table_value := 3120
;
when 2097 =>
table_value := 3440
;
when 2098 =>
table_value := 3968
;
when 2099 =>
table_value := 4400
;
when 2100 =>
table_value := 4800
;
when 2101 =>
table_value := 5152
;
when 2102 =>
table_value := 5696
;
when 2103 =>
table_value := 6512
;
when 2104 =>
table_value := 7360
;
when 2105 =>
table_value := 8000
;
when 2106 =>
table_value := 8304
;
when 2107 =>
table_value := 8496
;
when 2108 =>
table_value := 8560
;
when 2109 =>
table_value := 8544
;
when 2110 =>
table_value := 8640
;
when 2111 =>
table_value := 8672
;
when 2112 =>
table_value := 8352
;
when 2113 =>
table_value := 7888
;
when 2114 =>
table_value := 7440
;
when 2115 =>
table_value := 6848
;
when 2116 =>
table_value := 6320
;
when 2117 =>
table_value := 5952
;
when 2118 =>
table_value := 5856
;
when 2119 =>
table_value := 5808
;
when 2120 =>
table_value := 5648
;
when 2121 =>
table_value := 5488
;
when 2122 =>
table_value := 5440
;
when 2123 =>
table_value := 5344
;
when 2124 =>
table_value := 5536
;
when 2125 =>
table_value := 6048
;
when 2126 =>
table_value := 6864
;
when 2127 =>
table_value := 7952
;
when 2128 =>
table_value := 8944
;
when 2129 =>
table_value := 9760
;
when 2130 =>
table_value := 10256
;
when 2131 =>
table_value := 10688
;
when 2132 =>
table_value := 10928
;
when 2133 =>
table_value := 10832
;
when 2134 =>
table_value := 10544
;
when 2135 =>
table_value := 10016
;
when 2136 =>
table_value := 9344
;
when 2137 =>
table_value := 8464
;
when 2138 =>
table_value := 7472
;
when 2139 =>
table_value := 6640
;
when 2140 =>
table_value := 6064
;
when 2141 =>
table_value := 5552
;
when 2142 =>
table_value := 4864
;
when 2143 =>
table_value := 3856
;
when 2144 =>
table_value := 3040
;
when 2145 =>
table_value := 2640
;
when 2146 =>
table_value := 2512
;
when 2147 =>
table_value := 2400
;
when 2148 =>
table_value := 2288
;
when 2149 =>
table_value := 2320
;
when 2150 =>
table_value := 2640
;
when 2151 =>
table_value := 2928
;
when 2152 =>
table_value := 2864
;
when 2153 =>
table_value := 2416
;
when 2154 =>
table_value := 1984
;
when 2155 =>
table_value := 1824
;
when 2156 =>
table_value := 1616
;
when 2157 =>
table_value := 1152
;
when 2158 =>
table_value := 592
;
when 2159 =>
table_value := 192
;
when 2160 =>
table_value := 64
;
when 2161 =>
table_value := 1048560
;
when 2162 =>
table_value := 1048480
;
when 2163 =>
table_value := 1048128
;
when 2164 =>
table_value := 1047648
;
when 2165 =>
table_value := 1046912
;
when 2166 =>
table_value := 1046032
;
when 2167 =>
table_value := 1045296
;
when 2168 =>
table_value := 1044640
;
when 2169 =>
table_value := 1044464
;
when 2170 =>
table_value := 1044448
;
when 2171 =>
table_value := 1044432
;
when 2172 =>
table_value := 1044416
;
when 2173 =>
table_value := 1044512
;
when 2174 =>
table_value := 1044800
;
when 2175 =>
table_value := 1045056
;
when 2176 =>
table_value := 1045344
;
when 2177 =>
table_value := 1045472
;
when 2178 =>
table_value := 1045424
;
when 2179 =>
table_value := 1045216
;
when 2180 =>
table_value := 1045072
;
when 2181 =>
table_value := 1044704
;
when 2182 =>
table_value := 1044352
;
when 2183 =>
table_value := 1043984
;
when 2184 =>
table_value := 1043680
;
when 2185 =>
table_value := 1043168
;
when 2186 =>
table_value := 1042432
;
when 2187 =>
table_value := 1041552
;
when 2188 =>
table_value := 1040784
;
when 2189 =>
table_value := 1040368
;
when 2190 =>
table_value := 1040112
;
when 2191 =>
table_value := 1039952
;
when 2192 =>
table_value := 1039824
;
when 2193 =>
table_value := 1039712
;
when 2194 =>
table_value := 1039664
;
when 2195 =>
table_value := 1039616
;
when 2196 =>
table_value := 1039472
;
when 2197 =>
table_value := 1039344
;
when 2198 =>
table_value := 1039296
;
when 2199 =>
table_value := 1039376
;
when 2200 =>
table_value := 1039440
;
when 2201 =>
table_value := 1039712
;
when 2202 =>
table_value := 1039744
;
when 2203 =>
table_value := 1039824
;
when 2204 =>
table_value := 1039904
;
when 2205 =>
table_value := 1039872
;
when 2206 =>
table_value := 1039808
;
when 2207 =>
table_value := 1039488
;
when 2208 =>
table_value := 1038848
;
when 2209 =>
table_value := 1038208
;
when 2210 =>
table_value := 1037680
;
when 2211 =>
table_value := 1037184
;
when 2212 =>
table_value := 1036368
;
when 2213 =>
table_value := 1035136
;
when 2214 =>
table_value := 1033760
;
when 2215 =>
table_value := 1032416
;
when 2216 =>
table_value := 1031264
;
when 2217 =>
table_value := 1030336
;
when 2218 =>
table_value := 1029648
;
when 2219 =>
table_value := 1029024
;
when 2220 =>
table_value := 1028256
;
when 2221 =>
table_value := 1027264
;
when 2222 =>
table_value := 1026064
;
when 2223 =>
table_value := 1024576
;
when 2224 =>
table_value := 1022880
;
when 2225 =>
table_value := 1021056
;
when 2226 =>
table_value := 1019232
;
when 2227 =>
table_value := 1017696
;
when 2228 =>
table_value := 1016272
;
when 2229 =>
table_value := 1014832
;
when 2230 =>
table_value := 1013680
;
when 2231 =>
table_value := 1012896
;
when 2232 =>
table_value := 1012480
;
when 2233 =>
table_value := 1012368
;
when 2234 =>
table_value := 1012320
;
when 2235 =>
table_value := 1012464
;
when 2236 =>
table_value := 1012448
;
when 2237 =>
table_value := 1012240
;
when 2238 =>
table_value := 1011776
;
when 2239 =>
table_value := 1011408
;
when 2240 =>
table_value := 1010944
;
when 2241 =>
table_value := 1010656
;
when 2242 =>
table_value := 1010464
;
when 2243 =>
table_value := 1010224
;
when 2244 =>
table_value := 1009856
;
when 2245 =>
table_value := 1009472
;
when 2246 =>
table_value := 1009408
;
when 2247 =>
table_value := 1009648
;
when 2248 =>
table_value := 1010032
;
when 2249 =>
table_value := 1010432
;
when 2250 =>
table_value := 1010688
;
when 2251 =>
table_value := 1010864
;
when 2252 =>
table_value := 1011104
;
when 2253 =>
table_value := 1011504
;
when 2254 =>
table_value := 1012256
;
when 2255 =>
table_value := 1013152
;
when 2256 =>
table_value := 1013904
;
when 2257 =>
table_value := 1014480
;
when 2258 =>
table_value := 1014784
;
when 2259 =>
table_value := 1014960
;
when 2260 =>
table_value := 1014896
;
when 2261 =>
table_value := 1014624
;
when 2262 =>
table_value := 1014144
;
when 2263 =>
table_value := 1013568
;
when 2264 =>
table_value := 1012960
;
when 2265 =>
table_value := 1012320
;
when 2266 =>
table_value := 1011680
;
when 2267 =>
table_value := 1010912
;
when 2268 =>
table_value := 1009952
;
when 2269 =>
table_value := 1008928
;
when 2270 =>
table_value := 1007680
;
when 2271 =>
table_value := 1006464
;
when 2272 =>
table_value := 1005344
;
when 2273 =>
table_value := 1004320
;
when 2274 =>
table_value := 1003408
;
when 2275 =>
table_value := 1002768
;
when 2276 =>
table_value := 1002368
;
when 2277 =>
table_value := 1002032
;
when 2278 =>
table_value := 1001568
;
when 2279 =>
table_value := 1000896
;
when 2280 =>
table_value := 1000208
;
when 2281 =>
table_value := 999568
;
when 2282 =>
table_value := 999120
;
when 2283 =>
table_value := 998816
;
when 2284 =>
table_value := 998656
;
when 2285 =>
table_value := 998752
;
when 2286 =>
table_value := 999520
;
when 2287 =>
table_value := 1000688
;
when 2288 =>
table_value := 1002064
;
when 2289 =>
table_value := 1003280
;
when 2290 =>
table_value := 1004112
;
when 2291 =>
table_value := 1004816
;
when 2292 =>
table_value := 1005312
;
when 2293 =>
table_value := 1005648
;
when 2294 =>
table_value := 1005936
;
when 2295 =>
table_value := 1006384
;
when 2296 =>
table_value := 1007088
;
when 2297 =>
table_value := 1007936
;
when 2298 =>
table_value := 1008816
;
when 2299 =>
table_value := 1009952
;
when 2300 =>
table_value := 1011312
;
when 2301 =>
table_value := 1013248
;
when 2302 =>
table_value := 1015520
;
when 2303 =>
table_value := 1017952
;
when 2304 =>
table_value := 1020448
;
when 2305 =>
table_value := 1022752
;
when 2306 =>
table_value := 1025152
;
when 2307 =>
table_value := 1027696
;
when 2308 =>
table_value := 1030496
;
when 2309 =>
table_value := 1033264
;
when 2310 =>
table_value := 1036064
;
when 2311 =>
table_value := 1038608
;
when 2312 =>
table_value := 1040816
;
when 2313 =>
table_value := 1042528
;
when 2314 =>
table_value := 1043776
;
when 2315 =>
table_value := 1044912
;
when 2316 =>
table_value := 1046048
;
when 2317 =>
table_value := 1047392
;
when 2318 =>
table_value := 112
;
when 2319 =>
table_value := 1296
;
when 2320 =>
table_value := 2320
;
when 2321 =>
table_value := 3152
;
when 2322 =>
table_value := 3856
;
when 2323 =>
table_value := 4576
;
when 2324 =>
table_value := 5424
;
when 2325 =>
table_value := 6464
;
when 2326 =>
table_value := 7632
;
when 2327 =>
table_value := 8816
;
when 2328 =>
table_value := 10032
;
when 2329 =>
table_value := 11232
;
when 2330 =>
table_value := 12496
;
when 2331 =>
table_value := 13760
;
when 2332 =>
table_value := 14800
;
when 2333 =>
table_value := 15744
;
when 2334 =>
table_value := 16464
;
when 2335 =>
table_value := 17120
;
when 2336 =>
table_value := 17600
;
when 2337 =>
table_value := 18176
;
when 2338 =>
table_value := 18944
;
when 2339 =>
table_value := 19872
;
when 2340 =>
table_value := 20848
;
when 2341 =>
table_value := 21872
;
when 2342 =>
table_value := 22816
;
when 2343 =>
table_value := 23776
;
when 2344 =>
table_value := 24560
;
when 2345 =>
table_value := 25088
;
when 2346 =>
table_value := 25456
;
when 2347 =>
table_value := 25968
;
when 2348 =>
table_value := 26400
;
when 2349 =>
table_value := 26752
;
when 2350 =>
table_value := 27072
;
when 2351 =>
table_value := 27504
;
when 2352 =>
table_value := 28176
;
when 2353 =>
table_value := 29136
;
when 2354 =>
table_value := 30208
;
when 2355 =>
table_value := 31232
;
when 2356 =>
table_value := 32160
;
when 2357 =>
table_value := 32896
;
when 2358 =>
table_value := 33616
;
when 2359 =>
table_value := 34208
;
when 2360 =>
table_value := 34784
;
when 2361 =>
table_value := 35392
;
when 2362 =>
table_value := 36000
;
when 2363 =>
table_value := 36464
;
when 2364 =>
table_value := 36880
;
when 2365 =>
table_value := 37184
;
when 2366 =>
table_value := 37584
;
when 2367 =>
table_value := 37952
;
when 2368 =>
table_value := 38304
;
when 2369 =>
table_value := 38464
;
when 2370 =>
table_value := 38496
;
when 2371 =>
table_value := 38288
;
when 2372 =>
table_value := 37744
;
when 2373 =>
table_value := 36784
;
when 2374 =>
table_value := 35520
;
when 2375 =>
table_value := 34176
;
when 2376 =>
table_value := 32896
;
when 2377 =>
table_value := 31872
;
when 2378 =>
table_value := 31120
;
when 2379 =>
table_value := 30816
;
when 2380 =>
table_value := 31040
;
when 2381 =>
table_value := 31632
;
when 2382 =>
table_value := 32528
;
when 2383 =>
table_value := 33360
;
when 2384 =>
table_value := 34240
;
when 2385 =>
table_value := 34976
;
when 2386 =>
table_value := 35664
;
when 2387 =>
table_value := 36304
;
when 2388 =>
table_value := 36736
;
when 2389 =>
table_value := 36896
;
when 2390 =>
table_value := 36592
;
when 2391 =>
table_value := 35856
;
when 2392 =>
table_value := 35024
;
when 2393 =>
table_value := 34048
;
when 2394 =>
table_value := 33264
;
when 2395 =>
table_value := 32800
;
when 2396 =>
table_value := 32672
;
when 2397 =>
table_value := 32688
;
when 2398 =>
table_value := 32816
;
when 2399 =>
table_value := 33008
;
when 2400 =>
table_value := 33088
;
when 2401 =>
table_value := 32976
;
when 2402 =>
table_value := 32608
;
when 2403 =>
table_value := 32016
;
when 2404 =>
table_value := 31456
;
when 2405 =>
table_value := 30800
;
when 2406 =>
table_value := 30160
;
when 2407 =>
table_value := 29568
;
when 2408 =>
table_value := 28944
;
when 2409 =>
table_value := 28480
;
when 2410 =>
table_value := 27984
;
when 2411 =>
table_value := 27376
;
when 2412 =>
table_value := 26704
;
when 2413 =>
table_value := 25680
;
when 2414 =>
table_value := 24704
;
when 2415 =>
table_value := 23648
;
when 2416 =>
table_value := 22704
;
when 2417 =>
table_value := 21840
;
when 2418 =>
table_value := 21072
;
when 2419 =>
table_value := 20336
;
when 2420 =>
table_value := 19712
;
when 2421 =>
table_value := 19200
;
when 2422 =>
table_value := 18768
;
when 2423 =>
table_value := 18128
;
when 2424 =>
table_value := 17376
;
when 2425 =>
table_value := 16512
;
when 2426 =>
table_value := 15520
;
when 2427 =>
table_value := 14608
;
when 2428 =>
table_value := 13760
;
when 2429 =>
table_value := 12816
;
when 2430 =>
table_value := 11904
;
when 2431 =>
table_value := 10960
;
when 2432 =>
table_value := 9936
;
when 2433 =>
table_value := 8720
;
when 2434 =>
table_value := 7472
;
when 2435 =>
table_value := 6208
;
when 2436 =>
table_value := 5232
;
when 2437 =>
table_value := 4336
;
when 2438 =>
table_value := 3520
;
when 2439 =>
table_value := 2592
;
when 2440 =>
table_value := 1536
;
when 2441 =>
table_value := 432
;
when 2442 =>
table_value := 1047984
;
when 2443 =>
table_value := 1046960
;
when 2444 =>
table_value := 1046032
;
when 2445 =>
table_value := 1045248
;
when 2446 =>
table_value := 1044336
;
when 2447 =>
table_value := 1043376
;
when 2448 =>
table_value := 1042416
;
when 2449 =>
table_value := 1041584
;
when 2450 =>
table_value := 1040960
;
when 2451 =>
table_value := 1040560
;
when 2452 =>
table_value := 1040288
;
when 2453 =>
table_value := 1040048
;
when 2454 =>
table_value := 1039760
;
when 2455 =>
table_value := 1039456
;
when 2456 =>
table_value := 1039168
;
when 2457 =>
table_value := 1038736
;
when 2458 =>
table_value := 1038080
;
when 2459 =>
table_value := 1037024
;
when 2460 =>
table_value := 1035648
;
when 2461 =>
table_value := 1034128
;
when 2462 =>
table_value := 1032640
;
when 2463 =>
table_value := 1031328
;
when 2464 =>
table_value := 1030336
;
when 2465 =>
table_value := 1029648
;
when 2466 =>
table_value := 1029264
;
when 2467 =>
table_value := 1029056
;
when 2468 =>
table_value := 1028848
;
when 2469 =>
table_value := 1028688
;
when 2470 =>
table_value := 1028464
;
when 2471 =>
table_value := 1028208
;
when 2472 =>
table_value := 1028000
;
when 2473 =>
table_value := 1027600
;
when 2474 =>
table_value := 1027184
;
when 2475 =>
table_value := 1026688
;
when 2476 =>
table_value := 1026064
;
when 2477 =>
table_value := 1025312
;
when 2478 =>
table_value := 1024464
;
when 2479 =>
table_value := 1023648
;
when 2480 =>
table_value := 1022912
;
when 2481 =>
table_value := 1022368
;
when 2482 =>
table_value := 1021792
;
when 2483 =>
table_value := 1021312
;
when 2484 =>
table_value := 1020816
;
when 2485 =>
table_value := 1020224
;
when 2486 =>
table_value := 1019600
;
when 2487 =>
table_value := 1018800
;
when 2488 =>
table_value := 1017904
;
when 2489 =>
table_value := 1016976
;
when 2490 =>
table_value := 1016016
;
when 2491 =>
table_value := 1015072
;
when 2492 =>
table_value := 1014432
;
when 2493 =>
table_value := 1014144
;
when 2494 =>
table_value := 1014144
;
when 2495 =>
table_value := 1014304
;
when 2496 =>
table_value := 1014560
;
when 2497 =>
table_value := 1014960
;
when 2498 =>
table_value := 1015312
;
when 2499 =>
table_value := 1015424
;
when 2500 =>
table_value := 1015488
;
when 2501 =>
table_value := 1015456
;
when 2502 =>
table_value := 1015328
;
when 2503 =>
table_value := 1015040
;
when 2504 =>
table_value := 1014624
;
when 2505 =>
table_value := 1014208
;
when 2506 =>
table_value := 1013904
;
when 2507 =>
table_value := 1013872
;
when 2508 =>
table_value := 1013968
;
when 2509 =>
table_value := 1014064
;
when 2510 =>
table_value := 1014112
;
when 2511 =>
table_value := 1014096
;
when 2512 =>
table_value := 1014032
;
when 2513 =>
table_value := 1013936
;
when 2514 =>
table_value := 1013904
;
when 2515 =>
table_value := 1014016
;
when 2516 =>
table_value := 1014240
;
when 2517 =>
table_value := 1014656
;
when 2518 =>
table_value := 1015184
;
when 2519 =>
table_value := 1015616
;
when 2520 =>
table_value := 1015872
;
when 2521 =>
table_value := 1015952
;
when 2522 =>
table_value := 1016048
;
when 2523 =>
table_value := 1016352
;
when 2524 =>
table_value := 1016816
;
when 2525 =>
table_value := 1017392
;
when 2526 =>
table_value := 1017984
;
when 2527 =>
table_value := 1018736
;
when 2528 =>
table_value := 1019744
;
when 2529 =>
table_value := 1020864
;
when 2530 =>
table_value := 1022128
;
when 2531 =>
table_value := 1023520
;
when 2532 =>
table_value := 1024880
;
when 2533 =>
table_value := 1026256
;
when 2534 =>
table_value := 1027680
;
when 2535 =>
table_value := 1029104
;
when 2536 =>
table_value := 1030592
;
when 2537 =>
table_value := 1032096
;
when 2538 =>
table_value := 1033616
;
when 2539 =>
table_value := 1035200
;
when 2540 =>
table_value := 1036848
;
when 2541 =>
table_value := 1038448
;
when 2542 =>
table_value := 1040080
;
when 2543 =>
table_value := 1041728
;
when 2544 =>
table_value := 1043408
;
when 2545 =>
table_value := 1045024
;
when 2546 =>
table_value := 1046352
;
when 2547 =>
table_value := 1047376
;
when 2548 =>
table_value := 1048208
;
when 2549 =>
table_value := 448
;
when 2550 =>
table_value := 1056
;
when 2551 =>
table_value := 1568
;
when 2552 =>
table_value := 1904
;
when 2553 =>
table_value := 2048
;
when 2554 =>
table_value := 2128
;
when 2555 =>
table_value := 2256
;
when 2556 =>
table_value := 2544
;
when 2557 =>
table_value := 2992
;
when 2558 =>
table_value := 3472
;
when 2559 =>
table_value := 3952
;
when 2560 =>
table_value := 4288
;
when 2561 =>
table_value := 4608
;
when 2562 =>
table_value := 4928
;
when 2563 =>
table_value := 5328
;
when 2564 =>
table_value := 6000
;
when 2565 =>
table_value := 6736
;
when 2566 =>
table_value := 7632
;
when 2567 =>
table_value := 8496
;
when 2568 =>
table_value := 9360
;
when 2569 =>
table_value := 10112
;
when 2570 =>
table_value := 10848
;
when 2571 =>
table_value := 11792
;
when 2572 =>
table_value := 12704
;
when 2573 =>
table_value := 13616
;
when 2574 =>
table_value := 14560
;
when 2575 =>
table_value := 15344
;
when 2576 =>
table_value := 16080
;
when 2577 =>
table_value := 16832
;
when 2578 =>
table_value := 17648
;
when 2579 =>
table_value := 18480
;
when 2580 =>
table_value := 19408
;
when 2581 =>
table_value := 20384
;
when 2582 =>
table_value := 21328
;
when 2583 =>
table_value := 22400
;
when 2584 =>
table_value := 23616
;
when 2585 =>
table_value := 24944
;
when 2586 =>
table_value := 26304
;
when 2587 =>
table_value := 27488
;
when 2588 =>
table_value := 28416
;
when 2589 =>
table_value := 29440
;
when 2590 =>
table_value := 30416
;
when 2591 =>
table_value := 31536
;
when 2592 =>
table_value := 32512
;
when 2593 =>
table_value := 33216
;
when 2594 =>
table_value := 33856
;
when 2595 =>
table_value := 34224
;
when 2596 =>
table_value := 34752
;
when 2597 =>
table_value := 35328
;
when 2598 =>
table_value := 35936
;
when 2599 =>
table_value := 36640
;
when 2600 =>
table_value := 37168
;
when 2601 =>
table_value := 37504
;
when 2602 =>
table_value := 37792
;
when 2603 =>
table_value := 38080
;
when 2604 =>
table_value := 38480
;
when 2605 =>
table_value := 39024
;
when 2606 =>
table_value := 39504
;
when 2607 =>
table_value := 39824
;
when 2608 =>
table_value := 40032
;
when 2609 =>
table_value := 40016
;
when 2610 =>
table_value := 40016
;
when 2611 =>
table_value := 39984
;
when 2612 =>
table_value := 40096
;
when 2613 =>
table_value := 40400
;
when 2614 =>
table_value := 40880
;
when 2615 =>
table_value := 41552
;
when 2616 =>
table_value := 42160
;
when 2617 =>
table_value := 42688
;
when 2618 =>
table_value := 43088
;
when 2619 =>
table_value := 43472
;
when 2620 =>
table_value := 43872
;
when 2621 =>
table_value := 44288
;
when 2622 =>
table_value := 44672
;
when 2623 =>
table_value := 44912
;
when 2624 =>
table_value := 45072
;
when 2625 =>
table_value := 45056
;
when 2626 =>
table_value := 44944
;
when 2627 =>
table_value := 44912
;
when 2628 =>
table_value := 44896
;
when 2629 =>
table_value := 44880
;
when 2630 =>
table_value := 44832
;
when 2631 =>
table_value := 44752
;
when 2632 =>
table_value := 44736
;
when 2633 =>
table_value := 44704
;
when 2634 =>
table_value := 44672
;
when 2635 =>
table_value := 44560
;
when 2636 =>
table_value := 44304
;
when 2637 =>
table_value := 43920
;
when 2638 =>
table_value := 43616
;
when 2639 =>
table_value := 43296
;
when 2640 =>
table_value := 43104
;
when 2641 =>
table_value := 42944
;
when 2642 =>
table_value := 42896
;
when 2643 =>
table_value := 42832
;
when 2644 =>
table_value := 42832
;
when 2645 =>
table_value := 42880
;
when 2646 =>
table_value := 42832
;
when 2647 =>
table_value := 42800
;
when 2648 =>
table_value := 42864
;
when 2649 =>
table_value := 43168
;
when 2650 =>
table_value := 43584
;
when 2651 =>
table_value := 44288
;
when 2652 =>
table_value := 44928
;
when 2653 =>
table_value := 45584
;
when 2654 =>
table_value := 46064
;
when 2655 =>
table_value := 46528
;
when 2656 =>
table_value := 47024
;
when 2657 =>
table_value := 47456
;
when 2658 =>
table_value := 47696
;
when 2659 =>
table_value := 47904
;
when 2660 =>
table_value := 48064
;
when 2661 =>
table_value := 48192
;
when 2662 =>
table_value := 48384
;
when 2663 =>
table_value := 48528
;
when 2664 =>
table_value := 48800
;
when 2665 =>
table_value := 49040
;
when 2666 =>
table_value := 49232
;
when 2667 =>
table_value := 49424
;
when 2668 =>
table_value := 49456
;
when 2669 =>
table_value := 49248
;
when 2670 =>
table_value := 48944
;
when 2671 =>
table_value := 48640
;
when 2672 =>
table_value := 48512
;
when 2673 =>
table_value := 48576
;
when 2674 =>
table_value := 48624
;
when 2675 =>
table_value := 48816
;
when 2676 =>
table_value := 48976
;
when 2677 =>
table_value := 48992
;
when 2678 =>
table_value := 49152
;
when 2679 =>
table_value := 49328
;
when 2680 =>
table_value := 49520
;
when 2681 =>
table_value := 49760
;
when 2682 =>
table_value := 49840
;
when 2683 =>
table_value := 49904
;
when 2684 =>
table_value := 49904
;
when 2685 =>
table_value := 49728
;
when 2686 =>
table_value := 49696
;
when 2687 =>
table_value := 49440
;
when 2688 =>
table_value := 49168
;
when 2689 =>
table_value := 48800
;
when 2690 =>
table_value := 48528
;
when 2691 =>
table_value := 48272
;
when 2692 =>
table_value := 48288
;
when 2693 =>
table_value := 48400
;
when 2694 =>
table_value := 48672
;
when 2695 =>
table_value := 48912
;
when 2696 =>
table_value := 49248
;
when 2697 =>
table_value := 49552
;
when 2698 =>
table_value := 49936
;
when 2699 =>
table_value := 50336
;
when 2700 =>
table_value := 50496
;
when 2701 =>
table_value := 50528
;
when 2702 =>
table_value := 50384
;
when 2703 =>
table_value := 50032
;
when 2704 =>
table_value := 49760
;
when 2705 =>
table_value := 49296
;
when 2706 =>
table_value := 48832
;
when 2707 =>
table_value := 48368
;
when 2708 =>
table_value := 47728
;
when 2709 =>
table_value := 47296
;
when 2710 =>
table_value := 46912
;
when 2711 =>
table_value := 46432
;
when 2712 =>
table_value := 45904
;
when 2713 =>
table_value := 45440
;
when 2714 =>
table_value := 44944
;
when 2715 =>
table_value := 44464
;
when 2716 =>
table_value := 44096
;
when 2717 =>
table_value := 43872
;
when 2718 =>
table_value := 43712
;
when 2719 =>
table_value := 43424
;
when 2720 =>
table_value := 43136
;
when 2721 =>
table_value := 42496
;
when 2722 =>
table_value := 41808
;
when 2723 =>
table_value := 41248
;
when 2724 =>
table_value := 40768
;
when 2725 =>
table_value := 40256
;
when 2726 =>
table_value := 39664
;
when 2727 =>
table_value := 39120
;
when 2728 =>
table_value := 38560
;
when 2729 =>
table_value := 38192
;
when 2730 =>
table_value := 37824
;
when 2731 =>
table_value := 37584
;
when 2732 =>
table_value := 37424
;
when 2733 =>
table_value := 37296
;
when 2734 =>
table_value := 37104
;
when 2735 =>
table_value := 36944
;
when 2736 =>
table_value := 36880
;
when 2737 =>
table_value := 36640
;
when 2738 =>
table_value := 36496
;
when 2739 =>
table_value := 36384
;
when 2740 =>
table_value := 36176
;
when 2741 =>
table_value := 36080
;
when 2742 =>
table_value := 35936
;
when 2743 =>
table_value := 35792
;
when 2744 =>
table_value := 35632
;
when 2745 =>
table_value := 35424
;
when 2746 =>
table_value := 35168
;
when 2747 =>
table_value := 34944
;
when 2748 =>
table_value := 34832
;
when 2749 =>
table_value := 34624
;
when 2750 =>
table_value := 34400
;
when 2751 =>
table_value := 34080
;
when 2752 =>
table_value := 33760
;
when 2753 =>
table_value := 33424
;
when 2754 =>
table_value := 33136
;
when 2755 =>
table_value := 32832
;
when 2756 =>
table_value := 32560
;
when 2757 =>
table_value := 32224
;
when 2758 =>
table_value := 31888
;
when 2759 =>
table_value := 31600
;
when 2760 =>
table_value := 31328
;
when 2761 =>
table_value := 31200
;
when 2762 =>
table_value := 30992
;
when 2763 =>
table_value := 30864
;
when 2764 =>
table_value := 30720
;
when 2765 =>
table_value := 30688
;
when 2766 =>
table_value := 30624
;
when 2767 =>
table_value := 30624
;
when 2768 =>
table_value := 30752
;
when 2769 =>
table_value := 30784
;
when 2770 =>
table_value := 30672
;
when 2771 =>
table_value := 30464
;
when 2772 =>
table_value := 30192
;
when 2773 =>
table_value := 29696
;
when 2774 =>
table_value := 29104
;
when 2775 =>
table_value := 28352
;
when 2776 =>
table_value := 27568
;
when 2777 =>
table_value := 26752
;
when 2778 =>
table_value := 25952
;
when 2779 =>
table_value := 25200
;
when 2780 =>
table_value := 24336
;
when 2781 =>
table_value := 23440
;
when 2782 =>
table_value := 22480
;
when 2783 =>
table_value := 21616
;
when 2784 =>
table_value := 20752
;
when 2785 =>
table_value := 19888
;
when 2786 =>
table_value := 18896
;
when 2787 =>
table_value := 18016
;
when 2788 =>
table_value := 17072
;
when 2789 =>
table_value := 16208
;
when 2790 =>
table_value := 15440
;
when 2791 =>
table_value := 14752
;
when 2792 =>
table_value := 14144
;
when 2793 =>
table_value := 13424
;
when 2794 =>
table_value := 12672
;
when 2795 =>
table_value := 11920
;
when 2796 =>
table_value := 11216
;
when 2797 =>
table_value := 10736
;
when 2798 =>
table_value := 10288
;
when 2799 =>
table_value := 9792
;
when 2800 =>
table_value := 9344
;
when 2801 =>
table_value := 8912
;
when 2802 =>
table_value := 8608
;
when 2803 =>
table_value := 8304
;
when 2804 =>
table_value := 8048
;
when 2805 =>
table_value := 7680
;
when 2806 =>
table_value := 7232
;
when 2807 =>
table_value := 6816
;
when 2808 =>
table_value := 6384
;
when 2809 =>
table_value := 6032
;
when 2810 =>
table_value := 5728
;
when 2811 =>
table_value := 5504
;
when 2812 =>
table_value := 5056
;
when 2813 =>
table_value := 4480
;
when 2814 =>
table_value := 3936
;
when 2815 =>
table_value := 3424
;
when 2816 =>
table_value := 2960
;
when 2817 =>
table_value := 2544
;
when 2818 =>
table_value := 1984
;
when 2819 =>
table_value := 1328
;
when 2820 =>
table_value := 656
;
when 2821 =>
table_value := 16
;
when 2822 =>
table_value := 1048048
;
when 2823 =>
table_value := 1047408
;
when 2824 =>
table_value := 1046864
;
when 2825 =>
table_value := 1046240
;
when 2826 =>
table_value := 1045616
;
when 2827 =>
table_value := 1044960
;
when 2828 =>
table_value := 1044288
;
when 2829 =>
table_value := 1043568
;
when 2830 =>
table_value := 1042912
;
when 2831 =>
table_value := 1042272
;
when 2832 =>
table_value := 1041568
;
when 2833 =>
table_value := 1040752
;
when 2834 =>
table_value := 1039824
;
when 2835 =>
table_value := 1038880
;
when 2836 =>
table_value := 1037920
;
when 2837 =>
table_value := 1037072
;
when 2838 =>
table_value := 1036224
;
when 2839 =>
table_value := 1035456
;
when 2840 =>
table_value := 1034656
;
when 2841 =>
table_value := 1033744
;
when 2842 =>
table_value := 1032880
;
when 2843 =>
table_value := 1031888
;
when 2844 =>
table_value := 1031040
;
when 2845 =>
table_value := 1030320
;
when 2846 =>
table_value := 1029568
;
when 2847 =>
table_value := 1028864
;
when 2848 =>
table_value := 1028160
;
when 2849 =>
table_value := 1027392
;
when 2850 =>
table_value := 1026672
;
when 2851 =>
table_value := 1026016
;
when 2852 =>
table_value := 1025344
;
when 2853 =>
table_value := 1024640
;
when 2854 =>
table_value := 1023824
;
when 2855 =>
table_value := 1023136
;
when 2856 =>
table_value := 1022464
;
when 2857 =>
table_value := 1021984
;
when 2858 =>
table_value := 1021520
;
when 2859 =>
table_value := 1021232
;
when 2860 =>
table_value := 1021008
;
when 2861 =>
table_value := 1020976
;
when 2862 =>
table_value := 1020944
;
when 2863 =>
table_value := 1020960
;
when 2864 =>
table_value := 1020896
;
when 2865 =>
table_value := 1020832
;
when 2866 =>
table_value := 1020832
;
when 2867 =>
table_value := 1020736
;
when 2868 =>
table_value := 1020608
;
when 2869 =>
table_value := 1020464
;
when 2870 =>
table_value := 1020240
;
when 2871 =>
table_value := 1020032
;
when 2872 =>
table_value := 1019856
;
when 2873 =>
table_value := 1019680
;
when 2874 =>
table_value := 1019552
;
when 2875 =>
table_value := 1019424
;
when 2876 =>
table_value := 1019168
;
when 2877 =>
table_value := 1018800
;
when 2878 =>
table_value := 1018448
;
when 2879 =>
table_value := 1018128
;
when 2880 =>
table_value := 1017840
;
when 2881 =>
table_value := 1017488
;
when 2882 =>
table_value := 1016976
;
when 2883 =>
table_value := 1016272
;
when 2884 =>
table_value := 1015456
;
when 2885 =>
table_value := 1014464
;
when 2886 =>
table_value := 1013472
;
when 2887 =>
table_value := 1012560
;
when 2888 =>
table_value := 1011712
;
when 2889 =>
table_value := 1010816
;
when 2890 =>
table_value := 1009904
;
when 2891 =>
table_value := 1008912
;
when 2892 =>
table_value := 1008032
;
when 2893 =>
table_value := 1007296
;
when 2894 =>
table_value := 1006640
;
when 2895 =>
table_value := 1006112
;
when 2896 =>
table_value := 1005696
;
when 2897 =>
table_value := 1005360
;
when 2898 =>
table_value := 1005104
;
when 2899 =>
table_value := 1005008
;
when 2900 =>
table_value := 1005024
;
when 2901 =>
table_value := 1005136
;
when 2902 =>
table_value := 1005216
;
when 2903 =>
table_value := 1005408
;
when 2904 =>
table_value := 1005584
;
when 2905 =>
table_value := 1005840
;
when 2906 =>
table_value := 1006256
;
when 2907 =>
table_value := 1006800
;
when 2908 =>
table_value := 1007408
;
when 2909 =>
table_value := 1008032
;
when 2910 =>
table_value := 1008656
;
when 2911 =>
table_value := 1009216
;
when 2912 =>
table_value := 1009888
;
when 2913 =>
table_value := 1010688
;
when 2914 =>
table_value := 1011664
;
when 2915 =>
table_value := 1012640
;
when 2916 =>
table_value := 1013568
;
when 2917 =>
table_value := 1014384
;
when 2918 =>
table_value := 1015072
;
when 2919 =>
table_value := 1015824
;
when 2920 =>
table_value := 1016448
;
when 2921 =>
table_value := 1016960
;
when 2922 =>
table_value := 1017456
;
when 2923 =>
table_value := 1017776
;
when 2924 =>
table_value := 1018080
;
when 2925 =>
table_value := 1018256
;
when 2926 =>
table_value := 1018448
;
when 2927 =>
table_value := 1018560
;
when 2928 =>
table_value := 1018544
;
when 2929 =>
table_value := 1018608
;
when 2930 =>
table_value := 1018608
;
when 2931 =>
table_value := 1018656
;
when 2932 =>
table_value := 1018688
;
when 2933 =>
table_value := 1018784
;
when 2934 =>
table_value := 1018896
;
when 2935 =>
table_value := 1019120
;
when 2936 =>
table_value := 1019376
;
when 2937 =>
table_value := 1019712
;
when 2938 =>
table_value := 1020080
;
when 2939 =>
table_value := 1020528
;
when 2940 =>
table_value := 1020816
;
when 2941 =>
table_value := 1021104
;
when 2942 =>
table_value := 1021264
;
when 2943 =>
table_value := 1021440
;
when 2944 =>
table_value := 1021568
;
when 2945 =>
table_value := 1021696
;
when 2946 =>
table_value := 1021792
;
when 2947 =>
table_value := 1021808
;
when 2948 =>
table_value := 1021824
;
when 2949 =>
table_value := 1021808
;
when 2950 =>
table_value := 1021712
;
when 2951 =>
table_value := 1021632
;
when 2952 =>
table_value := 1021616
;
when 2953 =>
table_value := 1021696
;
when 2954 =>
table_value := 1021920
;
when 2955 =>
table_value := 1022240
;
when 2956 =>
table_value := 1022608
;
when 2957 =>
table_value := 1022864
;
when 2958 =>
table_value := 1023024
;
when 2959 =>
table_value := 1023040
;
when 2960 =>
table_value := 1023008
;
when 2961 =>
table_value := 1022992
;
when 2962 =>
table_value := 1022992
;
when 2963 =>
table_value := 1023104
;
when 2964 =>
table_value := 1023248
;
when 2965 =>
table_value := 1023376
;
when 2966 =>
table_value := 1023520
;
when 2967 =>
table_value := 1023552
;
when 2968 =>
table_value := 1023616
;
when 2969 =>
table_value := 1023664
;
when 2970 =>
table_value := 1023824
;
when 2971 =>
table_value := 1024128
;
when 2972 =>
table_value := 1024480
;
when 2973 =>
table_value := 1024896
;
when 2974 =>
table_value := 1025248
;
when 2975 =>
table_value := 1025552
;
when 2976 =>
table_value := 1025792
;
when 2977 =>
table_value := 1026032
;
when 2978 =>
table_value := 1026368
;
when 2979 =>
table_value := 1026784
;
when 2980 =>
table_value := 1027152
;
when 2981 =>
table_value := 1027568
;
when 2982 =>
table_value := 1027920
;
when 2983 =>
table_value := 1028336
;
when 2984 =>
table_value := 1028800
;
when 2985 =>
table_value := 1029264
;
when 2986 =>
table_value := 1029696
;
when 2987 =>
table_value := 1030080
;
when 2988 =>
table_value := 1030496
;
when 2989 =>
table_value := 1031008
;
when 2990 =>
table_value := 1031504
;
when 2991 =>
table_value := 1032048
;
when 2992 =>
table_value := 1032576
;
when 2993 =>
table_value := 1033152
;
when 2994 =>
table_value := 1033648
;
when 2995 =>
table_value := 1034176
;
when 2996 =>
table_value := 1034736
;
when 2997 =>
table_value := 1035328
;
when 2998 =>
table_value := 1035840
;
when 2999 =>
table_value := 1036352
;
when 3000 =>
table_value := 1036832
;
when 3001 =>
table_value := 1037312
;
when 3002 =>
table_value := 1037776
;
when 3003 =>
table_value := 1038272
;
when 3004 =>
table_value := 1038768
;
when 3005 =>
table_value := 1039264
;
when 3006 =>
table_value := 1039680
;
when 3007 =>
table_value := 1040064
;
when 3008 =>
table_value := 1040400
;
when 3009 =>
table_value := 1040768
;
when 3010 =>
table_value := 1041152
;
when 3011 =>
table_value := 1041536
;
when 3012 =>
table_value := 1041888
;
when 3013 =>
table_value := 1042160
;
when 3014 =>
table_value := 1042352
;
when 3015 =>
table_value := 1042528
;
when 3016 =>
table_value := 1042608
;
when 3017 =>
table_value := 1042640
;
when 3018 =>
table_value := 1042720
;
when 3019 =>
table_value := 1042848
;
when 3020 =>
table_value := 1042960
;
when 3021 =>
table_value := 1043056
;
when 3022 =>
table_value := 1043136
;
when 3023 =>
table_value := 1043216
;
when 3024 =>
table_value := 1043376
;
when 3025 =>
table_value := 1043520
;
when 3026 =>
table_value := 1043712
;
when 3027 =>
table_value := 1043856
;
when 3028 =>
table_value := 1044000
;
when 3029 =>
table_value := 1044080
;
when 3030 =>
table_value := 1044160
;
when 3031 =>
table_value := 1044208
;
when 3032 =>
table_value := 1044256
;
when 3033 =>
table_value := 1044160
;
when 3034 =>
table_value := 1043904
;
when 3035 =>
table_value := 1043568
;
when 3036 =>
table_value := 1043248
;
when 3037 =>
table_value := 1042896
;
when 3038 =>
table_value := 1042560
;
when 3039 =>
table_value := 1042272
;
when 3040 =>
table_value := 1041872
;
when 3041 =>
table_value := 1041472
;
when 3042 =>
table_value := 1041040
;
when 3043 =>
table_value := 1040720
;
when 3044 =>
table_value := 1040384
;
when 3045 =>
table_value := 1040128
;
when 3046 =>
table_value := 1039840
;
when 3047 =>
table_value := 1039584
;
when 3048 =>
table_value := 1039376
;
when 3049 =>
table_value := 1039216
;
when 3050 =>
table_value := 1038992
;
when 3051 =>
table_value := 1038704
;
when 3052 =>
table_value := 1038400
;
when 3053 =>
table_value := 1038096
;
when 3054 =>
table_value := 1037776
;
when 3055 =>
table_value := 1037408
;
when 3056 =>
table_value := 1037088
;
when 3057 =>
table_value := 1036688
;
when 3058 =>
table_value := 1036288
;
when 3059 =>
table_value := 1035888
;
when 3060 =>
table_value := 1035536
;
when 3061 =>
table_value := 1035184
;
when 3062 =>
table_value := 1034960
;
when 3063 =>
table_value := 1034720
;
when 3064 =>
table_value := 1034496
;
when 3065 =>
table_value := 1034320
;
when 3066 =>
table_value := 1034112
;
when 3067 =>
table_value := 1033952
;
when 3068 =>
table_value := 1033792
;
when 3069 =>
table_value := 1033664
;
when 3070 =>
table_value := 1033568
;
when 3071 =>
table_value := 1033488
;
when 3072 =>
table_value := 1033360
;
when 3073 =>
table_value := 1033200
;
when 3074 =>
table_value := 1033056
;
when 3075 =>
table_value := 1032832
;
when 3076 =>
table_value := 1032576
;
when 3077 =>
table_value := 1032320
;
when 3078 =>
table_value := 1032048
;
when 3079 =>
table_value := 1031776
;
when 3080 =>
table_value := 1031536
;
when 3081 =>
table_value := 1031280
;
when 3082 =>
table_value := 1031008
;
when 3083 =>
table_value := 1030752
;
when 3084 =>
table_value := 1030480
;
when 3085 =>
table_value := 1030192
;
when 3086 =>
table_value := 1029920
;
when 3087 =>
table_value := 1029664
;
when 3088 =>
table_value := 1029424
;
when 3089 =>
table_value := 1029168
;
when 3090 =>
table_value := 1028896
;
when 3091 =>
table_value := 1028576
;
when 3092 =>
table_value := 1028208
;
when 3093 =>
table_value := 1027856
;
when 3094 =>
table_value := 1027520
;
when 3095 =>
table_value := 1027184
;
when 3096 =>
table_value := 1026896
;
when 3097 =>
table_value := 1026656
;
when 3098 =>
table_value := 1026448
;
when 3099 =>
table_value := 1026224
;
when 3100 =>
table_value := 1026000
;
when 3101 =>
table_value := 1025728
;
when 3102 =>
table_value := 1025360
;
when 3103 =>
table_value := 1025024
;
when 3104 =>
table_value := 1024656
;
when 3105 =>
table_value := 1024256
;
when 3106 =>
table_value := 1023792
;
when 3107 =>
table_value := 1023232
;
when 3108 =>
table_value := 1022688
;
when 3109 =>
table_value := 1022128
;
when 3110 =>
table_value := 1021536
;
when 3111 =>
table_value := 1020800
;
when 3112 =>
table_value := 1020016
;
when 3113 =>
table_value := 1019152
;
when 3114 =>
table_value := 1018208
;
when 3115 =>
table_value := 1017312
;
when 3116 =>
table_value := 1016480
;
when 3117 =>
table_value := 1015760
;
when 3118 =>
table_value := 1015120
;
when 3119 =>
table_value := 1014512
;
when 3120 =>
table_value := 1013920
;
when 3121 =>
table_value := 1013344
;
when 3122 =>
table_value := 1012896
;
when 3123 =>
table_value := 1012496
;
when 3124 =>
table_value := 1012144
;
when 3125 =>
table_value := 1011776
;
when 3126 =>
table_value := 1011376
;
when 3127 =>
table_value := 1010960
;
when 3128 =>
table_value := 1010608
;
when 3129 =>
table_value := 1010384
;
when 3130 =>
table_value := 1010256
;
when 3131 =>
table_value := 1010176
;
when 3132 =>
table_value := 1010064
;
when 3133 =>
table_value := 1009888
;
when 3134 =>
table_value := 1009632
;
when 3135 =>
table_value := 1009408
;
when 3136 =>
table_value := 1009264
;
when 3137 =>
table_value := 1009168
;
when 3138 =>
table_value := 1009104
;
when 3139 =>
table_value := 1009104
;
when 3140 =>
table_value := 1009168
;
when 3141 =>
table_value := 1009248
;
when 3142 =>
table_value := 1009328
;
when 3143 =>
table_value := 1009392
;
when 3144 =>
table_value := 1009424
;
when 3145 =>
table_value := 1009488
;
when 3146 =>
table_value := 1009632
;
when 3147 =>
table_value := 1009824
;
when 3148 =>
table_value := 1010048
;
when 3149 =>
table_value := 1010336
;
when 3150 =>
table_value := 1010576
;
when 3151 =>
table_value := 1010848
;
when 3152 =>
table_value := 1011120
;
when 3153 =>
table_value := 1011424
;
when 3154 =>
table_value := 1011776
;
when 3155 =>
table_value := 1012256
;
when 3156 =>
table_value := 1012720
;
when 3157 =>
table_value := 1013216
;
when 3158 =>
table_value := 1013648
;
when 3159 =>
table_value := 1014080
;
when 3160 =>
table_value := 1014592
;
when 3161 =>
table_value := 1015120
;
when 3162 =>
table_value := 1015760
;
when 3163 =>
table_value := 1016400
;
when 3164 =>
table_value := 1017024
;
when 3165 =>
table_value := 1017520
;
when 3166 =>
table_value := 1017936
;
when 3167 =>
table_value := 1018304
;
when 3168 =>
table_value := 1018672
;
when 3169 =>
table_value := 1019008
;
when 3170 =>
table_value := 1019392
;
when 3171 =>
table_value := 1019744
;
when 3172 =>
table_value := 1020080
;
when 3173 =>
table_value := 1020448
;
when 3174 =>
table_value := 1020816
;
when 3175 =>
table_value := 1021104
;
when 3176 =>
table_value := 1021456
;
when 3177 =>
table_value := 1021712
;
when 3178 =>
table_value := 1022064
;
when 3179 =>
table_value := 1022288
;
when 3180 =>
table_value := 1022432
;
when 3181 =>
table_value := 1022560
;
when 3182 =>
table_value := 1022624
;
when 3183 =>
table_value := 1022640
;
when 3184 =>
table_value := 1022624
;
when 3185 =>
table_value := 1022640
;
when 3186 =>
table_value := 1022688
;
when 3187 =>
table_value := 1022784
;
when 3188 =>
table_value := 1022912
;
when 3189 =>
table_value := 1023056
;
when 3190 =>
table_value := 1023184
;
when 3191 =>
table_value := 1023312
;
when 3192 =>
table_value := 1023392
;
when 3193 =>
table_value := 1023536
;
when 3194 =>
table_value := 1023712
;
when 3195 =>
table_value := 1023968
;
when 3196 =>
table_value := 1024384
;
when 3197 =>
table_value := 1024944
;
when 3198 =>
table_value := 1025472
;
when 3199 =>
table_value := 1025968
;
when 3200 =>
table_value := 1026400
;
when 3201 =>
table_value := 1026816
;
when 3202 =>
table_value := 1027184
;
when 3203 =>
table_value := 1027584
;
when 3204 =>
table_value := 1028032
;
when 3205 =>
table_value := 1028400
;
when 3206 =>
table_value := 1028704
;
when 3207 =>
table_value := 1028912
;
when 3208 =>
table_value := 1029200
;
when 3209 =>
table_value := 1029472
;
when 3210 =>
table_value := 1029728
;
when 3211 =>
table_value := 1029936
;
when 3212 =>
table_value := 1030064
;
when 3213 =>
table_value := 1030144
;
when 3214 =>
table_value := 1030240
;
when 3215 =>
table_value := 1030432
;
when 3216 =>
table_value := 1030688
;
when 3217 =>
table_value := 1031040
;
when 3218 =>
table_value := 1031328
;
when 3219 =>
table_value := 1031504
;
when 3220 =>
table_value := 1031616
;
when 3221 =>
table_value := 1031744
;
when 3222 =>
table_value := 1032000
;
when 3223 =>
table_value := 1032224
;
when 3224 =>
table_value := 1032336
;
when 3225 =>
table_value := 1032272
;
when 3226 =>
table_value := 1032064
;
when 3227 =>
table_value := 1031808
;
when 3228 =>
table_value := 1031568
;
when 3229 =>
table_value := 1031392
;
when 3230 =>
table_value := 1031280
;
when 3231 =>
table_value := 1031200
;
when 3232 =>
table_value := 1031104
;
when 3233 =>
table_value := 1030976
;
when 3234 =>
table_value := 1030832
;
when 3235 =>
table_value := 1030784
;
when 3236 =>
table_value := 1030800
;
when 3237 =>
table_value := 1030864
;
when 3238 =>
table_value := 1031008
;
when 3239 =>
table_value := 1031200
;
when 3240 =>
table_value := 1031488
;
when 3241 =>
table_value := 1031776
;
when 3242 =>
table_value := 1032096
;
when 3243 =>
table_value := 1032336
;
when 3244 =>
table_value := 1032576
;
when 3245 =>
table_value := 1032784
;
when 3246 =>
table_value := 1032976
;
when 3247 =>
table_value := 1033056
;
when 3248 =>
table_value := 1033104
;
when 3249 =>
table_value := 1033136
;
when 3250 =>
table_value := 1033216
;
when 3251 =>
table_value := 1033280
;
when 3252 =>
table_value := 1033296
;
when 3253 =>
table_value := 1033312
;
when 3254 =>
table_value := 1033344
;
when 3255 =>
table_value := 1033344
;
when 3256 =>
table_value := 1033328
;
when 3257 =>
table_value := 1033344
;
when 3258 =>
table_value := 1033232
;
when 3259 =>
table_value := 1033056
;
when 3260 =>
table_value := 1032800
;
when 3261 =>
table_value := 1032512
;
when 3262 =>
table_value := 1032208
;
when 3263 =>
table_value := 1031904
;
when 3264 =>
table_value := 1031664
;
when 3265 =>
table_value := 1031424
;
when 3266 =>
table_value := 1031168
;
when 3267 =>
table_value := 1030864
;
when 3268 =>
table_value := 1030512
;
when 3269 =>
table_value := 1030144
;
when 3270 =>
table_value := 1029792
;
when 3271 =>
table_value := 1029424
;
when 3272 =>
table_value := 1029088
;
when 3273 =>
table_value := 1028720
;
when 3274 =>
table_value := 1028224
;
when 3275 =>
table_value := 1027776
;
when 3276 =>
table_value := 1027408
;
when 3277 =>
table_value := 1027152
;
when 3278 =>
table_value := 1027008
;
when 3279 =>
table_value := 1026928
;
when 3280 =>
table_value := 1027008
;
when 3281 =>
table_value := 1027152
;
when 3282 =>
table_value := 1027536
;
when 3283 =>
table_value := 1028016
;
when 3284 =>
table_value := 1028512
;
when 3285 =>
table_value := 1028944
;
when 3286 =>
table_value := 1029296
;
when 3287 =>
table_value := 1029536
;
when 3288 =>
table_value := 1029776
;
when 3289 =>
table_value := 1030016
;
when 3290 =>
table_value := 1030272
;
when 3291 =>
table_value := 1030448
;
when 3292 =>
table_value := 1030560
;
when 3293 =>
table_value := 1030624
;
when 3294 =>
table_value := 1030640
;
when 3295 =>
table_value := 1030640
;
when 3296 =>
table_value := 1030672
;
when 3297 =>
table_value := 1030704
;
when 3298 =>
table_value := 1030720
;
when 3299 =>
table_value := 1030656
;
when 3300 =>
table_value := 1030624
;
when 3301 =>
table_value := 1030512
;
when 3302 =>
table_value := 1030432
;
when 3303 =>
table_value := 1030448
;
when 3304 =>
table_value := 1030416
;
when 3305 =>
table_value := 1030384
;
when 3306 =>
table_value := 1030400
;
when 3307 =>
table_value := 1030368
;
when 3308 =>
table_value := 1030352
;
when 3309 =>
table_value := 1030272
;
when 3310 =>
table_value := 1030112
;
when 3311 =>
table_value := 1029952
;
when 3312 =>
table_value := 1029712
;
when 3313 =>
table_value := 1029504
;
when 3314 =>
table_value := 1029344
;
when 3315 =>
table_value := 1029264
;
when 3316 =>
table_value := 1029328
;
when 3317 =>
table_value := 1029504
;
when 3318 =>
table_value := 1029744
;
when 3319 =>
table_value := 1030080
;
when 3320 =>
table_value := 1030464
;
when 3321 =>
table_value := 1030912
;
when 3322 =>
table_value := 1031328
;
when 3323 =>
table_value := 1031728
;
when 3324 =>
table_value := 1032080
;
when 3325 =>
table_value := 1032416
;
when 3326 =>
table_value := 1032800
;
when 3327 =>
table_value := 1033264
;
when 3328 =>
table_value := 1033856
;
when 3329 =>
table_value := 1034464
;
when 3330 =>
table_value := 1035136
;
when 3331 =>
table_value := 1035824
;
when 3332 =>
table_value := 1036464
;
when 3333 =>
table_value := 1037152
;
when 3334 =>
table_value := 1037808
;
when 3335 =>
table_value := 1038480
;
when 3336 =>
table_value := 1039152
;
when 3337 =>
table_value := 1039776
;
when 3338 =>
table_value := 1040368
;
when 3339 =>
table_value := 1040992
;
when 3340 =>
table_value := 1041648
;
when 3341 =>
table_value := 1042320
;
when 3342 =>
table_value := 1043040
;
when 3343 =>
table_value := 1043792
;
when 3344 =>
table_value := 1044608
;
when 3345 =>
table_value := 1045328
;
when 3346 =>
table_value := 1045984
;
when 3347 =>
table_value := 1046448
;
when 3348 =>
table_value := 1046800
;
when 3349 =>
table_value := 1047104
;
when 3350 =>
table_value := 1047440
;
when 3351 =>
table_value := 1047808
;
when 3352 =>
table_value := 1048208
;
when 3353 =>
table_value := 0
;
when 3354 =>
table_value := 304
;
when 3355 =>
table_value := 576
;
when 3356 =>
table_value := 880
;
when 3357 =>
table_value := 1248
;
when 3358 =>
table_value := 1600
;
when 3359 =>
table_value := 2080
;
when 3360 =>
table_value := 2560
;
when 3361 =>
table_value := 3056
;
when 3362 =>
table_value := 3552
;
when 3363 =>
table_value := 4016
;
when 3364 =>
table_value := 4512
;
when 3365 =>
table_value := 5072
;
when 3366 =>
table_value := 5712
;
when 3367 =>
table_value := 6368
;
when 3368 =>
table_value := 6992
;
when 3369 =>
table_value := 7536
;
when 3370 =>
table_value := 7952
;
when 3371 =>
table_value := 8288
;
when 3372 =>
table_value := 8608
;
when 3373 =>
table_value := 8912
;
when 3374 =>
table_value := 9184
;
when 3375 =>
table_value := 9424
;
when 3376 =>
table_value := 9680
;
when 3377 =>
table_value := 9952
;
when 3378 =>
table_value := 10240
;
when 3379 =>
table_value := 10576
;
when 3380 =>
table_value := 10928
;
when 3381 =>
table_value := 11328
;
when 3382 =>
table_value := 11776
;
when 3383 =>
table_value := 12208
;
when 3384 =>
table_value := 12656
;
when 3385 =>
table_value := 13104
;
when 3386 =>
table_value := 13440
;
when 3387 =>
table_value := 13728
;
when 3388 =>
table_value := 13984
;
when 3389 =>
table_value := 14160
;
when 3390 =>
table_value := 14272
;
when 3391 =>
table_value := 14416
;
when 3392 =>
table_value := 14592
;
when 3393 =>
table_value := 14816
;
when 3394 =>
table_value := 15040
;
when 3395 =>
table_value := 15248
;
when 3396 =>
table_value := 15488
;
when 3397 =>
table_value := 15760
;
when 3398 =>
table_value := 16080
;
when 3399 =>
table_value := 16432
;
when 3400 =>
table_value := 16832
;
when 3401 =>
table_value := 17248
;
when 3402 =>
table_value := 17696
;
when 3403 =>
table_value := 18208
;
when 3404 =>
table_value := 18720
;
when 3405 =>
table_value := 19264
;
when 3406 =>
table_value := 19744
;
when 3407 =>
table_value := 20096
;
when 3408 =>
table_value := 20400
;
when 3409 =>
table_value := 20704
;
when 3410 =>
table_value := 21056
;
when 3411 =>
table_value := 21456
;
when 3412 =>
table_value := 21856
;
when 3413 =>
table_value := 22320
;
when 3414 =>
table_value := 22736
;
when 3415 =>
table_value := 23136
;
when 3416 =>
table_value := 23472
;
when 3417 =>
table_value := 23648
;
when 3418 =>
table_value := 23856
;
when 3419 =>
table_value := 24032
;
when 3420 =>
table_value := 24128
;
when 3421 =>
table_value := 24128
;
when 3422 =>
table_value := 24176
;
when 3423 =>
table_value := 24160
;
when 3424 =>
table_value := 24176
;
when 3425 =>
table_value := 24272
;
when 3426 =>
table_value := 24304
;
when 3427 =>
table_value := 24256
;
when 3428 =>
table_value := 24000
;
when 3429 =>
table_value := 23648
;
when 3430 =>
table_value := 23184
;
when 3431 =>
table_value := 22784
;
when 3432 =>
table_value := 22528
;
when 3433 =>
table_value := 22320
;
when 3434 =>
table_value := 22112
;
when 3435 =>
table_value := 21952
;
when 3436 =>
table_value := 21776
;
when 3437 =>
table_value := 21616
;
when 3438 =>
table_value := 21488
;
when 3439 =>
table_value := 21424
;
when 3440 =>
table_value := 21392
;
when 3441 =>
table_value := 21328
;
when 3442 =>
table_value := 21280
;
when 3443 =>
table_value := 21200
;
when 3444 =>
table_value := 21104
;
when 3445 =>
table_value := 20992
;
when 3446 =>
table_value := 20896
;
when 3447 =>
table_value := 20736
;
when 3448 =>
table_value := 20576
;
when 3449 =>
table_value := 20448
;
when 3450 =>
table_value := 20336
;
when 3451 =>
table_value := 20304
;
when 3452 =>
table_value := 20256
;
when 3453 =>
table_value := 20272
;
when 3454 =>
table_value := 20320
;
when 3455 =>
table_value := 20320
;
when 3456 =>
table_value := 20304
;
when 3457 =>
table_value := 20208
;
when 3458 =>
table_value := 20176
;
when 3459 =>
table_value := 20064
;
when 3460 =>
table_value := 19936
;
when 3461 =>
table_value := 19840
;
when 3462 =>
table_value := 19680
;
when 3463 =>
table_value := 19472
;
when 3464 =>
table_value := 19328
;
when 3465 =>
table_value := 19136
;
when 3466 =>
table_value := 18912
;
when 3467 =>
table_value := 18640
;
when 3468 =>
table_value := 18336
;
when 3469 =>
table_value := 18032
;
when 3470 =>
table_value := 17728
;
when 3471 =>
table_value := 17456
;
when 3472 =>
table_value := 17248
;
when 3473 =>
table_value := 17072
;
when 3474 =>
table_value := 16928
;
when 3475 =>
table_value := 16832
;
when 3476 =>
table_value := 16848
;
when 3477 =>
table_value := 16912
;
when 3478 =>
table_value := 16944
;
when 3479 =>
table_value := 16992
;
when 3480 =>
table_value := 17072
;
when 3481 =>
table_value := 17232
;
when 3482 =>
table_value := 17488
;
when 3483 =>
table_value := 17904
;
when 3484 =>
table_value := 18384
;
when 3485 =>
table_value := 18944
;
when 3486 =>
table_value := 19472
;
when 3487 =>
table_value := 19968
;
when 3488 =>
table_value := 20464
;
when 3489 =>
table_value := 20960
;
when 3490 =>
table_value := 21472
;
when 3491 =>
table_value := 22016
;
when 3492 =>
table_value := 22464
;
when 3493 =>
table_value := 22928
;
when 3494 =>
table_value := 23392
;
when 3495 =>
table_value := 23776
;
when 3496 =>
table_value := 24144
;
when 3497 =>
table_value := 24464
;
when 3498 =>
table_value := 24752
;
when 3499 =>
table_value := 24960
;
when 3500 =>
table_value := 25120
;
when 3501 =>
table_value := 25184
;
when 3502 =>
table_value := 25280
;
when 3503 =>
table_value := 25328
;
when 3504 =>
table_value := 25504
;
when 3505 =>
table_value := 25616
;
when 3506 =>
table_value := 25728
;
when 3507 =>
table_value := 25760
;
when 3508 =>
table_value := 25696
;
when 3509 =>
table_value := 25600
;
when 3510 =>
table_value := 25520
;
when 3511 =>
table_value := 25456
;
when 3512 =>
table_value := 25376
;
when 3513 =>
table_value := 25280
;
when 3514 =>
table_value := 25200
;
when 3515 =>
table_value := 25136
;
when 3516 =>
table_value := 25152
;
when 3517 =>
table_value := 25152
;
when 3518 =>
table_value := 25072
;
when 3519 =>
table_value := 25024
;
when 3520 =>
table_value := 25008
;
when 3521 =>
table_value := 25008
;
when 3522 =>
table_value := 25056
;
when 3523 =>
table_value := 25104
;
when 3524 =>
table_value := 25088
;
when 3525 =>
table_value := 25024
;
when 3526 =>
table_value := 24880
;
when 3527 =>
table_value := 24816
;
when 3528 =>
table_value := 24800
;
when 3529 =>
table_value := 24960
;
when 3530 =>
table_value := 25264
;
when 3531 =>
table_value := 25584
;
when 3532 =>
table_value := 25952
;
when 3533 =>
table_value := 26288
;
when 3534 =>
table_value := 26704
;
when 3535 =>
table_value := 27136
;
when 3536 =>
table_value := 27680
;
when 3537 =>
table_value := 28144
;
when 3538 =>
table_value := 28576
;
when 3539 =>
table_value := 28960
;
when 3540 =>
table_value := 29344
;
when 3541 =>
table_value := 29744
;
when 3542 =>
table_value := 30048
;
when 3543 =>
table_value := 30304
;
when 3544 =>
table_value := 30512
;
when 3545 =>
table_value := 30720
;
when 3546 =>
table_value := 30944
;
when 3547 =>
table_value := 31264
;
when 3548 =>
table_value := 31520
;
when 3549 =>
table_value := 31760
;
when 3550 =>
table_value := 31920
;
when 3551 =>
table_value := 32096
;
when 3552 =>
table_value := 32368
;
when 3553 =>
table_value := 32640
;
when 3554 =>
table_value := 33008
;
when 3555 =>
table_value := 33328
;
when 3556 =>
table_value := 33632
;
when 3557 =>
table_value := 33952
;
when 3558 =>
table_value := 34224
;
when 3559 =>
table_value := 34320
;
when 3560 =>
table_value := 34368
;
when 3561 =>
table_value := 34528
;
when 3562 =>
table_value := 34944
;
when 3563 =>
table_value := 35456
;
when 3564 =>
table_value := 35936
;
when 3565 =>
table_value := 36336
;
when 3566 =>
table_value := 36608
;
when 3567 =>
table_value := 36864
;
when 3568 =>
table_value := 37248
;
when 3569 =>
table_value := 37648
;
when 3570 =>
table_value := 38016
;
when 3571 =>
table_value := 38304
;
when 3572 =>
table_value := 38432
;
when 3573 =>
table_value := 38496
;
when 3574 =>
table_value := 38560
;
when 3575 =>
table_value := 38624
;
when 3576 =>
table_value := 38592
;
when 3577 =>
table_value := 38560
;
when 3578 =>
table_value := 38608
;
when 3579 =>
table_value := 38704
;
when 3580 =>
table_value := 38784
;
when 3581 =>
table_value := 38944
;
when 3582 =>
table_value := 39040
;
when 3583 =>
table_value := 39120
;
when 3584 =>
table_value := 39248
;
when 3585 =>
table_value := 39392
;
when 3586 =>
table_value := 39568
;
when 3587 =>
table_value := 39728
;
when 3588 =>
table_value := 39808
;
when 3589 =>
table_value := 39760
;
when 3590 =>
table_value := 39552
;
when 3591 =>
table_value := 39168
;
when 3592 =>
table_value := 38704
;
when 3593 =>
table_value := 38352
;
when 3594 =>
table_value := 38144
;
when 3595 =>
table_value := 37968
;
when 3596 =>
table_value := 37760
;
when 3597 =>
table_value := 37488
;
when 3598 =>
table_value := 37136
;
when 3599 =>
table_value := 37008
;
when 3600 =>
table_value := 37216
;
when 3601 =>
table_value := 37552
;
when 3602 =>
table_value := 37856
;
when 3603 =>
table_value := 38032
;
when 3604 =>
table_value := 38208
;
when 3605 =>
table_value := 38384
;
when 3606 =>
table_value := 38512
;
when 3607 =>
table_value := 38624
;
when 3608 =>
table_value := 38640
;
when 3609 =>
table_value := 38640
;
when 3610 =>
table_value := 38624
;
when 3611 =>
table_value := 38576
;
when 3612 =>
table_value := 38496
;
when 3613 =>
table_value := 38400
;
when 3614 =>
table_value := 38320
;
when 3615 =>
table_value := 38240
;
when 3616 =>
table_value := 38192
;
when 3617 =>
table_value := 38144
;
when 3618 =>
table_value := 38176
;
when 3619 =>
table_value := 38128
;
when 3620 =>
table_value := 38112
;
when 3621 =>
table_value := 38064
;
when 3622 =>
table_value := 37952
;
when 3623 =>
table_value := 37792
;
when 3624 =>
table_value := 37648
;
when 3625 =>
table_value := 37616
;
when 3626 =>
table_value := 37680
;
when 3627 =>
table_value := 37824
;
when 3628 =>
table_value := 38016
;
when 3629 =>
table_value := 38160
;
when 3630 =>
table_value := 38288
;
when 3631 =>
table_value := 38352
;
when 3632 =>
table_value := 38320
;
when 3633 =>
table_value := 38304
;
when 3634 =>
table_value := 38320
;
when 3635 =>
table_value := 38256
;
when 3636 =>
table_value := 38192
;
when 3637 =>
table_value := 38096
;
when 3638 =>
table_value := 37968
;
when 3639 =>
table_value := 37872
;
when 3640 =>
table_value := 37776
;
when 3641 =>
table_value := 37712
;
when 3642 =>
table_value := 37728
;
when 3643 =>
table_value := 37712
;
when 3644 =>
table_value := 37792
;
when 3645 =>
table_value := 37872
;
when 3646 =>
table_value := 37984
;
when 3647 =>
table_value := 38048
;
when 3648 =>
table_value := 38064
;
when 3649 =>
table_value := 38096
;
when 3650 =>
table_value := 38016
;
when 3651 =>
table_value := 37968
;
when 3652 =>
table_value := 37904
;
when 3653 =>
table_value := 37808
;
when 3654 =>
table_value := 37664
;
when 3655 =>
table_value := 37552
;
when 3656 =>
table_value := 37248
;
when 3657 =>
table_value := 37008
;
when 3658 =>
table_value := 36704
;
when 3659 =>
table_value := 36464
;
when 3660 =>
table_value := 36256
;
when 3661 =>
table_value := 36000
;
when 3662 =>
table_value := 35728
;
when 3663 =>
table_value := 35456
;
when 3664 =>
table_value := 35184
;
when 3665 =>
table_value := 34912
;
when 3666 =>
table_value := 34592
;
when 3667 =>
table_value := 34224
;
when 3668 =>
table_value := 33840
;
when 3669 =>
table_value := 33392
;
when 3670 =>
table_value := 32976
;
when 3671 =>
table_value := 32528
;
when 3672 =>
table_value := 32016
;
when 3673 =>
table_value := 31472
;
when 3674 =>
table_value := 30944
;
when 3675 =>
table_value := 30368
;
when 3676 =>
table_value := 29664
;
when 3677 =>
table_value := 28944
;
when 3678 =>
table_value := 28256
;
when 3679 =>
table_value := 27536
;
when 3680 =>
table_value := 26848
;
when 3681 =>
table_value := 26272
;
when 3682 =>
table_value := 25776
;
when 3683 =>
table_value := 25344
;
when 3684 =>
table_value := 24896
;
when 3685 =>
table_value := 24400
;
when 3686 =>
table_value := 23904
;
when 3687 =>
table_value := 23456
;
when 3688 =>
table_value := 23040
;
when 3689 =>
table_value := 22640
;
when 3690 =>
table_value := 22240
;
when 3691 =>
table_value := 21792
;
when 3692 =>
table_value := 21360
;
when 3693 =>
table_value := 20928
;
when 3694 =>
table_value := 20544
;
when 3695 =>
table_value := 20304
;
when 3696 =>
table_value := 20080
;
when 3697 =>
table_value := 19920
;
when 3698 =>
table_value := 19760
;
when 3699 =>
table_value := 19552
;
when 3700 =>
table_value := 19312
;
when 3701 =>
table_value := 19056
;
when 3702 =>
table_value := 18800
;
when 3703 =>
table_value := 18496
;
when 3704 =>
table_value := 18240
;
when 3705 =>
table_value := 18016
;
when 3706 =>
table_value := 17840
;
when 3707 =>
table_value := 17664
;
when 3708 =>
table_value := 17456
;
when 3709 =>
table_value := 17152
;
when 3710 =>
table_value := 16704
;
when 3711 =>
table_value := 16272
;
when 3712 =>
table_value := 15872
;
when 3713 =>
table_value := 15504
;
when 3714 =>
table_value := 15120
;
when 3715 =>
table_value := 14624
;
when 3716 =>
table_value := 14096
;
when 3717 =>
table_value := 13504
;
when 3718 =>
table_value := 12944
;
when 3719 =>
table_value := 12512
;
when 3720 =>
table_value := 12272
;
when 3721 =>
table_value := 12128
;
when 3722 =>
table_value := 11968
;
when 3723 =>
table_value := 11776
;
when 3724 =>
table_value := 11424
;
when 3725 =>
table_value := 11072
;
when 3726 =>
table_value := 10736
;
when 3727 =>
table_value := 10448
;
when 3728 =>
table_value := 10176
;
when 3729 =>
table_value := 9936
;
when 3730 =>
table_value := 9744
;
when 3731 =>
table_value := 9504
;
when 3732 =>
table_value := 9168
;
when 3733 =>
table_value := 8864
;
when 3734 =>
table_value := 8496
;
when 3735 =>
table_value := 8112
;
when 3736 =>
table_value := 7696
;
when 3737 =>
table_value := 7184
;
when 3738 =>
table_value := 6640
;
when 3739 =>
table_value := 6032
;
when 3740 =>
table_value := 5328
;
when 3741 =>
table_value := 4624
;
when 3742 =>
table_value := 3952
;
when 3743 =>
table_value := 3408
;
when 3744 =>
table_value := 2912
;
when 3745 =>
table_value := 2432
;
when 3746 =>
table_value := 2032
;
when 3747 =>
table_value := 1632
;
when 3748 =>
table_value := 1296
;
when 3749 =>
table_value := 960
;
when 3750 =>
table_value := 656
;
when 3751 =>
table_value := 288
;
when 3752 =>
table_value := 1048480
;
when 3753 =>
table_value := 1047984
;
when 3754 =>
table_value := 1047392
;
when 3755 =>
table_value := 1046672
;
when 3756 =>
table_value := 1045984
;
when 3757 =>
table_value := 1045392
;
when 3758 =>
table_value := 1044752
;
when 3759 =>
table_value := 1044192
;
when 3760 =>
table_value := 1043664
;
when 3761 =>
table_value := 1043184
;
when 3762 =>
table_value := 1042800
;
when 3763 =>
table_value := 1042496
;
when 3764 =>
table_value := 1042192
;
when 3765 =>
table_value := 1041856
;
when 3766 =>
table_value := 1041536
;
when 3767 =>
table_value := 1041168
;
when 3768 =>
table_value := 1040752
;
when 3769 =>
table_value := 1040304
;
when 3770 =>
table_value := 1039792
;
when 3771 =>
table_value := 1039280
;
when 3772 =>
table_value := 1038688
;
when 3773 =>
table_value := 1038000
;
when 3774 =>
table_value := 1037168
;
when 3775 =>
table_value := 1036224
;
when 3776 =>
table_value := 1035216
;
when 3777 =>
table_value := 1034288
;
when 3778 =>
table_value := 1033440
;
when 3779 =>
table_value := 1032784
;
when 3780 =>
table_value := 1032176
;
when 3781 =>
table_value := 1031584
;
when 3782 =>
table_value := 1031024
;
when 3783 =>
table_value := 1030528
;
when 3784 =>
table_value := 1030064
;
when 3785 =>
table_value := 1029632
;
when 3786 =>
table_value := 1029120
;
when 3787 =>
table_value := 1028560
;
when 3788 =>
table_value := 1028016
;
when 3789 =>
table_value := 1027408
;
when 3790 =>
table_value := 1026784
;
when 3791 =>
table_value := 1026128
;
when 3792 =>
table_value := 1025520
;
when 3793 =>
table_value := 1024880
;
when 3794 =>
table_value := 1024256
;
when 3795 =>
table_value := 1023568
;
when 3796 =>
table_value := 1022832
;
when 3797 =>
table_value := 1022000
;
when 3798 =>
table_value := 1021120
;
when 3799 =>
table_value := 1020208
;
when 3800 =>
table_value := 1019360
;
when 3801 =>
table_value := 1018624
;
when 3802 =>
table_value := 1018016
;
when 3803 =>
table_value := 1017408
;
when 3804 =>
table_value := 1016848
;
when 3805 =>
table_value := 1016352
;
when 3806 =>
table_value := 1015968
;
when 3807 =>
table_value := 1015744
;
when 3808 =>
table_value := 1015696
;
when 3809 =>
table_value := 1015744
;
when 3810 =>
table_value := 1015808
;
when 3811 =>
table_value := 1015776
;
when 3812 =>
table_value := 1015648
;
when 3813 =>
table_value := 1015520
;
when 3814 =>
table_value := 1015408
;
when 3815 =>
table_value := 1015376
;
when 3816 =>
table_value := 1015312
;
when 3817 =>
table_value := 1015136
;
when 3818 =>
table_value := 1014896
;
when 3819 =>
table_value := 1014528
;
when 3820 =>
table_value := 1014064
;
when 3821 =>
table_value := 1013696
;
when 3822 =>
table_value := 1013440
;
when 3823 =>
table_value := 1013216
;
when 3824 =>
table_value := 1013088
;
when 3825 =>
table_value := 1012896
;
when 3826 =>
table_value := 1012640
;
when 3827 =>
table_value := 1012368
;
when 3828 =>
table_value := 1012032
;
when 3829 =>
table_value := 1011584
;
when 3830 =>
table_value := 1011120
;
when 3831 =>
table_value := 1010544
;
when 3832 =>
table_value := 1010032
;
when 3833 =>
table_value := 1009536
;
when 3834 =>
table_value := 1009088
;
when 3835 =>
table_value := 1008688
;
when 3836 =>
table_value := 1008336
;
when 3837 =>
table_value := 1008000
;
when 3838 =>
table_value := 1007680
;
when 3839 =>
table_value := 1007328
;
when 3840 =>
table_value := 1006944
;
when 3841 =>
table_value := 1006464
;
when 3842 =>
table_value := 1005904
;
when 3843 =>
table_value := 1005456
;
when 3844 =>
table_value := 1005168
;
when 3845 =>
table_value := 1004912
;
when 3846 =>
table_value := 1004672
;
when 3847 =>
table_value := 1004352
;
when 3848 =>
table_value := 1003984
;
when 3849 =>
table_value := 1003568
;
when 3850 =>
table_value := 1003120
;
when 3851 =>
table_value := 1002672
;
when 3852 =>
table_value := 1002240
;
when 3853 =>
table_value := 1001840
;
when 3854 =>
table_value := 1001536
;
when 3855 =>
table_value := 1001280
;
when 3856 =>
table_value := 1001120
;
when 3857 =>
table_value := 1001072
;
when 3858 =>
table_value := 1001152
;
when 3859 =>
table_value := 1001296
;
when 3860 =>
table_value := 1001472
;
when 3861 =>
table_value := 1001696
;
when 3862 =>
table_value := 1002048
;
when 3863 =>
table_value := 1002560
;
when 3864 =>
table_value := 1003152
;
when 3865 =>
table_value := 1003792
;
when 3866 =>
table_value := 1004352
;
when 3867 =>
table_value := 1004816
;
when 3868 =>
table_value := 1005200
;
when 3869 =>
table_value := 1005552
;
when 3870 =>
table_value := 1005920
;
when 3871 =>
table_value := 1006288
;
when 3872 =>
table_value := 1006608
;
when 3873 =>
table_value := 1006912
;
when 3874 =>
table_value := 1007280
;
when 3875 =>
table_value := 1007616
;
when 3876 =>
table_value := 1008064
;
when 3877 =>
table_value := 1008560
;
when 3878 =>
table_value := 1009168
;
when 3879 =>
table_value := 1009840
;
when 3880 =>
table_value := 1010624
;
when 3881 =>
table_value := 1011376
;
when 3882 =>
table_value := 1012048
;
when 3883 =>
table_value := 1012704
;
when 3884 =>
table_value := 1013280
;
when 3885 =>
table_value := 1013872
;
when 3886 =>
table_value := 1014400
;
when 3887 =>
table_value := 1014896
;
when 3888 =>
table_value := 1015312
;
when 3889 =>
table_value := 1015680
;
when 3890 =>
table_value := 1015920
;
when 3891 =>
table_value := 1016064
;
when 3892 =>
table_value := 1016272
;
when 3893 =>
table_value := 1016624
;
when 3894 =>
table_value := 1017072
;
when 3895 =>
table_value := 1017600
;
when 3896 =>
table_value := 1018192
;
when 3897 =>
table_value := 1018752
;
when 3898 =>
table_value := 1019376
;
when 3899 =>
table_value := 1019952
;
when 3900 =>
table_value := 1020544
;
when 3901 =>
table_value := 1021168
;
when 3902 =>
table_value := 1021760
;
when 3903 =>
table_value := 1022304
;
when 3904 =>
table_value := 1022848
;
when 3905 =>
table_value := 1023456
;
when 3906 =>
table_value := 1024112
;
when 3907 =>
table_value := 1024816
;
when 3908 =>
table_value := 1025488
;
when 3909 =>
table_value := 1026160
;
when 3910 =>
table_value := 1026720
;
when 3911 =>
table_value := 1027280
;
when 3912 =>
table_value := 1027792
;
when 3913 =>
table_value := 1028384
;
when 3914 =>
table_value := 1028928
;
when 3915 =>
table_value := 1029440
;
when 3916 =>
table_value := 1029888
;
when 3917 =>
table_value := 1030336
;
when 3918 =>
table_value := 1030816
;
when 3919 =>
table_value := 1031344
;
when 3920 =>
table_value := 1031968
;
when 3921 =>
table_value := 1032736
;
when 3922 =>
table_value := 1033520
;
when 3923 =>
table_value := 1034416
;
when 3924 =>
table_value := 1035280
;
when 3925 =>
table_value := 1036064
;
when 3926 =>
table_value := 1036976
;
when 3927 =>
table_value := 1037840
;
when 3928 =>
table_value := 1038704
;
when 3929 =>
table_value := 1039488
;
when 3930 =>
table_value := 1040144
;
when 3931 =>
table_value := 1040704
;
when 3932 =>
table_value := 1041264
;
when 3933 =>
table_value := 1041712
;
when 3934 =>
table_value := 1042288
;
when 3935 =>
table_value := 1042864
;
when 3936 =>
table_value := 1043344
;
when 3937 =>
table_value := 1043808
;
when 3938 =>
table_value := 1044288
;
when 3939 =>
table_value := 1044720
;
when 3940 =>
table_value := 1045184
;
when 3941 =>
table_value := 1045664
;
when 3942 =>
table_value := 1046112
;
when 3943 =>
table_value := 1046496
;
when 3944 =>
table_value := 1046896
;
when 3945 =>
table_value := 1047216
;
when 3946 =>
table_value := 1047584
;
when 3947 =>
table_value := 1047952
;
when 3948 =>
table_value := 1048288
;
when 3949 =>
table_value := 64
;
when 3950 =>
table_value := 416
;
when 3951 =>
table_value := 816
;
when 3952 =>
table_value := 1136
;
when 3953 =>
table_value := 1408
;
when 3954 =>
table_value := 1648
;
when 3955 =>
table_value := 1776
;
when 3956 =>
table_value := 1904
;
when 3957 =>
table_value := 1968
;
when 3958 =>
table_value := 2032
;
when 3959 =>
table_value := 2048
;
when 3960 =>
table_value := 2080
;
when 3961 =>
table_value := 2064
;
when 3962 =>
table_value := 2000
;
when 3963 =>
table_value := 1920
;
when 3964 =>
table_value := 1888
;
when 3965 =>
table_value := 1968
;
when 3966 =>
table_value := 2128
;
when 3967 =>
table_value := 2400
;
when 3968 =>
table_value := 2704
;
when 3969 =>
table_value := 3024
;
when 3970 =>
table_value := 3376
;
when 3971 =>
table_value := 3648
;
when 3972 =>
table_value := 3920
;
when 3973 =>
table_value := 4192
;
when 3974 =>
table_value := 4368
;
when 3975 =>
table_value := 4544
;
when 3976 =>
table_value := 4784
;
when 3977 =>
table_value := 5024
;
when 3978 =>
table_value := 5328
;
when 3979 =>
table_value := 5568
;
when 3980 =>
table_value := 5792
;
when 3981 =>
table_value := 5984
;
when 3982 =>
table_value := 6224
;
when 3983 =>
table_value := 6464
;
when 3984 =>
table_value := 6784
;
when 3985 =>
table_value := 7072
;
when 3986 =>
table_value := 7328
;
when 3987 =>
table_value := 7616
;
when 3988 =>
table_value := 7856
;
when 3989 =>
table_value := 8112
;
when 3990 =>
table_value := 8320
;
when 3991 =>
table_value := 8496
;
when 3992 =>
table_value := 8608
;
when 3993 =>
table_value := 8624
;
when 3994 =>
table_value := 8480
;
when 3995 =>
table_value := 8320
;
when 3996 =>
table_value := 8128
;
when 3997 =>
table_value := 7856
;
when 3998 =>
table_value := 7568
;
when 3999 =>
table_value := 7280
;
when 4000 =>
table_value := 6944
;
when 4001 =>
table_value := 6656
;
when 4002 =>
table_value := 6400
;
when 4003 =>
table_value := 6144
;
when 4004 =>
table_value := 5920
;
when 4005 =>
table_value := 5616
;
when 4006 =>
table_value := 5248
;
when 4007 =>
table_value := 4944
;
when 4008 =>
table_value := 4656
;
when 4009 =>
table_value := 4368
;
when 4010 =>
table_value := 4160
;
when 4011 =>
table_value := 3920
;
when 4012 =>
table_value := 3728
;
when 4013 =>
table_value := 3520
;
when 4014 =>
table_value := 3376
;
when 4015 =>
table_value := 3312
;
when 4016 =>
table_value := 3264
;
when 4017 =>
table_value := 3168
;
when 4018 =>
table_value := 3072
;
when 4019 =>
table_value := 2944
;
when 4020 =>
table_value := 2896
;
when 4021 =>
table_value := 2848
;
when 4022 =>
table_value := 2784
;
when 4023 =>
table_value := 2720
;
when 4024 =>
table_value := 2592
;
when 4025 =>
table_value := 2544
;
when 4026 =>
table_value := 2544
;
when 4027 =>
table_value := 2512
;
when 4028 =>
table_value := 2528
;
when 4029 =>
table_value := 2464
;
when 4030 =>
table_value := 2400
;
when 4031 =>
table_value := 2240
;
when 4032 =>
table_value := 2080
;
when 4033 =>
table_value := 1856
;
when 4034 =>
table_value := 1632
;
when 4035 =>
table_value := 1408
;
when 4036 =>
table_value := 1200
;
when 4037 =>
table_value := 992
;
when 4038 =>
table_value := 784
;
when 4039 =>
table_value := 544
;
when 4040 =>
table_value := 336
;
when 4041 =>
table_value := 80
;
when 4042 =>
table_value := 1048480
;
when 4043 =>
table_value := 1048288
;
when 4044 =>
table_value := 1048048
;
when 4045 =>
table_value := 1047840
;
when 4046 =>
table_value := 1047648
;
when 4047 =>
table_value := 1047360
;
when 4048 =>
table_value := 1047120
;
when 4049 =>
table_value := 1046944
;
when 4050 =>
table_value := 1046816
;
when 4051 =>
table_value := 1046800
;
when 4052 =>
table_value := 1046832
;
when 4053 =>
table_value := 1046944
;
when 4054 =>
table_value := 1047008
;
when 4055 =>
table_value := 1047136
;
when 4056 =>
table_value := 1047296
;
when 4057 =>
table_value := 1047472
;
when 4058 =>
table_value := 1047536
;
when 4059 =>
table_value := 1047584
;
when 4060 =>
table_value := 1047520
;
when 4061 =>
table_value := 1047440
;
when 4062 =>
table_value := 1047296
;
when 4063 =>
table_value := 1047232
;
when 4064 =>
table_value := 1047184
;
when 4065 =>
table_value := 1047120
;
when 4066 =>
table_value := 1046992
;
when 4067 =>
table_value := 1046800
;
when 4068 =>
table_value := 1046576
;
when 4069 =>
table_value := 1046336
;
when 4070 =>
table_value := 1046064
;
when 4071 =>
table_value := 1045872
;
when 4072 =>
table_value := 1045648
;
when 4073 =>
table_value := 1045344
;
when 4074 =>
table_value := 1045008
;
when 4075 =>
table_value := 1044672
;
when 4076 =>
table_value := 1044400
;
when 4077 =>
table_value := 1044256
;
when 4078 =>
table_value := 1044176
;
when 4079 =>
table_value := 1044160
;
when 4080 =>
table_value := 1044128
;
when 4081 =>
table_value := 1044096
;
when 4082 =>
table_value := 1044032
;
when 4083 =>
table_value := 1043984
;
when 4084 =>
table_value := 1043920
;
when 4085 =>
table_value := 1043744
;
when 4086 =>
table_value := 1043584
;
when 4087 =>
table_value := 1043280
;
when 4088 =>
table_value := 1042912
;
when 4089 =>
table_value := 1042544
;
when 4090 =>
table_value := 1042192
;
when 4091 =>
table_value := 1041856
;
when 4092 =>
table_value := 1041568
;
when 4093 =>
table_value := 1041296
;
when 4094 =>
table_value := 1041008
;
when 4095 =>
table_value := 1040752
;
when 4096 =>
table_value := 1040544
;
when 4097 =>
table_value := 1040368
;
when 4098 =>
table_value := 1040208
;
when 4099 =>
table_value := 1040000
;
when 4100 =>
table_value := 1039824
;
when 4101 =>
table_value := 1039664
;
when 4102 =>
table_value := 1039456
;
when 4103 =>
table_value := 1039232
;
when 4104 =>
table_value := 1039056
;
when 4105 =>
table_value := 1038832
;
when 4106 =>
table_value := 1038592
;
when 4107 =>
table_value := 1038400
;
when 4108 =>
table_value := 1038192
;
when 4109 =>
table_value := 1038096
;
when 4110 =>
table_value := 1037968
;
when 4111 =>
table_value := 1037776
;
when 4112 =>
table_value := 1037600
;
when 4113 =>
table_value := 1037280
;
when 4114 =>
table_value := 1036928
;
when 4115 =>
table_value := 1036608
;
when 4116 =>
table_value := 1036208
;
when 4117 =>
table_value := 1035776
;
when 4118 =>
table_value := 1035280
;
when 4119 =>
table_value := 1034752
;
when 4120 =>
table_value := 1034256
;
when 4121 =>
table_value := 1033776
;
when 4122 =>
table_value := 1033344
;
when 4123 =>
table_value := 1033040
;
when 4124 =>
table_value := 1032768
;
when 4125 =>
table_value := 1032528
;
when 4126 =>
table_value := 1032384
;
when 4127 =>
table_value := 1032288
;
when 4128 =>
table_value := 1032272
;
when 4129 =>
table_value := 1032256
;
when 4130 =>
table_value := 1032288
;
when 4131 =>
table_value := 1032320
;
when 4132 =>
table_value := 1032336
;
when 4133 =>
table_value := 1032320
;
when 4134 =>
table_value := 1032272
;
when 4135 =>
table_value := 1032064
;
when 4136 =>
table_value := 1031904
;
when 4137 =>
table_value := 1031712
;
when 4138 =>
table_value := 1031552
;
when 4139 =>
table_value := 1031376
;
when 4140 =>
table_value := 1031248
;
when 4141 =>
table_value := 1031120
;
when 4142 =>
table_value := 1030960
;
when 4143 =>
table_value := 1030880
;
when 4144 =>
table_value := 1030816
;
when 4145 =>
table_value := 1030736
;
when 4146 =>
table_value := 1030672
;
when 4147 =>
table_value := 1030512
;
when 4148 =>
table_value := 1030304
;
when 4149 =>
table_value := 1030000
;
when 4150 =>
table_value := 1029760
;
when 4151 =>
table_value := 1029632
;
when 4152 =>
table_value := 1029552
;
when 4153 =>
table_value := 1029472
;
when 4154 =>
table_value := 1029344
;
when 4155 =>
table_value := 1029248
;
when 4156 =>
table_value := 1029072
;
when 4157 =>
table_value := 1028928
;
when 4158 =>
table_value := 1028816
;
when 4159 =>
table_value := 1028688
;
when 4160 =>
table_value := 1028576
;
when 4161 =>
table_value := 1028384
;
when 4162 =>
table_value := 1028224
;
when 4163 =>
table_value := 1027968
;
when 4164 =>
table_value := 1027808
;
when 4165 =>
table_value := 1027696
;
when 4166 =>
table_value := 1027552
;
when 4167 =>
table_value := 1027472
;
when 4168 =>
table_value := 1027280
;
when 4169 =>
table_value := 1027104
;
when 4170 =>
table_value := 1026832
;
when 4171 =>
table_value := 1026624
;
when 4172 =>
table_value := 1026480
;
when 4173 =>
table_value := 1026400
;
when 4174 =>
table_value := 1026352
;
when 4175 =>
table_value := 1026400
;
when 4176 =>
table_value := 1026448
;
when 4177 =>
table_value := 1026656
;
when 4178 =>
table_value := 1026816
;
when 4179 =>
table_value := 1027040
;
when 4180 =>
table_value := 1027232
;
when 4181 =>
table_value := 1027472
;
when 4182 =>
table_value := 1027808
;
when 4183 =>
table_value := 1028096
;
when 4184 =>
table_value := 1028464
;
when 4185 =>
table_value := 1028896
;
when 4186 =>
table_value := 1029360
;
when 4187 =>
table_value := 1029856
;
when 4188 =>
table_value := 1030352
;
when 4189 =>
table_value := 1030848
;
when 4190 =>
table_value := 1031296
;
when 4191 =>
table_value := 1031616
;
when 4192 =>
table_value := 1031872
;
when 4193 =>
table_value := 1032048
;
when 4194 =>
table_value := 1032256
;
when 4195 =>
table_value := 1032528
;
when 4196 =>
table_value := 1032896
;
when 4197 =>
table_value := 1033248
;
when 4198 =>
table_value := 1033600
;
when 4199 =>
table_value := 1033872
;
when 4200 =>
table_value := 1034208
;
when 4201 =>
table_value := 1034576
;
when 4202 =>
table_value := 1035024
;
when 4203 =>
table_value := 1035520
;
when 4204 =>
table_value := 1035984
;
when 4205 =>
table_value := 1036432
;
when 4206 =>
table_value := 1036816
;
when 4207 =>
table_value := 1037248
;
when 4208 =>
table_value := 1037632
;
when 4209 =>
table_value := 1037952
;
when 4210 =>
table_value := 1038240
;
when 4211 =>
table_value := 1038448
;
when 4212 =>
table_value := 1038624
;
when 4213 =>
table_value := 1038784
;
when 4214 =>
table_value := 1039024
;
when 4215 =>
table_value := 1039264
;
when 4216 =>
table_value := 1039536
;
when 4217 =>
table_value := 1039776
;
when 4218 =>
table_value := 1040048
;
when 4219 =>
table_value := 1040304
;
when 4220 =>
table_value := 1040576
;
when 4221 =>
table_value := 1040960
;
when 4222 =>
table_value := 1041232
;
when 4223 =>
table_value := 1041488
;
when 4224 =>
table_value := 1041744
;
when 4225 =>
table_value := 1041856
;
when 4226 =>
table_value := 1041984
;
when 4227 =>
table_value := 1042000
;
when 4228 =>
table_value := 1041904
;
when 4229 =>
table_value := 1041872
;
when 4230 =>
table_value := 1041856
;
when 4231 =>
table_value := 1041808
;
when 4232 =>
table_value := 1041696
;
when 4233 =>
table_value := 1041632
;
when 4234 =>
table_value := 1041552
;
when 4235 =>
table_value := 1041536
;
when 4236 =>
table_value := 1041632
;
when 4237 =>
table_value := 1041840
;
when 4238 =>
table_value := 1041936
;
when 4239 =>
table_value := 1042176
;
when 4240 =>
table_value := 1042320
;
when 4241 =>
table_value := 1042576
;
when 4242 =>
table_value := 1042912
;
when 4243 =>
table_value := 1043376
;
when 4244 =>
table_value := 1043872
;
when 4245 =>
table_value := 1044400
;
when 4246 =>
table_value := 1044944
;
when 4247 =>
table_value := 1045488
;
when 4248 =>
table_value := 1046032
;
when 4249 =>
table_value := 1046576
;
when 4250 =>
table_value := 1047184
;
when 4251 =>
table_value := 1047872
;
when 4252 =>
table_value := 1048480
;
when 4253 =>
table_value := 400
;
when 4254 =>
table_value := 896
;
when 4255 =>
table_value := 1376
;
when 4256 =>
table_value := 1808
;
when 4257 =>
table_value := 2288
;
when 4258 =>
table_value := 2736
;
when 4259 =>
table_value := 3296
;
when 4260 =>
table_value := 3856
;
when 4261 =>
table_value := 4480
;
when 4262 =>
table_value := 5088
;
when 4263 =>
table_value := 5632
;
when 4264 =>
table_value := 6176
;
when 4265 =>
table_value := 6720
;
when 4266 =>
table_value := 7328
;
when 4267 =>
table_value := 7952
;
when 4268 =>
table_value := 8656
;
when 4269 =>
table_value := 9328
;
when 4270 =>
table_value := 9968
;
when 4271 =>
table_value := 10624
;
when 4272 =>
table_value := 11184
;
when 4273 =>
table_value := 11744
;
when 4274 =>
table_value := 12352
;
when 4275 =>
table_value := 12880
;
when 4276 =>
table_value := 13392
;
when 4277 =>
table_value := 13920
;
when 4278 =>
table_value := 14448
;
when 4279 =>
table_value := 15072
;
when 4280 =>
table_value := 15696
;
when 4281 =>
table_value := 16384
;
when 4282 =>
table_value := 17104
;
when 4283 =>
table_value := 17728
;
when 4284 =>
table_value := 18464
;
when 4285 =>
table_value := 19088
;
when 4286 =>
table_value := 19792
;
when 4287 =>
table_value := 20464
;
when 4288 =>
table_value := 21152
;
when 4289 =>
table_value := 21840
;
when 4290 =>
table_value := 22448
;
when 4291 =>
table_value := 23104
;
when 4292 =>
table_value := 23776
;
when 4293 =>
table_value := 24400
;
when 4294 =>
table_value := 24912
;
when 4295 =>
table_value := 25424
;
when 4296 =>
table_value := 25888
;
when 4297 =>
table_value := 26368
;
when 4298 =>
table_value := 26880
;
when 4299 =>
table_value := 27392
;
when 4300 =>
table_value := 27968
;
when 4301 =>
table_value := 28464
;
when 4302 =>
table_value := 28992
;
when 4303 =>
table_value := 29456
;
when 4304 =>
table_value := 29968
;
when 4305 =>
table_value := 30384
;
when 4306 =>
table_value := 30816
;
when 4307 =>
table_value := 31248
;
when 4308 =>
table_value := 31584
;
when 4309 =>
table_value := 31936
;
when 4310 =>
table_value := 32272
;
when 4311 =>
table_value := 32640
;
when 4312 =>
table_value := 32928
;
when 4313 =>
table_value := 33216
;
when 4314 =>
table_value := 33504
;
when 4315 =>
table_value := 33728
;
when 4316 =>
table_value := 34000
;
when 4317 =>
table_value := 34208
;
when 4318 =>
table_value := 34528
;
when 4319 =>
table_value := 34720
;
when 4320 =>
table_value := 34912
;
when 4321 =>
table_value := 35056
;
when 4322 =>
table_value := 35136
;
when 4323 =>
table_value := 35152
;
when 4324 =>
table_value := 35088
;
when 4325 =>
table_value := 34944
;
when 4326 =>
table_value := 34816
;
when 4327 =>
table_value := 34624
;
when 4328 =>
table_value := 34400
;
when 4329 =>
table_value := 34256
;
when 4330 =>
table_value := 34080
;
when 4331 =>
table_value := 33952
;
when 4332 =>
table_value := 33888
;
when 4333 =>
table_value := 33760
;
when 4334 =>
table_value := 33632
;
when 4335 =>
table_value := 33552
;
when 4336 =>
table_value := 33552
;
when 4337 =>
table_value := 33664
;
when 4338 =>
table_value := 33760
;
when 4339 =>
table_value := 33904
;
when 4340 =>
table_value := 33888
;
when 4341 =>
table_value := 33840
;
when 4342 =>
table_value := 33696
;
when 4343 =>
table_value := 33520
;
when 4344 =>
table_value := 33408
;
when 4345 =>
table_value := 33360
;
when 4346 =>
table_value := 33248
;
when 4347 =>
table_value := 33072
;
when 4348 =>
table_value := 32832
;
when 4349 =>
table_value := 32672
;
when 4350 =>
table_value := 32512
;
when 4351 =>
table_value := 32480
;
when 4352 =>
table_value := 32432
;
when 4353 =>
table_value := 32352
;
when 4354 =>
table_value := 32208
;
when 4355 =>
table_value := 32048
;
when 4356 =>
table_value := 31920
;
when 4357 =>
table_value := 31760
;
when 4358 =>
table_value := 31632
;
when 4359 =>
table_value := 31568
;
when 4360 =>
table_value := 31536
;
when 4361 =>
table_value := 31632
;
when 4362 =>
table_value := 31744
;
when 4363 =>
table_value := 31840
;
when 4364 =>
table_value := 31888
;
when 4365 =>
table_value := 32000
;
when 4366 =>
table_value := 32096
;
when 4367 =>
table_value := 32240
;
when 4368 =>
table_value := 32400
;
when 4369 =>
table_value := 32624
;
when 4370 =>
table_value := 32832
;
when 4371 =>
table_value := 33008
;
when 4372 =>
table_value := 33168
;
when 4373 =>
table_value := 33232
;
when 4374 =>
table_value := 33296
;
when 4375 =>
table_value := 33360
;
when 4376 =>
table_value := 33296
;
when 4377 =>
table_value := 33248
;
when 4378 =>
table_value := 33088
;
when 4379 =>
table_value := 32928
;
when 4380 =>
table_value := 32704
;
when 4381 =>
table_value := 32464
;
when 4382 =>
table_value := 32208
;
when 4383 =>
table_value := 31904
;
when 4384 =>
table_value := 31600
;
when 4385 =>
table_value := 31200
;
when 4386 =>
table_value := 30848
;
when 4387 =>
table_value := 30384
;
when 4388 =>
table_value := 29952
;
when 4389 =>
table_value := 29568
;
when 4390 =>
table_value := 29136
;
when 4391 =>
table_value := 28736
;
when 4392 =>
table_value := 28352
;
when 4393 =>
table_value := 27936
;
when 4394 =>
table_value := 27552
;
when 4395 =>
table_value := 27136
;
when 4396 =>
table_value := 26848
;
when 4397 =>
table_value := 26400
;
when 4398 =>
table_value := 26016
;
when 4399 =>
table_value := 25552
;
when 4400 =>
table_value := 25040
;
when 4401 =>
table_value := 24496
;
when 4402 =>
table_value := 23968
;
when 4403 =>
table_value := 23440
;
when 4404 =>
table_value := 22864
;
when 4405 =>
table_value := 22368
;
when 4406 =>
table_value := 21792
;
when 4407 =>
table_value := 21168
;
when 4408 =>
table_value := 20544
;
when 4409 =>
table_value := 19888
;
when 4410 =>
table_value := 19296
;
when 4411 =>
table_value := 18768
;
when 4412 =>
table_value := 18272
;
when 4413 =>
table_value := 17824
;
when 4414 =>
table_value := 17296
;
when 4415 =>
table_value := 16784
;
when 4416 =>
table_value := 16176
;
when 4417 =>
table_value := 15616
;
when 4418 =>
table_value := 15072
;
when 4419 =>
table_value := 14544
;
when 4420 =>
table_value := 14000
;
when 4421 =>
table_value := 13408
;
when 4422 =>
table_value := 12800
;
when 4423 =>
table_value := 12240
;
when 4424 =>
table_value := 11696
;
when 4425 =>
table_value := 11200
;
when 4426 =>
table_value := 10672
;
when 4427 =>
table_value := 10160
;
when 4428 =>
table_value := 9600
;
when 4429 =>
table_value := 9104
;
when 4430 =>
table_value := 8512
;
when 4431 =>
table_value := 7936
;
when 4432 =>
table_value := 7408
;
when 4433 =>
table_value := 6864
;
when 4434 =>
table_value := 6352
;
when 4435 =>
table_value := 5760
;
when 4436 =>
table_value := 5120
;
when 4437 =>
table_value := 4432
;
when 4438 =>
table_value := 3824
;
when 4439 =>
table_value := 3184
;
when 4440 =>
table_value := 2640
;
when 4441 =>
table_value := 2064
;
when 4442 =>
table_value := 1472
;
when 4443 =>
table_value := 848
;
when 4444 =>
table_value := 272
;
when 4445 =>
table_value := 1048240
;
when 4446 =>
table_value := 1047728
;
when 4447 =>
table_value := 1047216
;
when 4448 =>
table_value := 1046752
;
when 4449 =>
table_value := 1046320
;
when 4450 =>
table_value := 1045872
;
when 4451 =>
table_value := 1045472
;
when 4452 =>
table_value := 1045120
;
when 4453 =>
table_value := 1044816
;
when 4454 =>
table_value := 1044576
;
when 4455 =>
table_value := 1044336
;
when 4456 =>
table_value := 1044000
;
when 4457 =>
table_value := 1043680
;
when 4458 =>
table_value := 1043392
;
when 4459 =>
table_value := 1043168
;
when 4460 =>
table_value := 1043024
;
when 4461 =>
table_value := 1042944
;
when 4462 =>
table_value := 1042832
;
when 4463 =>
table_value := 1042800
;
when 4464 =>
table_value := 1042768
;
when 4465 =>
table_value := 1042704
;
when 4466 =>
table_value := 1042688
;
when 4467 =>
table_value := 1042576
;
when 4468 =>
table_value := 1042496
;
when 4469 =>
table_value := 1042400
;
when 4470 =>
table_value := 1042400
;
when 4471 =>
table_value := 1042400
;
when 4472 =>
table_value := 1042336
;
when 4473 =>
table_value := 1042320
;
when 4474 =>
table_value := 1042176
;
when 4475 =>
table_value := 1042096
;
when 4476 =>
table_value := 1042080
;
when 4477 =>
table_value := 1042032
;
when 4478 =>
table_value := 1041984
;
when 4479 =>
table_value := 1041952
;
when 4480 =>
table_value := 1041904
;
when 4481 =>
table_value := 1041840
;
when 4482 =>
table_value := 1041824
;
when 4483 =>
table_value := 1041792
;
when 4484 =>
table_value := 1041840
;
when 4485 =>
table_value := 1041888
;
when 4486 =>
table_value := 1041984
;
when 4487 =>
table_value := 1042048
;
when 4488 =>
table_value := 1042128
;
when 4489 =>
table_value := 1042176
;
when 4490 =>
table_value := 1042240
;
when 4491 =>
table_value := 1042272
;
when 4492 =>
table_value := 1042320
;
when 4493 =>
table_value := 1042400
;
when 4494 =>
table_value := 1042512
;
when 4495 =>
table_value := 1042656
;
when 4496 =>
table_value := 1042848
;
when 4497 =>
table_value := 1043008
;
when 4498 =>
table_value := 1043120
;
when 4499 =>
table_value := 1043280
;
when 4500 =>
table_value := 1043424
;
when 4501 =>
table_value := 1043584
;
when 4502 =>
table_value := 1043744
;
when 4503 =>
table_value := 1043840
;
when 4504 =>
table_value := 1043840
;
when 4505 =>
table_value := 1043824
;
when 4506 =>
table_value := 1043760
;
when 4507 =>
table_value := 1043712
;
when 4508 =>
table_value := 1043696
;
when 4509 =>
table_value := 1043664
;
when 4510 =>
table_value := 1043568
;
when 4511 =>
table_value := 1043440
;
when 4512 =>
table_value := 1043280
;
when 4513 =>
table_value := 1043184
;
when 4514 =>
table_value := 1043104
;
when 4515 =>
table_value := 1043024
;
when 4516 =>
table_value := 1042944
;
when 4517 =>
table_value := 1042864
;
when 4518 =>
table_value := 1042704
;
when 4519 =>
table_value := 1042576
;
when 4520 =>
table_value := 1042400
;
when 4521 =>
table_value := 1042304
;
when 4522 =>
table_value := 1042176
;
when 4523 =>
table_value := 1042064
;
when 4524 =>
table_value := 1041920
;
when 4525 =>
table_value := 1041760
;
when 4526 =>
table_value := 1041600
;
when 4527 =>
table_value := 1041392
;
when 4528 =>
table_value := 1041200
;
when 4529 =>
table_value := 1041024
;
when 4530 =>
table_value := 1040960
;
when 4531 =>
table_value := 1040944
;
when 4532 =>
table_value := 1040976
;
when 4533 =>
table_value := 1041072
;
when 4534 =>
table_value := 1041200
;
when 4535 =>
table_value := 1041376
;
when 4536 =>
table_value := 1041536
;
when 4537 =>
table_value := 1041696
;
when 4538 =>
table_value := 1041984
;
when 4539 =>
table_value := 1042272
;
when 4540 =>
table_value := 1042624
;
when 4541 =>
table_value := 1042976
;
when 4542 =>
table_value := 1043296
;
when 4543 =>
table_value := 1043680
;
when 4544 =>
table_value := 1044064
;
when 4545 =>
table_value := 1044544
;
when 4546 =>
table_value := 1045024
;
when 4547 =>
table_value := 1045456
;
when 4548 =>
table_value := 1045968
;
when 4549 =>
table_value := 1046400
;
when 4550 =>
table_value := 1046848
;
when 4551 =>
table_value := 1047232
;
when 4552 =>
table_value := 1047664
;
when 4553 =>
table_value := 1048032
;
when 4554 =>
table_value := 1048304
;
when 4555 =>
table_value := 1048544
;
when 4556 =>
table_value := 192
;
when 4557 =>
table_value := 384
;
when 4558 =>
table_value := 704
;
when 4559 =>
table_value := 976
;
when 4560 =>
table_value := 1232
;
when 4561 =>
table_value := 1424
;
when 4562 =>
table_value := 1584
;
when 4563 =>
table_value := 1776
;
when 4564 =>
table_value := 1952
;
when 4565 =>
table_value := 2160
;
when 4566 =>
table_value := 2320
;
when 4567 =>
table_value := 2416
;
when 4568 =>
table_value := 2560
;
when 4569 =>
table_value := 2624
;
when 4570 =>
table_value := 2704
;
when 4571 =>
table_value := 2784
;
when 4572 =>
table_value := 2864
;
when 4573 =>
table_value := 3056
;
when 4574 =>
table_value := 3136
;
when 4575 =>
table_value := 3296
;
when 4576 =>
table_value := 3424
;
when 4577 =>
table_value := 3504
;
when 4578 =>
table_value := 3600
;
when 4579 =>
table_value := 3712
;
when 4580 =>
table_value := 3776
;
when 4581 =>
table_value := 3856
;
when 4582 =>
table_value := 3952
;
when 4583 =>
table_value := 3984
;
when 4584 =>
table_value := 4000
;
when 4585 =>
table_value := 3968
;
when 4586 =>
table_value := 3872
;
when 4587 =>
table_value := 3840
;
when 4588 =>
table_value := 3824
;
when 4589 =>
table_value := 3872
;
when 4590 =>
table_value := 3920
;
when 4591 =>
table_value := 3936
;
when 4592 =>
table_value := 4016
;
when 4593 =>
table_value := 4016
;
when 4594 =>
table_value := 4128
;
when 4595 =>
table_value := 4192
;
when 4596 =>
table_value := 4208
;
when 4597 =>
table_value := 4176
;
when 4598 =>
table_value := 4080
;
when 4599 =>
table_value := 3952
;
when 4600 =>
table_value := 3840
;
when 4601 =>
table_value := 3680
;
when 4602 =>
table_value := 3568
;
when 4603 =>
table_value := 3440
;
when 4604 =>
table_value := 3312
;
when 4605 =>
table_value := 3232
;
when 4606 =>
table_value := 3216
;
when 4607 =>
table_value := 3120
;
when 4608 =>
table_value := 3024
;
when 4609 =>
table_value := 2896
;
when 4610 =>
table_value := 2816
;
when 4611 =>
table_value := 2736
;
when 4612 =>
table_value := 2720
;
when 4613 =>
table_value := 2720
;
when 4614 =>
table_value := 2736
;
when 4615 =>
table_value := 2688
;
when 4616 =>
table_value := 2592
;
when 4617 =>
table_value := 2544
;
when 4618 =>
table_value := 2528
;
when 4619 =>
table_value := 2432
;
when 4620 =>
table_value := 2432
;
when 4621 =>
table_value := 2368
;
when 4622 =>
table_value := 2256
;
when 4623 =>
table_value := 2176
;
when 4624 =>
table_value := 2032
;
when 4625 =>
table_value := 1872
;
when 4626 =>
table_value := 1680
;
when 4627 =>
table_value := 1536
;
when 4628 =>
table_value := 1344
;
when 4629 =>
table_value := 1136
;
when 4630 =>
table_value := 880
;
when 4631 =>
table_value := 608
;
when 4632 =>
table_value := 304
;
when 4633 =>
table_value := 0
;
when 4634 =>
table_value := 1048240
;
when 4635 =>
table_value := 1047872
;
when 4636 =>
table_value := 1047440
;
when 4637 =>
table_value := 1047024
;
when 4638 =>
table_value := 1046608
;
when 4639 =>
table_value := 1046176
;
when 4640 =>
table_value := 1045776
;
when 4641 =>
table_value := 1045408
;
when 4642 =>
table_value := 1045040
;
when 4643 =>
table_value := 1044768
;
when 4644 =>
table_value := 1044496
;
when 4645 =>
table_value := 1044304
;
when 4646 =>
table_value := 1044048
;
when 4647 =>
table_value := 1043856
;
when 4648 =>
table_value := 1043696
;
when 4649 =>
table_value := 1043568
;
when 4650 =>
table_value := 1043472
;
when 4651 =>
table_value := 1043392
;
when 4652 =>
table_value := 1043312
;
when 4653 =>
table_value := 1043264
;
when 4654 =>
table_value := 1043216
;
when 4655 =>
table_value := 1043184
;
when 4656 =>
table_value := 1043168
;
when 4657 =>
table_value := 1043136
;
when 4658 =>
table_value := 1043040
;
when 4659 =>
table_value := 1042928
;
when 4660 =>
table_value := 1042816
;
when 4661 =>
table_value := 1042688
;
when 4662 =>
table_value := 1042640
;
when 4663 =>
table_value := 1042608
;
when 4664 =>
table_value := 1042608
;
when 4665 =>
table_value := 1042560
;
when 4666 =>
table_value := 1042496
;
when 4667 =>
table_value := 1042432
;
when 4668 =>
table_value := 1042512
;
when 4669 =>
table_value := 1042544
;
when 4670 =>
table_value := 1042608
;
when 4671 =>
table_value := 1042640
;
when 4672 =>
table_value := 1042576
;
when 4673 =>
table_value := 1042496
;
when 4674 =>
table_value := 1042384
;
when 4675 =>
table_value := 1042352
;
when 4676 =>
table_value := 1042240
;
when 4677 =>
table_value := 1042176
;
when 4678 =>
table_value := 1042096
;
when 4679 =>
table_value := 1041984
;
when 4680 =>
table_value := 1041936
;
when 4681 =>
table_value := 1041856
;
when 4682 =>
table_value := 1041856
;
when 4683 =>
table_value := 1041840
;
when 4684 =>
table_value := 1041888
;
when 4685 =>
table_value := 1041904
;
when 4686 =>
table_value := 1041968
;
when 4687 =>
table_value := 1042016
;
when 4688 =>
table_value := 1042064
;
when 4689 =>
table_value := 1042080
;
when 4690 =>
table_value := 1042080
;
when 4691 =>
table_value := 1042080
;
when 4692 =>
table_value := 1042080
;
when 4693 =>
table_value := 1042128
;
when 4694 =>
table_value := 1042208
;
when 4695 =>
table_value := 1042288
;
when 4696 =>
table_value := 1042336
;
when 4697 =>
table_value := 1042352
;
when 4698 =>
table_value := 1042416
;
when 4699 =>
table_value := 1042464
;
when 4700 =>
table_value := 1042576
;
when 4701 =>
table_value := 1042624
;
when 4702 =>
table_value := 1042624
;
when 4703 =>
table_value := 1042544
;
when 4704 =>
table_value := 1042400
;
when 4705 =>
table_value := 1042240
;
when 4706 =>
table_value := 1042096
;
when 4707 =>
table_value := 1041888
;
when 4708 =>
table_value := 1041760
;
when 4709 =>
table_value := 1041600
;
when 4710 =>
table_value := 1041392
;
when 4711 =>
table_value := 1041216
;
when 4712 =>
table_value := 1041008
;
when 4713 =>
table_value := 1040816
;
when 4714 =>
table_value := 1040624
;
when 4715 =>
table_value := 1040464
;
when 4716 =>
table_value := 1040368
;
when 4717 =>
table_value := 1040320
;
when 4718 =>
table_value := 1040336
;
when 4719 =>
table_value := 1040400
;
when 4720 =>
table_value := 1040480
;
when 4721 =>
table_value := 1040544
;
when 4722 =>
table_value := 1040608
;
when 4723 =>
table_value := 1040768
;
when 4724 =>
table_value := 1040912
;
when 4725 =>
table_value := 1041088
;
when 4726 =>
table_value := 1041248
;
when 4727 =>
table_value := 1041392
;
when 4728 =>
table_value := 1041488
;
when 4729 =>
table_value := 1041600
;
when 4730 =>
table_value := 1041728
;
when 4731 =>
table_value := 1041856
;
when 4732 =>
table_value := 1041936
;
when 4733 =>
table_value := 1042096
;
when 4734 =>
table_value := 1042240
;
when 4735 =>
table_value := 1042432
;
when 4736 =>
table_value := 1042656
;
when 4737 =>
table_value := 1042912
;
when 4738 =>
table_value := 1043152
;
when 4739 =>
table_value := 1043376
;
when 4740 =>
table_value := 1043568
;
when 4741 =>
table_value := 1043728
;
when 4742 =>
table_value := 1043936
;
when 4743 =>
table_value := 1044080
;
when 4744 =>
table_value := 1044240
;
when 4745 =>
table_value := 1044432
;
when 4746 =>
table_value := 1044656
;
when 4747 =>
table_value := 1044832
;
when 4748 =>
table_value := 1044992
;
when 4749 =>
table_value := 1045232
;
when 4750 =>
table_value := 1045456
;
when 4751 =>
table_value := 1045744
;
when 4752 =>
table_value := 1046032
;
when 4753 =>
table_value := 1046320
;
when 4754 =>
table_value := 1046560
;
when 4755 =>
table_value := 1046784
;
when 4756 =>
table_value := 1047056
;
when 4757 =>
table_value := 1047328
;
when 4758 =>
table_value := 1047568
;
when 4759 =>
table_value := 1047808
;
when 4760 =>
table_value := 1048080
;
when 4761 =>
table_value := 1048256
;
when 4762 =>
table_value := 1048464
;
when 4763 =>
table_value := 32
;
when 4764 =>
table_value := 192
;
when 4765 =>
table_value := 352
;
when 4766 =>
table_value := 512
;
when 4767 =>
table_value := 592
;
when 4768 =>
table_value := 704
;
when 4769 =>
table_value := 816
;
when 4770 =>
table_value := 912
;
when 4771 =>
table_value := 976
;
when 4772 =>
table_value := 928
;
when 4773 =>
table_value := 896
;
when 4774 =>
table_value := 784
;
when 4775 =>
table_value := 624
;
when 4776 =>
table_value := 464
;
when 4777 =>
table_value := 288
;
when 4778 =>
table_value := 16
;
when 4779 =>
table_value := 1048352
;
when 4780 =>
table_value := 1048032
;
when 4781 =>
table_value := 1047696
;
when 4782 =>
table_value := 1047424
;
when 4783 =>
table_value := 1047120
;
when 4784 =>
table_value := 1046784
;
when 4785 =>
table_value := 1046400
;
when 4786 =>
table_value := 1046016
;
when 4787 =>
table_value := 1045584
;
when 4788 =>
table_value := 1045120
;
when 4789 =>
table_value := 1044736
;
when 4790 =>
table_value := 1044384
;
when 4791 =>
table_value := 1044112
;
when 4792 =>
table_value := 1043824
;
when 4793 =>
table_value := 1043600
;
when 4794 =>
table_value := 1043344
;
when 4795 =>
table_value := 1043088
;
when 4796 =>
table_value := 1042848
;
when 4797 =>
table_value := 1042640
;
when 4798 =>
table_value := 1042416
;
when 4799 =>
table_value := 1042176
;
when 4800 =>
table_value := 1041936
;
when 4801 =>
table_value := 1041584
;
when 4802 =>
table_value := 1041248
;
when 4803 =>
table_value := 1040896
;
when 4804 =>
table_value := 1040624
;
when 4805 =>
table_value := 1040224
;
when 4806 =>
table_value := 1039872
;
when 4807 =>
table_value := 1039648
;
when 4808 =>
table_value := 1039312
;
when 4809 =>
table_value := 1039024
;
when 4810 =>
table_value := 1038704
;
when 4811 =>
table_value := 1038368
;
when 4812 =>
table_value := 1038080
;
when 4813 =>
table_value := 1037840
;
when 4814 =>
table_value := 1037568
;
when 4815 =>
table_value := 1037328
;
when 4816 =>
table_value := 1037120
;
when 4817 =>
table_value := 1036928
;
when 4818 =>
table_value := 1036720
;
when 4819 =>
table_value := 1036544
;
when 4820 =>
table_value := 1036336
;
when 4821 =>
table_value := 1036160
;
when 4822 =>
table_value := 1036016
;
when 4823 =>
table_value := 1035952
;
when 4824 =>
table_value := 1035904
;
when 4825 =>
table_value := 1035856
;
when 4826 =>
table_value := 1035920
;
when 4827 =>
table_value := 1035968
;
when 4828 =>
table_value := 1036032
;
when 4829 =>
table_value := 1036112
;
when 4830 =>
table_value := 1036192
;
when 4831 =>
table_value := 1036272
;
when 4832 =>
table_value := 1036352
;
when 4833 =>
table_value := 1036384
;
when 4834 =>
table_value := 1036416
;
when 4835 =>
table_value := 1036464
;
when 4836 =>
table_value := 1036512
;
when 4837 =>
table_value := 1036544
;
when 4838 =>
table_value := 1036576
;
when 4839 =>
table_value := 1036592
;
when 4840 =>
table_value := 1036608
;
when 4841 =>
table_value := 1036640
;
when 4842 =>
table_value := 1036720
;
when 4843 =>
table_value := 1036816
;
when 4844 =>
table_value := 1036912
;
when 4845 =>
table_value := 1037008
;
when 4846 =>
table_value := 1037040
;
when 4847 =>
table_value := 1037056
;
when 4848 =>
table_value := 1037040
;
when 4849 =>
table_value := 1037008
;
when 4850 =>
table_value := 1036944
;
when 4851 =>
table_value := 1036880
;
when 4852 =>
table_value := 1036768
;
when 4853 =>
table_value := 1036704
;
when 4854 =>
table_value := 1036624
;
when 4855 =>
table_value := 1036592
;
when 4856 =>
table_value := 1036528
;
when 4857 =>
table_value := 1036432
;
when 4858 =>
table_value := 1036304
;
when 4859 =>
table_value := 1036112
;
when 4860 =>
table_value := 1035936
;
when 4861 =>
table_value := 1035760
;
when 4862 =>
table_value := 1035616
;
when 4863 =>
table_value := 1035440
;
when 4864 =>
table_value := 1035232
;
when 4865 =>
table_value := 1034960
;
when 4866 =>
table_value := 1034656
;
when 4867 =>
table_value := 1034336
;
when 4868 =>
table_value := 1033968
;
when 4869 =>
table_value := 1033616
;
when 4870 =>
table_value := 1033328
;
when 4871 =>
table_value := 1032960
;
when 4872 =>
table_value := 1032608
;
when 4873 =>
table_value := 1032288
;
when 4874 =>
table_value := 1032000
;
when 4875 =>
table_value := 1031744
;
when 4876 =>
table_value := 1031536
;
when 4877 =>
table_value := 1031296
;
when 4878 =>
table_value := 1031072
;
when 4879 =>
table_value := 1030832
;
when 4880 =>
table_value := 1030592
;
when 4881 =>
table_value := 1030416
;
when 4882 =>
table_value := 1030256
;
when 4883 =>
table_value := 1030112
;
when 4884 =>
table_value := 1029952
;
when 4885 =>
table_value := 1029824
;
when 4886 =>
table_value := 1029744
;
when 4887 =>
table_value := 1029664
;
when 4888 =>
table_value := 1029584
;
when 4889 =>
table_value := 1029552
;
when 4890 =>
table_value := 1029568
;
when 4891 =>
table_value := 1029648
;
when 4892 =>
table_value := 1029744
;
when 4893 =>
table_value := 1029872
;
when 4894 =>
table_value := 1029968
;
when 4895 =>
table_value := 1030080
;
when 4896 =>
table_value := 1030192
;
when 4897 =>
table_value := 1030320
;
when 4898 =>
table_value := 1030496
;
when 4899 =>
table_value := 1030704
;
when 4900 =>
table_value := 1030976
;
when 4901 =>
table_value := 1031296
;
when 4902 =>
table_value := 1031600
;
when 4903 =>
table_value := 1031920
;
when 4904 =>
table_value := 1032256
;
when 4905 =>
table_value := 1032608
;
when 4906 =>
table_value := 1032976
;
when 4907 =>
table_value := 1033408
;
when 4908 =>
table_value := 1033776
;
when 4909 =>
table_value := 1034128
;
when 4910 =>
table_value := 1034448
;
when 4911 =>
table_value := 1034752
;
when 4912 =>
table_value := 1035024
;
when 4913 =>
table_value := 1035312
;
when 4914 =>
table_value := 1035664
;
when 4915 =>
table_value := 1035968
;
when 4916 =>
table_value := 1036288
;
when 4917 =>
table_value := 1036592
;
when 4918 =>
table_value := 1036880
;
when 4919 =>
table_value := 1037152
;
when 4920 =>
table_value := 1037472
;
when 4921 =>
table_value := 1037776
;
when 4922 =>
table_value := 1038112
;
when 4923 =>
table_value := 1038464
;
when 4924 =>
table_value := 1038768
;
when 4925 =>
table_value := 1039072
;
when 4926 =>
table_value := 1039376
;
when 4927 =>
table_value := 1039664
;
when 4928 =>
table_value := 1040016
;
when 4929 =>
table_value := 1040384
;
when 4930 =>
table_value := 1040768
;
when 4931 =>
table_value := 1041104
;
when 4932 =>
table_value := 1041424
;
when 4933 =>
table_value := 1041712
;
when 4934 =>
table_value := 1042016
;
when 4935 =>
table_value := 1042352
;
when 4936 =>
table_value := 1042720
;
when 4937 =>
table_value := 1043040
;
when 4938 =>
table_value := 1043376
;
when 4939 =>
table_value := 1043680
;
when 4940 =>
table_value := 1043952
;
when 4941 =>
table_value := 1044240
;
when 4942 =>
table_value := 1044512
;
when 4943 =>
table_value := 1044800
;
when 4944 =>
table_value := 1045088
;
when 4945 =>
table_value := 1045408
;
when 4946 =>
table_value := 1045728
;
when 4947 =>
table_value := 1046016
;
when 4948 =>
table_value := 1046192
;
when 4949 =>
table_value := 1046352
;
when 4950 =>
table_value := 1046560
;
when 4951 =>
table_value := 1046752
;
when 4952 =>
table_value := 1046912
;
when 4953 =>
table_value := 1047008
;
when 4954 =>
table_value := 1047072
;
when 4955 =>
table_value := 1047088
;
when 4956 =>
table_value := 1047104
;
when 4957 =>
table_value := 1047088
;
when 4958 =>
table_value := 1047088
;
when 4959 =>
table_value := 1047104
;
when 4960 =>
table_value := 1047136
;
when 4961 =>
table_value := 1047168
;
when 4962 =>
table_value := 1047136
;
when 4963 =>
table_value := 1047104
;
when 4964 =>
table_value := 1047040
;
when 4965 =>
table_value := 1047024
;
when 4966 =>
table_value := 1047040
;
when 4967 =>
table_value := 1047088
;
when 4968 =>
table_value := 1047104
;
when 4969 =>
table_value := 1047120
;
when 4970 =>
table_value := 1047120
;
when 4971 =>
table_value := 1047136
;
when 4972 =>
table_value := 1047200
;
when 4973 =>
table_value := 1047248
;
when 4974 =>
table_value := 1047312
;
when 4975 =>
table_value := 1047344
;
when 4976 =>
table_value := 1047376
;
when 4977 =>
table_value := 1047344
;
when 4978 =>
table_value := 1047312
;
when 4979 =>
table_value := 1047280
;
when 4980 =>
table_value := 1047264
;
when 4981 =>
table_value := 1047280
;
when 4982 =>
table_value := 1047264
;
when 4983 =>
table_value := 1047216
;
when 4984 =>
table_value := 1047184
;
when 4985 =>
table_value := 1047168
;
when 4986 =>
table_value := 1047120
;
when 4987 =>
table_value := 1047088
;
when 4988 =>
table_value := 1047040
;
when 4989 =>
table_value := 1047008
;
when 4990 =>
table_value := 1047024
;
when 4991 =>
table_value := 1047040
;
when 4992 =>
table_value := 1047136
;
when 4993 =>
table_value := 1047264
;
when 4994 =>
table_value := 1047424
;
when 4995 =>
table_value := 1047600
;
when 4996 =>
table_value := 1047808
;
when 4997 =>
table_value := 1048048
;
when 4998 =>
table_value := 1048288
;
when 4999 =>
table_value := 1048512
;
when 5000 =>
table_value := 128
;
when 5001 =>
table_value := 336
;
when 5002 =>
table_value := 512
;
when 5003 =>
table_value := 720
;
when 5004 =>
table_value := 880
;
when 5005 =>
table_value := 1088
;
when 5006 =>
table_value := 1280
;
when 5007 =>
table_value := 1504
;
when 5008 =>
table_value := 1664
;
when 5009 =>
table_value := 1808
;
when 5010 =>
table_value := 1952
;
when 5011 =>
table_value := 2128
;
when 5012 =>
table_value := 2288
;
when 5013 =>
table_value := 2512
;
when 5014 =>
table_value := 2752
;
when 5015 =>
table_value := 2944
;
when 5016 =>
table_value := 3168
;
when 5017 =>
table_value := 3392
;
when 5018 =>
table_value := 3616
;
when 5019 =>
table_value := 3872
;
when 5020 =>
table_value := 4160
;
when 5021 =>
table_value := 4448
;
when 5022 =>
table_value := 4736
;
when 5023 =>
table_value := 5024
;
when 5024 =>
table_value := 5312
;
when 5025 =>
table_value := 5616
;
when 5026 =>
table_value := 5968
;
when 5027 =>
table_value := 6256
;
when 5028 =>
table_value := 6528
;
when 5029 =>
table_value := 6736
;
when 5030 =>
table_value := 6912
;
when 5031 =>
table_value := 7072
;
when 5032 =>
table_value := 7216
;
when 5033 =>
table_value := 7392
;
when 5034 =>
table_value := 7584
;
when 5035 =>
table_value := 7776
;
when 5036 =>
table_value := 7936
;
when 5037 =>
table_value := 8096
;
when 5038 =>
table_value := 8208
;
when 5039 =>
table_value := 8336
;
when 5040 =>
table_value := 8384
;
when 5041 =>
table_value := 8480
;
when 5042 =>
table_value := 8576
;
when 5043 =>
table_value := 8688
;
when 5044 =>
table_value := 8816
;
when 5045 =>
table_value := 8928
;
when 5046 =>
table_value := 9040
;
when 5047 =>
table_value := 9136
;
when 5048 =>
table_value := 9216
;
when 5049 =>
table_value := 9296
;
when 5050 =>
table_value := 9360
;
when 5051 =>
table_value := 9392
;
when 5052 =>
table_value := 9472
;
when 5053 =>
table_value := 9520
;
when 5054 =>
table_value := 9568
;
when 5055 =>
table_value := 9568
;
when 5056 =>
table_value := 9568
;
when 5057 =>
table_value := 9600
;
when 5058 =>
table_value := 9600
;
when 5059 =>
table_value := 9600
;
when 5060 =>
table_value := 9600
;
when 5061 =>
table_value := 9552
;
when 5062 =>
table_value := 9520
;
when 5063 =>
table_value := 9536
;
when 5064 =>
table_value := 9520
;
when 5065 =>
table_value := 9520
;
when 5066 =>
table_value := 9488
;
when 5067 =>
table_value := 9456
;
when 5068 =>
table_value := 9408
;
when 5069 =>
table_value := 9440
;
when 5070 =>
table_value := 9472
;
when 5071 =>
table_value := 9504
;
when 5072 =>
table_value := 9536
;
when 5073 =>
table_value := 9552
;
when 5074 =>
table_value := 9584
;
when 5075 =>
table_value := 9632
;
when 5076 =>
table_value := 9744
;
when 5077 =>
table_value := 9776
;
when 5078 =>
table_value := 9824
;
when 5079 =>
table_value := 9856
;
when 5080 =>
table_value := 9840
;
when 5081 =>
table_value := 9824
;
when 5082 =>
table_value := 9856
;
when 5083 =>
table_value := 9888
;
when 5084 =>
table_value := 9936
;
when 5085 =>
table_value := 9904
;
when 5086 =>
table_value := 9904
;
when 5087 =>
table_value := 9936
;
when 5088 =>
table_value := 10000
;
when 5089 =>
table_value := 10112
;
when 5090 =>
table_value := 10288
;
when 5091 =>
table_value := 10448
;
when 5092 =>
table_value := 10624
;
when 5093 =>
table_value := 10768
;
when 5094 =>
table_value := 10912
;
when 5095 =>
table_value := 11072
;
when 5096 =>
table_value := 11264
;
when 5097 =>
table_value := 11472
;
when 5098 =>
table_value := 11680
;
when 5099 =>
table_value := 11872
;
when 5100 =>
table_value := 12000
;
when 5101 =>
table_value := 12144
;
when 5102 =>
table_value := 12224
;
when 5103 =>
table_value := 12336
;
when 5104 =>
table_value := 12512
;
when 5105 =>
table_value := 12672
;
when 5106 =>
table_value := 12880
;
when 5107 =>
table_value := 12960
;
when 5108 =>
table_value := 13056
;
when 5109 =>
table_value := 13136
;
when 5110 =>
table_value := 13184
;
when 5111 =>
table_value := 13312
;
when 5112 =>
table_value := 13408
;
when 5113 =>
table_value := 13504
;
when 5114 =>
table_value := 13584
;
when 5115 =>
table_value := 13664
;
when 5116 =>
table_value := 13744
;
when 5117 =>
table_value := 13776
;
when 5118 =>
table_value := 13824
;
when 5119 =>
table_value := 13872
;
when 5120 =>
table_value := 13920
;
when 5121 =>
table_value := 13952
;
when 5122 =>
table_value := 13904
;
when 5123 =>
table_value := 13856
;
when 5124 =>
table_value := 13776
;
when 5125 =>
table_value := 13712
;
when 5126 =>
table_value := 13616
;
when 5127 =>
table_value := 13568
;
when 5128 =>
table_value := 13456
;
when 5129 =>
table_value := 13296
;
when 5130 =>
table_value := 13152
;
when 5131 =>
table_value := 12992
;
when 5132 =>
table_value := 12816
;
when 5133 =>
table_value := 12656
;
when 5134 =>
table_value := 12480
;
when 5135 =>
table_value := 12320
;
when 5136 =>
table_value := 12112
;
when 5137 =>
table_value := 11920
;
when 5138 =>
table_value := 11696
;
when 5139 =>
table_value := 11472
;
when 5140 =>
table_value := 11280
;
when 5141 =>
table_value := 11056
;
when 5142 =>
table_value := 10848
;
when 5143 =>
table_value := 10656
;
when 5144 =>
table_value := 10432
;
when 5145 =>
table_value := 10240
;
when 5146 =>
table_value := 10064
;
when 5147 =>
table_value := 9888
;
when 5148 =>
table_value := 9760
;
when 5149 =>
table_value := 9680
;
when 5150 =>
table_value := 9632
;
when 5151 =>
table_value := 9616
;
when 5152 =>
table_value := 9632
;
when 5153 =>
table_value := 9664
;
when 5154 =>
table_value := 9760
;
when 5155 =>
table_value := 9840
;
when 5156 =>
table_value := 9968
;
when 5157 =>
table_value := 10096
;
when 5158 =>
table_value := 10176
;
when 5159 =>
table_value := 10304
;
when 5160 =>
table_value := 10368
;
when 5161 =>
table_value := 10496
;
when 5162 =>
table_value := 10656
;
when 5163 =>
table_value := 10800
;
when 5164 =>
table_value := 10944
;
when 5165 =>
table_value := 11072
;
when 5166 =>
table_value := 11168
;
when 5167 =>
table_value := 11296
;
when 5168 =>
table_value := 11408
;
when 5169 =>
table_value := 11504
;
when 5170 =>
table_value := 11584
;
when 5171 =>
table_value := 11552
;
when 5172 =>
table_value := 11568
;
when 5173 =>
table_value := 11536
;
when 5174 =>
table_value := 11504
;
when 5175 =>
table_value := 11488
;
when 5176 =>
table_value := 11440
;
when 5177 =>
table_value := 11456
;
when 5178 =>
table_value := 11376
;
when 5179 =>
table_value := 11296
;
when 5180 =>
table_value := 11264
;
when 5181 =>
table_value := 11200
;
when 5182 =>
table_value := 11168
;
when 5183 =>
table_value := 11168
;
when 5184 =>
table_value := 11200
;
when 5185 =>
table_value := 11200
;
when 5186 =>
table_value := 11184
;
when 5187 =>
table_value := 11248
;
when 5188 =>
table_value := 11200
;
when 5189 =>
table_value := 11232
;
when 5190 =>
table_value := 11296
;
when 5191 =>
table_value := 11360
;
when 5192 =>
table_value := 11440
;
when 5193 =>
table_value := 11520
;
when 5194 =>
table_value := 11584
;
when 5195 =>
table_value := 11680
;
when 5196 =>
table_value := 11776
;
when 5197 =>
table_value := 11856
;
when 5198 =>
table_value := 11920
;
when 5199 =>
table_value := 12000
;
when 5200 =>
table_value := 12128
;
when 5201 =>
table_value := 12224
;
when 5202 =>
table_value := 12352
;
when 5203 =>
table_value := 12400
;
when 5204 =>
table_value := 12464
;
when 5205 =>
table_value := 12528
;
when 5206 =>
table_value := 12608
;
when 5207 =>
table_value := 12656
;
when 5208 =>
table_value := 12656
;
when 5209 =>
table_value := 12672
;
when 5210 =>
table_value := 12672
;
when 5211 =>
table_value := 12672
;
when 5212 =>
table_value := 12640
;
when 5213 =>
table_value := 12528
;
when 5214 =>
table_value := 12416
;
when 5215 =>
table_value := 12272
;
when 5216 =>
table_value := 12096
;
when 5217 =>
table_value := 11984
;
when 5218 =>
table_value := 11824
;
when 5219 =>
table_value := 11664
;
when 5220 =>
table_value := 11504
;
when 5221 =>
table_value := 11280
;
when 5222 =>
table_value := 11008
;
when 5223 =>
table_value := 10736
;
when 5224 =>
table_value := 10432
;
when 5225 =>
table_value := 10160
;
when 5226 =>
table_value := 9920
;
when 5227 =>
table_value := 9600
;
when 5228 =>
table_value := 9344
;
when 5229 =>
table_value := 9008
;
when 5230 =>
table_value := 8720
;
when 5231 =>
table_value := 8432
;
when 5232 =>
table_value := 8128
;
when 5233 =>
table_value := 7856
;
when 5234 =>
table_value := 7536
;
when 5235 =>
table_value := 7280
;
when 5236 =>
table_value := 7024
;
when 5237 =>
table_value := 6784
;
when 5238 =>
table_value := 6576
;
when 5239 =>
table_value := 6352
;
when 5240 =>
table_value := 6144
;
when 5241 =>
table_value := 5968
;
when 5242 =>
table_value := 5808
;
when 5243 =>
table_value := 5632
;
when 5244 =>
table_value := 5472
;
when 5245 =>
table_value := 5344
;
when 5246 =>
table_value := 5232
;
when 5247 =>
table_value := 5104
;
when 5248 =>
table_value := 4896
;
when 5249 =>
table_value := 4720
;
when 5250 =>
table_value := 4560
;
when 5251 =>
table_value := 4464
;
when 5252 =>
table_value := 4384
;
when 5253 =>
table_value := 4336
;
when 5254 =>
table_value := 4304
;
when 5255 =>
table_value := 4256
;
when 5256 =>
table_value := 4240
;
when 5257 =>
table_value := 4192
;
when 5258 =>
table_value := 4176
;
when 5259 =>
table_value := 4176
;
when 5260 =>
table_value := 4224
;
when 5261 =>
table_value := 4272
;
when 5262 =>
table_value := 4400
;
when 5263 =>
table_value := 4528
;
when 5264 =>
table_value := 4736
;
when 5265 =>
table_value := 4928
;
when 5266 =>
table_value := 5104
;
when 5267 =>
table_value := 5296
;
when 5268 =>
table_value := 5488
;
when 5269 =>
table_value := 5680
;
when 5270 =>
table_value := 5872
;
when 5271 =>
table_value := 6096
;
when 5272 =>
table_value := 6272
;
when 5273 =>
table_value := 6464
;
when 5274 =>
table_value := 6624
;
when 5275 =>
table_value := 6800
;
when 5276 =>
table_value := 6976
;
when 5277 =>
table_value := 7104
;
when 5278 =>
table_value := 7264
;
when 5279 =>
table_value := 7392
;
when 5280 =>
table_value := 7520
;
when 5281 =>
table_value := 7632
;
when 5282 =>
table_value := 7744
;
when 5283 =>
table_value := 7872
;
when 5284 =>
table_value := 8032
;
when 5285 =>
table_value := 8144
;
when 5286 =>
table_value := 8240
;
when 5287 =>
table_value := 8336
;
when 5288 =>
table_value := 8432
;
when 5289 =>
table_value := 8496
;
when 5290 =>
table_value := 8592
;
when 5291 =>
table_value := 8704
;
when 5292 =>
table_value := 8752
;
when 5293 =>
table_value := 8912
;
when 5294 =>
table_value := 8960
;
when 5295 =>
table_value := 9056
;
when 5296 =>
table_value := 9168
;
when 5297 =>
table_value := 9216
;
when 5298 =>
table_value := 9264
;
when 5299 =>
table_value := 9296
;
when 5300 =>
table_value := 9328
;
when 5301 =>
table_value := 9328
;
when 5302 =>
table_value := 9360
;
when 5303 =>
table_value := 9424
;
when 5304 =>
table_value := 9456
;
when 5305 =>
table_value := 9504
;
when 5306 =>
table_value := 9488
;
when 5307 =>
table_value := 9456
;
when 5308 =>
table_value := 9392
;
when 5309 =>
table_value := 9312
;
when 5310 =>
table_value := 9120
;
when 5311 =>
table_value := 8976
;
when 5312 =>
table_value := 8848
;
when 5313 =>
table_value := 8640
;
when 5314 =>
table_value := 8464
;
when 5315 =>
table_value := 8240
;
when 5316 =>
table_value := 8032
;
when 5317 =>
table_value := 7808
;
when 5318 =>
table_value := 7568
;
when 5319 =>
table_value := 7344
;
when 5320 =>
table_value := 7072
;
when 5321 =>
table_value := 6816
;
when 5322 =>
table_value := 6496
;
when 5323 =>
table_value := 6240
;
when 5324 =>
table_value := 5936
;
when 5325 =>
table_value := 5696
;
when 5326 =>
table_value := 5456
;
when 5327 =>
table_value := 5168
;
when 5328 =>
table_value := 4912
;
when 5329 =>
table_value := 4624
;
when 5330 =>
table_value := 4368
;
when 5331 =>
table_value := 4112
;
when 5332 =>
table_value := 3920
;
when 5333 =>
table_value := 3696
;
when 5334 =>
table_value := 3456
;
when 5335 =>
table_value := 3168
;
when 5336 =>
table_value := 2880
;
when 5337 =>
table_value := 2608
;
when 5338 =>
table_value := 2352
;
when 5339 =>
table_value := 2144
;
when 5340 =>
table_value := 1952
;
when 5341 =>
table_value := 1744
;
when 5342 =>
table_value := 1536
;
when 5343 =>
table_value := 1344
;
when 5344 =>
table_value := 1200
;
when 5345 =>
table_value := 1072
;
when 5346 =>
table_value := 976
;
when 5347 =>
table_value := 912
;
when 5348 =>
table_value := 816
;
when 5349 =>
table_value := 704
;
when 5350 =>
table_value := 624
;
when 5351 =>
table_value := 560
;
when 5352 =>
table_value := 496
;
when 5353 =>
table_value := 432
;
when 5354 =>
table_value := 368
;
when 5355 =>
table_value := 288
;
when 5356 =>
table_value := 192
;
when 5357 =>
table_value := 80
;
when 5358 =>
table_value := 1048560
;
when 5359 =>
table_value := 1048464
;
when 5360 =>
table_value := 1048336
;
when 5361 =>
table_value := 1048192
;
when 5362 =>
table_value := 1048064
;
when 5363 =>
table_value := 1047920
;
when 5364 =>
table_value := 1047792
;
when 5365 =>
table_value := 1047648
;
when 5366 =>
table_value := 1047504
;
when 5367 =>
table_value := 1047344
;
when 5368 =>
table_value := 1047184
;
when 5369 =>
table_value := 1047024
;
when 5370 =>
table_value := 1046864
;
when 5371 =>
table_value := 1046704
;
when 5372 =>
table_value := 1046560
;
when 5373 =>
table_value := 1046416
;
when 5374 =>
table_value := 1046320
;
when 5375 =>
table_value := 1046240
;
when 5376 =>
table_value := 1046192
;
when 5377 =>
table_value := 1046128
;
when 5378 =>
table_value := 1046096
;
when 5379 =>
table_value := 1046032
;
when 5380 =>
table_value := 1046000
;
when 5381 =>
table_value := 1045936
;
when 5382 =>
table_value := 1045952
;
when 5383 =>
table_value := 1045920
;
when 5384 =>
table_value := 1045904
;
when 5385 =>
table_value := 1045904
;
when 5386 =>
table_value := 1045872
;
when 5387 =>
table_value := 1045840
;
when 5388 =>
table_value := 1045792
;
when 5389 =>
table_value := 1045776
;
when 5390 =>
table_value := 1045744
;
when 5391 =>
table_value := 1045744
;
when 5392 =>
table_value := 1045760
;
when 5393 =>
table_value := 1045776
;
when 5394 =>
table_value := 1045728
;
when 5395 =>
table_value := 1045648
;
when 5396 =>
table_value := 1045568
;
when 5397 =>
table_value := 1045488
;
when 5398 =>
table_value := 1045408
;
when 5399 =>
table_value := 1045312
;
when 5400 =>
table_value := 1045248
;
when 5401 =>
table_value := 1045120
;
when 5402 =>
table_value := 1044944
;
when 5403 =>
table_value := 1044784
;
when 5404 =>
table_value := 1044576
;
when 5405 =>
table_value := 1044416
;
when 5406 =>
table_value := 1044272
;
when 5407 =>
table_value := 1044128
;
when 5408 =>
table_value := 1043952
;
when 5409 =>
table_value := 1043776
;
when 5410 =>
table_value := 1043552
;
when 5411 =>
table_value := 1043312
;
when 5412 =>
table_value := 1043056
;
when 5413 =>
table_value := 1042800
;
when 5414 =>
table_value := 1042544
;
when 5415 =>
table_value := 1042272
;
when 5416 =>
table_value := 1041968
;
when 5417 =>
table_value := 1041680
;
when 5418 =>
table_value := 1041440
;
when 5419 =>
table_value := 1041184
;
when 5420 =>
table_value := 1040944
;
when 5421 =>
table_value := 1040688
;
when 5422 =>
table_value := 1040448
;
when 5423 =>
table_value := 1040208
;
when 5424 =>
table_value := 1039936
;
when 5425 =>
table_value := 1039680
;
when 5426 =>
table_value := 1039440
;
when 5427 =>
table_value := 1039136
;
when 5428 =>
table_value := 1038816
;
when 5429 =>
table_value := 1038512
;
when 5430 =>
table_value := 1038192
;
when 5431 =>
table_value := 1037872
;
when 5432 =>
table_value := 1037568
;
when 5433 =>
table_value := 1037280
;
when 5434 =>
table_value := 1036960
;
when 5435 =>
table_value := 1036608
;
when 5436 =>
table_value := 1036320
;
when 5437 =>
table_value := 1036064
;
when 5438 =>
table_value := 1035792
;
when 5439 =>
table_value := 1035552
;
when 5440 =>
table_value := 1035328
;
when 5441 =>
table_value := 1035056
;
when 5442 =>
table_value := 1034816
;
when 5443 =>
table_value := 1034544
;
when 5444 =>
table_value := 1034272
;
when 5445 =>
table_value := 1034000
;
when 5446 =>
table_value := 1033760
;
when 5447 =>
table_value := 1033568
;
when 5448 =>
table_value := 1033360
;
when 5449 =>
table_value := 1033152
;
when 5450 =>
table_value := 1032976
;
when 5451 =>
table_value := 1032752
;
when 5452 =>
table_value := 1032560
;
when 5453 =>
table_value := 1032352
;
when 5454 =>
table_value := 1032112
;
when 5455 =>
table_value := 1031888
;
when 5456 =>
table_value := 1031584
;
when 5457 =>
table_value := 1031344
;
when 5458 =>
table_value := 1031120
;
when 5459 =>
table_value := 1030944
;
when 5460 =>
table_value := 1030800
;
when 5461 =>
table_value := 1030688
;
when 5462 =>
table_value := 1030560
;
when 5463 =>
table_value := 1030480
;
when 5464 =>
table_value := 1030352
;
when 5465 =>
table_value := 1030224
;
when 5466 =>
table_value := 1030144
;
when 5467 =>
table_value := 1030112
;
when 5468 =>
table_value := 1030112
;
when 5469 =>
table_value := 1030144
;
when 5470 =>
table_value := 1030160
;
when 5471 =>
table_value := 1030192
;
when 5472 =>
table_value := 1030208
;
when 5473 =>
table_value := 1030240
;
when 5474 =>
table_value := 1030288
;
when 5475 =>
table_value := 1030384
;
when 5476 =>
table_value := 1030480
;
when 5477 =>
table_value := 1030624
;
when 5478 =>
table_value := 1030720
;
when 5479 =>
table_value := 1030832
;
when 5480 =>
table_value := 1030944
;
when 5481 =>
table_value := 1031072
;
when 5482 =>
table_value := 1031200
;
when 5483 =>
table_value := 1031328
;
when 5484 =>
table_value := 1031376
;
when 5485 =>
table_value := 1031408
;
when 5486 =>
table_value := 1031424
;
when 5487 =>
table_value := 1031440
;
when 5488 =>
table_value := 1031472
;
when 5489 =>
table_value := 1031408
;
when 5490 =>
table_value := 1031360
;
when 5491 =>
table_value := 1031280
;
when 5492 =>
table_value := 1031200
;
when 5493 =>
table_value := 1031120
;
when 5494 =>
table_value := 1031040
;
when 5495 =>
table_value := 1030960
;
when 5496 =>
table_value := 1030864
;
when 5497 =>
table_value := 1030768
;
when 5498 =>
table_value := 1030704
;
when 5499 =>
table_value := 1030656
;
when 5500 =>
table_value := 1030592
;
when 5501 =>
table_value := 1030560
;
when 5502 =>
table_value := 1030496
;
when 5503 =>
table_value := 1030416
;
when 5504 =>
table_value := 1030368
;
when 5505 =>
table_value := 1030320
;
when 5506 =>
table_value := 1030288
;
when 5507 =>
table_value := 1030256
;
when 5508 =>
table_value := 1030272
;
when 5509 =>
table_value := 1030272
;
when 5510 =>
table_value := 1030352
;
when 5511 =>
table_value := 1030416
;
when 5512 =>
table_value := 1030528
;
when 5513 =>
table_value := 1030704
;
when 5514 =>
table_value := 1030848
;
when 5515 =>
table_value := 1031040
;
when 5516 =>
table_value := 1031216
;
when 5517 =>
table_value := 1031408
;
when 5518 =>
table_value := 1031632
;
when 5519 =>
table_value := 1031872
;
when 5520 =>
table_value := 1032096
;
when 5521 =>
table_value := 1032304
;
when 5522 =>
table_value := 1032544
;
when 5523 =>
table_value := 1032832
;
when 5524 =>
table_value := 1033120
;
when 5525 =>
table_value := 1033424
;
when 5526 =>
table_value := 1033728
;
when 5527 =>
table_value := 1034016
;
when 5528 =>
table_value := 1034304
;
when 5529 =>
table_value := 1034608
;
when 5530 =>
table_value := 1034928
;
when 5531 =>
table_value := 1035232
;
when 5532 =>
table_value := 1035504
;
when 5533 =>
table_value := 1035808
;
when 5534 =>
table_value := 1036080
;
when 5535 =>
table_value := 1036320
;
when 5536 =>
table_value := 1036592
;
when 5537 =>
table_value := 1036832
;
when 5538 =>
table_value := 1037072
;
when 5539 =>
table_value := 1037312
;
when 5540 =>
table_value := 1037536
;
when 5541 =>
table_value := 1037728
;
when 5542 =>
table_value := 1037968
;
when 5543 =>
table_value := 1038224
;
when 5544 =>
table_value := 1038432
;
when 5545 =>
table_value := 1038656
;
when 5546 =>
table_value := 1038880
;
when 5547 =>
table_value := 1039088
;
when 5548 =>
table_value := 1039360
;
when 5549 =>
table_value := 1039616
;
when 5550 =>
table_value := 1039856
;
when 5551 =>
table_value := 1040144
;
when 5552 =>
table_value := 1040448
;
when 5553 =>
table_value := 1040784
;
when 5554 =>
table_value := 1041088
;
when 5555 =>
table_value := 1041392
;
when 5556 =>
table_value := 1041728
;
when 5557 =>
table_value := 1042080
;
when 5558 =>
table_value := 1042432
;
when 5559 =>
table_value := 1042832
;
when 5560 =>
table_value := 1043280
;
when 5561 =>
table_value := 1043744
;
when 5562 =>
table_value := 1044208
;
when 5563 =>
table_value := 1044704
;
when 5564 =>
table_value := 1045152
;
when 5565 =>
table_value := 1045600
;
when 5566 =>
table_value := 1046080
;
when 5567 =>
table_value := 1046560
;
when 5568 =>
table_value := 1047024
;
when 5569 =>
table_value := 1047488
;
when 5570 =>
table_value := 1047920
;
when 5571 =>
table_value := 1048352
;
when 5572 =>
table_value := 160
;
when 5573 =>
table_value := 576
;
when 5574 =>
table_value := 1024
;
when 5575 =>
table_value := 1472
;
when 5576 =>
table_value := 1952
;
when 5577 =>
table_value := 2400
;
when 5578 =>
table_value := 2800
;
when 5579 =>
table_value := 3184
;
when 5580 =>
table_value := 3536
;
when 5581 =>
table_value := 3888
;
when 5582 =>
table_value := 4224
;
when 5583 =>
table_value := 4544
;
when 5584 =>
table_value := 4864
;
when 5585 =>
table_value := 5168
;
when 5586 =>
table_value := 5472
;
when 5587 =>
table_value := 5728
;
when 5588 =>
table_value := 5952
;
when 5589 =>
table_value := 6128
;
when 5590 =>
table_value := 6272
;
when 5591 =>
table_value := 6400
;
when 5592 =>
table_value := 6544
;
when 5593 =>
table_value := 6688
;
when 5594 =>
table_value := 6816
;
when 5595 =>
table_value := 6928
;
when 5596 =>
table_value := 7008
;
when 5597 =>
table_value := 7056
;
when 5598 =>
table_value := 7104
;
when 5599 =>
table_value := 7168
;
when 5600 =>
table_value := 7184
;
when 5601 =>
table_value := 7232
;
when 5602 =>
table_value := 7232
;
when 5603 =>
table_value := 7280
;
when 5604 =>
table_value := 7328
;
when 5605 =>
table_value := 7360
;
when 5606 =>
table_value := 7424
;
when 5607 =>
table_value := 7472
;
when 5608 =>
table_value := 7536
;
when 5609 =>
table_value := 7568
;
when 5610 =>
table_value := 7600
;
when 5611 =>
table_value := 7632
;
when 5612 =>
table_value := 7648
;
when 5613 =>
table_value := 7664
;
when 5614 =>
table_value := 7680
;
when 5615 =>
table_value := 7728
;
when 5616 =>
table_value := 7760
;
when 5617 =>
table_value := 7776
;
when 5618 =>
table_value := 7744
;
when 5619 =>
table_value := 7728
;
when 5620 =>
table_value := 7712
;
when 5621 =>
table_value := 7744
;
when 5622 =>
table_value := 7792
;
when 5623 =>
table_value := 7808
;
when 5624 =>
table_value := 7840
;
when 5625 =>
table_value := 7840
;
when 5626 =>
table_value := 7856
;
when 5627 =>
table_value := 7872
;
when 5628 =>
table_value := 7856
;
when 5629 =>
table_value := 7856
;
when 5630 =>
table_value := 7792
;
when 5631 =>
table_value := 7760
;
when 5632 =>
table_value := 7728
;
when 5633 =>
table_value := 7680
;
when 5634 =>
table_value := 7648
;
when 5635 =>
table_value := 7632
;
when 5636 =>
table_value := 7600
;
when 5637 =>
table_value := 7568
;
when 5638 =>
table_value := 7536
;
when 5639 =>
table_value := 7504
;
when 5640 =>
table_value := 7488
;
when 5641 =>
table_value := 7456
;
when 5642 =>
table_value := 7456
;
when 5643 =>
table_value := 7424
;
when 5644 =>
table_value := 7424
;
when 5645 =>
table_value := 7408
;
when 5646 =>
table_value := 7392
;
when 5647 =>
table_value := 7376
;
when 5648 =>
table_value := 7312
;
when 5649 =>
table_value := 7280
;
when 5650 =>
table_value := 7232
;
when 5651 =>
table_value := 7152
;
when 5652 =>
table_value := 7104
;
when 5653 =>
table_value := 7024
;
when 5654 =>
table_value := 6976
;
when 5655 =>
table_value := 6912
;
when 5656 =>
table_value := 6848
;
when 5657 =>
table_value := 6784
;
when 5658 =>
table_value := 6720
;
when 5659 =>
table_value := 6656
;
when 5660 =>
table_value := 6576
;
when 5661 =>
table_value := 6512
;
when 5662 =>
table_value := 6432
;
when 5663 =>
table_value := 6400
;
when 5664 =>
table_value := 6336
;
when 5665 =>
table_value := 6256
;
when 5666 =>
table_value := 6144
;
when 5667 =>
table_value := 6048
;
when 5668 =>
table_value := 5920
;
when 5669 =>
table_value := 5776
;
when 5670 =>
table_value := 5616
;
when 5671 =>
table_value := 5456
;
when 5672 =>
table_value := 5280
;
when 5673 =>
table_value := 5104
;
when 5674 =>
table_value := 4944
;
when 5675 =>
table_value := 4768
;
when 5676 =>
table_value := 4560
;
when 5677 =>
table_value := 4336
;
when 5678 =>
table_value := 4080
;
when 5679 =>
table_value := 3824
;
when 5680 =>
table_value := 3520
;
when 5681 =>
table_value := 3264
;
when 5682 =>
table_value := 2928
;
when 5683 =>
table_value := 2608
;
when 5684 =>
table_value := 2240
;
when 5685 =>
table_value := 1872
;
when 5686 =>
table_value := 1440
;
when 5687 =>
table_value := 1104
;
when 5688 =>
table_value := 672
;
when 5689 =>
table_value := 208
;
when 5690 =>
table_value := 1048400
;
when 5691 =>
table_value := 1047984
;
when 5692 =>
table_value := 1047536
;
when 5693 =>
table_value := 1047056
;
when 5694 =>
table_value := 1046656
;
when 5695 =>
table_value := 1046208
;
when 5696 =>
table_value := 1045792
;
when 5697 =>
table_value := 1045360
;
when 5698 =>
table_value := 1045008
;
when 5699 =>
table_value := 1044592
;
when 5700 =>
table_value := 1044224
;
when 5701 =>
table_value := 1043872
;
when 5702 =>
table_value := 1043552
;
when 5703 =>
table_value := 1043200
;
when 5704 =>
table_value := 1042848
;
when 5705 =>
table_value := 1042496
;
when 5706 =>
table_value := 1042192
;
when 5707 =>
table_value := 1041936
;
when 5708 =>
table_value := 1041696
;
when 5709 =>
table_value := 1041504
;
when 5710 =>
table_value := 1041264
;
when 5711 =>
table_value := 1041024
;
when 5712 =>
table_value := 1040784
;
when 5713 =>
table_value := 1040560
;
when 5714 =>
table_value := 1040384
;
when 5715 =>
table_value := 1040208
;
when 5716 =>
table_value := 1040032
;
when 5717 =>
table_value := 1039920
;
when 5718 =>
table_value := 1039776
;
when 5719 =>
table_value := 1039616
;
when 5720 =>
table_value := 1039488
;
when 5721 =>
table_value := 1039376
;
when 5722 =>
table_value := 1039168
;
when 5723 =>
table_value := 1039008
;
when 5724 =>
table_value := 1038880
;
when 5725 =>
table_value := 1038688
;
when 5726 =>
table_value := 1038544
;
when 5727 =>
table_value := 1038368
;
when 5728 =>
table_value := 1038208
;
when 5729 =>
table_value := 1038032
;
when 5730 =>
table_value := 1037888
;
when 5731 =>
table_value := 1037760
;
when 5732 =>
table_value := 1037616
;
when 5733 =>
table_value := 1037488
;
when 5734 =>
table_value := 1037392
;
when 5735 =>
table_value := 1037248
;
when 5736 =>
table_value := 1037072
;
when 5737 =>
table_value := 1036928
;
when 5738 =>
table_value := 1036752
;
when 5739 =>
table_value := 1036592
;
when 5740 =>
table_value := 1036480
;
when 5741 =>
table_value := 1036384
;
when 5742 =>
table_value := 1036224
;
when 5743 =>
table_value := 1036128
;
when 5744 =>
table_value := 1036048
;
when 5745 =>
table_value := 1035888
;
when 5746 =>
table_value := 1035760
;
when 5747 =>
table_value := 1035616
;
when 5748 =>
table_value := 1035504
;
when 5749 =>
table_value := 1035424
;
when 5750 =>
table_value := 1035264
;
when 5751 =>
table_value := 1035152
;
when 5752 =>
table_value := 1035008
;
when 5753 =>
table_value := 1034832
;
when 5754 =>
table_value := 1034720
;
when 5755 =>
table_value := 1034576
;
when 5756 =>
table_value := 1034464
;
when 5757 =>
table_value := 1034288
;
when 5758 =>
table_value := 1034112
;
when 5759 =>
table_value := 1033936
;
when 5760 =>
table_value := 1033824
;
when 5761 =>
table_value := 1033728
;
when 5762 =>
table_value := 1033664
;
when 5763 =>
table_value := 1033568
;
when 5764 =>
table_value := 1033472
;
when 5765 =>
table_value := 1033360
;
when 5766 =>
table_value := 1033296
;
when 5767 =>
table_value := 1033264
;
when 5768 =>
table_value := 1033248
;
when 5769 =>
table_value := 1033248
;
when 5770 =>
table_value := 1033232
;
when 5771 =>
table_value := 1033264
;
when 5772 =>
table_value := 1033232
;
when 5773 =>
table_value := 1033264
;
when 5774 =>
table_value := 1033248
;
when 5775 =>
table_value := 1033312
;
when 5776 =>
table_value := 1033360
;
when 5777 =>
table_value := 1033472
;
when 5778 =>
table_value := 1033504
;
when 5779 =>
table_value := 1033600
;
when 5780 =>
table_value := 1033616
;
when 5781 =>
table_value := 1033696
;
when 5782 =>
table_value := 1033712
;
when 5783 =>
table_value := 1033760
;
when 5784 =>
table_value := 1033840
;
when 5785 =>
table_value := 1033856
;
when 5786 =>
table_value := 1033888
;
when 5787 =>
table_value := 1033872
;
when 5788 =>
table_value := 1033920
;
when 5789 =>
table_value := 1033984
;
when 5790 =>
table_value := 1034080
;
when 5791 =>
table_value := 1034192
;
when 5792 =>
table_value := 1034288
;
when 5793 =>
table_value := 1034416
;
when 5794 =>
table_value := 1034528
;
when 5795 =>
table_value := 1034672
;
when 5796 =>
table_value := 1034832
;
when 5797 =>
table_value := 1035056
;
when 5798 =>
table_value := 1035248
;
when 5799 =>
table_value := 1035504
;
when 5800 =>
table_value := 1035728
;
when 5801 =>
table_value := 1035968
;
when 5802 =>
table_value := 1036208
;
when 5803 =>
table_value := 1036512
;
when 5804 =>
table_value := 1036848
;
when 5805 =>
table_value := 1037232
;
when 5806 =>
table_value := 1037632
;
when 5807 =>
table_value := 1038080
;
when 5808 =>
table_value := 1038512
;
when 5809 =>
table_value := 1038992
;
when 5810 =>
table_value := 1039520
;
when 5811 =>
table_value := 1040096
;
when 5812 =>
table_value := 1040656
;
when 5813 =>
table_value := 1041248
;
when 5814 =>
table_value := 1041840
;
when 5815 =>
table_value := 1042400
;
when 5816 =>
table_value := 1042992
;
when 5817 =>
table_value := 1043552
;
when 5818 =>
table_value := 1044176
;
when 5819 =>
table_value := 1044720
;
when 5820 =>
table_value := 1045296
;
when 5821 =>
table_value := 1045872
;
when 5822 =>
table_value := 1046416
;
when 5823 =>
table_value := 1046912
;
when 5824 =>
table_value := 1047424
;
when 5825 =>
table_value := 1047936
;
when 5826 =>
table_value := 1048400
;
when 5827 =>
table_value := 272
;
when 5828 =>
table_value := 720
;
when 5829 =>
table_value := 1168
;
when 5830 =>
table_value := 1664
;
when 5831 =>
table_value := 2080
;
when 5832 =>
table_value := 2528
;
when 5833 =>
table_value := 2976
;
when 5834 =>
table_value := 3408
;
when 5835 =>
table_value := 3824
;
when 5836 =>
table_value := 4272
;
when 5837 =>
table_value := 4736
;
when 5838 =>
table_value := 5152
;
when 5839 =>
table_value := 5568
;
when 5840 =>
table_value := 5968
;
when 5841 =>
table_value := 6400
;
when 5842 =>
table_value := 6832
;
when 5843 =>
table_value := 7248
;
when 5844 =>
table_value := 7632
;
when 5845 =>
table_value := 7936
;
when 5846 =>
table_value := 8288
;
when 5847 =>
table_value := 8640
;
when 5848 =>
table_value := 8992
;
when 5849 =>
table_value := 9408
;
when 5850 =>
table_value := 9760
;
when 5851 =>
table_value := 10096
;
when 5852 =>
table_value := 10480
;
when 5853 =>
table_value := 10848
;
when 5854 =>
table_value := 11248
;
when 5855 =>
table_value := 11680
;
when 5856 =>
table_value := 12080
;
when 5857 =>
table_value := 12448
;
when 5858 =>
table_value := 12768
;
when 5859 =>
table_value := 13056
;
when 5860 =>
table_value := 13312
;
when 5861 =>
table_value := 13520
;
when 5862 =>
table_value := 13808
;
when 5863 =>
table_value := 14000
;
when 5864 =>
table_value := 14240
;
when 5865 =>
table_value := 14384
;
when 5866 =>
table_value := 14576
;
when 5867 =>
table_value := 14736
;
when 5868 =>
table_value := 14944
;
when 5869 =>
table_value := 15072
;
when 5870 =>
table_value := 15248
;
when 5871 =>
table_value := 15408
;
when 5872 =>
table_value := 15552
;
when 5873 =>
table_value := 15712
;
when 5874 =>
table_value := 15872
;
when 5875 =>
table_value := 16000
;
when 5876 =>
table_value := 16144
;
when 5877 =>
table_value := 16240
;
when 5878 =>
table_value := 16400
;
when 5879 =>
table_value := 16544
;
when 5880 =>
table_value := 16640
;
when 5881 =>
table_value := 16832
;
when 5882 =>
table_value := 16976
;
when 5883 =>
table_value := 17104
;
when 5884 =>
table_value := 17280
;
when 5885 =>
table_value := 17440
;
when 5886 =>
table_value := 17600
;
when 5887 =>
table_value := 17744
;
when 5888 =>
table_value := 17920
;
when 5889 =>
table_value := 18080
;
when 5890 =>
table_value := 18192
;
when 5891 =>
table_value := 18320
;
when 5892 =>
table_value := 18480
;
when 5893 =>
table_value := 18560
;
when 5894 =>
table_value := 18704
;
when 5895 =>
table_value := 18848
;
when 5896 =>
table_value := 18976
;
when 5897 =>
table_value := 19136
;
when 5898 =>
table_value := 19248
;
when 5899 =>
table_value := 19376
;
when 5900 =>
table_value := 19408
;
when 5901 =>
table_value := 19408
;
when 5902 =>
table_value := 19440
;
when 5903 =>
table_value := 19440
;
when 5904 =>
table_value := 19408
;
when 5905 =>
table_value := 19376
;
when 5906 =>
table_value := 19392
;
when 5907 =>
table_value := 19360
;
when 5908 =>
table_value := 19312
;
when 5909 =>
table_value := 19328
;
when 5910 =>
table_value := 19248
;
when 5911 =>
table_value := 19168
;
when 5912 =>
table_value := 19136
;
when 5913 =>
table_value := 19056
;
when 5914 =>
table_value := 18976
;
when 5915 =>
table_value := 18912
;
when 5916 =>
table_value := 18864
;
when 5917 =>
table_value := 18800
;
when 5918 =>
table_value := 18816
;
when 5919 =>
table_value := 18816
;
when 5920 =>
table_value := 18736
;
when 5921 =>
table_value := 18768
;
when 5922 =>
table_value := 18800
;
when 5923 =>
table_value := 18848
;
when 5924 =>
table_value := 18912
;
when 5925 =>
table_value := 18944
;
when 5926 =>
table_value := 19008
;
when 5927 =>
table_value := 18992
;
when 5928 =>
table_value := 19040
;
when 5929 =>
table_value := 19072
;
when 5930 =>
table_value := 19072
;
when 5931 =>
table_value := 19072
;
when 5932 =>
table_value := 19072
;
when 5933 =>
table_value := 19120
;
when 5934 =>
table_value := 19072
;
when 5935 =>
table_value := 19056
;
when 5936 =>
table_value := 19024
;
when 5937 =>
table_value := 19008
;
when 5938 =>
table_value := 19008
;
when 5939 =>
table_value := 19024
;
when 5940 =>
table_value := 19056
;
when 5941 =>
table_value := 19040
;
when 5942 =>
table_value := 19072
;
when 5943 =>
table_value := 18976
;
when 5944 =>
table_value := 18976
;
when 5945 =>
table_value := 18992
;
when 5946 =>
table_value := 18976
;
when 5947 =>
table_value := 18944
;
when 5948 =>
table_value := 18880
;
when 5949 =>
table_value := 18832
;
when 5950 =>
table_value := 18784
;
when 5951 =>
table_value := 18768
;
when 5952 =>
table_value := 18704
;
when 5953 =>
table_value := 18640
;
when 5954 =>
table_value := 18608
;
when 5955 =>
table_value := 18544
;
when 5956 =>
table_value := 18416
;
when 5957 =>
table_value := 18352
;
when 5958 =>
table_value := 18304
;
when 5959 =>
table_value := 18224
;
when 5960 =>
table_value := 18160
;
when 5961 =>
table_value := 18064
;
when 5962 =>
table_value := 17936
;
when 5963 =>
table_value := 17776
;
when 5964 =>
table_value := 17664
;
when 5965 =>
table_value := 17472
;
when 5966 =>
table_value := 17360
;
when 5967 =>
table_value := 17152
;
when 5968 =>
table_value := 16976
;
when 5969 =>
table_value := 16768
;
when 5970 =>
table_value := 16592
;
when 5971 =>
table_value := 16368
;
when 5972 =>
table_value := 16176
;
when 5973 =>
table_value := 15936
;
when 5974 =>
table_value := 15664
;
when 5975 =>
table_value := 15344
;
when 5976 =>
table_value := 14992
;
when 5977 =>
table_value := 14688
;
when 5978 =>
table_value := 14336
;
when 5979 =>
table_value := 14000
;
when 5980 =>
table_value := 13648
;
when 5981 =>
table_value := 13280
;
when 5982 =>
table_value := 12880
;
when 5983 =>
table_value := 12512
;
when 5984 =>
table_value := 12144
;
when 5985 =>
table_value := 11792
;
when 5986 =>
table_value := 11440
;
when 5987 =>
table_value := 11120
;
when 5988 =>
table_value := 10752
;
when 5989 =>
table_value := 10432
;
when 5990 =>
table_value := 10064
;
when 5991 =>
table_value := 9712
;
when 5992 =>
table_value := 9440
;
when 5993 =>
table_value := 9152
;
when 5994 =>
table_value := 8832
;
when 5995 =>
table_value := 8608
;
when 5996 =>
table_value := 8304
;
when 5997 =>
table_value := 8016
;
when 5998 =>
table_value := 7744
;
when 5999 =>
table_value := 7504
;
when 6000 =>
table_value := 7328
;
when 6001 =>
table_value := 7200
;
when 6002 =>
table_value := 7056
;
when 6003 =>
table_value := 6928
;
when 6004 =>
table_value := 6816
;
when 6005 =>
table_value := 6720
;
when 6006 =>
table_value := 6640
;
when 6007 =>
table_value := 6576
;
when 6008 =>
table_value := 6576
;
when 6009 =>
table_value := 6608
;
when 6010 =>
table_value := 6720
;
when 6011 =>
table_value := 6784
;
when 6012 =>
table_value := 6848
;
when 6013 =>
table_value := 6928
;
when 6014 =>
table_value := 7024
;
when 6015 =>
table_value := 7136
;
when 6016 =>
table_value := 7232
;
when 6017 =>
table_value := 7328
;
when 6018 =>
table_value := 7440
;
when 6019 =>
table_value := 7536
;
when 6020 =>
table_value := 7648
;
when 6021 =>
table_value := 7744
;
when 6022 =>
table_value := 7808
;
when 6023 =>
table_value := 7872
;
when 6024 =>
table_value := 7936
;
when 6025 =>
table_value := 7984
;
when 6026 =>
table_value := 8064
;
when 6027 =>
table_value := 8128
;
when 6028 =>
table_value := 8128
;
when 6029 =>
table_value := 8096
;
when 6030 =>
table_value := 8112
;
when 6031 =>
table_value := 8112
;
when 6032 =>
table_value := 8144
;
when 6033 =>
table_value := 8128
;
when 6034 =>
table_value := 8176
;
when 6035 =>
table_value := 8128
;
when 6036 =>
table_value := 8080
;
when 6037 =>
table_value := 8000
;
when 6038 =>
table_value := 7936
;
when 6039 =>
table_value := 7840
;
when 6040 =>
table_value := 7728
;
when 6041 =>
table_value := 7584
;
when 6042 =>
table_value := 7392
;
when 6043 =>
table_value := 7216
;
when 6044 =>
table_value := 7024
;
when 6045 =>
table_value := 6848
;
when 6046 =>
table_value := 6656
;
when 6047 =>
table_value := 6448
;
when 6048 =>
table_value := 6224
;
when 6049 =>
table_value := 5968
;
when 6050 =>
table_value := 5712
;
when 6051 =>
table_value := 5456
;
when 6052 =>
table_value := 5248
;
when 6053 =>
table_value := 5040
;
when 6054 =>
table_value := 4800
;
when 6055 =>
table_value := 4560
;
when 6056 =>
table_value := 4400
;
when 6057 =>
table_value := 4160
;
when 6058 =>
table_value := 3904
;
when 6059 =>
table_value := 3712
;
when 6060 =>
table_value := 3504
;
when 6061 =>
table_value := 3312
;
when 6062 =>
table_value := 3104
;
when 6063 =>
table_value := 2912
;
when 6064 =>
table_value := 2672
;
when 6065 =>
table_value := 2480
;
when 6066 =>
table_value := 2304
;
when 6067 =>
table_value := 2112
;
when 6068 =>
table_value := 1920
;
when 6069 =>
table_value := 1776
;
when 6070 =>
table_value := 1616
;
when 6071 =>
table_value := 1472
;
when 6072 =>
table_value := 1328
;
when 6073 =>
table_value := 1232
;
when 6074 =>
table_value := 1104
;
when 6075 =>
table_value := 1024
;
when 6076 =>
table_value := 912
;
when 6077 =>
table_value := 800
;
when 6078 =>
table_value := 688
;
when 6079 =>
table_value := 592
;
when 6080 =>
table_value := 496
;
when 6081 =>
table_value := 400
;
when 6082 =>
table_value := 320
;
when 6083 =>
table_value := 240
;
when 6084 =>
table_value := 144
;
when 6085 =>
table_value := 80
;
when 6086 =>
table_value := 0
;
when 6087 =>
table_value := 1048480
;
when 6088 =>
table_value := 1048432
;
when 6089 =>
table_value := 1048288
;
when 6090 =>
table_value := 1048192
;
when 6091 =>
table_value := 1048080
;
when 6092 =>
table_value := 1048032
;
when 6093 =>
table_value := 1047968
;
when 6094 =>
table_value := 1047888
;
when 6095 =>
table_value := 1047792
;
when 6096 =>
table_value := 1047728
;
when 6097 =>
table_value := 1047600
;
when 6098 =>
table_value := 1047504
;
when 6099 =>
table_value := 1047360
;
when 6100 =>
table_value := 1047232
;
when 6101 =>
table_value := 1047104
;
when 6102 =>
table_value := 1046992
;
when 6103 =>
table_value := 1046944
;
when 6104 =>
table_value := 1046880
;
when 6105 =>
table_value := 1046816
;
when 6106 =>
table_value := 1046784
;
when 6107 =>
table_value := 1046720
;
when 6108 =>
table_value := 1046672
;
when 6109 =>
table_value := 1046544
;
when 6110 =>
table_value := 1046496
;
when 6111 =>
table_value := 1046416
;
when 6112 =>
table_value := 1046384
;
when 6113 =>
table_value := 1046320
;
when 6114 =>
table_value := 1046224
;
when 6115 =>
table_value := 1046176
;
when 6116 =>
table_value := 1046112
;
when 6117 =>
table_value := 1046048
;
when 6118 =>
table_value := 1046000
;
when 6119 =>
table_value := 1046032
;
when 6120 =>
table_value := 1046048
;
when 6121 =>
table_value := 1046016
;
when 6122 =>
table_value := 1045984
;
when 6123 =>
table_value := 1046000
;
when 6124 =>
table_value := 1045984
;
when 6125 =>
table_value := 1045968
;
when 6126 =>
table_value := 1045936
;
when 6127 =>
table_value := 1045872
;
when 6128 =>
table_value := 1045792
;
when 6129 =>
table_value := 1045776
;
when 6130 =>
table_value := 1045680
;
when 6131 =>
table_value := 1045600
;
when 6132 =>
table_value := 1045520
;
when 6133 =>
table_value := 1045408
;
when 6134 =>
table_value := 1045296
;
when 6135 =>
table_value := 1045152
;
when 6136 =>
table_value := 1045056
;
when 6137 =>
table_value := 1044960
;
when 6138 =>
table_value := 1044848
;
when 6139 =>
table_value := 1044704
;
when 6140 =>
table_value := 1044560
;
when 6141 =>
table_value := 1044416
;
when 6142 =>
table_value := 1044256
;
when 6143 =>
table_value := 1044160
;
when 6144 =>
table_value := 1044096
;
when 6145 =>
table_value := 1044000
;
when 6146 =>
table_value := 1043904
;
when 6147 =>
table_value := 1043808
;
when 6148 =>
table_value := 1043664
;
when 6149 =>
table_value := 1043536
;
when 6150 =>
table_value := 1043344
;
when 6151 =>
table_value := 1043200
;
when 6152 =>
table_value := 1043024
;
when 6153 =>
table_value := 1042880
;
when 6154 =>
table_value := 1042736
;
when 6155 =>
table_value := 1042544
;
when 6156 =>
table_value := 1042368
;
when 6157 =>
table_value := 1042112
;
when 6158 =>
table_value := 1041952
;
when 6159 =>
table_value := 1041728
;
when 6160 =>
table_value := 1041568
;
when 6161 =>
table_value := 1041376
;
when 6162 =>
table_value := 1041168
;
when 6163 =>
table_value := 1040992
;
when 6164 =>
table_value := 1040784
;
when 6165 =>
table_value := 1040576
;
when 6166 =>
table_value := 1040400
;
when 6167 =>
table_value := 1040224
;
when 6168 =>
table_value := 1040016
;
when 6169 =>
table_value := 1039824
;
when 6170 =>
table_value := 1039616
;
when 6171 =>
table_value := 1039456
;
when 6172 =>
table_value := 1039312
;
when 6173 =>
table_value := 1039152
;
when 6174 =>
table_value := 1039008
;
when 6175 =>
table_value := 1038896
;
when 6176 =>
table_value := 1038768
;
when 6177 =>
table_value := 1038656
;
when 6178 =>
table_value := 1038544
;
when 6179 =>
table_value := 1038448
;
when 6180 =>
table_value := 1038336
;
when 6181 =>
table_value := 1038256
;
when 6182 =>
table_value := 1038224
;
when 6183 =>
table_value := 1038160
;
when 6184 =>
table_value := 1038128
;
when 6185 =>
table_value := 1038064
;
when 6186 =>
table_value := 1038080
;
when 6187 =>
table_value := 1038048
;
when 6188 =>
table_value := 1038080
;
when 6189 =>
table_value := 1038064
;
when 6190 =>
table_value := 1038048
;
when 6191 =>
table_value := 1038016
;
when 6192 =>
table_value := 1037968
;
when 6193 =>
table_value := 1037920
;
when 6194 =>
table_value := 1037856
;
when 6195 =>
table_value := 1037776
;
when 6196 =>
table_value := 1037664
;
when 6197 =>
table_value := 1037552
;
when 6198 =>
table_value := 1037472
;
when 6199 =>
table_value := 1037328
;
when 6200 =>
table_value := 1037184
;
when 6201 =>
table_value := 1036992
;
when 6202 =>
table_value := 1036768
;
when 6203 =>
table_value := 1036544
;
when 6204 =>
table_value := 1036352
;
when 6205 =>
table_value := 1036128
;
when 6206 =>
table_value := 1035904
;
when 6207 =>
table_value := 1035648
;
when 6208 =>
table_value := 1035360
;
when 6209 =>
table_value := 1035104
;
when 6210 =>
table_value := 1034816
;
when 6211 =>
table_value := 1034496
;
when 6212 =>
table_value := 1034208
;
when 6213 =>
table_value := 1033952
;
when 6214 =>
table_value := 1033664
;
when 6215 =>
table_value := 1033392
;
when 6216 =>
table_value := 1033136
;
when 6217 =>
table_value := 1032896
;
when 6218 =>
table_value := 1032736
;
when 6219 =>
table_value := 1032512
;
when 6220 =>
table_value := 1032320
;
when 6221 =>
table_value := 1032128
;
when 6222 =>
table_value := 1031984
;
when 6223 =>
table_value := 1031840
;
when 6224 =>
table_value := 1031712
;
when 6225 =>
table_value := 1031584
;
when 6226 =>
table_value := 1031488
;
when 6227 =>
table_value := 1031360
;
when 6228 =>
table_value := 1031264
;
when 6229 =>
table_value := 1031168
;
when 6230 =>
table_value := 1031104
;
when 6231 =>
table_value := 1031072
;
when 6232 =>
table_value := 1031040
;
when 6233 =>
table_value := 1031024
;
when 6234 =>
table_value := 1030976
;
when 6235 =>
table_value := 1030960
;
when 6236 =>
table_value := 1030928
;
when 6237 =>
table_value := 1030944
;
when 6238 =>
table_value := 1030896
;
when 6239 =>
table_value := 1030976
;
when 6240 =>
table_value := 1030992
;
when 6241 =>
table_value := 1031072
;
when 6242 =>
table_value := 1031136
;
when 6243 =>
table_value := 1031248
;
when 6244 =>
table_value := 1031344
;
when 6245 =>
table_value := 1031424
;
when 6246 =>
table_value := 1031568
;
when 6247 =>
table_value := 1031664
;
when 6248 =>
table_value := 1031792
;
when 6249 =>
table_value := 1031952
;
when 6250 =>
table_value := 1032064
;
when 6251 =>
table_value := 1032240
;
when 6252 =>
table_value := 1032368
;
when 6253 =>
table_value := 1032496
;
when 6254 =>
table_value := 1032624
;
when 6255 =>
table_value := 1032800
;
when 6256 =>
table_value := 1032944
;
when 6257 =>
table_value := 1033104
;
when 6258 =>
table_value := 1033296
;
when 6259 =>
table_value := 1033472
;
when 6260 =>
table_value := 1033648
;
when 6261 =>
table_value := 1033808
;
when 6262 =>
table_value := 1033968
;
when 6263 =>
table_value := 1034128
;
when 6264 =>
table_value := 1034304
;
when 6265 =>
table_value := 1034480
;
when 6266 =>
table_value := 1034656
;
when 6267 =>
table_value := 1034800
;
when 6268 =>
table_value := 1034976
;
when 6269 =>
table_value := 1035168
;
when 6270 =>
table_value := 1035376
;
when 6271 =>
table_value := 1035616
;
when 6272 =>
table_value := 1035840
;
when 6273 =>
table_value := 1036048
;
when 6274 =>
table_value := 1036304
;
when 6275 =>
table_value := 1036576
;
when 6276 =>
table_value := 1036896
;
when 6277 =>
table_value := 1037200
;
when 6278 =>
table_value := 1037504
;
when 6279 =>
table_value := 1037840
;
when 6280 =>
table_value := 1038160
;
when 6281 =>
table_value := 1038480
;
when 6282 =>
table_value := 1038832
;
when 6283 =>
table_value := 1039296
;
when 6284 =>
table_value := 1039696
;
when 6285 =>
table_value := 1040080
;
when 6286 =>
table_value := 1040480
;
when 6287 =>
table_value := 1040816
;
when 6288 =>
table_value := 1041232
;
when 6289 =>
table_value := 1041568
;
when 6290 =>
table_value := 1041984
;
when 6291 =>
table_value := 1042352
;
when 6292 =>
table_value := 1042704
;
when 6293 =>
table_value := 1043104
;
when 6294 =>
table_value := 1043504
;
when 6295 =>
table_value := 1043952
;
when 6296 =>
table_value := 1044352
;
when 6297 =>
table_value := 1044816
;
when 6298 =>
table_value := 1045232
;
when 6299 =>
table_value := 1045664
;
when 6300 =>
table_value := 1046096
;
when 6301 =>
table_value := 1046512
;
when 6302 =>
table_value := 1046912
;
when 6303 =>
table_value := 1047328
;
when 6304 =>
table_value := 1047744
;
when 6305 =>
table_value := 1048176
;
when 6306 =>
table_value := 16
;
when 6307 =>
table_value := 432
;
when 6308 =>
table_value := 784
;
when 6309 =>
table_value := 1152
;
when 6310 =>
table_value := 1488
;
when 6311 =>
table_value := 1840
;
when 6312 =>
table_value := 2128
;
when 6313 =>
table_value := 2448
;
when 6314 =>
table_value := 2720
;
when 6315 =>
table_value := 2976
;
when 6316 =>
table_value := 3232
;
when 6317 =>
table_value := 3440
;
when 6318 =>
table_value := 3696
;
when 6319 =>
table_value := 3936
;
when 6320 =>
table_value := 4112
;
when 6321 =>
table_value := 4304
;
when 6322 =>
table_value := 4480
;
when 6323 =>
table_value := 4640
;
when 6324 =>
table_value := 4784
;
when 6325 =>
table_value := 4960
;
when 6326 =>
table_value := 5184
;
when 6327 =>
table_value := 5440
;
when 6328 =>
table_value := 5616
;
when 6329 =>
table_value := 5792
;
when 6330 =>
table_value := 5984
;
when 6331 =>
table_value := 6128
;
when 6332 =>
table_value := 6288
;
when 6333 =>
table_value := 6432
;
when 6334 =>
table_value := 6592
;
when 6335 =>
table_value := 6720
;
when 6336 =>
table_value := 6816
;
when 6337 =>
table_value := 6880
;
when 6338 =>
table_value := 6928
;
when 6339 =>
table_value := 6944
;
when 6340 =>
table_value := 6992
;
when 6341 =>
table_value := 7024
;
when 6342 =>
table_value := 7104
;
when 6343 =>
table_value := 7136
;
when 6344 =>
table_value := 7232
;
when 6345 =>
table_value := 7264
;
when 6346 =>
table_value := 7264
;
when 6347 =>
table_value := 7296
;
when 6348 =>
table_value := 7296
;
when 6349 =>
table_value := 7328
;
when 6350 =>
table_value := 7360
;
when 6351 =>
table_value := 7408
;
when 6352 =>
table_value := 7440
;
when 6353 =>
table_value := 7456
;
when 6354 =>
table_value := 7504
;
when 6355 =>
table_value := 7552
;
when 6356 =>
table_value := 7584
;
when 6357 =>
table_value := 7600
;
when 6358 =>
table_value := 7632
;
when 6359 =>
table_value := 7632
;
when 6360 =>
table_value := 7600
;
when 6361 =>
table_value := 7600
;
when 6362 =>
table_value := 7552
;
when 6363 =>
table_value := 7488
;
when 6364 =>
table_value := 7440
;
when 6365 =>
table_value := 7376
;
when 6366 =>
table_value := 7296
;
when 6367 =>
table_value := 7200
;
when 6368 =>
table_value := 7120
;
when 6369 =>
table_value := 7024
;
when 6370 =>
table_value := 6960
;
when 6371 =>
table_value := 6896
;
when 6372 =>
table_value := 6864
;
when 6373 =>
table_value := 6832
;
when 6374 =>
table_value := 6816
;
when 6375 =>
table_value := 6816
;
when 6376 =>
table_value := 6800
;
when 6377 =>
table_value := 6720
;
when 6378 =>
table_value := 6672
;
when 6379 =>
table_value := 6592
;
when 6380 =>
table_value := 6512
;
when 6381 =>
table_value := 6480
;
when 6382 =>
table_value := 6368
;
when 6383 =>
table_value := 6272
;
when 6384 =>
table_value := 6160
;
when 6385 =>
table_value := 6080
;
when 6386 =>
table_value := 5984
;
when 6387 =>
table_value := 5888
;
when 6388 =>
table_value := 5808
;
when 6389 =>
table_value := 5712
;
when 6390 =>
table_value := 5648
;
when 6391 =>
table_value := 5584
;
when 6392 =>
table_value := 5552
;
when 6393 =>
table_value := 5488
;
when 6394 =>
table_value := 5408
;
when 6395 =>
table_value := 5344
;
when 6396 =>
table_value := 5248
;
when 6397 =>
table_value := 5152
;
when 6398 =>
table_value := 5040
;
when 6399 =>
table_value := 4928
;
when 6400 =>
table_value := 4784
;
when 6401 =>
table_value := 4672
;
when 6402 =>
table_value := 4560
;
when 6403 =>
table_value := 4448
;
when 6404 =>
table_value := 4304
;
when 6405 =>
table_value := 4192
;
when 6406 =>
table_value := 4080
;
when 6407 =>
table_value := 3936
;
when 6408 =>
table_value := 3808
;
when 6409 =>
table_value := 3696
;
when 6410 =>
table_value := 3584
;
when 6411 =>
table_value := 3456
;
when 6412 =>
table_value := 3344
;
when 6413 =>
table_value := 3200
;
when 6414 =>
table_value := 3088
;
when 6415 =>
table_value := 2928
;
when 6416 =>
table_value := 2800
;
when 6417 =>
table_value := 2624
;
when 6418 =>
table_value := 2464
;
when 6419 =>
table_value := 2304
;
when 6420 =>
table_value := 2160
;
when 6421 =>
table_value := 1968
;
when 6422 =>
table_value := 1824
;
when 6423 =>
table_value := 1680
;
when 6424 =>
table_value := 1488
;
when 6425 =>
table_value := 1312
;
when 6426 =>
table_value := 1136
;
when 6427 =>
table_value := 944
;
when 6428 =>
table_value := 768
;
when 6429 =>
table_value := 576
;
when 6430 =>
table_value := 384
;
when 6431 =>
table_value := 208
;
when 6432 =>
table_value := 0
;
when 6433 =>
table_value := 1048400
;
when 6434 =>
table_value := 1048176
;
when 6435 =>
table_value := 1047952
;
when 6436 =>
table_value := 1047728
;
when 6437 =>
table_value := 1047488
;
when 6438 =>
table_value := 1047232
;
when 6439 =>
table_value := 1047008
;
when 6440 =>
table_value := 1046752
;
when 6441 =>
table_value := 1046496
;
when 6442 =>
table_value := 1046256
;
when 6443 =>
table_value := 1045984
;
when 6444 =>
table_value := 1045712
;
when 6445 =>
table_value := 1045440
;
when 6446 =>
table_value := 1045168
;
when 6447 =>
table_value := 1044896
;
when 6448 =>
table_value := 1044656
;
when 6449 =>
table_value := 1044384
;
when 6450 =>
table_value := 1044160
;
when 6451 =>
table_value := 1043936
;
when 6452 =>
table_value := 1043712
;
when 6453 =>
table_value := 1043536
;
when 6454 =>
table_value := 1043344
;
when 6455 =>
table_value := 1043152
;
when 6456 =>
table_value := 1042976
;
when 6457 =>
table_value := 1042800
;
when 6458 =>
table_value := 1042592
;
when 6459 =>
table_value := 1042400
;
when 6460 =>
table_value := 1042256
;
when 6461 =>
table_value := 1042096
;
when 6462 =>
table_value := 1041936
;
when 6463 =>
table_value := 1041824
;
when 6464 =>
table_value := 1041680
;
when 6465 =>
table_value := 1041504
;
when 6466 =>
table_value := 1041344
;
when 6467 =>
table_value := 1041232
;
when 6468 =>
table_value := 1041088
;
when 6469 =>
table_value := 1041008
;
when 6470 =>
table_value := 1040896
;
when 6471 =>
table_value := 1040768
;
when 6472 =>
table_value := 1040656
;
when 6473 =>
table_value := 1040512
;
when 6474 =>
table_value := 1040400
;
when 6475 =>
table_value := 1040272
;
when 6476 =>
table_value := 1040176
;
when 6477 =>
table_value := 1040064
;
when 6478 =>
table_value := 1039968
;
when 6479 =>
table_value := 1039872
;
when 6480 =>
table_value := 1039792
;
when 6481 =>
table_value := 1039696
;
when 6482 =>
table_value := 1039632
;
when 6483 =>
table_value := 1039568
;
when 6484 =>
table_value := 1039488
;
when 6485 =>
table_value := 1039472
;
when 6486 =>
table_value := 1039424
;
when 6487 =>
table_value := 1039360
;
when 6488 =>
table_value := 1039328
;
when 6489 =>
table_value := 1039312
;
when 6490 =>
table_value := 1039312
;
when 6491 =>
table_value := 1039344
;
when 6492 =>
table_value := 1039360
;
when 6493 =>
table_value := 1039392
;
when 6494 =>
table_value := 1039392
;
when 6495 =>
table_value := 1039424
;
when 6496 =>
table_value := 1039408
;
when 6497 =>
table_value := 1039424
;
when 6498 =>
table_value := 1039488
;
when 6499 =>
table_value := 1039504
;
when 6500 =>
table_value := 1039584
;
when 6501 =>
table_value := 1039648
;
when 6502 =>
table_value := 1039712
;
when 6503 =>
table_value := 1039792
;
when 6504 =>
table_value := 1039872
;
when 6505 =>
table_value := 1039936
;
when 6506 =>
table_value := 1039984
;
when 6507 =>
table_value := 1040016
;
when 6508 =>
table_value := 1040016
;
when 6509 =>
table_value := 1040016
;
when 6510 =>
table_value := 1040016
;
when 6511 =>
table_value := 1039952
;
when 6512 =>
table_value := 1039936
;
when 6513 =>
table_value := 1039904
;
when 6514 =>
table_value := 1039888
;
when 6515 =>
table_value := 1039840
;
when 6516 =>
table_value := 1039792
;
when 6517 =>
table_value := 1039744
;
when 6518 =>
table_value := 1039680
;
when 6519 =>
table_value := 1039568
;
when 6520 =>
table_value := 1039440
;
when 6521 =>
table_value := 1039312
;
when 6522 =>
table_value := 1039232
;
when 6523 =>
table_value := 1039104
;
when 6524 =>
table_value := 1039008
;
when 6525 =>
table_value := 1038880
;
when 6526 =>
table_value := 1038784
;
when 6527 =>
table_value := 1038688
;
when 6528 =>
table_value := 1038576
;
when 6529 =>
table_value := 1038464
;
when 6530 =>
table_value := 1038320
;
when 6531 =>
table_value := 1038160
;
when 6532 =>
table_value := 1038032
;
when 6533 =>
table_value := 1037920
;
when 6534 =>
table_value := 1037792
;
when 6535 =>
table_value := 1037712
;
when 6536 =>
table_value := 1037600
;
when 6537 =>
table_value := 1037504
;
when 6538 =>
table_value := 1037424
;
when 6539 =>
table_value := 1037392
;
when 6540 =>
table_value := 1037328
;
when 6541 =>
table_value := 1037312
;
when 6542 =>
table_value := 1037296
;
when 6543 =>
table_value := 1037312
;
when 6544 =>
table_value := 1037328
;
when 6545 =>
table_value := 1037392
;
when 6546 =>
table_value := 1037440
;
when 6547 =>
table_value := 1037488
;
when 6548 =>
table_value := 1037552
;
when 6549 =>
table_value := 1037632
;
when 6550 =>
table_value := 1037696
;
when 6551 =>
table_value := 1037824
;
when 6552 =>
table_value := 1037920
;
when 6553 =>
table_value := 1038016
;
when 6554 =>
table_value := 1038160
;
when 6555 =>
table_value := 1038320
;
when 6556 =>
table_value := 1038448
;
when 6557 =>
table_value := 1038624
;
when 6558 =>
table_value := 1038784
;
when 6559 =>
table_value := 1038944
;
when 6560 =>
table_value := 1039104
;
when 6561 =>
table_value := 1039248
;
when 6562 =>
table_value := 1039424
;
when 6563 =>
table_value := 1039584
;
when 6564 =>
table_value := 1039760
;
when 6565 =>
table_value := 1039872
;
when 6566 =>
table_value := 1040000
;
when 6567 =>
table_value := 1040144
;
when 6568 =>
table_value := 1040304
;
when 6569 =>
table_value := 1040544
;
when 6570 =>
table_value := 1040688
;
when 6571 =>
table_value := 1040784
;
when 6572 =>
table_value := 1040896
;
when 6573 =>
table_value := 1041008
;
when 6574 =>
table_value := 1041104
;
when 6575 =>
table_value := 1041184
;
when 6576 =>
table_value := 1041312
;
when 6577 =>
table_value := 1041392
;
when 6578 =>
table_value := 1041488
;
when 6579 =>
table_value := 1041552
;
when 6580 =>
table_value := 1041648
;
when 6581 =>
table_value := 1041728
;
when 6582 =>
table_value := 1041840
;
when 6583 =>
table_value := 1041936
;
when 6584 =>
table_value := 1042064
;
when 6585 =>
table_value := 1042192
;
when 6586 =>
table_value := 1042320
;
when 6587 =>
table_value := 1042448
;
when 6588 =>
table_value := 1042576
;
when 6589 =>
table_value := 1042704
;
when 6590 =>
table_value := 1042848
;
when 6591 =>
table_value := 1042976
;
when 6592 =>
table_value := 1043120
;
when 6593 =>
table_value := 1043264
;
when 6594 =>
table_value := 1043408
;
when 6595 =>
table_value := 1043584
;
when 6596 =>
table_value := 1043744
;
when 6597 =>
table_value := 1043872
;
when 6598 =>
table_value := 1043984
;
when 6599 =>
table_value := 1044080
;
when 6600 =>
table_value := 1044176
;
when 6601 =>
table_value := 1044256
;
when 6602 =>
table_value := 1044352
;
when 6603 =>
table_value := 1044448
;
when 6604 =>
table_value := 1044544
;
when 6605 =>
table_value := 1044640
;
when 6606 =>
table_value := 1044688
;
when 6607 =>
table_value := 1044768
;
when 6608 =>
table_value := 1044816
;
when 6609 =>
table_value := 1044864
;
when 6610 =>
table_value := 1044944
;
when 6611 =>
table_value := 1045056
;
when 6612 =>
table_value := 1045184
;
when 6613 =>
table_value := 1045280
;
when 6614 =>
table_value := 1045408
;
when 6615 =>
table_value := 1045504
;
when 6616 =>
table_value := 1045632
;
when 6617 =>
table_value := 1045792
;
when 6618 =>
table_value := 1045952
;
when 6619 =>
table_value := 1046096
;
when 6620 =>
table_value := 1046224
;
when 6621 =>
table_value := 1046336
;
when 6622 =>
table_value := 1046432
;
when 6623 =>
table_value := 1046576
;
when 6624 =>
table_value := 1046736
;
when 6625 =>
table_value := 1046880
;
when 6626 =>
table_value := 1047040
;
when 6627 =>
table_value := 1047168
;
when 6628 =>
table_value := 1047296
;
when 6629 =>
table_value := 1047424
;
when 6630 =>
table_value := 1047552
;
when 6631 =>
table_value := 1047664
;
when 6632 =>
table_value := 1047840
;
when 6633 =>
table_value := 1048000
;
when 6634 =>
table_value := 1048144
;
when 6635 =>
table_value := 1048304
;
when 6636 =>
table_value := 1048480
;
when 6637 =>
table_value := 64
;
when 6638 =>
table_value := 272
;
when 6639 =>
table_value := 448
;
when 6640 =>
table_value := 640
;
when 6641 =>
table_value := 848
;
when 6642 =>
table_value := 1024
;
when 6643 =>
table_value := 1200
;
when 6644 =>
table_value := 1392
;
when 6645 =>
table_value := 1600
;
when 6646 =>
table_value := 1792
;
when 6647 =>
table_value := 2000
;
when 6648 =>
table_value := 2192
;
when 6649 =>
table_value := 2416
;
when 6650 =>
table_value := 2624
;
when 6651 =>
table_value := 2848
;
when 6652 =>
table_value := 3072
;
when 6653 =>
table_value := 3280
;
when 6654 =>
table_value := 3504
;
when 6655 =>
table_value := 3744
;
when 6656 =>
table_value := 3984
;
when 6657 =>
table_value := 4240
;
when 6658 =>
table_value := 4480
;
when 6659 =>
table_value := 4736
;
when 6660 =>
table_value := 4960
;
when 6661 =>
table_value := 5184
;
when 6662 =>
table_value := 5424
;
when 6663 =>
table_value := 5664
;
when 6664 =>
table_value := 5888
;
when 6665 =>
table_value := 6096
;
when 6666 =>
table_value := 6320
;
when 6667 =>
table_value := 6544
;
when 6668 =>
table_value := 6800
;
when 6669 =>
table_value := 7072
;
when 6670 =>
table_value := 7360
;
when 6671 =>
table_value := 7648
;
when 6672 =>
table_value := 7952
;
when 6673 =>
table_value := 8224
;
when 6674 =>
table_value := 8528
;
when 6675 =>
table_value := 8816
;
when 6676 =>
table_value := 9120
;
when 6677 =>
table_value := 9392
;
when 6678 =>
table_value := 9680
;
when 6679 =>
table_value := 9984
;
when 6680 =>
table_value := 10304
;
when 6681 =>
table_value := 10592
;
when 6682 =>
table_value := 10880
;
when 6683 =>
table_value := 11168
;
when 6684 =>
table_value := 11456
;
when 6685 =>
table_value := 11728
;
when 6686 =>
table_value := 12000
;
when 6687 =>
table_value := 12272
;
when 6688 =>
table_value := 12560
;
when 6689 =>
table_value := 12832
;
when 6690 =>
table_value := 13056
;
when 6691 =>
table_value := 13344
;
when 6692 =>
table_value := 13568
;
when 6693 =>
table_value := 13792
;
when 6694 =>
table_value := 14048
;
when 6695 =>
table_value := 14288
;
when 6696 =>
table_value := 14480
;
when 6697 =>
table_value := 14688
;
when 6698 =>
table_value := 14880
;
when 6699 =>
table_value := 15056
;
when 6700 =>
table_value := 15200
;
when 6701 =>
table_value := 15376
;
when 6702 =>
table_value := 15520
;
when 6703 =>
table_value := 15664
;
when 6704 =>
table_value := 15776
;
when 6705 =>
table_value := 15888
;
when 6706 =>
table_value := 15920
;
when 6707 =>
table_value := 15936
;
when 6708 =>
table_value := 15984
;
when 6709 =>
table_value := 15936
;
when 6710 =>
table_value := 15920
;
when 6711 =>
table_value := 15888
;
when 6712 =>
table_value := 15808
;
when 6713 =>
table_value := 15776
;
when 6714 =>
table_value := 15696
;
when 6715 =>
table_value := 15616
;
when 6716 =>
table_value := 15520
;
when 6717 =>
table_value := 15408
;
when 6718 =>
table_value := 15296
;
when 6719 =>
table_value := 15184
;
when 6720 =>
table_value := 15056
;
when 6721 =>
table_value := 14960
;
when 6722 =>
table_value := 14864
;
when 6723 =>
table_value := 14800
;
when 6724 =>
table_value := 14672
;
when 6725 =>
table_value := 14592
;
when 6726 =>
table_value := 14528
;
when 6727 =>
table_value := 14464
;
when 6728 =>
table_value := 14400
;
when 6729 =>
table_value := 14352
;
when 6730 =>
table_value := 14320
;
when 6731 =>
table_value := 14336
;
when 6732 =>
table_value := 14352
;
when 6733 =>
table_value := 14336
;
when 6734 =>
table_value := 14272
;
when 6735 =>
table_value := 14224
;
when 6736 =>
table_value := 14192
;
when 6737 =>
table_value := 14208
;
when 6738 =>
table_value := 14176
;
when 6739 =>
table_value := 14192
;
when 6740 =>
table_value := 14176
;
when 6741 =>
table_value := 14192
;
when 6742 =>
table_value := 14160
;
when 6743 =>
table_value := 14128
;
when 6744 =>
table_value := 14128
;
when 6745 =>
table_value := 14144
;
when 6746 =>
table_value := 14208
;
when 6747 =>
table_value := 14224
;
when 6748 =>
table_value := 14240
;
when 6749 =>
table_value := 14288
;
when 6750 =>
table_value := 14288
;
when 6751 =>
table_value := 14304
;
when 6752 =>
table_value := 14352
;
when 6753 =>
table_value := 14384
;
when 6754 =>
table_value := 14416
;
when 6755 =>
table_value := 14432
;
when 6756 =>
table_value := 14416
;
when 6757 =>
table_value := 14464
;
when 6758 =>
table_value := 14496
;
when 6759 =>
table_value := 14512
;
when 6760 =>
table_value := 14576
;
when 6761 =>
table_value := 14544
;
when 6762 =>
table_value := 14544
;
when 6763 =>
table_value := 14528
;
when 6764 =>
table_value := 14512
;
when 6765 =>
table_value := 14464
;
when 6766 =>
table_value := 14464
;
when 6767 =>
table_value := 14432
;
when 6768 =>
table_value := 14368
;
when 6769 =>
table_value := 14304
;
when 6770 =>
table_value := 14240
;
when 6771 =>
table_value := 14192
;
when 6772 =>
table_value := 14112
;
when 6773 =>
table_value := 14064
;
when 6774 =>
table_value := 13952
;
when 6775 =>
table_value := 13936
;
when 6776 =>
table_value := 13856
;
when 6777 =>
table_value := 13760
;
when 6778 =>
table_value := 13680
;
when 6779 =>
table_value := 13536
;
when 6780 =>
table_value := 13376
;
when 6781 =>
table_value := 13264
;
when 6782 =>
table_value := 13088
;
when 6783 =>
table_value := 12960
;
when 6784 =>
table_value := 12832
;
when 6785 =>
table_value := 12704
;
when 6786 =>
table_value := 12544
;
when 6787 =>
table_value := 12384
;
when 6788 =>
table_value := 12208
;
when 6789 =>
table_value := 12032
;
when 6790 =>
table_value := 11904
;
when 6791 =>
table_value := 11744
;
when 6792 =>
table_value := 11568
;
when 6793 =>
table_value := 11344
;
when 6794 =>
table_value := 11152
;
when 6795 =>
table_value := 10944
;
when 6796 =>
table_value := 10736
;
when 6797 =>
table_value := 10576
;
when 6798 =>
table_value := 10368
;
when 6799 =>
table_value := 10144
;
when 6800 =>
table_value := 9920
;
when 6801 =>
table_value := 9712
;
when 6802 =>
table_value := 9440
;
when 6803 =>
table_value := 9216
;
when 6804 =>
table_value := 8976
;
when 6805 =>
table_value := 8736
;
when 6806 =>
table_value := 8512
;
when 6807 =>
table_value := 8288
;
when 6808 =>
table_value := 8032
;
when 6809 =>
table_value := 7792
;
when 6810 =>
table_value := 7568
;
when 6811 =>
table_value := 7344
;
when 6812 =>
table_value := 7152
;
when 6813 =>
table_value := 6928
;
when 6814 =>
table_value := 6720
;
when 6815 =>
table_value := 6528
;
when 6816 =>
table_value := 6320
;
when 6817 =>
table_value := 6096
;
when 6818 =>
table_value := 5888
;
when 6819 =>
table_value := 5664
;
when 6820 =>
table_value := 5456
;
when 6821 =>
table_value := 5264
;
when 6822 =>
table_value := 5056
;
when 6823 =>
table_value := 4864
;
when 6824 =>
table_value := 4688
;
when 6825 =>
table_value := 4512
;
when 6826 =>
table_value := 4320
;
when 6827 =>
table_value := 4144
;
when 6828 =>
table_value := 3952
;
when 6829 =>
table_value := 3760
;
when 6830 =>
table_value := 3584
;
when 6831 =>
table_value := 3392
;
when 6832 =>
table_value := 3200
;
when 6833 =>
table_value := 2992
;
when 6834 =>
table_value := 2784
;
when 6835 =>
table_value := 2528
;
when 6836 =>
table_value := 2320
;
when 6837 =>
table_value := 2048
;
when 6838 =>
table_value := 1808
;
when 6839 =>
table_value := 1584
;
when 6840 =>
table_value := 1344
;
when 6841 =>
table_value := 1104
;
when 6842 =>
table_value := 896
;
when 6843 =>
table_value := 688
;
when 6844 =>
table_value := 512
;
when 6845 =>
table_value := 336
;
when 6846 =>
table_value := 176
;
when 6847 =>
table_value := 48
;
when 6848 =>
table_value := 1048496
;
when 6849 =>
table_value := 1048352
;
when 6850 =>
table_value := 1048208
;
when 6851 =>
table_value := 1048064
;
when 6852 =>
table_value := 1047936
;
when 6853 =>
table_value := 1047792
;
when 6854 =>
table_value := 1047664
;
when 6855 =>
table_value := 1047520
;
when 6856 =>
table_value := 1047376
;
when 6857 =>
table_value := 1047200
;
when 6858 =>
table_value := 1047040
;
when 6859 =>
table_value := 1046896
;
when 6860 =>
table_value := 1046752
;
when 6861 =>
table_value := 1046624
;
when 6862 =>
table_value := 1046528
;
when 6863 =>
table_value := 1046416
;
when 6864 =>
table_value := 1046336
;
when 6865 =>
table_value := 1046256
;
when 6866 =>
table_value := 1046176
;
when 6867 =>
table_value := 1046112
;
when 6868 =>
table_value := 1046048
;
when 6869 =>
table_value := 1046016
;
when 6870 =>
table_value := 1045968
;
when 6871 =>
table_value := 1045920
;
when 6872 =>
table_value := 1045888
;
when 6873 =>
table_value := 1045824
;
when 6874 =>
table_value := 1045792
;
when 6875 =>
table_value := 1045744
;
when 6876 =>
table_value := 1045744
;
when 6877 =>
table_value := 1045728
;
when 6878 =>
table_value := 1045728
;
when 6879 =>
table_value := 1045712
;
when 6880 =>
table_value := 1045680
;
when 6881 =>
table_value := 1045632
;
when 6882 =>
table_value := 1045568
;
when 6883 =>
table_value := 1045504
;
when 6884 =>
table_value := 1045440
;
when 6885 =>
table_value := 1045376
;
when 6886 =>
table_value := 1045312
;
when 6887 =>
table_value := 1045232
;
when 6888 =>
table_value := 1045152
;
when 6889 =>
table_value := 1045088
;
when 6890 =>
table_value := 1045008
;
when 6891 =>
table_value := 1044944
;
when 6892 =>
table_value := 1044880
;
when 6893 =>
table_value := 1044800
;
when 6894 =>
table_value := 1044704
;
when 6895 =>
table_value := 1044608
;
when 6896 =>
table_value := 1044512
;
when 6897 =>
table_value := 1044400
;
when 6898 =>
table_value := 1044272
;
when 6899 =>
table_value := 1044176
;
when 6900 =>
table_value := 1044048
;
when 6901 =>
table_value := 1043936
;
when 6902 =>
table_value := 1043840
;
when 6903 =>
table_value := 1043744
;
when 6904 =>
table_value := 1043680
;
when 6905 =>
table_value := 1043616
;
when 6906 =>
table_value := 1043552
;
when 6907 =>
table_value := 1043472
;
when 6908 =>
table_value := 1043408
;
when 6909 =>
table_value := 1043376
;
when 6910 =>
table_value := 1043376
;
when 6911 =>
table_value := 1043376
;
when 6912 =>
table_value := 1043408
;
when 6913 =>
table_value := 1043440
;
when 6914 =>
table_value := 1043504
;
when 6915 =>
table_value := 1043568
;
when 6916 =>
table_value := 1043616
;
when 6917 =>
table_value := 1043712
;
when 6918 =>
table_value := 1043808
;
when 6919 =>
table_value := 1043920
;
when 6920 =>
table_value := 1044048
;
when 6921 =>
table_value := 1044208
;
when 6922 =>
table_value := 1044368
;
when 6923 =>
table_value := 1044560
;
when 6924 =>
table_value := 1044720
;
when 6925 =>
table_value := 1044896
;
when 6926 =>
table_value := 1045072
;
when 6927 =>
table_value := 1045264
;
when 6928 =>
table_value := 1045488
;
when 6929 =>
table_value := 1045728
;
when 6930 =>
table_value := 1045968
;
when 6931 =>
table_value := 1046208
;
when 6932 =>
table_value := 1046432
;
when 6933 =>
table_value := 1046656
;
when 6934 =>
table_value := 1046880
;
when 6935 =>
table_value := 1047120
;
when 6936 =>
table_value := 1047360
;
when 6937 =>
table_value := 1047552
;
when 6938 =>
table_value := 1047760
;
when 6939 =>
table_value := 1047984
;
when 6940 =>
table_value := 1048176
;
when 6941 =>
table_value := 1048416
;
when 6942 =>
table_value := 16
;
when 6943 =>
table_value := 208
;
when 6944 =>
table_value := 368
;
when 6945 =>
table_value := 544
;
when 6946 =>
table_value := 704
;
when 6947 =>
table_value := 864
;
when 6948 =>
table_value := 1040
;
when 6949 =>
table_value := 1168
;
when 6950 =>
table_value := 1312
;
when 6951 =>
table_value := 1456
;
when 6952 =>
table_value := 1584
;
when 6953 =>
table_value := 1712
;
when 6954 =>
table_value := 1840
;
when 6955 =>
table_value := 1952
;
when 6956 =>
table_value := 2096
;
when 6957 =>
table_value := 2240
;
when 6958 =>
table_value := 2400
;
when 6959 =>
table_value := 2560
;
when 6960 =>
table_value := 2704
;
when 6961 =>
table_value := 2848
;
when 6962 =>
table_value := 2992
;
when 6963 =>
table_value := 3088
;
when 6964 =>
table_value := 3232
;
when 6965 =>
table_value := 3344
;
when 6966 =>
table_value := 3472
;
when 6967 =>
table_value := 3600
;
when 6968 =>
table_value := 3728
;
when 6969 =>
table_value := 3840
;
when 6970 =>
table_value := 3968
;
when 6971 =>
table_value := 4096
;
when 6972 =>
table_value := 4208
;
when 6973 =>
table_value := 4336
;
when 6974 =>
table_value := 4400
;
when 6975 =>
table_value := 4464
;
when 6976 =>
table_value := 4528
;
when 6977 =>
table_value := 4576
;
when 6978 =>
table_value := 4640
;
when 6979 =>
table_value := 4656
;
when 6980 =>
table_value := 4672
;
when 6981 =>
table_value := 4688
;
when 6982 =>
table_value := 4704
;
when 6983 =>
table_value := 4704
;
when 6984 =>
table_value := 4704
;
when 6985 =>
table_value := 4704
;
when 6986 =>
table_value := 4720
;
when 6987 =>
table_value := 4720
;
when 6988 =>
table_value := 4736
;
when 6989 =>
table_value := 4720
;
when 6990 =>
table_value := 4688
;
when 6991 =>
table_value := 4672
;
when 6992 =>
table_value := 4624
;
when 6993 =>
table_value := 4560
;
when 6994 =>
table_value := 4496
;
when 6995 =>
table_value := 4432
;
when 6996 =>
table_value := 4352
;
when 6997 =>
table_value := 4272
;
when 6998 =>
table_value := 4224
;
when 6999 =>
table_value := 4128
;
when 7000 =>
table_value := 4048
;
when 7001 =>
table_value := 3984
;
when 7002 =>
table_value := 3920
;
when 7003 =>
table_value := 3808
;
when 7004 =>
table_value := 3712
;
when 7005 =>
table_value := 3616
;
when 7006 =>
table_value := 3504
;
when 7007 =>
table_value := 3424
;
when 7008 =>
table_value := 3360
;
when 7009 =>
table_value := 3328
;
when 7010 =>
table_value := 3280
;
when 7011 =>
table_value := 3232
;
when 7012 =>
table_value := 3200
;
when 7013 =>
table_value := 3152
;
when 7014 =>
table_value := 3104
;
when 7015 =>
table_value := 3072
;
when 7016 =>
table_value := 2992
;
when 7017 =>
table_value := 2944
;
when 7018 =>
table_value := 2880
;
when 7019 =>
table_value := 2848
;
when 7020 =>
table_value := 2784
;
when 7021 =>
table_value := 2704
;
when 7022 =>
table_value := 2640
;
when 7023 =>
table_value := 2544
;
when 7024 =>
table_value := 2432
;
when 7025 =>
table_value := 2304
;
when 7026 =>
table_value := 2224
;
when 7027 =>
table_value := 2080
;
when 7028 =>
table_value := 1936
;
when 7029 =>
table_value := 1744
;
when 7030 =>
table_value := 1552
;
when 7031 =>
table_value := 1376
;
when 7032 =>
table_value := 1152
;
when 7033 =>
table_value := 944
;
when 7034 =>
table_value := 720
;
when 7035 =>
table_value := 464
;
when 7036 =>
table_value := 208
;
when 7037 =>
table_value := 1048560
;
when 7038 =>
table_value := 1048288
;
when 7039 =>
table_value := 1048064
;
when 7040 =>
table_value := 1047840
;
when 7041 =>
table_value := 1047600
;
when 7042 =>
table_value := 1047344
;
when 7043 =>
table_value := 1047104
;
when 7044 =>
table_value := 1046848
;
when 7045 =>
table_value := 1046608
;
when 7046 =>
table_value := 1046368
;
when 7047 =>
table_value := 1046144
;
when 7048 =>
table_value := 1045904
;
when 7049 =>
table_value := 1045664
;
when 7050 =>
table_value := 1045408
;
when 7051 =>
table_value := 1045184
;
when 7052 =>
table_value := 1044976
;
when 7053 =>
table_value := 1044816
;
when 7054 =>
table_value := 1044656
;
when 7055 =>
table_value := 1044496
;
when 7056 =>
table_value := 1044336
;
when 7057 =>
table_value := 1044160
;
when 7058 =>
table_value := 1044000
;
when 7059 =>
table_value := 1043824
;
when 7060 =>
table_value := 1043664
;
when 7061 =>
table_value := 1043504
;
when 7062 =>
table_value := 1043344
;
when 7063 =>
table_value := 1043200
;
when 7064 =>
table_value := 1043056
;
when 7065 =>
table_value := 1042912
;
when 7066 =>
table_value := 1042800
;
when 7067 =>
table_value := 1042704
;
when 7068 =>
table_value := 1042624
;
when 7069 =>
table_value := 1042528
;
when 7070 =>
table_value := 1042448
;
when 7071 =>
table_value := 1042400
;
when 7072 =>
table_value := 1042336
;
when 7073 =>
table_value := 1042288
;
when 7074 =>
table_value := 1042240
;
when 7075 =>
table_value := 1042160
;
when 7076 =>
table_value := 1042112
;
when 7077 =>
table_value := 1042048
;
when 7078 =>
table_value := 1041968
;
when 7079 =>
table_value := 1041872
;
when 7080 =>
table_value := 1041792
;
when 7081 =>
table_value := 1041696
;
when 7082 =>
table_value := 1041568
;
when 7083 =>
table_value := 1041472
;
when 7084 =>
table_value := 1041344
;
when 7085 =>
table_value := 1041232
;
when 7086 =>
table_value := 1041120
;
when 7087 =>
table_value := 1040976
;
when 7088 =>
table_value := 1040832
;
when 7089 =>
table_value := 1040704
;
when 7090 =>
table_value := 1040576
;
when 7091 =>
table_value := 1040464
;
when 7092 =>
table_value := 1040368
;
when 7093 =>
table_value := 1040256
;
when 7094 =>
table_value := 1040144
;
when 7095 =>
table_value := 1040048
;
when 7096 =>
table_value := 1039968
;
when 7097 =>
table_value := 1039872
;
when 7098 =>
table_value := 1039824
;
when 7099 =>
table_value := 1039760
;
when 7100 =>
table_value := 1039712
;
when 7101 =>
table_value := 1039648
;
when 7102 =>
table_value := 1039616
;
when 7103 =>
table_value := 1039552
;
when 7104 =>
table_value := 1039520
;
when 7105 =>
table_value := 1039488
;
when 7106 =>
table_value := 1039520
;
when 7107 =>
table_value := 1039552
;
when 7108 =>
table_value := 1039552
;
when 7109 =>
table_value := 1039584
;
when 7110 =>
table_value := 1039616
;
when 7111 =>
table_value := 1039632
;
when 7112 =>
table_value := 1039696
;
when 7113 =>
table_value := 1039776
;
when 7114 =>
table_value := 1039840
;
when 7115 =>
table_value := 1039904
;
when 7116 =>
table_value := 1039984
;
when 7117 =>
table_value := 1040064
;
when 7118 =>
table_value := 1040144
;
when 7119 =>
table_value := 1040240
;
when 7120 =>
table_value := 1040336
;
when 7121 =>
table_value := 1040448
;
when 7122 =>
table_value := 1040560
;
when 7123 =>
table_value := 1040672
;
when 7124 =>
table_value := 1040832
;
when 7125 =>
table_value := 1040944
;
when 7126 =>
table_value := 1041104
;
when 7127 =>
table_value := 1041232
;
when 7128 =>
table_value := 1041312
;
when 7129 =>
table_value := 1041408
;
when 7130 =>
table_value := 1041520
;
when 7131 =>
table_value := 1041632
;
when 7132 =>
table_value := 1041696
;
when 7133 =>
table_value := 1041776
;
when 7134 =>
table_value := 1041840
;
when 7135 =>
table_value := 1041920
;
when 7136 =>
table_value := 1042000
;
when 7137 =>
table_value := 1042080
;
when 7138 =>
table_value := 1042112
;
when 7139 =>
table_value := 1042192
;
when 7140 =>
table_value := 1042272
;
when 7141 =>
table_value := 1042304
;
when 7142 =>
table_value := 1042368
;
when 7143 =>
table_value := 1042416
;
when 7144 =>
table_value := 1042480
;
when 7145 =>
table_value := 1042560
;
when 7146 =>
table_value := 1042640
;
when 7147 =>
table_value := 1042736
;
when 7148 =>
table_value := 1042816
;
when 7149 =>
table_value := 1042864
;
when 7150 =>
table_value := 1042976
;
when 7151 =>
table_value := 1043088
;
when 7152 =>
table_value := 1043200
;
when 7153 =>
table_value := 1043328
;
when 7154 =>
table_value := 1043440
;
when 7155 =>
table_value := 1043552
;
when 7156 =>
table_value := 1043664
;
when 7157 =>
table_value := 1043776
;
when 7158 =>
table_value := 1043920
;
when 7159 =>
table_value := 1044064
;
when 7160 =>
table_value := 1044192
;
when 7161 =>
table_value := 1044336
;
when 7162 =>
table_value := 1044464
;
when 7163 =>
table_value := 1044592
;
when 7164 =>
table_value := 1044736
;
when 7165 =>
table_value := 1044880
;
when 7166 =>
table_value := 1045040
;
when 7167 =>
table_value := 1045184
;
when 7168 =>
table_value := 1045328
;
when 7169 =>
table_value := 1045504
;
when 7170 =>
table_value := 1045648
;
when 7171 =>
table_value := 1045808
;
when 7172 =>
table_value := 1045968
;
when 7173 =>
table_value := 1046128
;
when 7174 =>
table_value := 1046304
;
when 7175 =>
table_value := 1046464
;
when 7176 =>
table_value := 1046640
;
when 7177 =>
table_value := 1046832
;
when 7178 =>
table_value := 1047040
;
when 7179 =>
table_value := 1047232
;
when 7180 =>
table_value := 1047440
;
when 7181 =>
table_value := 1047664
;
when 7182 =>
table_value := 1047872
;
when 7183 =>
table_value := 1048064
;
when 7184 =>
table_value := 1048288
;
when 7185 =>
table_value := 1048512
;
when 7186 =>
table_value := 160
;
when 7187 =>
table_value := 384
;
when 7188 =>
table_value := 656
;
when 7189 =>
table_value := 880
;
when 7190 =>
table_value := 1120
;
when 7191 =>
table_value := 1328
;
when 7192 =>
table_value := 1552
;
when 7193 =>
table_value := 1776
;
when 7194 =>
table_value := 1984
;
when 7195 =>
table_value := 2224
;
when 7196 =>
table_value := 2432
;
when 7197 =>
table_value := 2624
;
when 7198 =>
table_value := 2816
;
when 7199 =>
table_value := 2992
;
when 7200 =>
table_value := 3184
;
when 7201 =>
table_value := 3376
;
when 7202 =>
table_value := 3552
;
when 7203 =>
table_value := 3744
;
when 7204 =>
table_value := 3920
;
when 7205 =>
table_value := 4064
;
when 7206 =>
table_value := 4192
;
when 7207 =>
table_value := 4304
;
when 7208 =>
table_value := 4400
;
when 7209 =>
table_value := 4496
;
when 7210 =>
table_value := 4576
;
when 7211 =>
table_value := 4704
;
when 7212 =>
table_value := 4768
;
when 7213 =>
table_value := 4848
;
when 7214 =>
table_value := 4896
;
when 7215 =>
table_value := 4960
;
when 7216 =>
table_value := 5008
;
when 7217 =>
table_value := 5072
;
when 7218 =>
table_value := 5104
;
when 7219 =>
table_value := 5168
;
when 7220 =>
table_value := 5184
;
when 7221 =>
table_value := 5232
;
when 7222 =>
table_value := 5296
;
when 7223 =>
table_value := 5328
;
when 7224 =>
table_value := 5360
;
when 7225 =>
table_value := 5408
;
when 7226 =>
table_value := 5392
;
when 7227 =>
table_value := 5360
;
when 7228 =>
table_value := 5344
;
when 7229 =>
table_value := 5328
;
when 7230 =>
table_value := 5312
;
when 7231 =>
table_value := 5312
;
when 7232 =>
table_value := 5264
;
when 7233 =>
table_value := 5232
;
when 7234 =>
table_value := 5200
;
when 7235 =>
table_value := 5168
;
when 7236 =>
table_value := 5120
;
when 7237 =>
table_value := 5104
;
when 7238 =>
table_value := 5024
;
when 7239 =>
table_value := 4976
;
when 7240 =>
table_value := 4928
;
when 7241 =>
table_value := 4848
;
when 7242 =>
table_value := 4752
;
when 7243 =>
table_value := 4640
;
when 7244 =>
table_value := 4512
;
when 7245 =>
table_value := 4368
;
when 7246 =>
table_value := 4224
;
when 7247 =>
table_value := 4048
;
when 7248 =>
table_value := 3888
;
when 7249 =>
table_value := 3728
;
when 7250 =>
table_value := 3552
;
when 7251 =>
table_value := 3360
;
when 7252 =>
table_value := 3168
;
when 7253 =>
table_value := 2928
;
when 7254 =>
table_value := 2752
;
when 7255 =>
table_value := 2512
;
when 7256 =>
table_value := 2288
;
when 7257 =>
table_value := 2064
;
when 7258 =>
table_value := 1840
;
when 7259 =>
table_value := 1616
;
when 7260 =>
table_value := 1392
;
when 7261 =>
table_value := 1184
;
when 7262 =>
table_value := 992
;
when 7263 =>
table_value := 784
;
when 7264 =>
table_value := 608
;
when 7265 =>
table_value := 448
;
when 7266 =>
table_value := 304
;
when 7267 =>
table_value := 144
;
when 7268 =>
table_value := 0
;
when 7269 =>
table_value := 1048432
;
when 7270 =>
table_value := 1048272
;
when 7271 =>
table_value := 1048128
;
when 7272 =>
table_value := 1047984
;
when 7273 =>
table_value := 1047856
;
when 7274 =>
table_value := 1047744
;
when 7275 =>
table_value := 1047632
;
when 7276 =>
table_value := 1047504
;
when 7277 =>
table_value := 1047392
;
when 7278 =>
table_value := 1047280
;
when 7279 =>
table_value := 1047136
;
when 7280 =>
table_value := 1047008
;
when 7281 =>
table_value := 1046864
;
when 7282 =>
table_value := 1046752
;
when 7283 =>
table_value := 1046592
;
when 7284 =>
table_value := 1046480
;
when 7285 =>
table_value := 1046320
;
when 7286 =>
table_value := 1046160
;
when 7287 =>
table_value := 1046016
;
when 7288 =>
table_value := 1045856
;
when 7289 =>
table_value := 1045712
;
when 7290 =>
table_value := 1045552
;
when 7291 =>
table_value := 1045392
;
when 7292 =>
table_value := 1045248
;
when 7293 =>
table_value := 1045088
;
when 7294 =>
table_value := 1044944
;
when 7295 =>
table_value := 1044816
;
when 7296 =>
table_value := 1044704
;
when 7297 =>
table_value := 1044576
;
when 7298 =>
table_value := 1044464
;
when 7299 =>
table_value := 1044336
;
when 7300 =>
table_value := 1044192
;
when 7301 =>
table_value := 1044064
;
when 7302 =>
table_value := 1043920
;
when 7303 =>
table_value := 1043808
;
when 7304 =>
table_value := 1043696
;
when 7305 =>
table_value := 1043568
;
when 7306 =>
table_value := 1043424
;
when 7307 =>
table_value := 1043280
;
when 7308 =>
table_value := 1043136
;
when 7309 =>
table_value := 1042976
;
when 7310 =>
table_value := 1042800
;
when 7311 =>
table_value := 1042640
;
when 7312 =>
table_value := 1042464
;
when 7313 =>
table_value := 1042288
;
when 7314 =>
table_value := 1042128
;
when 7315 =>
table_value := 1041952
;
when 7316 =>
table_value := 1041808
;
when 7317 =>
table_value := 1041632
;
when 7318 =>
table_value := 1041472
;
when 7319 =>
table_value := 1041312
;
when 7320 =>
table_value := 1041136
;
when 7321 =>
table_value := 1040944
;
when 7322 =>
table_value := 1040784
;
when 7323 =>
table_value := 1040624
;
when 7324 =>
table_value := 1040464
;
when 7325 =>
table_value := 1040272
;
when 7326 =>
table_value := 1040080
;
when 7327 =>
table_value := 1039920
;
when 7328 =>
table_value := 1039728
;
when 7329 =>
table_value := 1039552
;
when 7330 =>
table_value := 1039392
;
when 7331 =>
table_value := 1039216
;
when 7332 =>
table_value := 1039024
;
when 7333 =>
table_value := 1038832
;
when 7334 =>
table_value := 1038656
;
when 7335 =>
table_value := 1038464
;
when 7336 =>
table_value := 1038304
;
when 7337 =>
table_value := 1038128
;
when 7338 =>
table_value := 1037968
;
when 7339 =>
table_value := 1037824
;
when 7340 =>
table_value := 1037712
;
when 7341 =>
table_value := 1037600
;
when 7342 =>
table_value := 1037488
;
when 7343 =>
table_value := 1037376
;
when 7344 =>
table_value := 1037296
;
when 7345 =>
table_value := 1037216
;
when 7346 =>
table_value := 1037152
;
when 7347 =>
table_value := 1037072
;
when 7348 =>
table_value := 1036944
;
when 7349 =>
table_value := 1036896
;
when 7350 =>
table_value := 1036816
;
when 7351 =>
table_value := 1036768
;
when 7352 =>
table_value := 1036736
;
when 7353 =>
table_value := 1036704
;
when 7354 =>
table_value := 1036688
;
when 7355 =>
table_value := 1036688
;
when 7356 =>
table_value := 1036672
;
when 7357 =>
table_value := 1036688
;
when 7358 =>
table_value := 1036720
;
when 7359 =>
table_value := 1036752
;
when 7360 =>
table_value := 1036800
;
when 7361 =>
table_value := 1036832
;
when 7362 =>
table_value := 1036912
;
when 7363 =>
table_value := 1036976
;
when 7364 =>
table_value := 1037056
;
when 7365 =>
table_value := 1037120
;
when 7366 =>
table_value := 1037216
;
when 7367 =>
table_value := 1037296
;
when 7368 =>
table_value := 1037376
;
when 7369 =>
table_value := 1037456
;
when 7370 =>
table_value := 1037552
;
when 7371 =>
table_value := 1037616
;
when 7372 =>
table_value := 1037744
;
when 7373 =>
table_value := 1037856
;
when 7374 =>
table_value := 1037968
;
when 7375 =>
table_value := 1038080
;
when 7376 =>
table_value := 1038208
;
when 7377 =>
table_value := 1038320
;
when 7378 =>
table_value := 1038432
;
when 7379 =>
table_value := 1038544
;
when 7380 =>
table_value := 1038656
;
when 7381 =>
table_value := 1038768
;
when 7382 =>
table_value := 1038880
;
when 7383 =>
table_value := 1038976
;
when 7384 =>
table_value := 1039104
;
when 7385 =>
table_value := 1039216
;
when 7386 =>
table_value := 1039312
;
when 7387 =>
table_value := 1039392
;
when 7388 =>
table_value := 1039504
;
when 7389 =>
table_value := 1039600
;
when 7390 =>
table_value := 1039696
;
when 7391 =>
table_value := 1039776
;
when 7392 =>
table_value := 1039856
;
when 7393 =>
table_value := 1039968
;
when 7394 =>
table_value := 1040064
;
when 7395 =>
table_value := 1040160
;
when 7396 =>
table_value := 1040256
;
when 7397 =>
table_value := 1040336
;
when 7398 =>
table_value := 1040432
;
when 7399 =>
table_value := 1040528
;
when 7400 =>
table_value := 1040592
;
when 7401 =>
table_value := 1040688
;
when 7402 =>
table_value := 1040752
;
when 7403 =>
table_value := 1040848
;
when 7404 =>
table_value := 1040896
;
when 7405 =>
table_value := 1040944
;
when 7406 =>
table_value := 1041008
;
when 7407 =>
table_value := 1041040
;
when 7408 =>
table_value := 1041104
;
when 7409 =>
table_value := 1041152
;
when 7410 =>
table_value := 1041232
;
when 7411 =>
table_value := 1041328
;
when 7412 =>
table_value := 1041408
;
when 7413 =>
table_value := 1041536
;
when 7414 =>
table_value := 1041632
;
when 7415 =>
table_value := 1041744
;
when 7416 =>
table_value := 1041856
;
when 7417 =>
table_value := 1042000
;
when 7418 =>
table_value := 1042144
;
when 7419 =>
table_value := 1042288
;
when 7420 =>
table_value := 1042432
;
when 7421 =>
table_value := 1042576
;
when 7422 =>
table_value := 1042720
;
when 7423 =>
table_value := 1042864
;
when 7424 =>
table_value := 1043008
;
when 7425 =>
table_value := 1043152
;
when 7426 =>
table_value := 1043312
;
when 7427 =>
table_value := 1043472
;
when 7428 =>
table_value := 1043632
;
when 7429 =>
table_value := 1043776
;
when 7430 =>
table_value := 1043936
;
when 7431 =>
table_value := 1044112
;
when 7432 =>
table_value := 1044272
;
when 7433 =>
table_value := 1044448
;
when 7434 =>
table_value := 1044656
;
when 7435 =>
table_value := 1044832
;
when 7436 =>
table_value := 1044992
;
when 7437 =>
table_value := 1045168
;
when 7438 =>
table_value := 1045344
;
when 7439 =>
table_value := 1045488
;
when 7440 =>
table_value := 1045648
;
when 7441 =>
table_value := 1045840
;
when 7442 =>
table_value := 1046000
;
when 7443 =>
table_value := 1046192
;
when 7444 =>
table_value := 1046368
;
when 7445 =>
table_value := 1046576
;
when 7446 =>
table_value := 1046784
;
when 7447 =>
table_value := 1046992
;
when 7448 =>
table_value := 1047216
;
when 7449 =>
table_value := 1047424
;
when 7450 =>
table_value := 1047664
;
when 7451 =>
table_value := 1047888
;
when 7452 =>
table_value := 1048096
;
when 7453 =>
table_value := 1048320
;
when 7454 =>
table_value := 1048544
;
when 7455 =>
table_value := 160
;
when 7456 =>
table_value := 400
;
when 7457 =>
table_value := 656
;
when 7458 =>
table_value := 880
;
when 7459 =>
table_value := 1152
;
when 7460 =>
table_value := 1408
;
when 7461 =>
table_value := 1664
;
when 7462 =>
table_value := 1936
;
when 7463 =>
table_value := 2176
;
when 7464 =>
table_value := 2448
;
when 7465 =>
table_value := 2656
;
when 7466 =>
table_value := 2880
;
when 7467 =>
table_value := 3120
;
when 7468 =>
table_value := 3344
;
when 7469 =>
table_value := 3520
;
when 7470 =>
table_value := 3760
;
when 7471 =>
table_value := 3968
;
when 7472 =>
table_value := 4192
;
when 7473 =>
table_value := 4432
;
when 7474 =>
table_value := 4624
;
when 7475 =>
table_value := 4800
;
when 7476 =>
table_value := 4960
;
when 7477 =>
table_value := 5152
;
when 7478 =>
table_value := 5328
;
when 7479 =>
table_value := 5520
;
when 7480 =>
table_value := 5696
;
when 7481 =>
table_value := 5888
;
when 7482 =>
table_value := 6048
;
when 7483 =>
table_value := 6224
;
when 7484 =>
table_value := 6416
;
when 7485 =>
table_value := 6560
;
when 7486 =>
table_value := 6720
;
when 7487 =>
table_value := 6896
;
when 7488 =>
table_value := 7040
;
when 7489 =>
table_value := 7184
;
when 7490 =>
table_value := 7344
;
when 7491 =>
table_value := 7488
;
when 7492 =>
table_value := 7648
;
when 7493 =>
table_value := 7856
;
when 7494 =>
table_value := 8032
;
when 7495 =>
table_value := 8192
;
when 7496 =>
table_value := 8352
;
when 7497 =>
table_value := 8560
;
when 7498 =>
table_value := 8736
;
when 7499 =>
table_value := 8880
;
when 7500 =>
table_value := 9024
;
when 7501 =>
table_value := 9184
;
when 7502 =>
table_value := 9312
;
when 7503 =>
table_value := 9424
;
when 7504 =>
table_value := 9536
;
when 7505 =>
table_value := 9632
;
when 7506 =>
table_value := 9728
;
when 7507 =>
table_value := 9776
;
when 7508 =>
table_value := 9872
;
when 7509 =>
table_value := 9920
;
when 7510 =>
table_value := 9952
;
when 7511 =>
table_value := 10000
;
when 7512 =>
table_value := 10032
;
when 7513 =>
table_value := 10032
;
when 7514 =>
table_value := 10016
;
when 7515 =>
table_value := 9984
;
when 7516 =>
table_value := 9952
;
when 7517 =>
table_value := 9872
;
when 7518 =>
table_value := 9792
;
when 7519 =>
table_value := 9712
;
when 7520 =>
table_value := 9648
;
when 7521 =>
table_value := 9552
;
when 7522 =>
table_value := 9440
;
when 7523 =>
table_value := 9360
;
when 7524 =>
table_value := 9232
;
when 7525 =>
table_value := 9120
;
when 7526 =>
table_value := 9008
;
when 7527 =>
table_value := 8880
;
when 7528 =>
table_value := 8720
;
when 7529 =>
table_value := 8576
;
when 7530 =>
table_value := 8432
;
when 7531 =>
table_value := 8288
;
when 7532 =>
table_value := 8128
;
when 7533 =>
table_value := 7984
;
when 7534 =>
table_value := 7872
;
when 7535 =>
table_value := 7728
;
when 7536 =>
table_value := 7552
;
when 7537 =>
table_value := 7408
;
when 7538 =>
table_value := 7264
;
when 7539 =>
table_value := 7120
;
when 7540 =>
table_value := 6976
;
when 7541 =>
table_value := 6880
;
when 7542 =>
table_value := 6720
;
when 7543 =>
table_value := 6592
;
when 7544 =>
table_value := 6464
;
when 7545 =>
table_value := 6320
;
when 7546 =>
table_value := 6176
;
when 7547 =>
table_value := 6032
;
when 7548 =>
table_value := 5888
;
when 7549 =>
table_value := 5728
;
when 7550 =>
table_value := 5568
;
when 7551 =>
table_value := 5456
;
when 7552 =>
table_value := 5296
;
when 7553 =>
table_value := 5152
;
when 7554 =>
table_value := 5008
;
when 7555 =>
table_value := 4896
;
when 7556 =>
table_value := 4768
;
when 7557 =>
table_value := 4624
;
when 7558 =>
table_value := 4512
;
when 7559 =>
table_value := 4368
;
when 7560 =>
table_value := 4256
;
when 7561 =>
table_value := 4128
;
when 7562 =>
table_value := 3968
;
when 7563 =>
table_value := 3840
;
when 7564 =>
table_value := 3712
;
when 7565 =>
table_value := 3536
;
when 7566 =>
table_value := 3424
;
when 7567 =>
table_value := 3280
;
when 7568 =>
table_value := 3136
;
when 7569 =>
table_value := 3008
;
when 7570 =>
table_value := 2832
;
when 7571 =>
table_value := 2672
;
when 7572 =>
table_value := 2544
;
when 7573 =>
table_value := 2400
;
when 7574 =>
table_value := 2336
;
when 7575 =>
table_value := 2224
;
when 7576 =>
table_value := 2128
;
when 7577 =>
table_value := 2048
;
when 7578 =>
table_value := 1952
;
when 7579 =>
table_value := 1888
;
when 7580 =>
table_value := 1824
;
when 7581 =>
table_value := 1760
;
when 7582 =>
table_value := 1712
;
when 7583 =>
table_value := 1664
;
when 7584 =>
table_value := 1600
;
when 7585 =>
table_value := 1552
;
when 7586 =>
table_value := 1504
;
when 7587 =>
table_value := 1472
;
when 7588 =>
table_value := 1424
;
when 7589 =>
table_value := 1392
;
when 7590 =>
table_value := 1376
;
when 7591 =>
table_value := 1376
;
when 7592 =>
table_value := 1344
;
when 7593 =>
table_value := 1328
;
when 7594 =>
table_value := 1296
;
when 7595 =>
table_value := 1312
;
when 7596 =>
table_value := 1312
;
when 7597 =>
table_value := 1328
;
when 7598 =>
table_value := 1344
;
when 7599 =>
table_value := 1328
;
when 7600 =>
table_value := 1328
;
when 7601 =>
table_value := 1328
;
when 7602 =>
table_value := 1328
;
when 7603 =>
table_value := 1344
;
when 7604 =>
table_value := 1360
;
when 7605 =>
table_value := 1376
;
when 7606 =>
table_value := 1392
;
when 7607 =>
table_value := 1376
;
when 7608 =>
table_value := 1376
;
when 7609 =>
table_value := 1392
;
when 7610 =>
table_value := 1408
;
when 7611 =>
table_value := 1392
;
when 7612 =>
table_value := 1408
;
when 7613 =>
table_value := 1408
;
when 7614 =>
table_value := 1392
;
when 7615 =>
table_value := 1376
;
when 7616 =>
table_value := 1360
;
when 7617 =>
table_value := 1360
;
when 7618 =>
table_value := 1328
;
when 7619 =>
table_value := 1312
;
when 7620 =>
table_value := 1264
;
when 7621 =>
table_value := 1200
;
when 7622 =>
table_value := 1168
;
when 7623 =>
table_value := 1136
;
when 7624 =>
table_value := 1120
;
when 7625 =>
table_value := 1136
;
when 7626 =>
table_value := 1104
;
when 7627 =>
table_value := 1088
;
when 7628 =>
table_value := 1088
;
when 7629 =>
table_value := 1072
;
when 7630 =>
table_value := 1104
;
when 7631 =>
table_value := 1104
;
when 7632 =>
table_value := 1120
;
when 7633 =>
table_value := 1152
;
when 7634 =>
table_value := 1200
;
when 7635 =>
table_value := 1232
;
when 7636 =>
table_value := 1280
;
when 7637 =>
table_value := 1344
;
when 7638 =>
table_value := 1392
;
when 7639 =>
table_value := 1472
;
when 7640 =>
table_value := 1536
;
when 7641 =>
table_value := 1632
;
when 7642 =>
table_value := 1744
;
when 7643 =>
table_value := 1856
;
when 7644 =>
table_value := 2000
;
when 7645 =>
table_value := 2144
;
when 7646 =>
table_value := 2288
;
when 7647 =>
table_value := 2464
;
when 7648 =>
table_value := 2640
;
when 7649 =>
table_value := 2832
;
when 7650 =>
table_value := 3008
;
when 7651 =>
table_value := 3200
;
when 7652 =>
table_value := 3360
;
when 7653 =>
table_value := 3536
;
when 7654 =>
table_value := 3696
;
when 7655 =>
table_value := 3888
;
when 7656 =>
table_value := 4064
;
when 7657 =>
table_value := 4240
;
when 7658 =>
table_value := 4448
;
when 7659 =>
table_value := 4624
;
when 7660 =>
table_value := 4800
;
when 7661 =>
table_value := 5008
;
when 7662 =>
table_value := 5184
;
when 7663 =>
table_value := 5392
;
when 7664 =>
table_value := 5552
;
when 7665 =>
table_value := 5744
;
when 7666 =>
table_value := 5920
;
when 7667 =>
table_value := 6112
;
when 7668 =>
table_value := 6288
;
when 7669 =>
table_value := 6432
;
when 7670 =>
table_value := 6608
;
when 7671 =>
table_value := 6768
;
when 7672 =>
table_value := 6928
;
when 7673 =>
table_value := 7088
;
when 7674 =>
table_value := 7216
;
when 7675 =>
table_value := 7328
;
when 7676 =>
table_value := 7456
;
when 7677 =>
table_value := 7584
;
when 7678 =>
table_value := 7712
;
when 7679 =>
table_value := 7792
;
when 7680 =>
table_value := 7872
;
when 7681 =>
table_value := 7968
;
when 7682 =>
table_value := 8016
;
when 7683 =>
table_value := 8096
;
when 7684 =>
table_value := 8128
;
when 7685 =>
table_value := 8208
;
when 7686 =>
table_value := 8288
;
when 7687 =>
table_value := 8320
;
when 7688 =>
table_value := 8336
;
when 7689 =>
table_value := 8384
;
when 7690 =>
table_value := 8416
;
when 7691 =>
table_value := 8464
;
when 7692 =>
table_value := 8480
;
when 7693 =>
table_value := 8480
;
when 7694 =>
table_value := 8528
;
when 7695 =>
table_value := 8528
;
when 7696 =>
table_value := 8560
;
when 7697 =>
table_value := 8576
;
when 7698 =>
table_value := 8560
;
when 7699 =>
table_value := 8576
;
when 7700 =>
table_value := 8560
;
when 7701 =>
table_value := 8544
;
when 7702 =>
table_value := 8544
;
when 7703 =>
table_value := 8528
;
when 7704 =>
table_value := 8496
;
when 7705 =>
table_value := 8448
;
when 7706 =>
table_value := 8416
;
when 7707 =>
table_value := 8352
;
when 7708 =>
table_value := 8304
;
when 7709 =>
table_value := 8288
;
when 7710 =>
table_value := 8256
;
when 7711 =>
table_value := 8224
;
when 7712 =>
table_value := 8176
;
when 7713 =>
table_value := 8144
;
when 7714 =>
table_value := 8128
;
when 7715 =>
table_value := 8096
;
when 7716 =>
table_value := 8112
;
when 7717 =>
table_value := 8080
;
when 7718 =>
table_value := 8048
;
when 7719 =>
table_value := 8016
;
when 7720 =>
table_value := 7984
;
when 7721 =>
table_value := 7920
;
when 7722 =>
table_value := 7888
;
when 7723 =>
table_value := 7856
;
when 7724 =>
table_value := 7776
;
when 7725 =>
table_value := 7744
;
when 7726 =>
table_value := 7680
;
when 7727 =>
table_value := 7616
;
when 7728 =>
table_value := 7536
;
when 7729 =>
table_value := 7488
;
when 7730 =>
table_value := 7424
;
when 7731 =>
table_value := 7328
;
when 7732 =>
table_value := 7264
;
when 7733 =>
table_value := 7216
;
when 7734 =>
table_value := 7152
;
when 7735 =>
table_value := 7104
;
when 7736 =>
table_value := 7008
;
when 7737 =>
table_value := 6928
;
when 7738 =>
table_value := 6832
;
when 7739 =>
table_value := 6736
;
when 7740 =>
table_value := 6640
;
when 7741 =>
table_value := 6560
;
when 7742 =>
table_value := 6480
;
when 7743 =>
table_value := 6384
;
when 7744 =>
table_value := 6320
;
when 7745 =>
table_value := 6224
;
when 7746 =>
table_value := 6144
;
when 7747 =>
table_value := 6048
;
when 7748 =>
table_value := 5952
;
when 7749 =>
table_value := 5840
;
when 7750 =>
table_value := 5712
;
when 7751 =>
table_value := 5616
;
when 7752 =>
table_value := 5536
;
when 7753 =>
table_value := 5392
;
when 7754 =>
table_value := 5264
;
when 7755 =>
table_value := 5152
;
when 7756 =>
table_value := 4992
;
when 7757 =>
table_value := 4864
;
when 7758 =>
table_value := 4720
;
when 7759 =>
table_value := 4576
;
when 7760 =>
table_value := 4416
;
when 7761 =>
table_value := 4272
;
when 7762 =>
table_value := 4064
;
when 7763 =>
table_value := 3872
;
when 7764 =>
table_value := 3696
;
when 7765 =>
table_value := 3488
;
when 7766 =>
table_value := 3296
;
when 7767 =>
table_value := 3088
;
when 7768 =>
table_value := 2864
;
when 7769 =>
table_value := 2656
;
when 7770 =>
table_value := 2432
;
when 7771 =>
table_value := 2240
;
when 7772 =>
table_value := 2016
;
when 7773 =>
table_value := 1824
;
when 7774 =>
table_value := 1632
;
when 7775 =>
table_value := 1424
;
when 7776 =>
table_value := 1200
;
when 7777 =>
table_value := 1008
;
when 7778 =>
table_value := 816
;
when 7779 =>
table_value := 576
;
when 7780 =>
table_value := 352
;
when 7781 =>
table_value := 144
;
when 7782 =>
table_value := 1048512
;
when 7783 =>
table_value := 1048288
;
when 7784 =>
table_value := 1048080
;
when 7785 =>
table_value := 1047872
;
when 7786 =>
table_value := 1047680
;
when 7787 =>
table_value := 1047488
;
when 7788 =>
table_value := 1047296
;
when 7789 =>
table_value := 1047104
;
when 7790 =>
table_value := 1046912
;
when 7791 =>
table_value := 1046704
;
when 7792 =>
table_value := 1046480
;
when 7793 =>
table_value := 1046288
;
when 7794 =>
table_value := 1046064
;
when 7795 =>
table_value := 1045872
;
when 7796 =>
table_value := 1045680
;
when 7797 =>
table_value := 1045504
;
when 7798 =>
table_value := 1045296
;
when 7799 =>
table_value := 1045088
;
when 7800 =>
table_value := 1044880
;
when 7801 =>
table_value := 1044688
;
when 7802 =>
table_value := 1044512
;
when 7803 =>
table_value := 1044320
;
when 7804 =>
table_value := 1044160
;
when 7805 =>
table_value := 1044000
;
when 7806 =>
table_value := 1043856
;
when 7807 =>
table_value := 1043712
;
when 7808 =>
table_value := 1043568
;
when 7809 =>
table_value := 1043424
;
when 7810 =>
table_value := 1043328
;
when 7811 =>
table_value := 1043216
;
when 7812 =>
table_value := 1043120
;
when 7813 =>
table_value := 1043040
;
when 7814 =>
table_value := 1042960
;
when 7815 =>
table_value := 1042912
;
when 7816 =>
table_value := 1042848
;
when 7817 =>
table_value := 1042800
;
when 7818 =>
table_value := 1042784
;
when 7819 =>
table_value := 1042752
;
when 7820 =>
table_value := 1042720
;
when 7821 =>
table_value := 1042704
;
when 7822 =>
table_value := 1042720
;
when 7823 =>
table_value := 1042752
;
when 7824 =>
table_value := 1042768
;
when 7825 =>
table_value := 1042800
;
when 7826 =>
table_value := 1042816
;
when 7827 =>
table_value := 1042864
;
when 7828 =>
table_value := 1042912
;
when 7829 =>
table_value := 1042944
;
when 7830 =>
table_value := 1042976
;
when 7831 =>
table_value := 1043024
;
when 7832 =>
table_value := 1043104
;
when 7833 =>
table_value := 1043104
;
when 7834 =>
table_value := 1043184
;
when 7835 =>
table_value := 1043248
;
when 7836 =>
table_value := 1043344
;
when 7837 =>
table_value := 1043424
;
when 7838 =>
table_value := 1043536
;
when 7839 =>
table_value := 1043616
;
when 7840 =>
table_value := 1043712
;
when 7841 =>
table_value := 1043808
;
when 7842 =>
table_value := 1043888
;
when 7843 =>
table_value := 1044000
;
when 7844 =>
table_value := 1044096
;
when 7845 =>
table_value := 1044208
;
when 7846 =>
table_value := 1044320
;
when 7847 =>
table_value := 1044416
;
when 7848 =>
table_value := 1044544
;
when 7849 =>
table_value := 1044656
;
when 7850 =>
table_value := 1044768
;
when 7851 =>
table_value := 1044880
;
when 7852 =>
table_value := 1044960
;
when 7853 =>
table_value := 1045040
;
when 7854 =>
table_value := 1045120
;
when 7855 =>
table_value := 1045216
;
when 7856 =>
table_value := 1045280
;
when 7857 =>
table_value := 1045360
;
when 7858 =>
table_value := 1045440
;
when 7859 =>
table_value := 1045520
;
when 7860 =>
table_value := 1045584
;
when 7861 =>
table_value := 1045648
;
when 7862 =>
table_value := 1045728
;
when 7863 =>
table_value := 1045792
;
when 7864 =>
table_value := 1045856
;
when 7865 =>
table_value := 1045888
;
when 7866 =>
table_value := 1045952
;
when 7867 =>
table_value := 1045968
;
when 7868 =>
table_value := 1046032
;
when 7869 =>
table_value := 1046064
;
when 7870 =>
table_value := 1046112
;
when 7871 =>
table_value := 1046160
;
when 7872 =>
table_value := 1046192
;
when 7873 =>
table_value := 1046240
;
when 7874 =>
table_value := 1046272
;
when 7875 =>
table_value := 1046336
;
when 7876 =>
table_value := 1046384
;
when 7877 =>
table_value := 1046416
;
when 7878 =>
table_value := 1046464
;
when 7879 =>
table_value := 1046496
;
when 7880 =>
table_value := 1046512
;
when 7881 =>
table_value := 1046512
;
when 7882 =>
table_value := 1046512
;
when 7883 =>
table_value := 1046512
;
when 7884 =>
table_value := 1046528
;
when 7885 =>
table_value := 1046528
;
when 7886 =>
table_value := 1046560
;
when 7887 =>
table_value := 1046576
;
when 7888 =>
table_value := 1046576
;
when 7889 =>
table_value := 1046624
;
when 7890 =>
table_value := 1046672
;
when 7891 =>
table_value := 1046720
;
when 7892 =>
table_value := 1046736
;
when 7893 =>
table_value := 1046800
;
when 7894 =>
table_value := 1046848
;
when 7895 =>
table_value := 1046864
;
when 7896 =>
table_value := 1046896
;
when 7897 =>
table_value := 1046928
;
when 7898 =>
table_value := 1046960
;
when 7899 =>
table_value := 1047008
;
when 7900 =>
table_value := 1047072
;
when 7901 =>
table_value := 1047136
;
when 7902 =>
table_value := 1047200
;
when 7903 =>
table_value := 1047248
;
when 7904 =>
table_value := 1047328
;
when 7905 =>
table_value := 1047360
;
when 7906 =>
table_value := 1047424
;
when 7907 =>
table_value := 1047504
;
when 7908 =>
table_value := 1047568
;
when 7909 =>
table_value := 1047632
;
when 7910 =>
table_value := 1047712
;
when 7911 =>
table_value := 1047776
;
when 7912 =>
table_value := 1047856
;
when 7913 =>
table_value := 1047968
;
when 7914 =>
table_value := 1048048
;
when 7915 =>
table_value := 1048176
;
when 7916 =>
table_value := 1048272
;
when 7917 =>
table_value := 1048416
;
when 7918 =>
table_value := 1048560
;
when 7919 =>
table_value := 80
;
when 7920 =>
table_value := 240
;
when 7921 =>
table_value := 416
;
when 7922 =>
table_value := 544
;
when 7923 =>
table_value := 704
;
when 7924 =>
table_value := 880
;
when 7925 =>
table_value := 1008
;
when 7926 =>
table_value := 1168
;
when 7927 =>
table_value := 1328
;
when 7928 =>
table_value := 1504
;
when 7929 =>
table_value := 1680
;
when 7930 =>
table_value := 1856
;
when 7931 =>
table_value := 2048
;
when 7932 =>
table_value := 2208
;
when 7933 =>
table_value := 2368
;
when 7934 =>
table_value := 2528
;
when 7935 =>
table_value := 2672
;
when 7936 =>
table_value := 2832
;
when 7937 =>
table_value := 2976
;
when 7938 =>
table_value := 3104
;
when 7939 =>
table_value := 3248
;
when 7940 =>
table_value := 3344
;
when 7941 =>
table_value := 3456
;
when 7942 =>
table_value := 3520
;
when 7943 =>
table_value := 3600
;
when 7944 =>
table_value := 3680
;
when 7945 =>
table_value := 3760
;
when 7946 =>
table_value := 3760
;
when 7947 =>
table_value := 3792
;
when 7948 =>
table_value := 3792
;
when 7949 =>
table_value := 3824
;
when 7950 =>
table_value := 3808
;
when 7951 =>
table_value := 3776
;
when 7952 =>
table_value := 3712
;
when 7953 =>
table_value := 3648
;
when 7954 =>
table_value := 3600
;
when 7955 =>
table_value := 3520
;
when 7956 =>
table_value := 3440
;
when 7957 =>
table_value := 3344
;
when 7958 =>
table_value := 3248
;
when 7959 =>
table_value := 3152
;
when 7960 =>
table_value := 3024
;
when 7961 =>
table_value := 2912
;
when 7962 =>
table_value := 2784
;
when 7963 =>
table_value := 2656
;
when 7964 =>
table_value := 2544
;
when 7965 =>
table_value := 2416
;
when 7966 =>
table_value := 2320
;
when 7967 =>
table_value := 2208
;
when 7968 =>
table_value := 2096
;
when 7969 =>
table_value := 1952
;
when 7970 =>
table_value := 1840
;
when 7971 =>
table_value := 1728
;
when 7972 =>
table_value := 1600
;
when 7973 =>
table_value := 1488
;
when 7974 =>
table_value := 1408
;
when 7975 =>
table_value := 1296
;
when 7976 =>
table_value := 1200
;
when 7977 =>
table_value := 1120
;
when 7978 =>
table_value := 1040
;
when 7979 =>
table_value := 976
;
when 7980 =>
table_value := 880
;
when 7981 =>
table_value := 832
;
when 7982 =>
table_value := 752
;
when 7983 =>
table_value := 704
;
when 7984 =>
table_value := 640
;
when 7985 =>
table_value := 576
;
when 7986 =>
table_value := 496
;
when 7987 =>
table_value := 416
;
when 7988 =>
table_value := 352
;
when 7989 =>
table_value := 304
;
when 7990 =>
table_value := 240
;
when 7991 =>
table_value := 208
;
when 7992 =>
table_value := 144
;
when 7993 =>
table_value := 96
;
when 7994 =>
table_value := 80
;
when 7995 =>
table_value := 48
;
when 7996 =>
table_value := 16
;
when 7997 =>
table_value := 0
;
when 7998 =>
table_value := 0
;
when 7999 =>
table_value := 1048560
;
when 8000 =>
table_value := 1048560
;
when 8001 =>
table_value := 0
;
when 8002 =>
table_value := 0
;
when 8003 =>
table_value := 16
;
when 8004 =>
table_value := 48
;
when 8005 =>
table_value := 80
;
when 8006 =>
table_value := 96
;
when 8007 =>
table_value := 128
;
when 8008 =>
table_value := 144
;
when 8009 =>
table_value := 160
;
when 8010 =>
table_value := 208
;
when 8011 =>
table_value := 208
;
when 8012 =>
table_value := 240
;
when 8013 =>
table_value := 304
;
when 8014 =>
table_value := 368
;
when 8015 =>
table_value := 416
;
when 8016 =>
table_value := 464
;
when 8017 =>
table_value := 512
;
when 8018 =>
table_value := 528
;
when 8019 =>
table_value := 576
;
when 8020 =>
table_value := 608
;
when 8021 =>
table_value := 640
;
when 8022 =>
table_value := 672
;
when 8023 =>
table_value := 704
;
when 8024 =>
table_value := 704
;
when 8025 =>
table_value := 704
;
when 8026 =>
table_value := 704
;
when 8027 =>
table_value := 672
;
when 8028 =>
table_value := 672
;
when 8029 =>
table_value := 672
;
when 8030 =>
table_value := 656
;
when 8031 =>
table_value := 624
;
when 8032 =>
table_value := 592
;
when 8033 =>
table_value := 576
;
when 8034 =>
table_value := 544
;
when 8035 =>
table_value := 512
;
when 8036 =>
table_value := 432
;
when 8037 =>
table_value := 400
;
when 8038 =>
table_value := 304
;
when 8039 =>
table_value := 240
;
when 8040 =>
table_value := 144
;
when 8041 =>
table_value := 80
;
when 8042 =>
table_value := 0
;
when 8043 =>
table_value := 1048512
;
when 8044 =>
table_value := 1048432
;
when 8045 =>
table_value := 1048336
;
when 8046 =>
table_value := 1048256
;
when 8047 =>
table_value := 1048144
;
when 8048 =>
table_value := 1048048
;
when 8049 =>
table_value := 1047936
;
when 8050 =>
table_value := 1047808
;
when 8051 =>
table_value := 1047664
;
when 8052 =>
table_value := 1047520
;
when 8053 =>
table_value := 1047360
;
when 8054 =>
table_value := 1047232
;
when 8055 =>
table_value := 1047040
;
when 8056 =>
table_value := 1046864
;
when 8057 =>
table_value := 1046704
;
when 8058 =>
table_value := 1046512
;
when 8059 =>
table_value := 1046336
;
when 8060 =>
table_value := 1046176
;
when 8061 =>
table_value := 1045968
;
when 8062 =>
table_value := 1045808
;
when 8063 =>
table_value := 1045616
;
when 8064 =>
table_value := 1045440
;
when 8065 =>
table_value := 1045248
;
when 8066 =>
table_value := 1045056
;
when 8067 =>
table_value := 1044832
;
when 8068 =>
table_value := 1044624
;
when 8069 =>
table_value := 1044416
;
when 8070 =>
table_value := 1044208
;
when 8071 =>
table_value := 1044032
;
when 8072 =>
table_value := 1043840
;
when 8073 =>
table_value := 1043632
;
when 8074 =>
table_value := 1043488
;
when 8075 =>
table_value := 1043312
;
when 8076 =>
table_value := 1043168
;
when 8077 =>
table_value := 1043024
;
when 8078 =>
table_value := 1042848
;
when 8079 =>
table_value := 1042688
;
when 8080 =>
table_value := 1042528
;
when 8081 =>
table_value := 1042384
;
when 8082 =>
table_value := 1042224
;
when 8083 =>
table_value := 1042096
;
when 8084 =>
table_value := 1041968
;
when 8085 =>
table_value := 1041808
;
when 8086 =>
table_value := 1041712
;
when 8087 =>
table_value := 1041584
;
when 8088 =>
table_value := 1041472
;
when 8089 =>
table_value := 1041344
;
when 8090 =>
table_value := 1041216
;
when 8091 =>
table_value := 1041104
;
when 8092 =>
table_value := 1041008
;
when 8093 =>
table_value := 1040896
;
when 8094 =>
table_value := 1040800
;
when 8095 =>
table_value := 1040704
;
when 8096 =>
table_value := 1040624
;
when 8097 =>
table_value := 1040528
;
when 8098 =>
table_value := 1040384
;
when 8099 =>
table_value := 1040304
;
when 8100 =>
table_value := 1040208
;
when 8101 =>
table_value := 1040096
;
when 8102 =>
table_value := 1039984
;
when 8103 =>
table_value := 1039872
;
when 8104 =>
table_value := 1039792
;
when 8105 =>
table_value := 1039696
;
when 8106 =>
table_value := 1039584
;
when 8107 =>
table_value := 1039504
;
when 8108 =>
table_value := 1039408
;
when 8109 =>
table_value := 1039344
;
when 8110 =>
table_value := 1039248
;
when 8111 =>
table_value := 1039168
;
when 8112 =>
table_value := 1039088
;
when 8113 =>
table_value := 1039008
;
when 8114 =>
table_value := 1038976
;
when 8115 =>
table_value := 1038928
;
when 8116 =>
table_value := 1038864
;
when 8117 =>
table_value := 1038848
;
when 8118 =>
table_value := 1038800
;
when 8119 =>
table_value := 1038768
;
when 8120 =>
table_value := 1038768
;
when 8121 =>
table_value := 1038768
;
when 8122 =>
table_value := 1038800
;
when 8123 =>
table_value := 1038784
;
when 8124 =>
table_value := 1038800
;
when 8125 =>
table_value := 1038816
;
when 8126 =>
table_value := 1038864
;
when 8127 =>
table_value := 1038896
;
when 8128 =>
table_value := 1038944
;
when 8129 =>
table_value := 1039008
;
when 8130 =>
table_value := 1039072
;
when 8131 =>
table_value := 1039120
;
when 8132 =>
table_value := 1039152
;
when 8133 =>
table_value := 1039216
;
when 8134 =>
table_value := 1039296
;
when 8135 =>
table_value := 1039376
;
when 8136 =>
table_value := 1039472
;
when 8137 =>
table_value := 1039568
;
when 8138 =>
table_value := 1039648
;
when 8139 =>
table_value := 1039744
;
when 8140 =>
table_value := 1039840
;
when 8141 =>
table_value := 1039920
;
when 8142 =>
table_value := 1040000
;
when 8143 =>
table_value := 1040064
;
when 8144 =>
table_value := 1040160
;
when 8145 =>
table_value := 1040208
;
when 8146 =>
table_value := 1040320
;
when 8147 =>
table_value := 1040384
;
when 8148 =>
table_value := 1040480
;
when 8149 =>
table_value := 1040544
;
when 8150 =>
table_value := 1040640
;
when 8151 =>
table_value := 1040720
;
when 8152 =>
table_value := 1040848
;
when 8153 =>
table_value := 1040912
;
when 8154 =>
table_value := 1041008
;
when 8155 =>
table_value := 1041072
;
when 8156 =>
table_value := 1041136
;
when 8157 =>
table_value := 1041168
;
when 8158 =>
table_value := 1041264
;
when 8159 =>
table_value := 1041312
;
when 8160 =>
table_value := 1041360
;
when 8161 =>
table_value := 1041408
;
when 8162 =>
table_value := 1041440
;
when 8163 =>
table_value := 1041488
;
when 8164 =>
table_value := 1041536
;
when 8165 =>
table_value := 1041616
;
when 8166 =>
table_value := 1041648
;
when 8167 =>
table_value := 1041696
;
when 8168 =>
table_value := 1041728
;
when 8169 =>
table_value := 1041760
;
when 8170 =>
table_value := 1041792
;
when 8171 =>
table_value := 1041840
;
when 8172 =>
table_value := 1041856
;
when 8173 =>
table_value := 1041872
;
when 8174 =>
table_value := 1041888
;
when 8175 =>
table_value := 1041904
;
when 8176 =>
table_value := 1041936
;
when 8177 =>
table_value := 1041936
;
when 8178 =>
table_value := 1041936
;
when 8179 =>
table_value := 1041968
;
when 8180 =>
table_value := 1041968
;
when 8181 =>
table_value := 1041952
;
when 8182 =>
table_value := 1041968
;
when 8183 =>
table_value := 1041968
;
when 8184 =>
table_value := 1041968
;
when 8185 =>
table_value := 1042000
;
when 8186 =>
table_value := 1042016
;
when 8187 =>
table_value := 1042032
;
when 8188 =>
table_value := 1042064
;
when 8189 =>
table_value := 1042096
;
when 8190 =>
table_value := 1042144
;
when 8191 =>
table_value := 1042176
;
when 8192 =>
table_value := 1042224
;
when 8193 =>
table_value := 1042208
;
when 8194 =>
table_value := 1042192
;
when 8195 =>
table_value := 1042224
;
when 8196 =>
table_value := 1042240
;
when 8197 =>
table_value := 1042256
;
when 8198 =>
table_value := 1042272
;
when 8199 =>
table_value := 1042304
;
when 8200 =>
table_value := 1042336
;
when 8201 =>
table_value := 1042384
;
when 8202 =>
table_value := 1042416
;
when 8203 =>
table_value := 1042480
;
when 8204 =>
table_value := 1042528
;
when 8205 =>
table_value := 1042576
;
when 8206 =>
table_value := 1042624
;
when 8207 =>
table_value := 1042704
;
when 8208 =>
table_value := 1042784
;
when 8209 =>
table_value := 1042848
;
when 8210 =>
table_value := 1042960
;
when 8211 =>
table_value := 1043056
;
when 8212 =>
table_value := 1043136
;
when 8213 =>
table_value := 1043232
;
when 8214 =>
table_value := 1043328
;
when 8215 =>
table_value := 1043440
;
when 8216 =>
table_value := 1043568
;
when 8217 =>
table_value := 1043632
;
when 8218 =>
table_value := 1043776
;
when 8219 =>
table_value := 1043872
;
when 8220 =>
table_value := 1044016
;
when 8221 =>
table_value := 1044144
;
when 8222 =>
table_value := 1044288
;
when 8223 =>
table_value := 1044416
;
when 8224 =>
table_value := 1044528
;
when 8225 =>
table_value := 1044672
;
when 8226 =>
table_value := 1044800
;
when 8227 =>
table_value := 1044928
;
when 8228 =>
table_value := 1045056
;
when 8229 =>
table_value := 1045200
;
when 8230 =>
table_value := 1045344
;
when 8231 =>
table_value := 1045488
;
when 8232 =>
table_value := 1045632
;
when 8233 =>
table_value := 1045760
;
when 8234 =>
table_value := 1045904
;
when 8235 =>
table_value := 1046032
;
when 8236 =>
table_value := 1046160
;
when 8237 =>
table_value := 1046288
;
when 8238 =>
table_value := 1046400
;
when 8239 =>
table_value := 1046528
;
when 8240 =>
table_value := 1046656
;
when 8241 =>
table_value := 1046784
;
when 8242 =>
table_value := 1046896
;
when 8243 =>
table_value := 1047008
;
when 8244 =>
table_value := 1047120
;
when 8245 =>
table_value := 1047216
;
when 8246 =>
table_value := 1047328
;
when 8247 =>
table_value := 1047408
;
when 8248 =>
table_value := 1047504
;
when 8249 =>
table_value := 1047584
;
when 8250 =>
table_value := 1047680
;
when 8251 =>
table_value := 1047776
;
when 8252 =>
table_value := 1047872
;
when 8253 =>
table_value := 1047968
;
when 8254 =>
table_value := 1048064
;
when 8255 =>
table_value := 1048160
;
when 8256 =>
table_value := 1048240
;
when 8257 =>
table_value := 1048336
;
when 8258 =>
table_value := 1048432
;
when 8259 =>
table_value := 1048512
;
when 8260 =>
table_value := 0
;
when 8261 =>
table_value := 128
;
when 8262 =>
table_value := 192
;
when 8263 =>
table_value := 288
;
when 8264 =>
table_value := 400
;
when 8265 =>
table_value := 496
;
when 8266 =>
table_value := 592
;
when 8267 =>
table_value := 704
;
when 8268 =>
table_value := 848
;
when 8269 =>
table_value := 960
;
when 8270 =>
table_value := 1104
;
when 8271 =>
table_value := 1232
;
when 8272 =>
table_value := 1392
;
when 8273 =>
table_value := 1520
;
when 8274 =>
table_value := 1680
;
when 8275 =>
table_value := 1824
;
when 8276 =>
table_value := 1968
;
when 8277 =>
table_value := 2144
;
when 8278 =>
table_value := 2304
;
when 8279 =>
table_value := 2480
;
when 8280 =>
table_value := 2672
;
when 8281 =>
table_value := 2864
;
when 8282 =>
table_value := 3072
;
when 8283 =>
table_value := 3248
;
when 8284 =>
table_value := 3472
;
when 8285 =>
table_value := 3680
;
when 8286 =>
table_value := 3904
;
when 8287 =>
table_value := 4096
;
when 8288 =>
table_value := 4320
;
when 8289 =>
table_value := 4528
;
when 8290 =>
table_value := 4736
;
when 8291 =>
table_value := 4960
;
when 8292 =>
table_value := 5168
;
when 8293 =>
table_value := 5408
;
when 8294 =>
table_value := 5632
;
when 8295 =>
table_value := 5872
;
when 8296 =>
table_value := 6080
;
when 8297 =>
table_value := 6320
;
when 8298 =>
table_value := 6544
;
when 8299 =>
table_value := 6784
;
when 8300 =>
table_value := 7024
;
when 8301 =>
table_value := 7248
;
when 8302 =>
table_value := 7472
;
when 8303 =>
table_value := 7680
;
when 8304 =>
table_value := 7904
;
when 8305 =>
table_value := 8112
;
when 8306 =>
table_value := 8336
;
when 8307 =>
table_value := 8528
;
when 8308 =>
table_value := 8736
;
when 8309 =>
table_value := 8944
;
when 8310 =>
table_value := 9152
;
when 8311 =>
table_value := 9344
;
when 8312 =>
table_value := 9536
;
when 8313 =>
table_value := 9744
;
when 8314 =>
table_value := 9920
;
when 8315 =>
table_value := 10112
;
when 8316 =>
table_value := 10272
;
when 8317 =>
table_value := 10464
;
when 8318 =>
table_value := 10624
;
when 8319 =>
table_value := 10784
;
when 8320 =>
table_value := 10896
;
when 8321 =>
table_value := 11040
;
when 8322 =>
table_value := 11168
;
when 8323 =>
table_value := 11232
;
when 8324 =>
table_value := 11344
;
when 8325 =>
table_value := 11424
;
when 8326 =>
table_value := 11536
;
when 8327 =>
table_value := 11584
;
when 8328 =>
table_value := 11664
;
when 8329 =>
table_value := 11680
;
when 8330 =>
table_value := 11760
;
when 8331 =>
table_value := 11776
;
when 8332 =>
table_value := 11744
;
when 8333 =>
table_value := 11840
;
when 8334 =>
table_value := 11792
;
when 8335 =>
table_value := 11744
;
when 8336 =>
table_value := 11696
;
when 8337 =>
table_value := 11664
;
when 8338 =>
table_value := 11600
;
when 8339 =>
table_value := 11536
;
when 8340 =>
table_value := 11456
;
when 8341 =>
table_value := 11408
;
when 8342 =>
table_value := 11360
;
when 8343 =>
table_value := 11264
;
when 8344 =>
table_value := 11216
;
when 8345 =>
table_value := 11120
;
when 8346 =>
table_value := 11024
;
when 8347 =>
table_value := 10912
;
when 8348 =>
table_value := 10832
;
when 8349 =>
table_value := 10752
;
when 8350 =>
table_value := 10656
;
when 8351 =>
table_value := 10528
;
when 8352 =>
table_value := 10432
;
when 8353 =>
table_value := 10352
;
when 8354 =>
table_value := 10240
;
when 8355 =>
table_value := 10128
;
when 8356 =>
table_value := 10032
;
when 8357 =>
table_value := 9920
;
when 8358 =>
table_value := 9808
;
when 8359 =>
table_value := 9696
;
when 8360 =>
table_value := 9616
;
when 8361 =>
table_value := 9504
;
when 8362 =>
table_value := 9392
;
when 8363 =>
table_value := 9280
;
when 8364 =>
table_value := 9184
;
when 8365 =>
table_value := 9088
;
when 8366 =>
table_value := 8976
;
when 8367 =>
table_value := 8912
;
when 8368 =>
table_value := 8800
;
when 8369 =>
table_value := 8704
;
when 8370 =>
table_value := 8592
;
when 8371 =>
table_value := 8496
;
when 8372 =>
table_value := 8400
;
when 8373 =>
table_value := 8304
;
when 8374 =>
table_value := 8208
;
when 8375 =>
table_value := 8112
;
when 8376 =>
table_value := 8000
;
when 8377 =>
table_value := 7888
;
when 8378 =>
table_value := 7776
;
when 8379 =>
table_value := 7664
;
when 8380 =>
table_value := 7568
;
when 8381 =>
table_value := 7472
;
when 8382 =>
table_value := 7376
;
when 8383 =>
table_value := 7280
;
when 8384 =>
table_value := 7184
;
when 8385 =>
table_value := 7072
;
when 8386 =>
table_value := 7008
;
when 8387 =>
table_value := 6912
;
when 8388 =>
table_value := 6800
;
when 8389 =>
table_value := 6720
;
when 8390 =>
table_value := 6592
;
when 8391 =>
table_value := 6480
;
when 8392 =>
table_value := 6368
;
when 8393 =>
table_value := 6256
;
when 8394 =>
table_value := 6160
;
when 8395 =>
table_value := 6080
;
when 8396 =>
table_value := 5952
;
when 8397 =>
table_value := 5840
;
when 8398 =>
table_value := 5744
;
when 8399 =>
table_value := 5648
;
when 8400 =>
table_value := 5552
;
when 8401 =>
table_value := 5472
;
when 8402 =>
table_value := 5392
;
when 8403 =>
table_value := 5328
;
when 8404 =>
table_value := 5264
;
when 8405 =>
table_value := 5184
;
when 8406 =>
table_value := 5120
;
when 8407 =>
table_value := 5072
;
when 8408 =>
table_value := 5008
;
when 8409 =>
table_value := 4944
;
when 8410 =>
table_value := 4848
;
when 8411 =>
table_value := 4784
;
when 8412 =>
table_value := 4688
;
when 8413 =>
table_value := 4608
;
when 8414 =>
table_value := 4512
;
when 8415 =>
table_value := 4416
;
when 8416 =>
table_value := 4320
;
when 8417 =>
table_value := 4224
;
when 8418 =>
table_value := 4112
;
when 8419 =>
table_value := 4016
;
when 8420 =>
table_value := 3920
;
when 8421 =>
table_value := 3808
;
when 8422 =>
table_value := 3664
;
when 8423 =>
table_value := 3568
;
when 8424 =>
table_value := 3424
;
when 8425 =>
table_value := 3296
;
when 8426 =>
table_value := 3168
;
when 8427 =>
table_value := 3040
;
when 8428 =>
table_value := 2880
;
when 8429 =>
table_value := 2736
;
when 8430 =>
table_value := 2576
;
when 8431 =>
table_value := 2384
;
when 8432 =>
table_value := 2208
;
when 8433 =>
table_value := 2048
;
when 8434 =>
table_value := 1856
;
when 8435 =>
table_value := 1664
;
when 8436 =>
table_value := 1472
;
when 8437 =>
table_value := 1264
;
when 8438 =>
table_value := 1040
;
when 8439 =>
table_value := 832
;
when 8440 =>
table_value := 624
;
when 8441 =>
table_value := 400
;
when 8442 =>
table_value := 208
;
when 8443 =>
table_value := 0
;
when 8444 =>
table_value := 1048416
;
when 8445 =>
table_value := 1048208
;
when 8446 =>
table_value := 1048032
;
when 8447 =>
table_value := 1047824
;
when 8448 =>
table_value := 1047632
;
when 8449 =>
table_value := 1047440
;
when 8450 =>
table_value := 1047264
;
when 8451 =>
table_value := 1047072
;
when 8452 =>
table_value := 1046880
;
when 8453 =>
table_value := 1046736
;
when 8454 =>
table_value := 1046576
;
when 8455 =>
table_value := 1046416
;
when 8456 =>
table_value := 1046272
;
when 8457 =>
table_value := 1046112
;
when 8458 =>
table_value := 1045984
;
when 8459 =>
table_value := 1045824
;
when 8460 =>
table_value := 1045680
;
when 8461 =>
table_value := 1045552
;
when 8462 =>
table_value := 1045440
;
when 8463 =>
table_value := 1045328
;
when 8464 =>
table_value := 1045232
;
when 8465 =>
table_value := 1045120
;
when 8466 =>
table_value := 1045040
;
when 8467 =>
table_value := 1044960
;
when 8468 =>
table_value := 1044896
;
when 8469 =>
table_value := 1044832
;
when 8470 =>
table_value := 1044768
;
when 8471 =>
table_value := 1044704
;
when 8472 =>
table_value := 1044672
;
when 8473 =>
table_value := 1044608
;
when 8474 =>
table_value := 1044560
;
when 8475 =>
table_value := 1044528
;
when 8476 =>
table_value := 1044496
;
when 8477 =>
table_value := 1044464
;
when 8478 =>
table_value := 1044400
;
when 8479 =>
table_value := 1044368
;
when 8480 =>
table_value := 1044336
;
when 8481 =>
table_value := 1044304
;
when 8482 =>
table_value := 1044304
;
when 8483 =>
table_value := 1044304
;
when 8484 =>
table_value := 1044304
;
when 8485 =>
table_value := 1044304
;
when 8486 =>
table_value := 1044320
;
when 8487 =>
table_value := 1044336
;
when 8488 =>
table_value := 1044384
;
when 8489 =>
table_value := 1044416
;
when 8490 =>
table_value := 1044480
;
when 8491 =>
table_value := 1044560
;
when 8492 =>
table_value := 1044592
;
when 8493 =>
table_value := 1044656
;
when 8494 =>
table_value := 1044688
;
when 8495 =>
table_value := 1044784
;
when 8496 =>
table_value := 1044848
;
when 8497 =>
table_value := 1044896
;
when 8498 =>
table_value := 1044960
;
when 8499 =>
table_value := 1045040
;
when 8500 =>
table_value := 1045104
;
when 8501 =>
table_value := 1045184
;
when 8502 =>
table_value := 1045264
;
when 8503 =>
table_value := 1045360
;
when 8504 =>
table_value := 1045456
;
when 8505 =>
table_value := 1045520
;
when 8506 =>
table_value := 1045600
;
when 8507 =>
table_value := 1045664
;
when 8508 =>
table_value := 1045744
;
when 8509 =>
table_value := 1045808
;
when 8510 =>
table_value := 1045872
;
when 8511 =>
table_value := 1045936
;
when 8512 =>
table_value := 1046000
;
when 8513 =>
table_value := 1046064
;
when 8514 =>
table_value := 1046112
;
when 8515 =>
table_value := 1046160
;
when 8516 =>
table_value := 1046192
;
when 8517 =>
table_value := 1046224
;
when 8518 =>
table_value := 1046240
;
when 8519 =>
table_value := 1046272
;
when 8520 =>
table_value := 1046320
;
when 8521 =>
table_value := 1046368
;
when 8522 =>
table_value := 1046416
;
when 8523 =>
table_value := 1046448
;
when 8524 =>
table_value := 1046496
;
when 8525 =>
table_value := 1046528
;
when 8526 =>
table_value := 1046560
;
when 8527 =>
table_value := 1046592
;
when 8528 =>
table_value := 1046624
;
when 8529 =>
table_value := 1046672
;
when 8530 =>
table_value := 1046720
;
when 8531 =>
table_value := 1046768
;
when 8532 =>
table_value := 1046832
;
when 8533 =>
table_value := 1046896
;
when 8534 =>
table_value := 1046960
;
when 8535 =>
table_value := 1047040
;
when 8536 =>
table_value := 1047120
;
when 8537 =>
table_value := 1047184
;
when 8538 =>
table_value := 1047264
;
when 8539 =>
table_value := 1047328
;
when 8540 =>
table_value := 1047424
;
when 8541 =>
table_value := 1047504
;
when 8542 =>
table_value := 1047616
;
when 8543 =>
table_value := 1047680
;
when 8544 =>
table_value := 1047776
;
when 8545 =>
table_value := 1047888
;
when 8546 =>
table_value := 1047984
;
when 8547 =>
table_value := 1048112
;
when 8548 =>
table_value := 1048240
;
when 8549 =>
table_value := 1048384
;
when 8550 =>
table_value := 1048512
;
when 8551 =>
table_value := 64
;
when 8552 =>
table_value := 208
;
when 8553 =>
table_value := 320
;
when 8554 =>
table_value := 448
;
when 8555 =>
table_value := 560
;
when 8556 =>
table_value := 704
;
when 8557 =>
table_value := 832
;
when 8558 =>
table_value := 960
;
when 8559 =>
table_value := 1088
;
when 8560 =>
table_value := 1200
;
when 8561 =>
table_value := 1360
;
when 8562 =>
table_value := 1488
;
when 8563 =>
table_value := 1616
;
when 8564 =>
table_value := 1792
;
when 8565 =>
table_value := 1936
;
when 8566 =>
table_value := 2064
;
when 8567 =>
table_value := 2192
;
when 8568 =>
table_value := 2304
;
when 8569 =>
table_value := 2432
;
when 8570 =>
table_value := 2560
;
when 8571 =>
table_value := 2672
;
when 8572 =>
table_value := 2800
;
when 8573 =>
table_value := 2928
;
when 8574 =>
table_value := 3008
;
when 8575 =>
table_value := 3104
;
when 8576 =>
table_value := 3184
;
when 8577 =>
table_value := 3280
;
when 8578 =>
table_value := 3360
;
when 8579 =>
table_value := 3456
;
when 8580 =>
table_value := 3536
;
when 8581 =>
table_value := 3616
;
when 8582 =>
table_value := 3664
;
when 8583 =>
table_value := 3712
;
when 8584 =>
table_value := 3744
;
when 8585 =>
table_value := 3792
;
when 8586 =>
table_value := 3824
;
when 8587 =>
table_value := 3840
;
when 8588 =>
table_value := 3872
;
when 8589 =>
table_value := 3888
;
when 8590 =>
table_value := 3904
;
when 8591 =>
table_value := 3920
;
when 8592 =>
table_value := 3936
;
when 8593 =>
table_value := 3920
;
when 8594 =>
table_value := 3936
;
when 8595 =>
table_value := 3920
;
when 8596 =>
table_value := 3920
;
when 8597 =>
table_value := 3888
;
when 8598 =>
table_value := 3856
;
when 8599 =>
table_value := 3840
;
when 8600 =>
table_value := 3792
;
when 8601 =>
table_value := 3776
;
when 8602 =>
table_value := 3744
;
when 8603 =>
table_value := 3696
;
when 8604 =>
table_value := 3632
;
when 8605 =>
table_value := 3568
;
when 8606 =>
table_value := 3488
;
when 8607 =>
table_value := 3440
;
when 8608 =>
table_value := 3376
;
when 8609 =>
table_value := 3312
;
when 8610 =>
table_value := 3232
;
when 8611 =>
table_value := 3152
;
when 8612 =>
table_value := 3104
;
when 8613 =>
table_value := 3024
;
when 8614 =>
table_value := 2960
;
when 8615 =>
table_value := 2880
;
when 8616 =>
table_value := 2816
;
when 8617 =>
table_value := 2736
;
when 8618 =>
table_value := 2656
;
when 8619 =>
table_value := 2576
;
when 8620 =>
table_value := 2480
;
when 8621 =>
table_value := 2384
;
when 8622 =>
table_value := 2304
;
when 8623 =>
table_value := 2240
;
when 8624 =>
table_value := 2160
;
when 8625 =>
table_value := 2048
;
when 8626 =>
table_value := 1968
;
when 8627 =>
table_value := 1872
;
when 8628 =>
table_value := 1808
;
when 8629 =>
table_value := 1744
;
when 8630 =>
table_value := 1664
;
when 8631 =>
table_value := 1616
;
when 8632 =>
table_value := 1520
;
when 8633 =>
table_value := 1456
;
when 8634 =>
table_value := 1392
;
when 8635 =>
table_value := 1312
;
when 8636 =>
table_value := 1264
;
when 8637 =>
table_value := 1200
;
when 8638 =>
table_value := 1120
;
when 8639 =>
table_value := 1088
;
when 8640 =>
table_value := 1024
;
when 8641 =>
table_value := 992
;
when 8642 =>
table_value := 944
;
when 8643 =>
table_value := 896
;
when 8644 =>
table_value := 864
;
when 8645 =>
table_value := 816
;
when 8646 =>
table_value := 768
;
when 8647 =>
table_value := 736
;
when 8648 =>
table_value := 704
;
when 8649 =>
table_value := 672
;
when 8650 =>
table_value := 640
;
when 8651 =>
table_value := 624
;
when 8652 =>
table_value := 608
;
when 8653 =>
table_value := 576
;
when 8654 =>
table_value := 544
;
when 8655 =>
table_value := 512
;
when 8656 =>
table_value := 496
;
when 8657 =>
table_value := 464
;
when 8658 =>
table_value := 480
;
when 8659 =>
table_value := 464
;
when 8660 =>
table_value := 448
;
when 8661 =>
table_value := 448
;
when 8662 =>
table_value := 448
;
when 8663 =>
table_value := 464
;
when 8664 =>
table_value := 448
;
when 8665 =>
table_value := 464
;
when 8666 =>
table_value := 464
;
when 8667 =>
table_value := 480
;
when 8668 =>
table_value := 512
;
when 8669 =>
table_value := 512
;
when 8670 =>
table_value := 528
;
when 8671 =>
table_value := 544
;
when 8672 =>
table_value := 528
;
when 8673 =>
table_value := 544
;
when 8674 =>
table_value := 528
;
when 8675 =>
table_value := 512
;
when 8676 =>
table_value := 480
;
when 8677 =>
table_value := 448
;
when 8678 =>
table_value := 432
;
when 8679 =>
table_value := 400
;
when 8680 =>
table_value := 400
;
when 8681 =>
table_value := 352
;
when 8682 =>
table_value := 304
;
when 8683 =>
table_value := 256
;
when 8684 =>
table_value := 224
;
when 8685 =>
table_value := 176
;
when 8686 =>
table_value := 112
;
when 8687 =>
table_value := 64
;
when 8688 =>
table_value := 0
;
when 8689 =>
table_value := 1048512
;
when 8690 =>
table_value := 1048448
;
when 8691 =>
table_value := 1048352
;
when 8692 =>
table_value := 1048272
;
when 8693 =>
table_value := 1048192
;
when 8694 =>
table_value := 1048144
;
when 8695 =>
table_value := 1048064
;
when 8696 =>
table_value := 1047984
;
when 8697 =>
table_value := 1047920
;
when 8698 =>
table_value := 1047840
;
when 8699 =>
table_value := 1047792
;
when 8700 =>
table_value := 1047712
;
when 8701 =>
table_value := 1047648
;
when 8702 =>
table_value := 1047584
;
when 8703 =>
table_value := 1047520
;
when 8704 =>
table_value := 1047488
;
when 8705 =>
table_value := 1047456
;
when 8706 =>
table_value := 1047392
;
when 8707 =>
table_value := 1047360
;
when 8708 =>
table_value := 1047312
;
when 8709 =>
table_value := 1047280
;
when 8710 =>
table_value := 1047264
;
when 8711 =>
table_value := 1047264
;
when 8712 =>
table_value := 1047248
;
when 8713 =>
table_value := 1047216
;
when 8714 =>
table_value := 1047200
;
when 8715 =>
table_value := 1047200
;
when 8716 =>
table_value := 1047200
;
when 8717 =>
table_value := 1047200
;
when 8718 =>
table_value := 1047232
;
when 8719 =>
table_value := 1047248
;
when 8720 =>
table_value := 1047248
;
when 8721 =>
table_value := 1047264
;
when 8722 =>
table_value := 1047264
;
when 8723 =>
table_value := 1047296
;
when 8724 =>
table_value := 1047296
;
when 8725 =>
table_value := 1047344
;
when 8726 =>
table_value := 1047360
;
when 8727 =>
table_value := 1047392
;
when 8728 =>
table_value := 1047376
;
when 8729 =>
table_value := 1047408
;
when 8730 =>
table_value := 1047424
;
when 8731 =>
table_value := 1047424
;
when 8732 =>
table_value := 1047408
;
when 8733 =>
table_value := 1047408
;
when 8734 =>
table_value := 1047392
;
when 8735 =>
table_value := 1047376
;
when 8736 =>
table_value := 1047360
;
when 8737 =>
table_value := 1047328
;
when 8738 =>
table_value := 1047296
;
when 8739 =>
table_value := 1047280
;
when 8740 =>
table_value := 1047232
;
when 8741 =>
table_value := 1047200
;
when 8742 =>
table_value := 1047184
;
when 8743 =>
table_value := 1047168
;
when 8744 =>
table_value := 1047152
;
when 8745 =>
table_value := 1047136
;
when 8746 =>
table_value := 1047088
;
when 8747 =>
table_value := 1047072
;
when 8748 =>
table_value := 1047040
;
when 8749 =>
table_value := 1047024
;
when 8750 =>
table_value := 1047024
;
when 8751 =>
table_value := 1046992
;
when 8752 =>
table_value := 1046992
;
when 8753 =>
table_value := 1047008
;
when 8754 =>
table_value := 1047008
;
when 8755 =>
table_value := 1047024
;
when 8756 =>
table_value := 1047056
;
when 8757 =>
table_value := 1047072
;
when 8758 =>
table_value := 1047088
;
when 8759 =>
table_value := 1047120
;
when 8760 =>
table_value := 1047168
;
when 8761 =>
table_value := 1047200
;
when 8762 =>
table_value := 1047264
;
when 8763 =>
table_value := 1047328
;
when 8764 =>
table_value := 1047392
;
when 8765 =>
table_value := 1047456
;
when 8766 =>
table_value := 1047568
;
when 8767 =>
table_value := 1047648
;
when 8768 =>
table_value := 1047696
;
when 8769 =>
table_value := 1047808
;
when 8770 =>
table_value := 1047872
;
when 8771 =>
table_value := 1047984
;
when 8772 =>
table_value := 1048064
;
when 8773 =>
table_value := 1048176
;
when 8774 =>
table_value := 1048272
;
when 8775 =>
table_value := 1048352
;
when 8776 =>
table_value := 1048448
;
when 8777 =>
table_value := 1048560
;
when 8778 =>
table_value := 64
;
when 8779 =>
table_value := 160
;
when 8780 =>
table_value := 256
;
when 8781 =>
table_value := 336
;
when 8782 =>
table_value := 432
;
when 8783 =>
table_value := 528
;
when 8784 =>
table_value := 624
;
when 8785 =>
table_value := 752
;
when 8786 =>
table_value := 848
;
when 8787 =>
table_value := 960
;
when 8788 =>
table_value := 1056
;
when 8789 =>
table_value := 1136
;
when 8790 =>
table_value := 1216
;
when 8791 =>
table_value := 1296
;
when 8792 =>
table_value := 1360
;
when 8793 =>
table_value := 1456
;
when 8794 =>
table_value := 1552
;
when 8795 =>
table_value := 1616
;
when 8796 =>
table_value := 1696
;
when 8797 =>
table_value := 1744
;
when 8798 =>
table_value := 1824
;
when 8799 =>
table_value := 1856
;
when 8800 =>
table_value := 1936
;
when 8801 =>
table_value := 1984
;
when 8802 =>
table_value := 2048
;
when 8803 =>
table_value := 2112
;
when 8804 =>
table_value := 2160
;
when 8805 =>
table_value := 2192
;
when 8806 =>
table_value := 2240
;
when 8807 =>
table_value := 2272
;
when 8808 =>
table_value := 2304
;
when 8809 =>
table_value := 2320
;
when 8810 =>
table_value := 2352
;
when 8811 =>
table_value := 2336
;
when 8812 =>
table_value := 2352
;
when 8813 =>
table_value := 2336
;
when 8814 =>
table_value := 2336
;
when 8815 =>
table_value := 2320
;
when 8816 =>
table_value := 2304
;
when 8817 =>
table_value := 2304
;
when 8818 =>
table_value := 2288
;
when 8819 =>
table_value := 2240
;
when 8820 =>
table_value := 2208
;
when 8821 =>
table_value := 2176
;
when 8822 =>
table_value := 2144
;
when 8823 =>
table_value := 2080
;
when 8824 =>
table_value := 2016
;
when 8825 =>
table_value := 1952
;
when 8826 =>
table_value := 1920
;
when 8827 =>
table_value := 1840
;
when 8828 =>
table_value := 1792
;
when 8829 =>
table_value := 1712
;
when 8830 =>
table_value := 1632
;
when 8831 =>
table_value := 1568
;
when 8832 =>
table_value := 1472
;
when 8833 =>
table_value := 1392
;
when 8834 =>
table_value := 1312
;
when 8835 =>
table_value := 1232
;
when 8836 =>
table_value := 1152
;
when 8837 =>
table_value := 1056
;
when 8838 =>
table_value := 944
;
when 8839 =>
table_value := 848
;
when 8840 =>
table_value := 752
;
when 8841 =>
table_value := 624
;
when 8842 =>
table_value := 512
;
when 8843 =>
table_value := 400
;
when 8844 =>
table_value := 272
;
when 8845 =>
table_value := 128
;
when 8846 =>
table_value := 16
;
when 8847 =>
table_value := 1048464
;
when 8848 =>
table_value := 1048336
;
when 8849 =>
table_value := 1048192
;
when 8850 =>
table_value := 1048048
;
when 8851 =>
table_value := 1047920
;
when 8852 =>
table_value := 1047760
;
when 8853 =>
table_value := 1047632
;
when 8854 =>
table_value := 1047488
;
when 8855 =>
table_value := 1047344
;
when 8856 =>
table_value := 1047216
;
when 8857 =>
table_value := 1047088
;
when 8858 =>
table_value := 1046944
;
when 8859 =>
table_value := 1046816
;
when 8860 =>
table_value := 1046688
;
when 8861 =>
table_value := 1046576
;
when 8862 =>
table_value := 1046448
;
when 8863 =>
table_value := 1046320
;
when 8864 =>
table_value := 1046208
;
when 8865 =>
table_value := 1046096
;
when 8866 =>
table_value := 1045984
;
when 8867 =>
table_value := 1045872
;
when 8868 =>
table_value := 1045776
;
when 8869 =>
table_value := 1045680
;
when 8870 =>
table_value := 1045600
;
when 8871 =>
table_value := 1045520
;
when 8872 =>
table_value := 1045456
;
when 8873 =>
table_value := 1045376
;
when 8874 =>
table_value := 1045312
;
when 8875 =>
table_value := 1045248
;
when 8876 =>
table_value := 1045184
;
when 8877 =>
table_value := 1045120
;
when 8878 =>
table_value := 1045040
;
when 8879 =>
table_value := 1044992
;
when 8880 =>
table_value := 1044928
;
when 8881 =>
table_value := 1044880
;
when 8882 =>
table_value := 1044768
;
when 8883 =>
table_value := 1044688
;
when 8884 =>
table_value := 1044608
;
when 8885 =>
table_value := 1044512
;
when 8886 =>
table_value := 1044432
;
when 8887 =>
table_value := 1044352
;
when 8888 =>
table_value := 1044256
;
when 8889 =>
table_value := 1044160
;
when 8890 =>
table_value := 1044080
;
when 8891 =>
table_value := 1044000
;
when 8892 =>
table_value := 1043920
;
when 8893 =>
table_value := 1043856
;
when 8894 =>
table_value := 1043760
;
when 8895 =>
table_value := 1043664
;
when 8896 =>
table_value := 1043584
;
when 8897 =>
table_value := 1043504
;
when 8898 =>
table_value := 1043408
;
when 8899 =>
table_value := 1043328
;
when 8900 =>
table_value := 1043232
;
when 8901 =>
table_value := 1043152
;
when 8902 =>
table_value := 1043040
;
when 8903 =>
table_value := 1042944
;
when 8904 =>
table_value := 1042848
;
when 8905 =>
table_value := 1042736
;
when 8906 =>
table_value := 1042624
;
when 8907 =>
table_value := 1042496
;
when 8908 =>
table_value := 1042384
;
when 8909 =>
table_value := 1042272
;
when 8910 =>
table_value := 1042160
;
when 8911 =>
table_value := 1042080
;
when 8912 =>
table_value := 1041952
;
when 8913 =>
table_value := 1041840
;
when 8914 =>
table_value := 1041728
;
when 8915 =>
table_value := 1041632
;
when 8916 =>
table_value := 1041504
;
when 8917 =>
table_value := 1041408
;
when 8918 =>
table_value := 1041296
;
when 8919 =>
table_value := 1041200
;
when 8920 =>
table_value := 1041104
;
when 8921 =>
table_value := 1041024
;
when 8922 =>
table_value := 1040944
;
when 8923 =>
table_value := 1040848
;
when 8924 =>
table_value := 1040768
;
when 8925 =>
table_value := 1040704
;
when 8926 =>
table_value := 1040592
;
when 8927 =>
table_value := 1040528
;
when 8928 =>
table_value := 1040464
;
when 8929 =>
table_value := 1040400
;
when 8930 =>
table_value := 1040336
;
when 8931 =>
table_value := 1040272
;
when 8932 =>
table_value := 1040224
;
when 8933 =>
table_value := 1040176
;
when 8934 =>
table_value := 1040160
;
when 8935 =>
table_value := 1040112
;
when 8936 =>
table_value := 1040112
;
when 8937 =>
table_value := 1040096
;
when 8938 =>
table_value := 1040064
;
when 8939 =>
table_value := 1040080
;
when 8940 =>
table_value := 1040064
;
when 8941 =>
table_value := 1040080
;
when 8942 =>
table_value := 1040080
;
when 8943 =>
table_value := 1040096
;
when 8944 =>
table_value := 1040096
;
when 8945 =>
table_value := 1040096
;
when 8946 =>
table_value := 1040128
;
when 8947 =>
table_value := 1040128
;
when 8948 =>
table_value := 1040160
;
when 8949 =>
table_value := 1040192
;
when 8950 =>
table_value := 1040208
;
when 8951 =>
table_value := 1040240
;
when 8952 =>
table_value := 1040288
;
when 8953 =>
table_value := 1040320
;
when 8954 =>
table_value := 1040368
;
when 8955 =>
table_value := 1040400
;
when 8956 =>
table_value := 1040448
;
when 8957 =>
table_value := 1040496
;
when 8958 =>
table_value := 1040544
;
when 8959 =>
table_value := 1040560
;
when 8960 =>
table_value := 1040624
;
when 8961 =>
table_value := 1040656
;
when 8962 =>
table_value := 1040672
;
when 8963 =>
table_value := 1040704
;
when 8964 =>
table_value := 1040736
;
when 8965 =>
table_value := 1040752
;
when 8966 =>
table_value := 1040784
;
when 8967 =>
table_value := 1040832
;
when 8968 =>
table_value := 1040864
;
when 8969 =>
table_value := 1040896
;
when 8970 =>
table_value := 1040928
;
when 8971 =>
table_value := 1040976
;
when 8972 =>
table_value := 1041008
;
when 8973 =>
table_value := 1041024
;
when 8974 =>
table_value := 1041072
;
when 8975 =>
table_value := 1041104
;
when 8976 =>
table_value := 1041136
;
when 8977 =>
table_value := 1041152
;
when 8978 =>
table_value := 1041184
;
when 8979 =>
table_value := 1041232
;
when 8980 =>
table_value := 1041280
;
when 8981 =>
table_value := 1041328
;
when 8982 =>
table_value := 1041408
;
when 8983 =>
table_value := 1041472
;
when 8984 =>
table_value := 1041520
;
when 8985 =>
table_value := 1041568
;
when 8986 =>
table_value := 1041632
;
when 8987 =>
table_value := 1041712
;
when 8988 =>
table_value := 1041776
;
when 8989 =>
table_value := 1041824
;
when 8990 =>
table_value := 1041920
;
when 8991 =>
table_value := 1042000
;
when 8992 =>
table_value := 1042080
;
when 8993 =>
table_value := 1042176
;
when 8994 =>
table_value := 1042256
;
when 8995 =>
table_value := 1042336
;
when 8996 =>
table_value := 1042416
;
when 8997 =>
table_value := 1042480
;
when 8998 =>
table_value := 1042592
;
when 8999 =>
table_value := 1042704
;
when 9000 =>
table_value := 1042816
;
when 9001 =>
table_value := 1042944
;
when 9002 =>
table_value := 1043056
;
when 9003 =>
table_value := 1043168
;
when 9004 =>
table_value := 1043312
;
when 9005 =>
table_value := 1043424
;
when 9006 =>
table_value := 1043584
;
when 9007 =>
table_value := 1043728
;
when 9008 =>
table_value := 1043888
;
when 9009 =>
table_value := 1044032
;
when 9010 =>
table_value := 1044192
;
when 9011 =>
table_value := 1044352
;
when 9012 =>
table_value := 1044528
;
when 9013 =>
table_value := 1044720
;
when 9014 =>
table_value := 1044896
;
when 9015 =>
table_value := 1045088
;
when 9016 =>
table_value := 1045264
;
when 9017 =>
table_value := 1045472
;
when 9018 =>
table_value := 1045680
;
when 9019 =>
table_value := 1045872
;
when 9020 =>
table_value := 1046080
;
when 9021 =>
table_value := 1046272
;
when 9022 =>
table_value := 1046480
;
when 9023 =>
table_value := 1046672
;
when 9024 =>
table_value := 1046896
;
when 9025 =>
table_value := 1047120
;
when 9026 =>
table_value := 1047328
;
when 9027 =>
table_value := 1047568
;
when 9028 =>
table_value := 1047792
;
when 9029 =>
table_value := 1048016
;
when 9030 =>
table_value := 1048240
;
when 9031 =>
table_value := 1048448
;
when 9032 =>
table_value := 80
;
when 9033 =>
table_value := 304
;
when 9034 =>
table_value := 512
;
when 9035 =>
table_value := 704
;
when 9036 =>
table_value := 896
;
when 9037 =>
table_value := 1072
;
when 9038 =>
table_value := 1248
;
when 9039 =>
table_value := 1408
;
when 9040 =>
table_value := 1568
;
when 9041 =>
table_value := 1712
;
when 9042 =>
table_value := 1824
;
when 9043 =>
table_value := 1936
;
when 9044 =>
table_value := 2048
;
when 9045 =>
table_value := 2144
;
when 9046 =>
table_value := 2240
;
when 9047 =>
table_value := 2320
;
when 9048 =>
table_value := 2384
;
when 9049 =>
table_value := 2464
;
when 9050 =>
table_value := 2512
;
when 9051 =>
table_value := 2560
;
when 9052 =>
table_value := 2608
;
when 9053 =>
table_value := 2640
;
when 9054 =>
table_value := 2704
;
when 9055 =>
table_value := 2720
;
when 9056 =>
table_value := 2752
;
when 9057 =>
table_value := 2784
;
when 9058 =>
table_value := 2784
;
when 9059 =>
table_value := 2832
;
when 9060 =>
table_value := 2848
;
when 9061 =>
table_value := 2864
;
when 9062 =>
table_value := 2912
;
when 9063 =>
table_value := 2928
;
when 9064 =>
table_value := 2976
;
when 9065 =>
table_value := 3008
;
when 9066 =>
table_value := 3040
;
when 9067 =>
table_value := 3056
;
when 9068 =>
table_value := 3088
;
when 9069 =>
table_value := 3120
;
when 9070 =>
table_value := 3120
;
when 9071 =>
table_value := 3152
;
when 9072 =>
table_value := 3152
;
when 9073 =>
table_value := 3152
;
when 9074 =>
table_value := 3168
;
when 9075 =>
table_value := 3184
;
when 9076 =>
table_value := 3216
;
when 9077 =>
table_value := 3232
;
when 9078 =>
table_value := 3264
;
when 9079 =>
table_value := 3312
;
when 9080 =>
table_value := 3360
;
when 9081 =>
table_value := 3424
;
when 9082 =>
table_value := 3472
;
when 9083 =>
table_value := 3552
;
when 9084 =>
table_value := 3616
;
when 9085 =>
table_value := 3696
;
when 9086 =>
table_value := 3776
;
when 9087 =>
table_value := 3856
;
when 9088 =>
table_value := 3936
;
when 9089 =>
table_value := 4032
;
when 9090 =>
table_value := 4144
;
when 9091 =>
table_value := 4224
;
when 9092 =>
table_value := 4320
;
when 9093 =>
table_value := 4400
;
when 9094 =>
table_value := 4496
;
when 9095 =>
table_value := 4608
;
when 9096 =>
table_value := 4704
;
when 9097 =>
table_value := 4800
;
when 9098 =>
table_value := 4912
;
when 9099 =>
table_value := 5024
;
when 9100 =>
table_value := 5120
;
when 9101 =>
table_value := 5248
;
when 9102 =>
table_value := 5344
;
when 9103 =>
table_value := 5472
;
when 9104 =>
table_value := 5568
;
when 9105 =>
table_value := 5664
;
when 9106 =>
table_value := 5744
;
when 9107 =>
table_value := 5824
;
when 9108 =>
table_value := 5872
;
when 9109 =>
table_value := 5952
;
when 9110 =>
table_value := 5984
;
when 9111 =>
table_value := 6016
;
when 9112 =>
table_value := 6048
;
when 9113 =>
table_value := 6064
;
when 9114 =>
table_value := 6064
;
when 9115 =>
table_value := 6080
;
when 9116 =>
table_value := 6080
;
when 9117 =>
table_value := 6080
;
when 9118 =>
table_value := 6064
;
when 9119 =>
table_value := 6016
;
when 9120 =>
table_value := 6000
;
when 9121 =>
table_value := 5936
;
when 9122 =>
table_value := 5888
;
when 9123 =>
table_value := 5824
;
when 9124 =>
table_value := 5776
;
when 9125 =>
table_value := 5696
;
when 9126 =>
table_value := 5584
;
when 9127 =>
table_value := 5488
;
when 9128 =>
table_value := 5392
;
when 9129 =>
table_value := 5296
;
when 9130 =>
table_value := 5168
;
when 9131 =>
table_value := 5056
;
when 9132 =>
table_value := 4928
;
when 9133 =>
table_value := 4800
;
when 9134 =>
table_value := 4672
;
when 9135 =>
table_value := 4544
;
when 9136 =>
table_value := 4416
;
when 9137 =>
table_value := 4272
;
when 9138 =>
table_value := 4160
;
when 9139 =>
table_value := 4032
;
when 9140 =>
table_value := 3936
;
when 9141 =>
table_value := 3792
;
when 9142 =>
table_value := 3680
;
when 9143 =>
table_value := 3552
;
when 9144 =>
table_value := 3424
;
when 9145 =>
table_value := 3296
;
when 9146 =>
table_value := 3184
;
when 9147 =>
table_value := 3088
;
when 9148 =>
table_value := 2992
;
when 9149 =>
table_value := 2880
;
when 9150 =>
table_value := 2768
;
when 9151 =>
table_value := 2656
;
when 9152 =>
table_value := 2560
;
when 9153 =>
table_value := 2496
;
when 9154 =>
table_value := 2416
;
when 9155 =>
table_value := 2352
;
when 9156 =>
table_value := 2288
;
when 9157 =>
table_value := 2224
;
when 9158 =>
table_value := 2160
;
when 9159 =>
table_value := 2080
;
when 9160 =>
table_value := 2032
;
when 9161 =>
table_value := 1968
;
when 9162 =>
table_value := 1920
;
when 9163 =>
table_value := 1856
;
when 9164 =>
table_value := 1808
;
when 9165 =>
table_value := 1760
;
when 9166 =>
table_value := 1696
;
when 9167 =>
table_value := 1632
;
when 9168 =>
table_value := 1568
;
when 9169 =>
table_value := 1520
;
when 9170 =>
table_value := 1456
;
when 9171 =>
table_value := 1408
;
when 9172 =>
table_value := 1360
;
when 9173 =>
table_value := 1312
;
when 9174 =>
table_value := 1248
;
when 9175 =>
table_value := 1184
;
when 9176 =>
table_value := 1120
;
when 9177 =>
table_value := 1056
;
when 9178 =>
table_value := 1008
;
when 9179 =>
table_value := 960
;
when 9180 =>
table_value := 880
;
when 9181 =>
table_value := 816
;
when 9182 =>
table_value := 752
;
when 9183 =>
table_value := 656
;
when 9184 =>
table_value := 592
;
when 9185 =>
table_value := 512
;
when 9186 =>
table_value := 448
;
when 9187 =>
table_value := 400
;
when 9188 =>
table_value := 352
;
when 9189 =>
table_value := 288
;
when 9190 =>
table_value := 224
;
when 9191 =>
table_value := 160
;
when 9192 =>
table_value := 80
;
when 9193 =>
table_value := 16
;
when 9194 =>
table_value := 1048560
;
when 9195 =>
table_value := 1048512
;
when 9196 =>
table_value := 1048432
;
when 9197 =>
table_value := 1048368
;
when 9198 =>
table_value := 1048304
;
when 9199 =>
table_value := 1048240
;
when 9200 =>
table_value := 1048192
;
when 9201 =>
table_value := 1048144
;
when 9202 =>
table_value := 1048096
;
when 9203 =>
table_value := 1048016
;
when 9204 =>
table_value := 1047952
;
when 9205 =>
table_value := 1047904
;
when 9206 =>
table_value := 1047856
;
when 9207 =>
table_value := 1047808
;
when 9208 =>
table_value := 1047776
;
when 9209 =>
table_value := 1047712
;
when 9210 =>
table_value := 1047680
;
when 9211 =>
table_value := 1047632
;
when 9212 =>
table_value := 1047616
;
when 9213 =>
table_value := 1047584
;
when 9214 =>
table_value := 1047552
;
when 9215 =>
table_value := 1047504
;
when 9216 =>
table_value := 1047488
;
when 9217 =>
table_value := 1047472
;
when 9218 =>
table_value := 1047440
;
when 9219 =>
table_value := 1047456
;
when 9220 =>
table_value := 1047440
;
when 9221 =>
table_value := 1047440
;
when 9222 =>
table_value := 1047440
;
when 9223 =>
table_value := 1047440
;
when 9224 =>
table_value := 1047472
;
when 9225 =>
table_value := 1047472
;
when 9226 =>
table_value := 1047488
;
when 9227 =>
table_value := 1047520
;
when 9228 =>
table_value := 1047552
;
when 9229 =>
table_value := 1047584
;
when 9230 =>
table_value := 1047600
;
when 9231 =>
table_value := 1047632
;
when 9232 =>
table_value := 1047664
;
when 9233 =>
table_value := 1047712
;
when 9234 =>
table_value := 1047760
;
when 9235 =>
table_value := 1047792
;
when 9236 =>
table_value := 1047840
;
when 9237 =>
table_value := 1047904
;
when 9238 =>
table_value := 1047952
;
when 9239 =>
table_value := 1048016
;
when 9240 =>
table_value := 1048080
;
when 9241 =>
table_value := 1048128
;
when 9242 =>
table_value := 1048176
;
when 9243 =>
table_value := 1048240
;
when 9244 =>
table_value := 1048304
;
when 9245 =>
table_value := 1048368
;
when 9246 =>
table_value := 1048416
;
when 9247 =>
table_value := 1048464
;
when 9248 =>
table_value := 1048512
;
when 9249 =>
table_value := 0
;
when 9250 =>
table_value := 32
;
when 9251 =>
table_value := 80
;
when 9252 =>
table_value := 144
;
when 9253 =>
table_value := 224
;
when 9254 =>
table_value := 288
;
when 9255 =>
table_value := 352
;
when 9256 =>
table_value := 400
;
when 9257 =>
table_value := 464
;
when 9258 =>
table_value := 528
;
when 9259 =>
table_value := 592
;
when 9260 =>
table_value := 656
;
when 9261 =>
table_value := 720
;
when 9262 =>
table_value := 784
;
when 9263 =>
table_value := 832
;
when 9264 =>
table_value := 912
;
when 9265 =>
table_value := 944
;
when 9266 =>
table_value := 1008
;
when 9267 =>
table_value := 1088
;
when 9268 =>
table_value := 1152
;
when 9269 =>
table_value := 1200
;
when 9270 =>
table_value := 1280
;
when 9271 =>
table_value := 1328
;
when 9272 =>
table_value := 1408
;
when 9273 =>
table_value := 1440
;
when 9274 =>
table_value := 1488
;
when 9275 =>
table_value := 1536
;
when 9276 =>
table_value := 1600
;
when 9277 =>
table_value := 1648
;
when 9278 =>
table_value := 1712
;
when 9279 =>
table_value := 1776
;
when 9280 =>
table_value := 1840
;
when 9281 =>
table_value := 1904
;
when 9282 =>
table_value := 1984
;
when 9283 =>
table_value := 2064
;
when 9284 =>
table_value := 2112
;
when 9285 =>
table_value := 2176
;
when 9286 =>
table_value := 2240
;
when 9287 =>
table_value := 2336
;
when 9288 =>
table_value := 2368
;
when 9289 =>
table_value := 2448
;
when 9290 =>
table_value := 2512
;
when 9291 =>
table_value := 2576
;
when 9292 =>
table_value := 2624
;
when 9293 =>
table_value := 2688
;
when 9294 =>
table_value := 2752
;
when 9295 =>
table_value := 2784
;
when 9296 =>
table_value := 2848
;
when 9297 =>
table_value := 2912
;
when 9298 =>
table_value := 2976
;
when 9299 =>
table_value := 3024
;
when 9300 =>
table_value := 3072
;
when 9301 =>
table_value := 3136
;
when 9302 =>
table_value := 3168
;
when 9303 =>
table_value := 3232
;
when 9304 =>
table_value := 3280
;
when 9305 =>
table_value := 3312
;
when 9306 =>
table_value := 3344
;
when 9307 =>
table_value := 3392
;
when 9308 =>
table_value := 3408
;
when 9309 =>
table_value := 3456
;
when 9310 =>
table_value := 3456
;
when 9311 =>
table_value := 3488
;
when 9312 =>
table_value := 3520
;
when 9313 =>
table_value := 3520
;
when 9314 =>
table_value := 3568
;
when 9315 =>
table_value := 3584
;
when 9316 =>
table_value := 3584
;
when 9317 =>
table_value := 3616
;
when 9318 =>
table_value := 3632
;
when 9319 =>
table_value := 3648
;
when 9320 =>
table_value := 3680
;
when 9321 =>
table_value := 3696
;
when 9322 =>
table_value := 3712
;
when 9323 =>
table_value := 3728
;
when 9324 =>
table_value := 3728
;
when 9325 =>
table_value := 3744
;
when 9326 =>
table_value := 3760
;
when 9327 =>
table_value := 3760
;
when 9328 =>
table_value := 3760
;
when 9329 =>
table_value := 3760
;
when 9330 =>
table_value := 3744
;
when 9331 =>
table_value := 3728
;
when 9332 =>
table_value := 3744
;
when 9333 =>
table_value := 3744
;
when 9334 =>
table_value := 3712
;
when 9335 =>
table_value := 3728
;
when 9336 =>
table_value := 3744
;
when 9337 =>
table_value := 3776
;
when 9338 =>
table_value := 3776
;
when 9339 =>
table_value := 3776
;
when 9340 =>
table_value := 3792
;
when 9341 =>
table_value := 3824
;
when 9342 =>
table_value := 3856
;
when 9343 =>
table_value := 3888
;
when 9344 =>
table_value := 3888
;
when 9345 =>
table_value := 3920
;
when 9346 =>
table_value := 3952
;
when 9347 =>
table_value := 3968
;
when 9348 =>
table_value := 3984
;
when 9349 =>
table_value := 4016
;
when 9350 =>
table_value := 4064
;
when 9351 =>
table_value := 4080
;
when 9352 =>
table_value := 4112
;
when 9353 =>
table_value := 4160
;
when 9354 =>
table_value := 4192
;
when 9355 =>
table_value := 4224
;
when 9356 =>
table_value := 4256
;
when 9357 =>
table_value := 4288
;
when 9358 =>
table_value := 4304
;
when 9359 =>
table_value := 4336
;
when 9360 =>
table_value := 4368
;
when 9361 =>
table_value := 4368
;
when 9362 =>
table_value := 4400
;
when 9363 =>
table_value := 4432
;
when 9364 =>
table_value := 4448
;
when 9365 =>
table_value := 4448
;
when 9366 =>
table_value := 4464
;
when 9367 =>
table_value := 4496
;
when 9368 =>
table_value := 4496
;
when 9369 =>
table_value := 4512
;
when 9370 =>
table_value := 4496
;
when 9371 =>
table_value := 4512
;
when 9372 =>
table_value := 4496
;
when 9373 =>
table_value := 4464
;
when 9374 =>
table_value := 4448
;
when 9375 =>
table_value := 4448
;
when 9376 =>
table_value := 4416
;
when 9377 =>
table_value := 4400
;
when 9378 =>
table_value := 4368
;
when 9379 =>
table_value := 4320
;
when 9380 =>
table_value := 4272
;
when 9381 =>
table_value := 4240
;
when 9382 =>
table_value := 4224
;
when 9383 =>
table_value := 4160
;
when 9384 =>
table_value := 4144
;
when 9385 =>
table_value := 4096
;
when 9386 =>
table_value := 4064
;
when 9387 =>
table_value := 4016
;
when 9388 =>
table_value := 4000
;
when 9389 =>
table_value := 3968
;
when 9390 =>
table_value := 3904
;
when 9391 =>
table_value := 3856
;
when 9392 =>
table_value := 3824
;
when 9393 =>
table_value := 3760
;
when 9394 =>
table_value := 3712
;
when 9395 =>
table_value := 3664
;
when 9396 =>
table_value := 3616
;
when 9397 =>
table_value := 3568
;
when 9398 =>
table_value := 3504
;
when 9399 =>
table_value := 3472
;
when 9400 =>
table_value := 3392
;
when 9401 =>
table_value := 3376
;
when 9402 =>
table_value := 3328
;
when 9403 =>
table_value := 3280
;
when 9404 =>
table_value := 3232
;
when 9405 =>
table_value := 3200
;
when 9406 =>
table_value := 3168
;
when 9407 =>
table_value := 3104
;
when 9408 =>
table_value := 3088
;
when 9409 =>
table_value := 3040
;
when 9410 =>
table_value := 3008
;
when 9411 =>
table_value := 2960
;
when 9412 =>
table_value := 2928
;
when 9413 =>
table_value := 2880
;
when 9414 =>
table_value := 2848
;
when 9415 =>
table_value := 2800
;
when 9416 =>
table_value := 2768
;
when 9417 =>
table_value := 2720
;
when 9418 =>
table_value := 2688
;
when 9419 =>
table_value := 2624
;
when 9420 =>
table_value := 2592
;
when 9421 =>
table_value := 2544
;
when 9422 =>
table_value := 2512
;
when 9423 =>
table_value := 2496
;
when 9424 =>
table_value := 2464
;
when 9425 =>
table_value := 2416
;
when 9426 =>
table_value := 2384
;
when 9427 =>
table_value := 2368
;
when 9428 =>
table_value := 2336
;
when 9429 =>
table_value := 2320
;
when 9430 =>
table_value := 2288
;
when 9431 =>
table_value := 2288
;
when 9432 =>
table_value := 2272
;
when 9433 =>
table_value := 2256
;
when 9434 =>
table_value := 2256
;
when 9435 =>
table_value := 2256
;
when 9436 =>
table_value := 2240
;
when 9437 =>
table_value := 2240
;
when 9438 =>
table_value := 2240
;
when 9439 =>
table_value := 2240
;
when 9440 =>
table_value := 2240
;
when 9441 =>
table_value := 2224
;
when 9442 =>
table_value := 2240
;
when 9443 =>
table_value := 2224
;
when 9444 =>
table_value := 2224
;
when 9445 =>
table_value := 2224
;
when 9446 =>
table_value := 2224
;
when 9447 =>
table_value := 2240
;
when 9448 =>
table_value := 2208
;
when 9449 =>
table_value := 2208
;
when 9450 =>
table_value := 2192
;
when 9451 =>
table_value := 2192
;
when 9452 =>
table_value := 2176
;
when 9453 =>
table_value := 2176
;
when 9454 =>
table_value := 2176
;
when 9455 =>
table_value := 2160
;
when 9456 =>
table_value := 2176
;
when 9457 =>
table_value := 2160
;
when 9458 =>
table_value := 2160
;
when 9459 =>
table_value := 2144
;
when 9460 =>
table_value := 2160
;
when 9461 =>
table_value := 2144
;
when 9462 =>
table_value := 2112
;
when 9463 =>
table_value := 2096
;
when 9464 =>
table_value := 2080
;
when 9465 =>
table_value := 2064
;
when 9466 =>
table_value := 2032
;
when 9467 =>
table_value := 2000
;
when 9468 =>
table_value := 2000
;
when 9469 =>
table_value := 1952
;
when 9470 =>
table_value := 1920
;
when 9471 =>
table_value := 1888
;
when 9472 =>
table_value := 1840
;
when 9473 =>
table_value := 1792
;
when 9474 =>
table_value := 1776
;
when 9475 =>
table_value := 1712
;
when 9476 =>
table_value := 1648
;
when 9477 =>
table_value := 1616
;
when 9478 =>
table_value := 1552
;
when 9479 =>
table_value := 1488
;
when 9480 =>
table_value := 1456
;
when 9481 =>
table_value := 1376
;
when 9482 =>
table_value := 1296
;
when 9483 =>
table_value := 1248
;
when 9484 =>
table_value := 1168
;
when 9485 =>
table_value := 1088
;
when 9486 =>
table_value := 1024
;
when 9487 =>
table_value := 976
;
when 9488 =>
table_value := 912
;
when 9489 =>
table_value := 864
;
when 9490 =>
table_value := 784
;
when 9491 =>
table_value := 720
;
when 9492 =>
table_value := 672
;
when 9493 =>
table_value := 624
;
when 9494 =>
table_value := 576
;
when 9495 =>
table_value := 544
;
when 9496 =>
table_value := 512
;
when 9497 =>
table_value := 464
;
when 9498 =>
table_value := 448
;
when 9499 =>
table_value := 384
;
when 9500 =>
table_value := 336
;
when 9501 =>
table_value := 320
;
when 9502 =>
table_value := 304
;
when 9503 =>
table_value := 288
;
when 9504 =>
table_value := 272
;
when 9505 =>
table_value := 272
;
when 9506 =>
table_value := 240
;
when 9507 =>
table_value := 224
;
when 9508 =>
table_value := 224
;
when 9509 =>
table_value := 192
;
when 9510 =>
table_value := 208
;
when 9511 =>
table_value := 192
;
when 9512 =>
table_value := 192
;
when 9513 =>
table_value := 224
;
when 9514 =>
table_value := 224
;
when 9515 =>
table_value := 272
;
when 9516 =>
table_value := 288
;
when 9517 =>
table_value := 320
;
when 9518 =>
table_value := 352
;
when 9519 =>
table_value := 368
;
when 9520 =>
table_value := 384
;
when 9521 =>
table_value := 416
;
when 9522 =>
table_value := 464
;
when 9523 =>
table_value := 496
;
when 9524 =>
table_value := 528
;
when 9525 =>
table_value := 528
;
when 9526 =>
table_value := 560
;
when 9527 =>
table_value := 608
;
when 9528 =>
table_value := 608
;
when 9529 =>
table_value := 640
;
when 9530 =>
table_value := 656
;
when 9531 =>
table_value := 672
;
when 9532 =>
table_value := 688
;
when 9533 =>
table_value := 688
;
when 9534 =>
table_value := 704
;
when 9535 =>
table_value := 736
;
when 9536 =>
table_value := 752
;
when 9537 =>
table_value := 768
;
when 9538 =>
table_value := 768
;
when 9539 =>
table_value := 784
;
when 9540 =>
table_value := 800
;
when 9541 =>
table_value := 800
;
when 9542 =>
table_value := 816
;
when 9543 =>
table_value := 816
;
when 9544 =>
table_value := 816
;
when 9545 =>
table_value := 816
;
when 9546 =>
table_value := 800
;
when 9547 =>
table_value := 784
;
when 9548 =>
table_value := 768
;
when 9549 =>
table_value := 752
;
when 9550 =>
table_value := 752
;
when 9551 =>
table_value := 736
;
when 9552 =>
table_value := 704
;
when 9553 =>
table_value := 672
;
when 9554 =>
table_value := 656
;
when 9555 =>
table_value := 608
;
when 9556 =>
table_value := 592
;
when 9557 =>
table_value := 560
;
when 9558 =>
table_value := 512
;
when 9559 =>
table_value := 464
;
when 9560 =>
table_value := 416
;
when 9561 =>
table_value := 384
;
when 9562 =>
table_value := 336
;
when 9563 =>
table_value := 304
;
when 9564 =>
table_value := 240
;
when 9565 =>
table_value := 208
;
when 9566 =>
table_value := 160
;
when 9567 =>
table_value := 112
;
when 9568 =>
table_value := 80
;
when 9569 =>
table_value := 48
;
when 9570 =>
table_value := 16
;
when 9571 =>
table_value := 0
;
when 9572 =>
table_value := 1048544
;
when 9573 =>
table_value := 1048512
;
when 9574 =>
table_value := 1048496
;
when 9575 =>
table_value := 1048448
;
when 9576 =>
table_value := 1048432
;
when 9577 =>
table_value := 1048384
;
when 9578 =>
table_value := 1048352
;
when 9579 =>
table_value := 1048320
;
when 9580 =>
table_value := 1048288
;
when 9581 =>
table_value := 1048256
;
when 9582 =>
table_value := 1048240
;
when 9583 =>
table_value := 1048208
;
when 9584 =>
table_value := 1048192
;
when 9585 =>
table_value := 1048144
;
when 9586 =>
table_value := 1048128
;
when 9587 =>
table_value := 1048096
;
when 9588 =>
table_value := 1048048
;
when 9589 =>
table_value := 1048016
;
when 9590 =>
table_value := 1047984
;
when 9591 =>
table_value := 1047936
;
when 9592 =>
table_value := 1047888
;
when 9593 =>
table_value := 1047872
;
when 9594 =>
table_value := 1047792
;
when 9595 =>
table_value := 1047728
;
when 9596 =>
table_value := 1047680
;
when 9597 =>
table_value := 1047632
;
when 9598 =>
table_value := 1047568
;
when 9599 =>
table_value := 1047520
;
when 9600 =>
table_value := 1047456
;
when 9601 =>
table_value := 1047408
;
when 9602 =>
table_value := 1047312
;
when 9603 =>
table_value := 1047248
;
when 9604 =>
table_value := 1047168
;
when 9605 =>
table_value := 1047104
;
when 9606 =>
table_value := 1047008
;
when 9607 =>
table_value := 1046928
;
when 9608 =>
table_value := 1046832
;
when 9609 =>
table_value := 1046752
;
when 9610 =>
table_value := 1046672
;
when 9611 =>
table_value := 1046576
;
when 9612 =>
table_value := 1046496
;
when 9613 =>
table_value := 1046384
;
when 9614 =>
table_value := 1046272
;
when 9615 =>
table_value := 1046176
;
when 9616 =>
table_value := 1046048
;
when 9617 =>
table_value := 1045952
;
when 9618 =>
table_value := 1045824
;
when 9619 =>
table_value := 1045696
;
when 9620 =>
table_value := 1045568
;
when 9621 =>
table_value := 1045440
;
when 9622 =>
table_value := 1045312
;
when 9623 =>
table_value := 1045168
;
when 9624 =>
table_value := 1045040
;
when 9625 =>
table_value := 1044896
;
when 9626 =>
table_value := 1044784
;
when 9627 =>
table_value := 1044640
;
when 9628 =>
table_value := 1044496
;
when 9629 =>
table_value := 1044368
;
when 9630 =>
table_value := 1044240
;
when 9631 =>
table_value := 1044080
;
when 9632 =>
table_value := 1043920
;
when 9633 =>
table_value := 1043792
;
when 9634 =>
table_value := 1043648
;
when 9635 =>
table_value := 1043536
;
when 9636 =>
table_value := 1043392
;
when 9637 =>
table_value := 1043280
;
when 9638 =>
table_value := 1043168
;
when 9639 =>
table_value := 1043056
;
when 9640 =>
table_value := 1042960
;
when 9641 =>
table_value := 1042864
;
when 9642 =>
table_value := 1042752
;
when 9643 =>
table_value := 1042640
;
when 9644 =>
table_value := 1042560
;
when 9645 =>
table_value := 1042480
;
when 9646 =>
table_value := 1042416
;
when 9647 =>
table_value := 1042336
;
when 9648 =>
table_value := 1042288
;
when 9649 =>
table_value := 1042224
;
when 9650 =>
table_value := 1042192
;
when 9651 =>
table_value := 1042128
;
when 9652 =>
table_value := 1042096
;
when 9653 =>
table_value := 1042016
;
when 9654 =>
table_value := 1042000
;
when 9655 =>
table_value := 1041952
;
when 9656 =>
table_value := 1041936
;
when 9657 =>
table_value := 1041872
;
when 9658 =>
table_value := 1041808
;
when 9659 =>
table_value := 1041776
;
when 9660 =>
table_value := 1041744
;
when 9661 =>
table_value := 1041712
;
when 9662 =>
table_value := 1041680
;
when 9663 =>
table_value := 1041680
;
when 9664 =>
table_value := 1041648
;
when 9665 =>
table_value := 1041632
;
when 9666 =>
table_value := 1041616
;
when 9667 =>
table_value := 1041600
;
when 9668 =>
table_value := 1041584
;
when 9669 =>
table_value := 1041568
;
when 9670 =>
table_value := 1041568
;
when 9671 =>
table_value := 1041552
;
when 9672 =>
table_value := 1041568
;
when 9673 =>
table_value := 1041584
;
when 9674 =>
table_value := 1041584
;
when 9675 =>
table_value := 1041584
;
when 9676 =>
table_value := 1041616
;
when 9677 =>
table_value := 1041616
;
when 9678 =>
table_value := 1041632
;
when 9679 =>
table_value := 1041632
;
when 9680 =>
table_value := 1041648
;
when 9681 =>
table_value := 1041664
;
when 9682 =>
table_value := 1041696
;
when 9683 =>
table_value := 1041696
;
when 9684 =>
table_value := 1041712
;
when 9685 =>
table_value := 1041728
;
when 9686 =>
table_value := 1041776
;
when 9687 =>
table_value := 1041824
;
when 9688 =>
table_value := 1041872
;
when 9689 =>
table_value := 1041936
;
when 9690 =>
table_value := 1041984
;
when 9691 =>
table_value := 1042064
;
when 9692 =>
table_value := 1042144
;
when 9693 =>
table_value := 1042224
;
when 9694 =>
table_value := 1042320
;
when 9695 =>
table_value := 1042400
;
when 9696 =>
table_value := 1042464
;
when 9697 =>
table_value := 1042528
;
when 9698 =>
table_value := 1042608
;
when 9699 =>
table_value := 1042688
;
when 9700 =>
table_value := 1042768
;
when 9701 =>
table_value := 1042832
;
when 9702 =>
table_value := 1042912
;
when 9703 =>
table_value := 1043008
;
when 9704 =>
table_value := 1043072
;
when 9705 =>
table_value := 1043136
;
when 9706 =>
table_value := 1043232
;
when 9707 =>
table_value := 1043296
;
when 9708 =>
table_value := 1043360
;
when 9709 =>
table_value := 1043456
;
when 9710 =>
table_value := 1043536
;
when 9711 =>
table_value := 1043632
;
when 9712 =>
table_value := 1043696
;
when 9713 =>
table_value := 1043776
;
when 9714 =>
table_value := 1043840
;
when 9715 =>
table_value := 1043888
;
when 9716 =>
table_value := 1043968
;
when 9717 =>
table_value := 1044032
;
when 9718 =>
table_value := 1044080
;
when 9719 =>
table_value := 1044128
;
when 9720 =>
table_value := 1044192
;
when 9721 =>
table_value := 1044256
;
when 9722 =>
table_value := 1044304
;
when 9723 =>
table_value := 1044320
;
when 9724 =>
table_value := 1044368
;
when 9725 =>
table_value := 1044416
;
when 9726 =>
table_value := 1044464
;
when 9727 =>
table_value := 1044496
;
when 9728 =>
table_value := 1044528
;
when 9729 =>
table_value := 1044560
;
when 9730 =>
table_value := 1044576
;
when 9731 =>
table_value := 1044624
;
when 9732 =>
table_value := 1044640
;
when 9733 =>
table_value := 1044704
;
when 9734 =>
table_value := 1044720
;
when 9735 =>
table_value := 1044752
;
when 9736 =>
table_value := 1044784
;
when 9737 =>
table_value := 1044800
;
when 9738 =>
table_value := 1044816
;
when 9739 =>
table_value := 1044864
;
when 9740 =>
table_value := 1044896
;
when 9741 =>
table_value := 1044928
;
when 9742 =>
table_value := 1044960
;
when 9743 =>
table_value := 1045024
;
when 9744 =>
table_value := 1045040
;
when 9745 =>
table_value := 1045072
;
when 9746 =>
table_value := 1045136
;
when 9747 =>
table_value := 1045184
;
when 9748 =>
table_value := 1045232
;
when 9749 =>
table_value := 1045312
;
when 9750 =>
table_value := 1045360
;
when 9751 =>
table_value := 1045472
;
when 9752 =>
table_value := 1045520
;
when 9753 =>
table_value := 1045616
;
when 9754 =>
table_value := 1045680
;
when 9755 =>
table_value := 1045760
;
when 9756 =>
table_value := 1045856
;
when 9757 =>
table_value := 1045952
;
when 9758 =>
table_value := 1046032
;
when 9759 =>
table_value := 1046128
;
when 9760 =>
table_value := 1046224
;
when 9761 =>
table_value := 1046288
;
when 9762 =>
table_value := 1046384
;
when 9763 =>
table_value := 1046448
;
when 9764 =>
table_value := 1046544
;
when 9765 =>
table_value := 1046640
;
when 9766 =>
table_value := 1046720
;
when 9767 =>
table_value := 1046800
;
when 9768 =>
table_value := 1046880
;
when 9769 =>
table_value := 1046960
;
when 9770 =>
table_value := 1047056
;
when 9771 =>
table_value := 1047120
;
when 9772 =>
table_value := 1047216
;
when 9773 =>
table_value := 1047280
;
when 9774 =>
table_value := 1047344
;
when 9775 =>
table_value := 1047408
;
when 9776 =>
table_value := 1047488
;
when 9777 =>
table_value := 1047536
;
when 9778 =>
table_value := 1047568
;
when 9779 =>
table_value := 1047616
;
when 9780 =>
table_value := 1047632
;
when 9781 =>
table_value := 1047664
;
when 9782 =>
table_value := 1047680
;
when 9783 =>
table_value := 1047712
;
when 9784 =>
table_value := 1047728
;
when 9785 =>
table_value := 1047744
;
when 9786 =>
table_value := 1047776
;
when 9787 =>
table_value := 1047776
;
when 9788 =>
table_value := 1047744
;
when 9789 =>
table_value := 1047760
;
when 9790 =>
table_value := 1047744
;
when 9791 =>
table_value := 1047728
;
when 9792 =>
table_value := 1047696
;
when 9793 =>
table_value := 1047664
;
when 9794 =>
table_value := 1047632
;
when 9795 =>
table_value := 1047584
;
when 9796 =>
table_value := 1047520
;
when 9797 =>
table_value := 1047472
;
when 9798 =>
table_value := 1047424
;
when 9799 =>
table_value := 1047376
;
when 9800 =>
table_value := 1047312
;
when 9801 =>
table_value := 1047248
;
when 9802 =>
table_value := 1047216
;
when 9803 =>
table_value := 1047152
;
when 9804 =>
table_value := 1047104
;
when 9805 =>
table_value := 1047056
;
when 9806 =>
table_value := 1047024
;
when 9807 =>
table_value := 1046960
;
when 9808 =>
table_value := 1046896
;
when 9809 =>
table_value := 1046832
;
when 9810 =>
table_value := 1046768
;
when 9811 =>
table_value := 1046688
;
when 9812 =>
table_value := 1046640
;
when 9813 =>
table_value := 1046576
;
when 9814 =>
table_value := 1046496
;
when 9815 =>
table_value := 1046448
;
when 9816 =>
table_value := 1046368
;
when 9817 =>
table_value := 1046304
;
when 9818 =>
table_value := 1046256
;
when 9819 =>
table_value := 1046160
;
when 9820 =>
table_value := 1046112
;
when 9821 =>
table_value := 1046080
;
when 9822 =>
table_value := 1046032
;
when 9823 =>
table_value := 1045984
;
when 9824 =>
table_value := 1045936
;
when 9825 =>
table_value := 1045904
;
when 9826 =>
table_value := 1045856
;
when 9827 =>
table_value := 1045824
;
when 9828 =>
table_value := 1045808
;
when 9829 =>
table_value := 1045792
;
when 9830 =>
table_value := 1045760
;
when 9831 =>
table_value := 1045744
;
when 9832 =>
table_value := 1045728
;
when 9833 =>
table_value := 1045744
;
when 9834 =>
table_value := 1045744
;
when 9835 =>
table_value := 1045744
;
when 9836 =>
table_value := 1045744
;
when 9837 =>
table_value := 1045776
;
when 9838 =>
table_value := 1045792
;
when 9839 =>
table_value := 1045808
;
when 9840 =>
table_value := 1045856
;
when 9841 =>
table_value := 1045872
;
when 9842 =>
table_value := 1045888
;
when 9843 =>
table_value := 1045920
;
when 9844 =>
table_value := 1045968
;
when 9845 =>
table_value := 1046000
;
when 9846 =>
table_value := 1046048
;
when 9847 =>
table_value := 1046096
;
when 9848 =>
table_value := 1046144
;
when 9849 =>
table_value := 1046208
;
when 9850 =>
table_value := 1046272
;
when 9851 =>
table_value := 1046304
;
when 9852 =>
table_value := 1046352
;
when 9853 =>
table_value := 1046400
;
when 9854 =>
table_value := 1046448
;
when 9855 =>
table_value := 1046480
;
when 9856 =>
table_value := 1046512
;
when 9857 =>
table_value := 1046544
;
when 9858 =>
table_value := 1046576
;
when 9859 =>
table_value := 1046608
;
when 9860 =>
table_value := 1046640
;
when 9861 =>
table_value := 1046656
;
when 9862 =>
table_value := 1046688
;
when 9863 =>
table_value := 1046736
;
when 9864 =>
table_value := 1046736
;
when 9865 =>
table_value := 1046800
;
when 9866 =>
table_value := 1046832
;
when 9867 =>
table_value := 1046864
;
when 9868 =>
table_value := 1046880
;
when 9869 =>
table_value := 1046880
;
when 9870 =>
table_value := 1046944
;
when 9871 =>
table_value := 1046960
;
when 9872 =>
table_value := 1047024
;
when 9873 =>
table_value := 1047056
;
when 9874 =>
table_value := 1047104
;
when 9875 =>
table_value := 1047152
;
when 9876 =>
table_value := 1047200
;
when 9877 =>
table_value := 1047232
;
when 9878 =>
table_value := 1047264
;
when 9879 =>
table_value := 1047328
;
when 9880 =>
table_value := 1047392
;
when 9881 =>
table_value := 1047440
;
when 9882 =>
table_value := 1047488
;
when 9883 =>
table_value := 1047552
;
when 9884 =>
table_value := 1047600
;
when 9885 =>
table_value := 1047664
;
when 9886 =>
table_value := 1047728
;
when 9887 =>
table_value := 1047808
;
when 9888 =>
table_value := 1047856
;
when 9889 =>
table_value := 1047920
;
when 9890 =>
table_value := 1047984
;
when 9891 =>
table_value := 1048048
;
when 9892 =>
table_value := 1048112
;
when 9893 =>
table_value := 1048176
;
when 9894 =>
table_value := 1048256
;
when 9895 =>
table_value := 1048352
;
when 9896 =>
table_value := 1048448
;
when 9897 =>
table_value := 1048544
;
when 9898 =>
table_value := 32
;
when 9899 =>
table_value := 144
;
when 9900 =>
table_value := 272
;
when 9901 =>
table_value := 368
;
when 9902 =>
table_value := 512
;
when 9903 =>
table_value := 608
;
when 9904 =>
table_value := 720
;
when 9905 =>
table_value := 848
;
when 9906 =>
table_value := 944
;
when 9907 =>
table_value := 1072
;
when 9908 =>
table_value := 1216
;
when 9909 =>
table_value := 1360
;
when 9910 =>
table_value := 1504
;
when 9911 =>
table_value := 1648
;
when 9912 =>
table_value := 1808
;
when 9913 =>
table_value := 1952
;
when 9914 =>
table_value := 2112
;
when 9915 =>
table_value := 2288
;
when 9916 =>
table_value := 2432
;
when 9917 =>
table_value := 2608
;
when 9918 =>
table_value := 2768
;
when 9919 =>
table_value := 2912
;
when 9920 =>
table_value := 3072
;
when 9921 =>
table_value := 3216
;
when 9922 =>
table_value := 3360
;
when 9923 =>
table_value := 3488
;
when 9924 =>
table_value := 3648
;
when 9925 =>
table_value := 3792
;
when 9926 =>
table_value := 3904
;
when 9927 =>
table_value := 4016
;
when 9928 =>
table_value := 4144
;
when 9929 =>
table_value := 4256
;
when 9930 =>
table_value := 4352
;
when 9931 =>
table_value := 4448
;
when 9932 =>
table_value := 4560
;
when 9933 =>
table_value := 4656
;
when 9934 =>
table_value := 4736
;
when 9935 =>
table_value := 4800
;
when 9936 =>
table_value := 4864
;
when 9937 =>
table_value := 4896
;
when 9938 =>
table_value := 4960
;
when 9939 =>
table_value := 5024
;
when 9940 =>
table_value := 5072
;
when 9941 =>
table_value := 5088
;
when 9942 =>
table_value := 5136
;
when 9943 =>
table_value := 5152
;
when 9944 =>
table_value := 5152
;
when 9945 =>
table_value := 5168
;
when 9946 =>
table_value := 5168
;
when 9947 =>
table_value := 5168
;
when 9948 =>
table_value := 5168
;
when 9949 =>
table_value := 5152
;
when 9950 =>
table_value := 5136
;
when 9951 =>
table_value := 5120
;
when 9952 =>
table_value := 5104
;
when 9953 =>
table_value := 5104
;
when 9954 =>
table_value := 5088
;
when 9955 =>
table_value := 5072
;
when 9956 =>
table_value := 5040
;
when 9957 =>
table_value := 5040
;
when 9958 =>
table_value := 5008
;
when 9959 =>
table_value := 4976
;
when 9960 =>
table_value := 4944
;
when 9961 =>
table_value := 4928
;
when 9962 =>
table_value := 4864
;
when 9963 =>
table_value := 4816
;
when 9964 =>
table_value := 4784
;
when 9965 =>
table_value := 4752
;
when 9966 =>
table_value := 4704
;
when 9967 =>
table_value := 4688
;
when 9968 =>
table_value := 4624
;
when 9969 =>
table_value := 4608
;
when 9970 =>
table_value := 4560
;
when 9971 =>
table_value := 4512
;
when 9972 =>
table_value := 4464
;
when 9973 =>
table_value := 4400
;
when 9974 =>
table_value := 4368
;
when 9975 =>
table_value := 4320
;
when 9976 =>
table_value := 4272
;
when 9977 =>
table_value := 4224
;
when 9978 =>
table_value := 4160
;
when 9979 =>
table_value := 4112
;
when 9980 =>
table_value := 4048
;
when 9981 =>
table_value := 3968
;
when 9982 =>
table_value := 3920
;
when 9983 =>
table_value := 3856
;
when 9984 =>
table_value := 3776
;
when 9985 =>
table_value := 3712
;
when 9986 =>
table_value := 3648
;
when 9987 =>
table_value := 3584
;
when 9988 =>
table_value := 3504
;
when 9989 =>
table_value := 3440
;
when 9990 =>
table_value := 3360
;
when 9991 =>
table_value := 3280
;
when 9992 =>
table_value := 3200
;
when 9993 =>
table_value := 3120
;
when 9994 =>
table_value := 3040
;
when 9995 =>
table_value := 2944
;
when 9996 =>
table_value := 2880
;
when 9997 =>
table_value := 2800
;
when 9998 =>
table_value := 2704
;
when 9999 =>
table_value := 2608
;
when 10000 =>
table_value := 2512
;
when 10001 =>
table_value := 2416
;
when 10002 =>
table_value := 2304
;
when 10003 =>
table_value := 2192
;
when 10004 =>
table_value := 2112
;
when 10005 =>
table_value := 2000
;
when 10006 =>
table_value := 1888
;
when 10007 =>
table_value := 1776
;
when 10008 =>
table_value := 1648
;
when 10009 =>
table_value := 1536
;
when 10010 =>
table_value := 1424
;
when 10011 =>
table_value := 1312
;
when 10012 =>
table_value := 1184
;
when 10013 =>
table_value := 1056
;
when 10014 =>
table_value := 928
;
when 10015 =>
table_value := 832
;
when 10016 =>
table_value := 688
;
when 10017 =>
table_value := 560
;
when 10018 =>
table_value := 448
;
when 10019 =>
table_value := 304
;
when 10020 =>
table_value := 192
;
when 10021 =>
table_value := 64
;
when 10022 =>
table_value := 1048544
;
when 10023 =>
table_value := 1048416
;
when 10024 =>
table_value := 1048272
;
when 10025 =>
table_value := 1048176
;
when 10026 =>
table_value := 1048048
;
when 10027 =>
table_value := 1047936
;
when 10028 =>
table_value := 1047808
;
when 10029 =>
table_value := 1047712
;
when 10030 =>
table_value := 1047584
;
when 10031 =>
table_value := 1047488
;
when 10032 =>
table_value := 1047360
;
when 10033 =>
table_value := 1047264
;
when 10034 =>
table_value := 1047168
;
when 10035 =>
table_value := 1047056
;
when 10036 =>
table_value := 1046976
;
when 10037 =>
table_value := 1046880
;
when 10038 =>
table_value := 1046800
;
when 10039 =>
table_value := 1046736
;
when 10040 =>
table_value := 1046672
;
when 10041 =>
table_value := 1046592
;
when 10042 =>
table_value := 1046528
;
when 10043 =>
table_value := 1046464
;
when 10044 =>
table_value := 1046400
;
when 10045 =>
table_value := 1046352
;
when 10046 =>
table_value := 1046304
;
when 10047 =>
table_value := 1046256
;
when 10048 =>
table_value := 1046208
;
when 10049 =>
table_value := 1046192
;
when 10050 =>
table_value := 1046160
;
when 10051 =>
table_value := 1046128
;
when 10052 =>
table_value := 1046112
;
when 10053 =>
table_value := 1046112
;
when 10054 =>
table_value := 1046112
;
when 10055 =>
table_value := 1046112
;
when 10056 =>
table_value := 1046112
;
when 10057 =>
table_value := 1046128
;
when 10058 =>
table_value := 1046160
;
when 10059 =>
table_value := 1046176
;
when 10060 =>
table_value := 1046176
;
when 10061 =>
table_value := 1046208
;
when 10062 =>
table_value := 1046240
;
when 10063 =>
table_value := 1046272
;
when 10064 =>
table_value := 1046288
;
when 10065 =>
table_value := 1046320
;
when 10066 =>
table_value := 1046368
;
when 10067 =>
table_value := 1046368
;
when 10068 =>
table_value := 1046416
;
when 10069 =>
table_value := 1046448
;
when 10070 =>
table_value := 1046480
;
when 10071 =>
table_value := 1046528
;
when 10072 =>
table_value := 1046560
;
when 10073 =>
table_value := 1046576
;
when 10074 =>
table_value := 1046592
;
when 10075 =>
table_value := 1046624
;
when 10076 =>
table_value := 1046656
;
when 10077 =>
table_value := 1046656
;
when 10078 =>
table_value := 1046656
;
when 10079 =>
table_value := 1046656
;
when 10080 =>
table_value := 1046656
;
when 10081 =>
table_value := 1046688
;
when 10082 =>
table_value := 1046688
;
when 10083 =>
table_value := 1046688
;
when 10084 =>
table_value := 1046704
;
when 10085 =>
table_value := 1046704
;
when 10086 =>
table_value := 1046672
;
when 10087 =>
table_value := 1046672
;
when 10088 =>
table_value := 1046656
;
when 10089 =>
table_value := 1046672
;
when 10090 =>
table_value := 1046672
;
when 10091 =>
table_value := 1046672
;
when 10092 =>
table_value := 1046688
;
when 10093 =>
table_value := 1046704
;
when 10094 =>
table_value := 1046720
;
when 10095 =>
table_value := 1046720
;
when 10096 =>
table_value := 1046752
;
when 10097 =>
table_value := 1046848
;
when 10098 =>
table_value := 1046832
;
when 10099 =>
table_value := 1046832
;
when 10100 =>
table_value := 1046864
;
when 10101 =>
table_value := 1046864
;
when 10102 =>
table_value := 1046880
;
when 10103 =>
table_value := 1046896
;
when 10104 =>
table_value := 1046928
;
when 10105 =>
table_value := 1046976
;
when 10106 =>
table_value := 1047008
;
when 10107 =>
table_value := 1047056
;
when 10108 =>
table_value := 1047120
;
when 10109 =>
table_value := 1047168
;
when 10110 =>
table_value := 1047248
;
when 10111 =>
table_value := 1047328
;
when 10112 =>
table_value := 1047392
;
when 10113 =>
table_value := 1047488
;
when 10114 =>
table_value := 1047584
;
when 10115 =>
table_value := 1047680
;
when 10116 =>
table_value := 1047792
;
when 10117 =>
table_value := 1047904
;
when 10118 =>
table_value := 1048032
;
when 10119 =>
table_value := 1048160
;
when 10120 =>
table_value := 1048288
;
when 10121 =>
table_value := 1048432
;
when 10122 =>
table_value := 1048560
;
when 10123 =>
table_value := 96
;
when 10124 =>
table_value := 256
;
when 10125 =>
table_value := 400
;
when 10126 =>
table_value := 576
;
when 10127 =>
table_value := 736
;
when 10128 =>
table_value := 912
;
when 10129 =>
table_value := 1088
;
when 10130 =>
table_value := 1248
;
when 10131 =>
table_value := 1424
;
when 10132 =>
table_value := 1600
;
when 10133 =>
table_value := 1776
;
when 10134 =>
table_value := 1952
;
when 10135 =>
table_value := 2112
;
when 10136 =>
table_value := 2288
;
when 10137 =>
table_value := 2464
;
when 10138 =>
table_value := 2624
;
when 10139 =>
table_value := 2800
;
when 10140 =>
table_value := 2976
;
when 10141 =>
table_value := 3136
;
when 10142 =>
table_value := 3296
;
when 10143 =>
table_value := 3472
;
when 10144 =>
table_value := 3616
;
when 10145 =>
table_value := 3760
;
when 10146 =>
table_value := 3904
;
when 10147 =>
table_value := 4016
;
when 10148 =>
table_value := 4160
;
when 10149 =>
table_value := 4272
;
when 10150 =>
table_value := 4400
;
when 10151 =>
table_value := 4512
;
when 10152 =>
table_value := 4624
;
when 10153 =>
table_value := 4736
;
when 10154 =>
table_value := 4848
;
when 10155 =>
table_value := 4944
;
when 10156 =>
table_value := 5040
;
when 10157 =>
table_value := 5120
;
when 10158 =>
table_value := 5200
;
when 10159 =>
table_value := 5248
;
when 10160 =>
table_value := 5328
;
when 10161 =>
table_value := 5392
;
when 10162 =>
table_value := 5472
;
when 10163 =>
table_value := 5504
;
when 10164 =>
table_value := 5568
;
when 10165 =>
table_value := 5616
;
when 10166 =>
table_value := 5680
;
when 10167 =>
table_value := 5728
;
when 10168 =>
table_value := 5792
;
when 10169 =>
table_value := 5856
;
when 10170 =>
table_value := 5920
;
when 10171 =>
table_value := 5952
;
when 10172 =>
table_value := 6016
;
when 10173 =>
table_value := 6064
;
when 10174 =>
table_value := 6112
;
when 10175 =>
table_value := 6160
;
when 10176 =>
table_value := 6192
;
when 10177 =>
table_value := 6224
;
when 10178 =>
table_value := 6256
;
when 10179 =>
table_value := 6288
;
when 10180 =>
table_value := 6320
;
when 10181 =>
table_value := 6336
;
when 10182 =>
table_value := 6384
;
when 10183 =>
table_value := 6416
;
when 10184 =>
table_value := 6432
;
when 10185 =>
table_value := 6464
;
when 10186 =>
table_value := 6480
;
when 10187 =>
table_value := 6496
;
when 10188 =>
table_value := 6528
;
when 10189 =>
table_value := 6544
;
when 10190 =>
table_value := 6560
;
when 10191 =>
table_value := 6560
;
when 10192 =>
table_value := 6592
;
when 10193 =>
table_value := 6592
;
when 10194 =>
table_value := 6576
;
when 10195 =>
table_value := 6560
;
when 10196 =>
table_value := 6560
;
when 10197 =>
table_value := 6544
;
when 10198 =>
table_value := 6512
;
when 10199 =>
table_value := 6496
;
when 10200 =>
table_value := 6480
;
when 10201 =>
table_value := 6448
;
when 10202 =>
table_value := 6416
;
when 10203 =>
table_value := 6368
;
when 10204 =>
table_value := 6336
;
when 10205 =>
table_value := 6288
;
when 10206 =>
table_value := 6256
;
when 10207 =>
table_value := 6208
;
when 10208 =>
table_value := 6160
;
when 10209 =>
table_value := 6096
;
when 10210 =>
table_value := 6064
;
when 10211 =>
table_value := 6000
;
when 10212 =>
table_value := 5952
;
when 10213 =>
table_value := 5888
;
when 10214 =>
table_value := 5856
;
when 10215 =>
table_value := 5792
;
when 10216 =>
table_value := 5728
;
when 10217 =>
table_value := 5680
;
when 10218 =>
table_value := 5632
;
when 10219 =>
table_value := 5568
;
when 10220 =>
table_value := 5504
;
when 10221 =>
table_value := 5456
;
when 10222 =>
table_value := 5376
;
when 10223 =>
table_value := 5312
;
when 10224 =>
table_value := 5216
;
when 10225 =>
table_value := 5152
;
when 10226 =>
table_value := 5056
;
when 10227 =>
table_value := 4992
;
when 10228 =>
table_value := 4880
;
when 10229 =>
table_value := 4816
;
when 10230 =>
table_value := 4736
;
when 10231 =>
table_value := 4624
;
when 10232 =>
table_value := 4544
;
when 10233 =>
table_value := 4432
;
when 10234 =>
table_value := 4352
;
when 10235 =>
table_value := 4240
;
when 10236 =>
table_value := 4160
;
when 10237 =>
table_value := 4064
;
when 10238 =>
table_value := 3952
;
when 10239 =>
table_value := 3856
;
when 10240 =>
table_value := 3776
;
when 10241 =>
table_value := 3680
;
when 10242 =>
table_value := 3584
;
when 10243 =>
table_value := 3488
;
when 10244 =>
table_value := 3392
;
when 10245 =>
table_value := 3312
;
when 10246 =>
table_value := 3216
;
when 10247 =>
table_value := 3120
;
when 10248 =>
table_value := 3040
;
when 10249 =>
table_value := 2944
;
when 10250 =>
table_value := 2864
;
when 10251 =>
table_value := 2800
;
when 10252 =>
table_value := 2704
;
when 10253 =>
table_value := 2640
;
when 10254 =>
table_value := 2560
;
when 10255 =>
table_value := 2496
;
when 10256 =>
table_value := 2432
;
when 10257 =>
table_value := 2368
;
when 10258 =>
table_value := 2288
;
when 10259 =>
table_value := 2240
;
when 10260 =>
table_value := 2176
;
when 10261 =>
table_value := 2128
;
when 10262 =>
table_value := 2080
;
when 10263 =>
table_value := 2000
;
when 10264 =>
table_value := 1936
;
when 10265 =>
table_value := 1888
;
when 10266 =>
table_value := 1808
;
when 10267 =>
table_value := 1760
;
when 10268 =>
table_value := 1680
;
when 10269 =>
table_value := 1616
;
when 10270 =>
table_value := 1552
;
when 10271 =>
table_value := 1456
;
when 10272 =>
table_value := 1392
;
when 10273 =>
table_value := 1296
;
when 10274 =>
table_value := 1232
;
when 10275 =>
table_value := 1168
;
when 10276 =>
table_value := 1104
;
when 10277 =>
table_value := 1024
;
when 10278 =>
table_value := 960
;
when 10279 =>
table_value := 912
;
when 10280 =>
table_value := 848
;
when 10281 =>
table_value := 784
;
when 10282 =>
table_value := 720
;
when 10283 =>
table_value := 672
;
when 10284 =>
table_value := 608
;
when 10285 =>
table_value := 528
;
when 10286 =>
table_value := 480
;
when 10287 =>
table_value := 384
;
when 10288 =>
table_value := 320
;
when 10289 =>
table_value := 224
;
when 10290 =>
table_value := 144
;
when 10291 =>
table_value := 64
;
when 10292 =>
table_value := 0
;
when 10293 =>
table_value := 1048496
;
when 10294 =>
table_value := 1048416
;
when 10295 =>
table_value := 1048320
;
when 10296 =>
table_value := 1048240
;
when 10297 =>
table_value := 1048144
;
when 10298 =>
table_value := 1048064
;
when 10299 =>
table_value := 1047984
;
when 10300 =>
table_value := 1047888
;
when 10301 =>
table_value := 1047792
;
when 10302 =>
table_value := 1047680
;
when 10303 =>
table_value := 1047600
;
when 10304 =>
table_value := 1047504
;
when 10305 =>
table_value := 1047408
;
when 10306 =>
table_value := 1047296
;
when 10307 =>
table_value := 1047216
;
when 10308 =>
table_value := 1047120
;
when 10309 =>
table_value := 1047024
;
when 10310 =>
table_value := 1046944
;
when 10311 =>
table_value := 1046848
;
when 10312 =>
table_value := 1046784
;
when 10313 =>
table_value := 1046704
;
when 10314 =>
table_value := 1046624
;
when 10315 =>
table_value := 1046544
;
when 10316 =>
table_value := 1046464
;
when 10317 =>
table_value := 1046400
;
when 10318 =>
table_value := 1046336
;
when 10319 =>
table_value := 1046272
;
when 10320 =>
table_value := 1046208
;
when 10321 =>
table_value := 1046176
;
when 10322 =>
table_value := 1046128
;
when 10323 =>
table_value := 1046096
;
when 10324 =>
table_value := 1046048
;
when 10325 =>
table_value := 1046032
;
when 10326 =>
table_value := 1046016
;
when 10327 =>
table_value := 1045984
;
when 10328 =>
table_value := 1045984
;
when 10329 =>
table_value := 1045984
;
when 10330 =>
table_value := 1045984
;
when 10331 =>
table_value := 1046000
;
when 10332 =>
table_value := 1046000
;
when 10333 =>
table_value := 1046016
;
when 10334 =>
table_value := 1046048
;
when 10335 =>
table_value := 1046080
;
when 10336 =>
table_value := 1046112
;
when 10337 =>
table_value := 1046144
;
when 10338 =>
table_value := 1046192
;
when 10339 =>
table_value := 1046224
;
when 10340 =>
table_value := 1046272
;
when 10341 =>
table_value := 1046336
;
when 10342 =>
table_value := 1046384
;
when 10343 =>
table_value := 1046448
;
when 10344 =>
table_value := 1046496
;
when 10345 =>
table_value := 1046560
;
when 10346 =>
table_value := 1046624
;
when 10347 =>
table_value := 1046688
;
when 10348 =>
table_value := 1046736
;
when 10349 =>
table_value := 1046800
;
when 10350 =>
table_value := 1046880
;
when 10351 =>
table_value := 1046912
;
when 10352 =>
table_value := 1046976
;
when 10353 =>
table_value := 1047040
;
when 10354 =>
table_value := 1047104
;
when 10355 =>
table_value := 1047168
;
when 10356 =>
table_value := 1047216
;
when 10357 =>
table_value := 1047264
;
when 10358 =>
table_value := 1047344
;
when 10359 =>
table_value := 1047408
;
when 10360 =>
table_value := 1047488
;
when 10361 =>
table_value := 1047536
;
when 10362 =>
table_value := 1047616
;
when 10363 =>
table_value := 1047664
;
when 10364 =>
table_value := 1047728
;
when 10365 =>
table_value := 1047776
;
when 10366 =>
table_value := 1047856
;
when 10367 =>
table_value := 1047904
;
when 10368 =>
table_value := 1047968
;
when 10369 =>
table_value := 1048016
;
when 10370 =>
table_value := 1048080
;
when 10371 =>
table_value := 1048128
;
when 10372 =>
table_value := 1048192
;
when 10373 =>
table_value := 1048256
;
when 10374 =>
table_value := 1048304
;
when 10375 =>
table_value := 1048368
;
when 10376 =>
table_value := 1048448
;
when 10377 =>
table_value := 1048512
;
when 10378 =>
table_value := 1048560
;
when 10379 =>
table_value := 16
;
when 10380 =>
table_value := 48
;
when 10381 =>
table_value := 112
;
when 10382 =>
table_value := 160
;
when 10383 =>
table_value := 192
;
when 10384 =>
table_value := 240
;
when 10385 =>
table_value := 272
;
when 10386 =>
table_value := 304
;
when 10387 =>
table_value := 336
;
when 10388 =>
table_value := 368
;
when 10389 =>
table_value := 400
;
when 10390 =>
table_value := 448
;
when 10391 =>
table_value := 480
;
when 10392 =>
table_value := 528
;
when 10393 =>
table_value := 576
;
when 10394 =>
table_value := 608
;
when 10395 =>
table_value := 656
;
when 10396 =>
table_value := 704
;
when 10397 =>
table_value := 752
;
when 10398 =>
table_value := 816
;
when 10399 =>
table_value := 832
;
when 10400 =>
table_value := 896
;
when 10401 =>
table_value := 928
;
when 10402 =>
table_value := 976
;
when 10403 =>
table_value := 1008
;
when 10404 =>
table_value := 1072
;
when 10405 =>
table_value := 1104
;
when 10406 =>
table_value := 1152
;
when 10407 =>
table_value := 1200
;
when 10408 =>
table_value := 1232
;
when 10409 =>
table_value := 1296
;
when 10410 =>
table_value := 1344
;
when 10411 =>
table_value := 1392
;
when 10412 =>
table_value := 1456
;
when 10413 =>
table_value := 1504
;
when 10414 =>
table_value := 1568
;
when 10415 =>
table_value := 1616
;
when 10416 =>
table_value := 1664
;
when 10417 =>
table_value := 1728
;
when 10418 =>
table_value := 1776
;
when 10419 =>
table_value := 1824
;
when 10420 =>
table_value := 1872
;
when 10421 =>
table_value := 1920
;
when 10422 =>
table_value := 1952
;
when 10423 =>
table_value := 1984
;
when 10424 =>
table_value := 2016
;
when 10425 =>
table_value := 2064
;
when 10426 =>
table_value := 2096
;
when 10427 =>
table_value := 2096
;
when 10428 =>
table_value := 2112
;
when 10429 =>
table_value := 2112
;
when 10430 =>
table_value := 2128
;
when 10431 =>
table_value := 2128
;
when 10432 =>
table_value := 2144
;
when 10433 =>
table_value := 2144
;
when 10434 =>
table_value := 2144
;
when 10435 =>
table_value := 2144
;
when 10436 =>
table_value := 2112
;
when 10437 =>
table_value := 2128
;
when 10438 =>
table_value := 2128
;
when 10439 =>
table_value := 2112
;
when 10440 =>
table_value := 2080
;
when 10441 =>
table_value := 2048
;
when 10442 =>
table_value := 2000
;
when 10443 =>
table_value := 1984
;
when 10444 =>
table_value := 1952
;
when 10445 =>
table_value := 1904
;
when 10446 =>
table_value := 1888
;
when 10447 =>
table_value := 1840
;
when 10448 =>
table_value := 1792
;
when 10449 =>
table_value := 1744
;
when 10450 =>
table_value := 1712
;
when 10451 =>
table_value := 1664
;
when 10452 =>
table_value := 1600
;
when 10453 =>
table_value := 1552
;
when 10454 =>
table_value := 1488
;
when 10455 =>
table_value := 1408
;
when 10456 =>
table_value := 1360
;
when 10457 =>
table_value := 1280
;
when 10458 =>
table_value := 1200
;
when 10459 =>
table_value := 1120
;
when 10460 =>
table_value := 1072
;
when 10461 =>
table_value := 976
;
when 10462 =>
table_value := 880
;
when 10463 =>
table_value := 800
;
when 10464 =>
table_value := 688
;
when 10465 =>
table_value := 608
;
when 10466 =>
table_value := 512
;
when 10467 =>
table_value := 384
;
when 10468 =>
table_value := 272
;
when 10469 =>
table_value := 160
;
when 10470 =>
table_value := 32
;
when 10471 =>
table_value := 1048496
;
when 10472 =>
table_value := 1048352
;
when 10473 =>
table_value := 1048224
;
when 10474 =>
table_value := 1048096
;
when 10475 =>
table_value := 1047936
;
when 10476 =>
table_value := 1047808
;
when 10477 =>
table_value := 1047664
;
when 10478 =>
table_value := 1047520
;
when 10479 =>
table_value := 1047376
;
when 10480 =>
table_value := 1047248
;
when 10481 =>
table_value := 1047104
;
when 10482 =>
table_value := 1046960
;
when 10483 =>
table_value := 1046800
;
when 10484 =>
table_value := 1046656
;
when 10485 =>
table_value := 1046512
;
when 10486 =>
table_value := 1046352
;
when 10487 =>
table_value := 1046208
;
when 10488 =>
table_value := 1046048
;
when 10489 =>
table_value := 1045904
;
when 10490 =>
table_value := 1045728
;
when 10491 =>
table_value := 1045600
;
when 10492 =>
table_value := 1045440
;
when 10493 =>
table_value := 1045296
;
when 10494 =>
table_value := 1045152
;
when 10495 =>
table_value := 1045024
;
when 10496 =>
table_value := 1044864
;
when 10497 =>
table_value := 1044720
;
when 10498 =>
table_value := 1044560
;
when 10499 =>
table_value := 1044416
;
when 10500 =>
table_value := 1044272
;
when 10501 =>
table_value := 1044112
;
when 10502 =>
table_value := 1043968
;
when 10503 =>
table_value := 1043824
;
when 10504 =>
table_value := 1043696
;
when 10505 =>
table_value := 1043568
;
when 10506 =>
table_value := 1043424
;
when 10507 =>
table_value := 1043296
;
when 10508 =>
table_value := 1043168
;
when 10509 =>
table_value := 1043040
;
when 10510 =>
table_value := 1042912
;
when 10511 =>
table_value := 1042800
;
when 10512 =>
table_value := 1042704
;
when 10513 =>
table_value := 1042608
;
when 10514 =>
table_value := 1042480
;
when 10515 =>
table_value := 1042368
;
when 10516 =>
table_value := 1042272
;
when 10517 =>
table_value := 1042176
;
when 10518 =>
table_value := 1042096
;
when 10519 =>
table_value := 1042016
;
when 10520 =>
table_value := 1041920
;
when 10521 =>
table_value := 1041856
;
when 10522 =>
table_value := 1041792
;
when 10523 =>
table_value := 1041712
;
when 10524 =>
table_value := 1041664
;
when 10525 =>
table_value := 1041616
;
when 10526 =>
table_value := 1041552
;
when 10527 =>
table_value := 1041520
;
when 10528 =>
table_value := 1041472
;
when 10529 =>
table_value := 1041456
;
when 10530 =>
table_value := 1041424
;
when 10531 =>
table_value := 1041392
;
when 10532 =>
table_value := 1041392
;
when 10533 =>
table_value := 1041360
;
when 10534 =>
table_value := 1041328
;
when 10535 =>
table_value := 1041296
;
when 10536 =>
table_value := 1041264
;
when 10537 =>
table_value := 1041248
;
when 10538 =>
table_value := 1041232
;
when 10539 =>
table_value := 1041216
;
when 10540 =>
table_value := 1041184
;
when 10541 =>
table_value := 1041168
;
when 10542 =>
table_value := 1041136
;
when 10543 =>
table_value := 1041104
;
when 10544 =>
table_value := 1041088
;
when 10545 =>
table_value := 1041040
;
when 10546 =>
table_value := 1041008
;
when 10547 =>
table_value := 1040960
;
when 10548 =>
table_value := 1040944
;
when 10549 =>
table_value := 1040928
;
when 10550 =>
table_value := 1040912
;
when 10551 =>
table_value := 1040864
;
when 10552 =>
table_value := 1040832
;
when 10553 =>
table_value := 1040800
;
when 10554 =>
table_value := 1040800
;
when 10555 =>
table_value := 1040784
;
when 10556 =>
table_value := 1040752
;
when 10557 =>
table_value := 1040720
;
when 10558 =>
table_value := 1040720
;
when 10559 =>
table_value := 1040704
;
when 10560 =>
table_value := 1040688
;
when 10561 =>
table_value := 1040688
;
when 10562 =>
table_value := 1040704
;
when 10563 =>
table_value := 1040704
;
when 10564 =>
table_value := 1040704
;
when 10565 =>
table_value := 1040704
;
when 10566 =>
table_value := 1040720
;
when 10567 =>
table_value := 1040736
;
when 10568 =>
table_value := 1040768
;
when 10569 =>
table_value := 1040784
;
when 10570 =>
table_value := 1040832
;
when 10571 =>
table_value := 1040864
;
when 10572 =>
table_value := 1040896
;
when 10573 =>
table_value := 1040928
;
when 10574 =>
table_value := 1040976
;
when 10575 =>
table_value := 1041024
;
when 10576 =>
table_value := 1041088
;
when 10577 =>
table_value := 1041152
;
when 10578 =>
table_value := 1041200
;
when 10579 =>
table_value := 1041280
;
when 10580 =>
table_value := 1041344
;
when 10581 =>
table_value := 1041424
;
when 10582 =>
table_value := 1041504
;
when 10583 =>
table_value := 1041568
;
when 10584 =>
table_value := 1041680
;
when 10585 =>
table_value := 1041776
;
when 10586 =>
table_value := 1041856
;
when 10587 =>
table_value := 1041968
;
when 10588 =>
table_value := 1042064
;
when 10589 =>
table_value := 1042176
;
when 10590 =>
table_value := 1042256
;
when 10591 =>
table_value := 1042336
;
when 10592 =>
table_value := 1042464
;
when 10593 =>
table_value := 1042560
;
when 10594 =>
table_value := 1042688
;
when 10595 =>
table_value := 1042800
;
when 10596 =>
table_value := 1042928
;
when 10597 =>
table_value := 1043024
;
when 10598 =>
table_value := 1043152
;
when 10599 =>
table_value := 1043264
;
when 10600 =>
table_value := 1043392
;
when 10601 =>
table_value := 1043520
;
when 10602 =>
table_value := 1043632
;
when 10603 =>
table_value := 1043744
;
when 10604 =>
table_value := 1043872
;
when 10605 =>
table_value := 1044016
;
when 10606 =>
table_value := 1044144
;
when 10607 =>
table_value := 1044288
;
when 10608 =>
table_value := 1044416
;
when 10609 =>
table_value := 1044576
;
when 10610 =>
table_value := 1044704
;
when 10611 =>
table_value := 1044848
;
when 10612 =>
table_value := 1044992
;
when 10613 =>
table_value := 1045120
;
when 10614 =>
table_value := 1045264
;
when 10615 =>
table_value := 1045408
;
when 10616 =>
table_value := 1045536
;
when 10617 =>
table_value := 1045664
;
when 10618 =>
table_value := 1045792
;
when 10619 =>
table_value := 1045920
;
when 10620 =>
table_value := 1046032
;
when 10621 =>
table_value := 1046160
;
when 10622 =>
table_value := 1046272
;
when 10623 =>
table_value := 1046384
;
when 10624 =>
table_value := 1046512
;
when 10625 =>
table_value := 1046624
;
when 10626 =>
table_value := 1046752
;
when 10627 =>
table_value := 1046864
;
when 10628 =>
table_value := 1046960
;
when 10629 =>
table_value := 1047072
;
when 10630 =>
table_value := 1047184
;
when 10631 =>
table_value := 1047264
;
when 10632 =>
table_value := 1047360
;
when 10633 =>
table_value := 1047440
;
when 10634 =>
table_value := 1047520
;
when 10635 =>
table_value := 1047584
;
when 10636 =>
table_value := 1047696
;
when 10637 =>
table_value := 1047760
;
when 10638 =>
table_value := 1047824
;
when 10639 =>
table_value := 1047904
;
when 10640 =>
table_value := 1047968
;
when 10641 =>
table_value := 1048032
;
when 10642 =>
table_value := 1048096
;
when 10643 =>
table_value := 1048144
;
when 10644 =>
table_value := 1048224
;
when 10645 =>
table_value := 1048272
;
when 10646 =>
table_value := 1048368
;
when 10647 =>
table_value := 1048416
;
when 10648 =>
table_value := 1048480
;
when 10649 =>
table_value := 1048544
;
when 10650 =>
table_value := 0
;
when 10651 =>
table_value := 80
;
when 10652 =>
table_value := 144
;
when 10653 =>
table_value := 208
;
when 10654 =>
table_value := 256
;
when 10655 =>
table_value := 320
;
when 10656 =>
table_value := 352
;
when 10657 =>
table_value := 400
;
when 10658 =>
table_value := 464
;
when 10659 =>
table_value := 528
;
when 10660 =>
table_value := 560
;
when 10661 =>
table_value := 640
;
when 10662 =>
table_value := 672
;
when 10663 =>
table_value := 736
;
when 10664 =>
table_value := 752
;
when 10665 =>
table_value := 800
;
when 10666 =>
table_value := 848
;
when 10667 =>
table_value := 880
;
when 10668 =>
table_value := 928
;
when 10669 =>
table_value := 976
;
when 10670 =>
table_value := 1008
;
when 10671 =>
table_value := 1040
;
when 10672 =>
table_value := 1072
;
when 10673 =>
table_value := 1136
;
when 10674 =>
table_value := 1152
;
when 10675 =>
table_value := 1184
;
when 10676 =>
table_value := 1216
;
when 10677 =>
table_value := 1248
;
when 10678 =>
table_value := 1248
;
when 10679 =>
table_value := 1296
;
when 10680 =>
table_value := 1312
;
when 10681 =>
table_value := 1328
;
when 10682 =>
table_value := 1344
;
when 10683 =>
table_value := 1360
;
when 10684 =>
table_value := 1376
;
when 10685 =>
table_value := 1392
;
when 10686 =>
table_value := 1392
;
when 10687 =>
table_value := 1408
;
when 10688 =>
table_value := 1424
;
when 10689 =>
table_value := 1424
;
when 10690 =>
table_value := 1424
;
when 10691 =>
table_value := 1408
;
when 10692 =>
table_value := 1440
;
when 10693 =>
table_value := 1440
;
when 10694 =>
table_value := 1424
;
when 10695 =>
table_value := 1440
;
when 10696 =>
table_value := 1456
;
when 10697 =>
table_value := 1456
;
when 10698 =>
table_value := 1456
;
when 10699 =>
table_value := 1472
;
when 10700 =>
table_value := 1456
;
when 10701 =>
table_value := 1456
;
when 10702 =>
table_value := 1440
;
when 10703 =>
table_value := 1440
;
when 10704 =>
table_value := 1456
;
when 10705 =>
table_value := 1456
;
when 10706 =>
table_value := 1440
;
when 10707 =>
table_value := 1440
;
when 10708 =>
table_value := 1424
;
when 10709 =>
table_value := 1408
;
when 10710 =>
table_value := 1392
;
when 10711 =>
table_value := 1360
;
when 10712 =>
table_value := 1344
;
when 10713 =>
table_value := 1328
;
when 10714 =>
table_value := 1328
;
when 10715 =>
table_value := 1312
;
when 10716 =>
table_value := 1296
;
when 10717 =>
table_value := 1264
;
when 10718 =>
table_value := 1248
;
when 10719 =>
table_value := 1232
;
when 10720 =>
table_value := 1232
;
when 10721 =>
table_value := 1216
;
when 10722 =>
table_value := 1184
;
when 10723 =>
table_value := 1168
;
when 10724 =>
table_value := 1120
;
when 10725 =>
table_value := 1104
;
when 10726 =>
table_value := 1072
;
when 10727 =>
table_value := 1056
;
when 10728 =>
table_value := 1024
;
when 10729 =>
table_value := 1008
;
when 10730 =>
table_value := 1008
;
when 10731 =>
table_value := 992
;
when 10732 =>
table_value := 960
;
when 10733 =>
table_value := 944
;
when 10734 =>
table_value := 944
;
when 10735 =>
table_value := 912
;
when 10736 =>
table_value := 896
;
when 10737 =>
table_value := 880
;
when 10738 =>
table_value := 848
;
when 10739 =>
table_value := 832
;
when 10740 =>
table_value := 800
;
when 10741 =>
table_value := 784
;
when 10742 =>
table_value := 736
;
when 10743 =>
table_value := 720
;
when 10744 =>
table_value := 656
;
when 10745 =>
table_value := 640
;
when 10746 =>
table_value := 608
;
when 10747 =>
table_value := 576
;
when 10748 =>
table_value := 544
;
when 10749 =>
table_value := 512
;
when 10750 =>
table_value := 464
;
when 10751 =>
table_value := 400
;
when 10752 =>
table_value := 384
;
when 10753 =>
table_value := 352
;
when 10754 =>
table_value := 304
;
when 10755 =>
table_value := 272
;
when 10756 =>
table_value := 240
;
when 10757 =>
table_value := 208
;
when 10758 =>
table_value := 176
;
when 10759 =>
table_value := 144
;
when 10760 =>
table_value := 80
;
when 10761 =>
table_value := 64
;
when 10762 =>
table_value := 32
;
when 10763 =>
table_value := 0
;
when 10764 =>
table_value := 0
;
when 10765 =>
table_value := 1048544
;
when 10766 =>
table_value := 1048512
;
when 10767 =>
table_value := 1048496
;
when 10768 =>
table_value := 1048496
;
when 10769 =>
table_value := 1048464
;
when 10770 =>
table_value := 1048448
;
when 10771 =>
table_value := 1048432
;
when 10772 =>
table_value := 1048400
;
when 10773 =>
table_value := 1048400
;
when 10774 =>
table_value := 1048400
;
when 10775 =>
table_value := 1048384
;
when 10776 =>
table_value := 1048384
;
when 10777 =>
table_value := 1048416
;
when 10778 =>
table_value := 1048448
;
when 10779 =>
table_value := 1048464
;
when 10780 =>
table_value := 1048496
;
when 10781 =>
table_value := 1048528
;
when 10782 =>
table_value := 0
;
when 10783 =>
table_value := 48
;
when 10784 =>
table_value := 80
;
when 10785 =>
table_value := 144
;
when 10786 =>
table_value := 240
;
when 10787 =>
table_value := 288
;
when 10788 =>
table_value := 352
;
when 10789 =>
table_value := 416
;
when 10790 =>
table_value := 480
;
when 10791 =>
table_value := 544
;
when 10792 =>
table_value := 640
;
when 10793 =>
table_value := 704
;
when 10794 =>
table_value := 800
;
when 10795 =>
table_value := 896
;
when 10796 =>
table_value := 976
;
when 10797 =>
table_value := 1056
;
when 10798 =>
table_value := 1152
;
when 10799 =>
table_value := 1248
;
when 10800 =>
table_value := 1344
;
when 10801 =>
table_value := 1440
;
when 10802 =>
table_value := 1536
;
when 10803 =>
table_value := 1632
;
when 10804 =>
table_value := 1744
;
when 10805 =>
table_value := 1840
;
when 10806 =>
table_value := 1936
;
when 10807 =>
table_value := 2048
;
when 10808 =>
table_value := 2160
;
when 10809 =>
table_value := 2240
;
when 10810 =>
table_value := 2368
;
when 10811 =>
table_value := 2464
;
when 10812 =>
table_value := 2576
;
when 10813 =>
table_value := 2688
;
when 10814 =>
table_value := 2784
;
when 10815 =>
table_value := 2896
;
when 10816 =>
table_value := 3008
;
when 10817 =>
table_value := 3104
;
when 10818 =>
table_value := 3200
;
when 10819 =>
table_value := 3296
;
when 10820 =>
table_value := 3392
;
when 10821 =>
table_value := 3472
;
when 10822 =>
table_value := 3552
;
when 10823 =>
table_value := 3632
;
when 10824 =>
table_value := 3712
;
when 10825 =>
table_value := 3776
;
when 10826 =>
table_value := 3840
;
when 10827 =>
table_value := 3920
;
when 10828 =>
table_value := 3968
;
when 10829 =>
table_value := 4016
;
when 10830 =>
table_value := 4048
;
when 10831 =>
table_value := 4064
;
when 10832 =>
table_value := 4096
;
when 10833 =>
table_value := 4112
;
when 10834 =>
table_value := 4096
;
when 10835 =>
table_value := 4128
;
when 10836 =>
table_value := 4112
;
when 10837 =>
table_value := 4080
;
when 10838 =>
table_value := 4048
;
when 10839 =>
table_value := 4016
;
when 10840 =>
table_value := 3968
;
when 10841 =>
table_value := 3904
;
when 10842 =>
table_value := 3872
;
when 10843 =>
table_value := 3808
;
when 10844 =>
table_value := 3728
;
when 10845 =>
table_value := 3648
;
when 10846 =>
table_value := 3584
;
when 10847 =>
table_value := 3520
;
when 10848 =>
table_value := 3424
;
when 10849 =>
table_value := 3328
;
when 10850 =>
table_value := 3248
;
when 10851 =>
table_value := 3184
;
when 10852 =>
table_value := 3072
;
when 10853 =>
table_value := 2992
;
when 10854 =>
table_value := 2912
;
when 10855 =>
table_value := 2816
;
when 10856 =>
table_value := 2720
;
when 10857 =>
table_value := 2656
;
when 10858 =>
table_value := 2560
;
when 10859 =>
table_value := 2480
;
when 10860 =>
table_value := 2400
;
when 10861 =>
table_value := 2336
;
when 10862 =>
table_value := 2240
;
when 10863 =>
table_value := 2192
;
when 10864 =>
table_value := 2144
;
when 10865 =>
table_value := 2080
;
when 10866 =>
table_value := 2032
;
when 10867 =>
table_value := 1984
;
when 10868 =>
table_value := 1920
;
when 10869 =>
table_value := 1872
;
when 10870 =>
table_value := 1840
;
when 10871 =>
table_value := 1824
;
when 10872 =>
table_value := 1792
;
when 10873 =>
table_value := 1776
;
when 10874 =>
table_value := 1760
;
when 10875 =>
table_value := 1728
;
when 10876 =>
table_value := 1728
;
when 10877 =>
table_value := 1712
;
when 10878 =>
table_value := 1696
;
when 10879 =>
table_value := 1696
;
when 10880 =>
table_value := 1664
;
when 10881 =>
table_value := 1648
;
when 10882 =>
table_value := 1632
;
when 10883 =>
table_value := 1632
;
when 10884 =>
table_value := 1616
;
when 10885 =>
table_value := 1600
;
when 10886 =>
table_value := 1600
;
when 10887 =>
table_value := 1584
;
when 10888 =>
table_value := 1584
;
when 10889 =>
table_value := 1584
;
when 10890 =>
table_value := 1584
;
when 10891 =>
table_value := 1568
;
when 10892 =>
table_value := 1584
;
when 10893 =>
table_value := 1584
;
when 10894 =>
table_value := 1584
;
when 10895 =>
table_value := 1552
;
when 10896 =>
table_value := 1552
;
when 10897 =>
table_value := 1552
;
when 10898 =>
table_value := 1536
;
when 10899 =>
table_value := 1536
;
when 10900 =>
table_value := 1520
;
when 10901 =>
table_value := 1520
;
when 10902 =>
table_value := 1536
;
when 10903 =>
table_value := 1520
;
when 10904 =>
table_value := 1520
;
when 10905 =>
table_value := 1520
;
when 10906 =>
table_value := 1520
;
when 10907 =>
table_value := 1504
;
when 10908 =>
table_value := 1504
;
when 10909 =>
table_value := 1504
;
when 10910 =>
table_value := 1520
;
when 10911 =>
table_value := 1504
;
when 10912 =>
table_value := 1520
;
when 10913 =>
table_value := 1520
;
when 10914 =>
table_value := 1520
;
when 10915 =>
table_value := 1520
;
when 10916 =>
table_value := 1536
;
when 10917 =>
table_value := 1536
;
when 10918 =>
table_value := 1536
;
when 10919 =>
table_value := 1536
;
when 10920 =>
table_value := 1536
;
when 10921 =>
table_value := 1536
;
when 10922 =>
table_value := 1536
;
when 10923 =>
table_value := 1536
;
when 10924 =>
table_value := 1552
;
when 10925 =>
table_value := 1568
;
when 10926 =>
table_value := 1584
;
when 10927 =>
table_value := 1584
;
when 10928 =>
table_value := 1616
;
when 10929 =>
table_value := 1616
;
when 10930 =>
table_value := 1632
;
when 10931 =>
table_value := 1664
;
when 10932 =>
table_value := 1680
;
when 10933 =>
table_value := 1696
;
when 10934 =>
table_value := 1712
;
when 10935 =>
table_value := 1760
;
when 10936 =>
table_value := 1776
;
when 10937 =>
table_value := 1792
;
when 10938 =>
table_value := 1824
;
when 10939 =>
table_value := 1856
;
when 10940 =>
table_value := 1904
;
when 10941 =>
table_value := 1904
;
when 10942 =>
table_value := 1952
;
when 10943 =>
table_value := 1984
;
when 10944 =>
table_value := 2000
;
when 10945 =>
table_value := 2032
;
when 10946 =>
table_value := 2080
;
when 10947 =>
table_value := 2128
;
when 10948 =>
table_value := 2160
;
when 10949 =>
table_value := 2192
;
when 10950 =>
table_value := 2224
;
when 10951 =>
table_value := 2256
;
when 10952 =>
table_value := 2304
;
when 10953 =>
table_value := 2320
;
when 10954 =>
table_value := 2368
;
when 10955 =>
table_value := 2432
;
when 10956 =>
table_value := 2464
;
when 10957 =>
table_value := 2528
;
when 10958 =>
table_value := 2560
;
when 10959 =>
table_value := 2608
;
when 10960 =>
table_value := 2656
;
when 10961 =>
table_value := 2688
;
when 10962 =>
table_value := 2752
;
when 10963 =>
table_value := 2800
;
when 10964 =>
table_value := 2848
;
when 10965 =>
table_value := 2896
;
when 10966 =>
table_value := 2928
;
when 10967 =>
table_value := 2976
;
when 10968 =>
table_value := 3040
;
when 10969 =>
table_value := 3072
;
when 10970 =>
table_value := 3120
;
when 10971 =>
table_value := 3184
;
when 10972 =>
table_value := 3200
;
when 10973 =>
table_value := 3264
;
when 10974 =>
table_value := 3296
;
when 10975 =>
table_value := 3328
;
when 10976 =>
table_value := 3360
;
when 10977 =>
table_value := 3408
;
when 10978 =>
table_value := 3408
;
when 10979 =>
table_value := 3408
;
when 10980 =>
table_value := 3456
;
when 10981 =>
table_value := 3472
;
when 10982 =>
table_value := 3488
;
when 10983 =>
table_value := 3488
;
when 10984 =>
table_value := 3488
;
when 10985 =>
table_value := 3488
;
when 10986 =>
table_value := 3504
;
when 10987 =>
table_value := 3488
;
when 10988 =>
table_value := 3504
;
when 10989 =>
table_value := 3488
;
when 10990 =>
table_value := 3472
;
when 10991 =>
table_value := 3472
;
when 10992 =>
table_value := 3488
;
when 10993 =>
table_value := 3472
;
when 10994 =>
table_value := 3456
;
when 10995 =>
table_value := 3440
;
when 10996 =>
table_value := 3424
;
when 10997 =>
table_value := 3392
;
when 10998 =>
table_value := 3360
;
when 10999 =>
table_value := 3312
;
when 11000 =>
table_value := 3280
;
when 11001 =>
table_value := 3248
;
when 11002 =>
table_value := 3216
;
when 11003 =>
table_value := 3168
;
when 11004 =>
table_value := 3120
;
when 11005 =>
table_value := 3088
;
when 11006 =>
table_value := 3056
;
when 11007 =>
table_value := 3008
;
when 11008 =>
table_value := 2976
;
when 11009 =>
table_value := 2912
;
when 11010 =>
table_value := 2864
;
when 11011 =>
table_value := 2816
;
when 11012 =>
table_value := 2752
;
when 11013 =>
table_value := 2688
;
when 11014 =>
table_value := 2608
;
when 11015 =>
table_value := 2560
;
when 11016 =>
table_value := 2480
;
when 11017 =>
table_value := 2400
;
when 11018 =>
table_value := 2336
;
when 11019 =>
table_value := 2256
;
when 11020 =>
table_value := 2192
;
when 11021 =>
table_value := 2128
;
when 11022 =>
table_value := 2080
;
when 11023 =>
table_value := 2000
;
when 11024 =>
table_value := 1920
;
when 11025 =>
table_value := 1856
;
when 11026 =>
table_value := 1792
;
when 11027 =>
table_value := 1728
;
when 11028 =>
table_value := 1664
;
when 11029 =>
table_value := 1632
;
when 11030 =>
table_value := 1552
;
when 11031 =>
table_value := 1536
;
when 11032 =>
table_value := 1488
;
when 11033 =>
table_value := 1456
;
when 11034 =>
table_value := 1408
;
when 11035 =>
table_value := 1392
;
when 11036 =>
table_value := 1360
;
when 11037 =>
table_value := 1344
;
when 11038 =>
table_value := 1312
;
when 11039 =>
table_value := 1296
;
when 11040 =>
table_value := 1264
;
when 11041 =>
table_value := 1248
;
when 11042 =>
table_value := 1248
;
when 11043 =>
table_value := 1216
;
when 11044 =>
table_value := 1216
;
when 11045 =>
table_value := 1216
;
when 11046 =>
table_value := 1200
;
when 11047 =>
table_value := 1184
;
when 11048 =>
table_value := 1216
;
when 11049 =>
table_value := 1200
;
when 11050 =>
table_value := 1216
;
when 11051 =>
table_value := 1248
;
when 11052 =>
table_value := 1248
;
when 11053 =>
table_value := 1264
;
when 11054 =>
table_value := 1280
;
when 11055 =>
table_value := 1312
;
when 11056 =>
table_value := 1312
;
when 11057 =>
table_value := 1344
;
when 11058 =>
table_value := 1344
;
when 11059 =>
table_value := 1360
;
when 11060 =>
table_value := 1392
;
when 11061 =>
table_value := 1376
;
when 11062 =>
table_value := 1392
;
when 11063 =>
table_value := 1392
;
when 11064 =>
table_value := 1376
;
when 11065 =>
table_value := 1392
;
when 11066 =>
table_value := 1392
;
when 11067 =>
table_value := 1376
;
when 11068 =>
table_value := 1376
;
when 11069 =>
table_value := 1344
;
when 11070 =>
table_value := 1328
;
when 11071 =>
table_value := 1328
;
when 11072 =>
table_value := 1312
;
when 11073 =>
table_value := 1296
;
when 11074 =>
table_value := 1264
;
when 11075 =>
table_value := 1264
;
when 11076 =>
table_value := 1216
;
when 11077 =>
table_value := 1200
;
when 11078 =>
table_value := 1184
;
when 11079 =>
table_value := 1152
;
when 11080 =>
table_value := 1120
;
when 11081 =>
table_value := 1088
;
when 11082 =>
table_value := 1072
;
when 11083 =>
table_value := 1056
;
when 11084 =>
table_value := 1008
;
when 11085 =>
table_value := 992
;
when 11086 =>
table_value := 976
;
when 11087 =>
table_value := 944
;
when 11088 =>
table_value := 912
;
when 11089 =>
table_value := 880
;
when 11090 =>
table_value := 864
;
when 11091 =>
table_value := 848
;
when 11092 =>
table_value := 816
;
when 11093 =>
table_value := 816
;
when 11094 =>
table_value := 800
;
when 11095 =>
table_value := 816
;
when 11096 =>
table_value := 800
;
when 11097 =>
table_value := 800
;
when 11098 =>
table_value := 784
;
when 11099 =>
table_value := 800
;
when 11100 =>
table_value := 800
;
when 11101 =>
table_value := 816
;
when 11102 =>
table_value := 832
;
when 11103 =>
table_value := 848
;
when 11104 =>
table_value := 880
;
when 11105 =>
table_value := 880
;
when 11106 =>
table_value := 928
;
when 11107 =>
table_value := 960
;
when 11108 =>
table_value := 976
;
when 11109 =>
table_value := 1024
;
when 11110 =>
table_value := 1040
;
when 11111 =>
table_value := 1104
;
when 11112 =>
table_value := 1152
;
when 11113 =>
table_value := 1200
;
when 11114 =>
table_value := 1264
;
when 11115 =>
table_value := 1312
;
when 11116 =>
table_value := 1376
;
when 11117 =>
table_value := 1440
;
when 11118 =>
table_value := 1520
;
when 11119 =>
table_value := 1584
;
when 11120 =>
table_value := 1648
;
when 11121 =>
table_value := 1696
;
when 11122 =>
table_value := 1776
;
when 11123 =>
table_value := 1840
;
when 11124 =>
table_value := 1888
;
when 11125 =>
table_value := 1920
;
when 11126 =>
table_value := 1984
;
when 11127 =>
table_value := 2032
;
when 11128 =>
table_value := 2064
;
when 11129 =>
table_value := 2128
;
when 11130 =>
table_value := 2192
;
when 11131 =>
table_value := 2224
;
when 11132 =>
table_value := 2272
;
when 11133 =>
table_value := 2320
;
when 11134 =>
table_value := 2352
;
when 11135 =>
table_value := 2416
;
when 11136 =>
table_value := 2416
;
when 11137 =>
table_value := 2464
;
when 11138 =>
table_value := 2480
;
when 11139 =>
table_value := 2512
;
when 11140 =>
table_value := 2512
;
when 11141 =>
table_value := 2528
;
when 11142 =>
table_value := 2544
;
when 11143 =>
table_value := 2528
;
when 11144 =>
table_value := 2528
;
when 11145 =>
table_value := 2496
;
when 11146 =>
table_value := 2496
;
when 11147 =>
table_value := 2464
;
when 11148 =>
table_value := 2448
;
when 11149 =>
table_value := 2400
;
when 11150 =>
table_value := 2368
;
when 11151 =>
table_value := 2320
;
when 11152 =>
table_value := 2288
;
when 11153 =>
table_value := 2256
;
when 11154 =>
table_value := 2192
;
when 11155 =>
table_value := 2144
;
when 11156 =>
table_value := 2080
;
when 11157 =>
table_value := 2016
;
when 11158 =>
table_value := 1968
;
when 11159 =>
table_value := 1872
;
when 11160 =>
table_value := 1824
;
when 11161 =>
table_value := 1744
;
when 11162 =>
table_value := 1664
;
when 11163 =>
table_value := 1568
;
when 11164 =>
table_value := 1472
;
when 11165 =>
table_value := 1392
;
when 11166 =>
table_value := 1328
;
when 11167 =>
table_value := 1232
;
when 11168 =>
table_value := 1152
;
when 11169 =>
table_value := 1072
;
when 11170 =>
table_value := 976
;
when 11171 =>
table_value := 880
;
when 11172 =>
table_value := 768
;
when 11173 =>
table_value := 672
;
when 11174 =>
table_value := 560
;
when 11175 =>
table_value := 448
;
when 11176 =>
table_value := 352
;
when 11177 =>
table_value := 240
;
when 11178 =>
table_value := 144
;
when 11179 =>
table_value := 32
;
when 11180 =>
table_value := 1048528
;
when 11181 =>
table_value := 1048416
;
when 11182 =>
table_value := 1048336
;
when 11183 =>
table_value := 1048224
;
when 11184 =>
table_value := 1048144
;
when 11185 =>
table_value := 1048032
;
when 11186 =>
table_value := 1047936
;
when 11187 =>
table_value := 1047872
;
when 11188 =>
table_value := 1047776
;
when 11189 =>
table_value := 1047696
;
when 11190 =>
table_value := 1047616
;
when 11191 =>
table_value := 1047552
;
when 11192 =>
table_value := 1047456
;
when 11193 =>
table_value := 1047408
;
when 11194 =>
table_value := 1047328
;
when 11195 =>
table_value := 1047248
;
when 11196 =>
table_value := 1047200
;
when 11197 =>
table_value := 1047136
;
when 11198 =>
table_value := 1047072
;
when 11199 =>
table_value := 1047024
;
when 11200 =>
table_value := 1046960
;
when 11201 =>
table_value := 1046912
;
when 11202 =>
table_value := 1046864
;
when 11203 =>
table_value := 1046800
;
when 11204 =>
table_value := 1046768
;
when 11205 =>
table_value := 1046704
;
when 11206 =>
table_value := 1046672
;
when 11207 =>
table_value := 1046608
;
when 11208 =>
table_value := 1046576
;
when 11209 =>
table_value := 1046528
;
when 11210 =>
table_value := 1046496
;
when 11211 =>
table_value := 1046448
;
when 11212 =>
table_value := 1046416
;
when 11213 =>
table_value := 1046384
;
when 11214 =>
table_value := 1046352
;
when 11215 =>
table_value := 1046336
;
when 11216 =>
table_value := 1046304
;
when 11217 =>
table_value := 1046288
;
when 11218 =>
table_value := 1046240
;
when 11219 =>
table_value := 1046192
;
when 11220 =>
table_value := 1046176
;
when 11221 =>
table_value := 1046144
;
when 11222 =>
table_value := 1046128
;
when 11223 =>
table_value := 1046096
;
when 11224 =>
table_value := 1046048
;
when 11225 =>
table_value := 1046032
;
when 11226 =>
table_value := 1046000
;
when 11227 =>
table_value := 1045968
;
when 11228 =>
table_value := 1045936
;
when 11229 =>
table_value := 1045904
;
when 11230 =>
table_value := 1045872
;
when 11231 =>
table_value := 1045840
;
when 11232 =>
table_value := 1045792
;
when 11233 =>
table_value := 1045776
;
when 11234 =>
table_value := 1045728
;
when 11235 =>
table_value := 1045712
;
when 11236 =>
table_value := 1045680
;
when 11237 =>
table_value := 1045664
;
when 11238 =>
table_value := 1045616
;
when 11239 =>
table_value := 1045584
;
when 11240 =>
table_value := 1045536
;
when 11241 =>
table_value := 1045520
;
when 11242 =>
table_value := 1045472
;
when 11243 =>
table_value := 1045440
;
when 11244 =>
table_value := 1045392
;
when 11245 =>
table_value := 1045344
;
when 11246 =>
table_value := 1045312
;
when 11247 =>
table_value := 1045264
;
when 11248 =>
table_value := 1045200
;
when 11249 =>
table_value := 1045152
;
when 11250 =>
table_value := 1045104
;
when 11251 =>
table_value := 1045056
;
when 11252 =>
table_value := 1044976
;
when 11253 =>
table_value := 1044944
;
when 11254 =>
table_value := 1044880
;
when 11255 =>
table_value := 1044848
;
when 11256 =>
table_value := 1044784
;
when 11257 =>
table_value := 1044736
;
when 11258 =>
table_value := 1044704
;
when 11259 =>
table_value := 1044640
;
when 11260 =>
table_value := 1044592
;
when 11261 =>
table_value := 1044544
;
when 11262 =>
table_value := 1044480
;
when 11263 =>
table_value := 1044432
;
when 11264 =>
table_value := 1044416
;
when 11265 =>
table_value := 1044336
;
when 11266 =>
table_value := 1044352
;
when 11267 =>
table_value := 1044304
;
when 11268 =>
table_value := 1044272
;
when 11269 =>
table_value := 1044240
;
when 11270 =>
table_value := 1044208
;
when 11271 =>
table_value := 1044192
;
when 11272 =>
table_value := 1044160
;
when 11273 =>
table_value := 1044144
;
when 11274 =>
table_value := 1044112
;
when 11275 =>
table_value := 1044112
;
when 11276 =>
table_value := 1044080
;
when 11277 =>
table_value := 1044080
;
when 11278 =>
table_value := 1044048
;
when 11279 =>
table_value := 1044048
;
when 11280 =>
table_value := 1044048
;
when 11281 =>
table_value := 1044064
;
when 11282 =>
table_value := 1044064
;
when 11283 =>
table_value := 1044064
;
when 11284 =>
table_value := 1044048
;
when 11285 =>
table_value := 1044064
;
when 11286 =>
table_value := 1044048
;
when 11287 =>
table_value := 1044048
;
when 11288 =>
table_value := 1044048
;
when 11289 =>
table_value := 1044064
;
when 11290 =>
table_value := 1044080
;
when 11291 =>
table_value := 1044048
;
when 11292 =>
table_value := 1044064
;
when 11293 =>
table_value := 1044080
;
when 11294 =>
table_value := 1044064
;
when 11295 =>
table_value := 1044080
;
when 11296 =>
table_value := 1044096
;
when 11297 =>
table_value := 1044096
;
when 11298 =>
table_value := 1044096
;
when 11299 =>
table_value := 1044096
;
when 11300 =>
table_value := 1044096
;
when 11301 =>
table_value := 1044096
;
when 11302 =>
table_value := 1044096
;
when 11303 =>
table_value := 1044080
;
when 11304 =>
table_value := 1044096
;
when 11305 =>
table_value := 1044096
;
when 11306 =>
table_value := 1044080
;
when 11307 =>
table_value := 1044096
;
when 11308 =>
table_value := 1044112
;
when 11309 =>
table_value := 1044112
;
when 11310 =>
table_value := 1044112
;
when 11311 =>
table_value := 1044096
;
when 11312 =>
table_value := 1044112
;
when 11313 =>
table_value := 1044112
;
when 11314 =>
table_value := 1044128
;
when 11315 =>
table_value := 1044096
;
when 11316 =>
table_value := 1044112
;
when 11317 =>
table_value := 1044096
;
when 11318 =>
table_value := 1044096
;
when 11319 =>
table_value := 1044080
;
when 11320 =>
table_value := 1044096
;
when 11321 =>
table_value := 1044080
;
when 11322 =>
table_value := 1044080
;
when 11323 =>
table_value := 1044064
;
when 11324 =>
table_value := 1044064
;
when 11325 =>
table_value := 1044032
;
when 11326 =>
table_value := 1044032
;
when 11327 =>
table_value := 1044032
;
when 11328 =>
table_value := 1044016
;
when 11329 =>
table_value := 1044000
;
when 11330 =>
table_value := 1044016
;
when 11331 =>
table_value := 1044016
;
when 11332 =>
table_value := 1044000
;
when 11333 =>
table_value := 1043968
;
when 11334 =>
table_value := 1043968
;
when 11335 =>
table_value := 1043968
;
when 11336 =>
table_value := 1043984
;
when 11337 =>
table_value := 1043952
;
when 11338 =>
table_value := 1043968
;
when 11339 =>
table_value := 1043952
;
when 11340 =>
table_value := 1043968
;
when 11341 =>
table_value := 1043952
;
when 11342 =>
table_value := 1043952
;
when 11343 =>
table_value := 1043952
;
when 11344 =>
table_value := 1043936
;
when 11345 =>
table_value := 1043952
;
when 11346 =>
table_value := 1043936
;
when 11347 =>
table_value := 1043952
;
when 11348 =>
table_value := 1043936
;
when 11349 =>
table_value := 1043952
;
when 11350 =>
table_value := 1043936
;
when 11351 =>
table_value := 1043936
;
when 11352 =>
table_value := 1043920
;
when 11353 =>
table_value := 1043920
;
when 11354 =>
table_value := 1043888
;
when 11355 =>
table_value := 1043888
;
when 11356 =>
table_value := 1043872
;
when 11357 =>
table_value := 1043856
;
when 11358 =>
table_value := 1043840
;
when 11359 =>
table_value := 1043808
;
when 11360 =>
table_value := 1043808
;
when 11361 =>
table_value := 1043808
;
when 11362 =>
table_value := 1043792
;
when 11363 =>
table_value := 1043760
;
when 11364 =>
table_value := 1043776
;
when 11365 =>
table_value := 1043744
;
when 11366 =>
table_value := 1043744
;
when 11367 =>
table_value := 1043728
;
when 11368 =>
table_value := 1043728
;
when 11369 =>
table_value := 1043712
;
when 11370 =>
table_value := 1043712
;
when 11371 =>
table_value := 1043728
;
when 11372 =>
table_value := 1043712
;
when 11373 =>
table_value := 1043696
;
when 11374 =>
table_value := 1043696
;
when 11375 =>
table_value := 1043696
;
when 11376 =>
table_value := 1043696
;
when 11377 =>
table_value := 1043680
;
when 11378 =>
table_value := 1043680
;
when 11379 =>
table_value := 1043696
;
when 11380 =>
table_value := 1043728
;
when 11381 =>
table_value := 1043712
;
when 11382 =>
table_value := 1043712
;
when 11383 =>
table_value := 1043728
;
when 11384 =>
table_value := 1043744
;
when 11385 =>
table_value := 1043776
;
when 11386 =>
table_value := 1043776
;
when 11387 =>
table_value := 1043792
;
when 11388 =>
table_value := 1043824
;
when 11389 =>
table_value := 1043840
;
when 11390 =>
table_value := 1043856
;
when 11391 =>
table_value := 1043904
;
when 11392 =>
table_value := 1043936
;
when 11393 =>
table_value := 1043952
;
when 11394 =>
table_value := 1043984
;
when 11395 =>
table_value := 1044016
;
when 11396 =>
table_value := 1044032
;
when 11397 =>
table_value := 1044096
;
when 11398 =>
table_value := 1044144
;
when 11399 =>
table_value := 1044176
;
when 11400 =>
table_value := 1044208
;
when 11401 =>
table_value := 1044272
;
when 11402 =>
table_value := 1044320
;
when 11403 =>
table_value := 1044384
;
when 11404 =>
table_value := 1044432
;
when 11405 =>
table_value := 1044496
;
when 11406 =>
table_value := 1044544
;
when 11407 =>
table_value := 1044592
;
when 11408 =>
table_value := 1044688
;
when 11409 =>
table_value := 1044768
;
when 11410 =>
table_value := 1044848
;
when 11411 =>
table_value := 1044896
;
when 11412 =>
table_value := 1044976
;
when 11413 =>
table_value := 1045104
;
when 11414 =>
table_value := 1045184
;
when 11415 =>
table_value := 1045280
;
when 11416 =>
table_value := 1045408
;
when 11417 =>
table_value := 1045504
;
when 11418 =>
table_value := 1045600
;
when 11419 =>
table_value := 1045728
;
when 11420 =>
table_value := 1045824
;
when 11421 =>
table_value := 1045936
;
when 11422 =>
table_value := 1046064
;
when 11423 =>
table_value := 1046176
;
when 11424 =>
table_value := 1046320
;
when 11425 =>
table_value := 1046416
;
when 11426 =>
table_value := 1046544
;
when 11427 =>
table_value := 1046688
;
when 11428 =>
table_value := 1046816
;
when 11429 =>
table_value := 1046944
;
when 11430 =>
table_value := 1047072
;
when 11431 =>
table_value := 1047200
;
when 11432 =>
table_value := 1047328
;
when 11433 =>
table_value := 1047472
;
when 11434 =>
table_value := 1047584
;
when 11435 =>
table_value := 1047728
;
when 11436 =>
table_value := 1047856
;
when 11437 =>
table_value := 1047968
;
when 11438 =>
table_value := 1048112
;
when 11439 =>
table_value := 1048224
;
when 11440 =>
table_value := 1048336
;
when 11441 =>
table_value := 1048448
;
when 11442 =>
table_value := 1048560
;
when 11443 =>
table_value := 80
;
when 11444 =>
table_value := 176
;
when 11445 =>
table_value := 288
;
when 11446 =>
table_value := 384
;
when 11447 =>
table_value := 480
;
when 11448 =>
table_value := 592
;
when 11449 =>
table_value := 688
;
when 11450 =>
table_value := 768
;
when 11451 =>
table_value := 880
;
when 11452 =>
table_value := 960
;
when 11453 =>
table_value := 1056
;
when 11454 =>
table_value := 1152
;
when 11455 =>
table_value := 1216
;
when 11456 =>
table_value := 1296
;
when 11457 =>
table_value := 1392
;
when 11458 =>
table_value := 1456
;
when 11459 =>
table_value := 1536
;
when 11460 =>
table_value := 1600
;
when 11461 =>
table_value := 1680
;
when 11462 =>
table_value := 1728
;
when 11463 =>
table_value := 1808
;
when 11464 =>
table_value := 1840
;
when 11465 =>
table_value := 1920
;
when 11466 =>
table_value := 1968
;
when 11467 =>
table_value := 2064
;
when 11468 =>
table_value := 2112
;
when 11469 =>
table_value := 2160
;
when 11470 =>
table_value := 2208
;
when 11471 =>
table_value := 2256
;
when 11472 =>
table_value := 2336
;
when 11473 =>
table_value := 2384
;
when 11474 =>
table_value := 2416
;
when 11475 =>
table_value := 2480
;
when 11476 =>
table_value := 2544
;
when 11477 =>
table_value := 2592
;
when 11478 =>
table_value := 2640
;
when 11479 =>
table_value := 2672
;
when 11480 =>
table_value := 2752
;
when 11481 =>
table_value := 2800
;
when 11482 =>
table_value := 2848
;
when 11483 =>
table_value := 2896
;
when 11484 =>
table_value := 2944
;
when 11485 =>
table_value := 3008
;
when 11486 =>
table_value := 3056
;
when 11487 =>
table_value := 3104
;
when 11488 =>
table_value := 3168
;
when 11489 =>
table_value := 3216
;
when 11490 =>
table_value := 3264
;
when 11491 =>
table_value := 3296
;
when 11492 =>
table_value := 3328
;
when 11493 =>
table_value := 3360
;
when 11494 =>
table_value := 3392
;
when 11495 =>
table_value := 3424
;
when 11496 =>
table_value := 3456
;
when 11497 =>
table_value := 3472
;
when 11498 =>
table_value := 3504
;
when 11499 =>
table_value := 3504
;
when 11500 =>
table_value := 3536
;
when 11501 =>
table_value := 3520
;
when 11502 =>
table_value := 3536
;
when 11503 =>
table_value := 3552
;
when 11504 =>
table_value := 3536
;
when 11505 =>
table_value := 3520
;
when 11506 =>
table_value := 3520
;
when 11507 =>
table_value := 3488
;
when 11508 =>
table_value := 3472
;
when 11509 =>
table_value := 3472
;
when 11510 =>
table_value := 3424
;
when 11511 =>
table_value := 3392
;
when 11512 =>
table_value := 3344
;
when 11513 =>
table_value := 3312
;
when 11514 =>
table_value := 3248
;
when 11515 =>
table_value := 3184
;
when 11516 =>
table_value := 3136
;
when 11517 =>
table_value := 3088
;
when 11518 =>
table_value := 3024
;
when 11519 =>
table_value := 2960
;
when 11520 =>
table_value := 2896
;
when 11521 =>
table_value := 2832
;
when 11522 =>
table_value := 2768
;
when 11523 =>
table_value := 2688
;
when 11524 =>
table_value := 2624
;
when 11525 =>
table_value := 2560
;
when 11526 =>
table_value := 2480
;
when 11527 =>
table_value := 2416
;
when 11528 =>
table_value := 2336
;
when 11529 =>
table_value := 2256
;
when 11530 =>
table_value := 2192
;
when 11531 =>
table_value := 2112
;
when 11532 =>
table_value := 2032
;
when 11533 =>
table_value := 1968
;
when 11534 =>
table_value := 1904
;
when 11535 =>
table_value := 1840
;
when 11536 =>
table_value := 1776
;
when 11537 =>
table_value := 1712
;
when 11538 =>
table_value := 1648
;
when 11539 =>
table_value := 1584
;
when 11540 =>
table_value := 1520
;
when 11541 =>
table_value := 1456
;
when 11542 =>
table_value := 1408
;
when 11543 =>
table_value := 1360
;
when 11544 =>
table_value := 1296
;
when 11545 =>
table_value := 1248
;
when 11546 =>
table_value := 1200
;
when 11547 =>
table_value := 1136
;
when 11548 =>
table_value := 1072
;
when 11549 =>
table_value := 1056
;
when 11550 =>
table_value := 992
;
when 11551 =>
table_value := 960
;
when 11552 =>
table_value := 896
;
when 11553 =>
table_value := 848
;
when 11554 =>
table_value := 816
;
when 11555 =>
table_value := 784
;
when 11556 =>
table_value := 720
;
when 11557 =>
table_value := 688
;
when 11558 =>
table_value := 672
;
when 11559 =>
table_value := 608
;
when 11560 =>
table_value := 576
;
when 11561 =>
table_value := 528
;
when 11562 =>
table_value := 480
;
when 11563 =>
table_value := 448
;
when 11564 =>
table_value := 416
;
when 11565 =>
table_value := 368
;
when 11566 =>
table_value := 320
;
when 11567 =>
table_value := 288
;
when 11568 =>
table_value := 240
;
when 11569 =>
table_value := 208
;
when 11570 =>
table_value := 160
;
when 11571 =>
table_value := 128
;
when 11572 =>
table_value := 80
;
when 11573 =>
table_value := 48
;
when 11574 =>
table_value := 0
;
when 11575 =>
table_value := 1048560
;
when 11576 =>
table_value := 1048512
;
when 11577 =>
table_value := 1048480
;
when 11578 =>
table_value := 1048448
;
when 11579 =>
table_value := 1048416
;
when 11580 =>
table_value := 1048368
;
when 11581 =>
table_value := 1048352
;
when 11582 =>
table_value := 1048336
;
when 11583 =>
table_value := 1048272
;
when 11584 =>
table_value := 1048272
;
when 11585 =>
table_value := 1048240
;
when 11586 =>
table_value := 1048240
;
when 11587 =>
table_value := 1048224
;
when 11588 =>
table_value := 1048208
;
when 11589 =>
table_value := 1048192
;
when 11590 =>
table_value := 1048192
;
when 11591 =>
table_value := 1048160
;
when 11592 =>
table_value := 1048176
;
when 11593 =>
table_value := 1048160
;
when 11594 =>
table_value := 1048160
;
when 11595 =>
table_value := 1048144
;
when 11596 =>
table_value := 1048160
;
when 11597 =>
table_value := 1048176
;
when 11598 =>
table_value := 1048160
;
when 11599 =>
table_value := 1048176
;
when 11600 =>
table_value := 1048144
;
when 11601 =>
table_value := 1048176
;
when 11602 =>
table_value := 1048176
;
when 11603 =>
table_value := 1048208
;
when 11604 =>
table_value := 1048192
;
when 11605 =>
table_value := 1048208
;
when 11606 =>
table_value := 1048224
;
when 11607 =>
table_value := 1048240
;
when 11608 =>
table_value := 1048256
;
when 11609 =>
table_value := 1048256
;
when 11610 =>
table_value := 1048272
;
when 11611 =>
table_value := 1048288
;
when 11612 =>
table_value := 1048336
;
when 11613 =>
table_value := 1048336
;
when 11614 =>
table_value := 1048352
;
when 11615 =>
table_value := 1048400
;
when 11616 =>
table_value := 1048400
;
when 11617 =>
table_value := 1048432
;
when 11618 =>
table_value := 1048432
;
when 11619 =>
table_value := 1048432
;
when 11620 =>
table_value := 1048448
;
when 11621 =>
table_value := 1048464
;
when 11622 =>
table_value := 1048480
;
when 11623 =>
table_value := 1048480
;
when 11624 =>
table_value := 1048512
;
when 11625 =>
table_value := 1048512
;
when 11626 =>
table_value := 1048528
;
when 11627 =>
table_value := 1048560
;
when 11628 =>
table_value := 0
;
when 11629 =>
table_value := 0
;
when 11630 =>
table_value := 0
;
when 11631 =>
table_value := 48
;
when 11632 =>
table_value := 48
;
when 11633 =>
table_value := 64
;
when 11634 =>
table_value := 48
;
when 11635 =>
table_value := 64
;
when 11636 =>
table_value := 80
;
when 11637 =>
table_value := 96
;
when 11638 =>
table_value := 128
;
when 11639 =>
table_value := 128
;
when 11640 =>
table_value := 128
;
when 11641 =>
table_value := 128
;
when 11642 =>
table_value := 144
;
when 11643 =>
table_value := 160
;
when 11644 =>
table_value := 160
;
when 11645 =>
table_value := 160
;
when 11646 =>
table_value := 176
;
when 11647 =>
table_value := 176
;
when 11648 =>
table_value := 176
;
when 11649 =>
table_value := 176
;
when 11650 =>
table_value := 192
;
when 11651 =>
table_value := 176
;
when 11652 =>
table_value := 176
;
when 11653 =>
table_value := 176
;
when 11654 =>
table_value := 176
;
when 11655 =>
table_value := 160
;
when 11656 =>
table_value := 160
;
when 11657 =>
table_value := 144
;
when 11658 =>
table_value := 144
;
when 11659 =>
table_value := 128
;
when 11660 =>
table_value := 96
;
when 11661 =>
table_value := 96
;
when 11662 =>
table_value := 96
;
when 11663 =>
table_value := 64
;
when 11664 =>
table_value := 64
;
when 11665 =>
table_value := 64
;
when 11666 =>
table_value := 32
;
when 11667 =>
table_value := 16
;
when 11668 =>
table_value := 16
;
when 11669 =>
table_value := 0
;
when 11670 =>
table_value := 0
;
when 11671 =>
table_value := 0
;
when 11672 =>
table_value := 0
;
when 11673 =>
table_value := 0
;
when 11674 =>
table_value := 0
;
when 11675 =>
table_value := 0
;
when 11676 =>
table_value := 16
;
when 11677 =>
table_value := 48
;
when 11678 =>
table_value := 48
;
when 11679 =>
table_value := 80
;
when 11680 =>
table_value := 96
;
when 11681 =>
table_value := 128
;
when 11682 =>
table_value := 144
;
when 11683 =>
table_value := 160
;
when 11684 =>
table_value := 176
;
when 11685 =>
table_value := 208
;
when 11686 =>
table_value := 240
;
when 11687 =>
table_value := 272
;
when 11688 =>
table_value := 304
;
when 11689 =>
table_value := 336
;
when 11690 =>
table_value := 368
;
when 11691 =>
table_value := 400
;
when 11692 =>
table_value := 448
;
when 11693 =>
table_value := 464
;
when 11694 =>
table_value := 528
;
when 11695 =>
table_value := 544
;
when 11696 =>
table_value := 608
;
when 11697 =>
table_value := 672
;
when 11698 =>
table_value := 704
;
when 11699 =>
table_value := 768
;
when 11700 =>
table_value := 800
;
when 11701 =>
table_value := 880
;
when 11702 =>
table_value := 928
;
when 11703 =>
table_value := 976
;
when 11704 =>
table_value := 1040
;
when 11705 =>
table_value := 1088
;
when 11706 =>
table_value := 1120
;
when 11707 =>
table_value := 1168
;
when 11708 =>
table_value := 1232
;
when 11709 =>
table_value := 1264
;
when 11710 =>
table_value := 1312
;
when 11711 =>
table_value := 1360
;
when 11712 =>
table_value := 1424
;
when 11713 =>
table_value := 1440
;
when 11714 =>
table_value := 1488
;
when 11715 =>
table_value := 1536
;
when 11716 =>
table_value := 1568
;
when 11717 =>
table_value := 1600
;
when 11718 =>
table_value := 1632
;
when 11719 =>
table_value := 1664
;
when 11720 =>
table_value := 1680
;
when 11721 =>
table_value := 1712
;
when 11722 =>
table_value := 1712
;
when 11723 =>
table_value := 1728
;
when 11724 =>
table_value := 1744
;
when 11725 =>
table_value := 1744
;
when 11726 =>
table_value := 1744
;
when 11727 =>
table_value := 1728
;
when 11728 =>
table_value := 1712
;
when 11729 =>
table_value := 1696
;
when 11730 =>
table_value := 1680
;
when 11731 =>
table_value := 1648
;
when 11732 =>
table_value := 1632
;
when 11733 =>
table_value := 1600
;
when 11734 =>
table_value := 1600
;
when 11735 =>
table_value := 1552
;
when 11736 =>
table_value := 1520
;
when 11737 =>
table_value := 1488
;
when 11738 =>
table_value := 1440
;
when 11739 =>
table_value := 1408
;
when 11740 =>
table_value := 1392
;
when 11741 =>
table_value := 1344
;
when 11742 =>
table_value := 1312
;
when 11743 =>
table_value := 1296
;
when 11744 =>
table_value := 1248
;
when 11745 =>
table_value := 1232
;
when 11746 =>
table_value := 1216
;
when 11747 =>
table_value := 1200
;
when 11748 =>
table_value := 1168
;
when 11749 =>
table_value := 1152
;
when 11750 =>
table_value := 1104
;
when 11751 =>
table_value := 1088
;
when 11752 =>
table_value := 1072
;
when 11753 =>
table_value := 1056
;
when 11754 =>
table_value := 1056
;
when 11755 =>
table_value := 1040
;
when 11756 =>
table_value := 1040
;
when 11757 =>
table_value := 1024
;
when 11758 =>
table_value := 1040
;
when 11759 =>
table_value := 1024
;
when 11760 =>
table_value := 1056
;
when 11761 =>
table_value := 1072
;
when 11762 =>
table_value := 1088
;
when 11763 =>
table_value := 1104
;
when 11764 =>
table_value := 1136
;
when 11765 =>
table_value := 1152
;
when 11766 =>
table_value := 1184
;
when 11767 =>
table_value := 1232
;
when 11768 =>
table_value := 1264
;
when 11769 =>
table_value := 1312
;
when 11770 =>
table_value := 1344
;
when 11771 =>
table_value := 1392
;
when 11772 =>
table_value := 1456
;
when 11773 =>
table_value := 1504
;
when 11774 =>
table_value := 1568
;
when 11775 =>
table_value := 1632
;
when 11776 =>
table_value := 1696
;
when 11777 =>
table_value := 1760
;
when 11778 =>
table_value := 1808
;
when 11779 =>
table_value := 1872
;
when 11780 =>
table_value := 1952
;
when 11781 =>
table_value := 2016
;
when 11782 =>
table_value := 2080
;
when 11783 =>
table_value := 2144
;
when 11784 =>
table_value := 2224
;
when 11785 =>
table_value := 2272
;
when 11786 =>
table_value := 2352
;
when 11787 =>
table_value := 2416
;
when 11788 =>
table_value := 2480
;
when 11789 =>
table_value := 2528
;
when 11790 =>
table_value := 2592
;
when 11791 =>
table_value := 2640
;
when 11792 =>
table_value := 2688
;
when 11793 =>
table_value := 2736
;
when 11794 =>
table_value := 2800
;
when 11795 =>
table_value := 2832
;
when 11796 =>
table_value := 2896
;
when 11797 =>
table_value := 2928
;
when 11798 =>
table_value := 2992
;
when 11799 =>
table_value := 3008
;
when 11800 =>
table_value := 3056
;
when 11801 =>
table_value := 3088
;
when 11802 =>
table_value := 3120
;
when 11803 =>
table_value := 3168
;
when 11804 =>
table_value := 3184
;
when 11805 =>
table_value := 3216
;
when 11806 =>
table_value := 3248
;
when 11807 =>
table_value := 3264
;
when 11808 =>
table_value := 3280
;
when 11809 =>
table_value := 3312
;
when 11810 =>
table_value := 3328
;
when 11811 =>
table_value := 3376
;
when 11812 =>
table_value := 3392
;
when 11813 =>
table_value := 3408
;
when 11814 =>
table_value := 3440
;
when 11815 =>
table_value := 3456
;
when 11816 =>
table_value := 3456
;
when 11817 =>
table_value := 3472
;
when 11818 =>
table_value := 3488
;
when 11819 =>
table_value := 3520
;
when 11820 =>
table_value := 3520
;
when 11821 =>
table_value := 3536
;
when 11822 =>
table_value := 3552
;
when 11823 =>
table_value := 3568
;
when 11824 =>
table_value := 3600
;
when 11825 =>
table_value := 3616
;
when 11826 =>
table_value := 3600
;
when 11827 =>
table_value := 3632
;
when 11828 =>
table_value := 3648
;
when 11829 =>
table_value := 3632
;
when 11830 =>
table_value := 3664
;
when 11831 =>
table_value := 3664
;
when 11832 =>
table_value := 3664
;
when 11833 =>
table_value := 3648
;
when 11834 =>
table_value := 3664
;
when 11835 =>
table_value := 3696
;
when 11836 =>
table_value := 3680
;
when 11837 =>
table_value := 3696
;
when 11838 =>
table_value := 3712
;
when 11839 =>
table_value := 3728
;
when 11840 =>
table_value := 3728
;
when 11841 =>
table_value := 3744
;
when 11842 =>
table_value := 3760
;
when 11843 =>
table_value := 3760
;
when 11844 =>
table_value := 3776
;
when 11845 =>
table_value := 3776
;
when 11846 =>
table_value := 3792
;
when 11847 =>
table_value := 3792
;
when 11848 =>
table_value := 3792
;
when 11849 =>
table_value := 3792
;
when 11850 =>
table_value := 3792
;
when 11851 =>
table_value := 3808
;
when 11852 =>
table_value := 3792
;
when 11853 =>
table_value := 3792
;
when 11854 =>
table_value := 3792
;
when 11855 =>
table_value := 3792
;
when 11856 =>
table_value := 3792
;
when 11857 =>
table_value := 3776
;
when 11858 =>
table_value := 3776
;
when 11859 =>
table_value := 3760
;
when 11860 =>
table_value := 3760
;
when 11861 =>
table_value := 3824
;
when 11862 =>
table_value := 3776
;
when 11863 =>
table_value := 3760
;
when 11864 =>
table_value := 3728
;
when 11865 =>
table_value := 3728
;
when 11866 =>
table_value := 3696
;
when 11867 =>
table_value := 3696
;
when 11868 =>
table_value := 3696
;
when 11869 =>
table_value := 3680
;
when 11870 =>
table_value := 3664
;
when 11871 =>
table_value := 3648
;
when 11872 =>
table_value := 3648
;
when 11873 =>
table_value := 3632
;
when 11874 =>
table_value := 3616
;
when 11875 =>
table_value := 3616
;
when 11876 =>
table_value := 3600
;
when 11877 =>
table_value := 3568
;
when 11878 =>
table_value := 3552
;
when 11879 =>
table_value := 3552
;
when 11880 =>
table_value := 3520
;
when 11881 =>
table_value := 3504
;
when 11882 =>
table_value := 3472
;
when 11883 =>
table_value := 3456
;
when 11884 =>
table_value := 3440
;
when 11885 =>
table_value := 3424
;
when 11886 =>
table_value := 3392
;
when 11887 =>
table_value := 3360
;
when 11888 =>
table_value := 3344
;
when 11889 =>
table_value := 3312
;
when 11890 =>
table_value := 3264
;
when 11891 =>
table_value := 3232
;
when 11892 =>
table_value := 3200
;
when 11893 =>
table_value := 3168
;
when 11894 =>
table_value := 3120
;
when 11895 =>
table_value := 3104
;
when 11896 =>
table_value := 3072
;
when 11897 =>
table_value := 3024
;
when 11898 =>
table_value := 2992
;
when 11899 =>
table_value := 2928
;
when 11900 =>
table_value := 2880
;
when 11901 =>
table_value := 2832
;
when 11902 =>
table_value := 2800
;
when 11903 =>
table_value := 2736
;
when 11904 =>
table_value := 2688
;
when 11905 =>
table_value := 2640
;
when 11906 =>
table_value := 2592
;
when 11907 =>
table_value := 2544
;
when 11908 =>
table_value := 2496
;
when 11909 =>
table_value := 2448
;
when 11910 =>
table_value := 2416
;
when 11911 =>
table_value := 2368
;
when 11912 =>
table_value := 2304
;
when 11913 =>
table_value := 2288
;
when 11914 =>
table_value := 2240
;
when 11915 =>
table_value := 2208
;
when 11916 =>
table_value := 2160
;
when 11917 =>
table_value := 2128
;
when 11918 =>
table_value := 2080
;
when 11919 =>
table_value := 2048
;
when 11920 =>
table_value := 2016
;
when 11921 =>
table_value := 1952
;
when 11922 =>
table_value := 1920
;
when 11923 =>
table_value := 1888
;
when 11924 =>
table_value := 1856
;
when 11925 =>
table_value := 1808
;
when 11926 =>
table_value := 1776
;
when 11927 =>
table_value := 1760
;
when 11928 =>
table_value := 1744
;
when 11929 =>
table_value := 1712
;
when 11930 =>
table_value := 1696
;
when 11931 =>
table_value := 1696
;
when 11932 =>
table_value := 1680
;
when 11933 =>
table_value := 1664
;
when 11934 =>
table_value := 1648
;
when 11935 =>
table_value := 1632
;
when 11936 =>
table_value := 1616
;
when 11937 =>
table_value := 1616
;
when 11938 =>
table_value := 1616
;
when 11939 =>
table_value := 1600
;
when 11940 =>
table_value := 1600
;
when 11941 =>
table_value := 1600
;
when 11942 =>
table_value := 1600
;
when 11943 =>
table_value := 1600
;
when 11944 =>
table_value := 1616
;
when 11945 =>
table_value := 1616
;
when 11946 =>
table_value := 1632
;
when 11947 =>
table_value := 1648
;
when 11948 =>
table_value := 1648
;
when 11949 =>
table_value := 1664
;
when 11950 =>
table_value := 1680
;
when 11951 =>
table_value := 1680
;
when 11952 =>
table_value := 1696
;
when 11953 =>
table_value := 1728
;
when 11954 =>
table_value := 1744
;
when 11955 =>
table_value := 1760
;
when 11956 =>
table_value := 1792
;
when 11957 =>
table_value := 1808
;
when 11958 =>
table_value := 1840
;
when 11959 =>
table_value := 1856
;
when 11960 =>
table_value := 1872
;
when 11961 =>
table_value := 1888
;
when 11962 =>
table_value := 1920
;
when 11963 =>
table_value := 1936
;
when 11964 =>
table_value := 1952
;
when 11965 =>
table_value := 1984
;
when 11966 =>
table_value := 2000
;
when 11967 =>
table_value := 2016
;
when 11968 =>
table_value := 2016
;
when 11969 =>
table_value := 2016
;
when 11970 =>
table_value := 2032
;
when 11971 =>
table_value := 2048
;
when 11972 =>
table_value := 2032
;
when 11973 =>
table_value := 2048
;
when 11974 =>
table_value := 2032
;
when 11975 =>
table_value := 2032
;
when 11976 =>
table_value := 2032
;
when 11977 =>
table_value := 2048
;
when 11978 =>
table_value := 2016
;
when 11979 =>
table_value := 2016
;
when 11980 =>
table_value := 2000
;
when 11981 =>
table_value := 1984
;
when 11982 =>
table_value := 1952
;
when 11983 =>
table_value := 1936
;
when 11984 =>
table_value := 1888
;
when 11985 =>
table_value := 1872
;
when 11986 =>
table_value := 1840
;
when 11987 =>
table_value := 1792
;
when 11988 =>
table_value := 1760
;
when 11989 =>
table_value := 1712
;
when 11990 =>
table_value := 1664
;
when 11991 =>
table_value := 1616
;
when 11992 =>
table_value := 1568
;
when 11993 =>
table_value := 1504
;
when 11994 =>
table_value := 1456
;
when 11995 =>
table_value := 1392
;
when 11996 =>
table_value := 1328
;
when 11997 =>
table_value := 1264
;
when 11998 =>
table_value := 1200
;
when 11999 =>
table_value := 1120
;
when 12000 =>
table_value := 1040
;
when 12001 =>
table_value := 960
;
when 12002 =>
table_value := 896
;
when 12003 =>
table_value := 800
;
when 12004 =>
table_value := 736
;
when 12005 =>
table_value := 656
;
when 12006 =>
table_value := 576
;
when 12007 =>
table_value := 480
;
when 12008 =>
table_value := 432
;
when 12009 =>
table_value := 336
;
when 12010 =>
table_value := 240
;
when 12011 =>
table_value := 176
;
when 12012 =>
table_value := 96
;
when 12013 =>
table_value := 32
;
when 12014 =>
table_value := 1048528
;
when 12015 =>
table_value := 1048464
;
when 12016 =>
table_value := 1048368
;
when 12017 =>
table_value := 1048288
;
when 12018 =>
table_value := 1048208
;
when 12019 =>
table_value := 1048128
;
when 12020 =>
table_value := 1048016
;
when 12021 =>
table_value := 1047936
;
when 12022 =>
table_value := 1047856
;
when 12023 =>
table_value := 1047776
;
when 12024 =>
table_value := 1047680
;
when 12025 =>
table_value := 1047600
;
when 12026 =>
table_value := 1047504
;
when 12027 =>
table_value := 1047424
;
when 12028 =>
table_value := 1047344
;
when 12029 =>
table_value := 1047248
;
when 12030 =>
table_value := 1047168
;
when 12031 =>
table_value := 1047088
;
when 12032 =>
table_value := 1046992
;
when 12033 =>
table_value := 1046896
;
when 12034 =>
table_value := 1046816
;
when 12035 =>
table_value := 1046736
;
when 12036 =>
table_value := 1046656
;
when 12037 =>
table_value := 1046576
;
when 12038 =>
table_value := 1046480
;
when 12039 =>
table_value := 1046400
;
when 12040 =>
table_value := 1046320
;
when 12041 =>
table_value := 1046208
;
when 12042 =>
table_value := 1046128
;
when 12043 =>
table_value := 1046048
;
when 12044 =>
table_value := 1045968
;
when 12045 =>
table_value := 1045872
;
when 12046 =>
table_value := 1045792
;
when 12047 =>
table_value := 1045712
;
when 12048 =>
table_value := 1045632
;
when 12049 =>
table_value := 1045552
;
when 12050 =>
table_value := 1045456
;
when 12051 =>
table_value := 1045392
;
when 12052 =>
table_value := 1045312
;
when 12053 =>
table_value := 1045248
;
when 12054 =>
table_value := 1045168
;
when 12055 =>
table_value := 1045104
;
when 12056 =>
table_value := 1045024
;
when 12057 =>
table_value := 1044960
;
when 12058 =>
table_value := 1044896
;
when 12059 =>
table_value := 1044832
;
when 12060 =>
table_value := 1044784
;
when 12061 =>
table_value := 1044704
;
when 12062 =>
table_value := 1044624
;
when 12063 =>
table_value := 1044560
;
when 12064 =>
table_value := 1044496
;
when 12065 =>
table_value := 1044416
;
when 12066 =>
table_value := 1044368
;
when 12067 =>
table_value := 1044304
;
when 12068 =>
table_value := 1044256
;
when 12069 =>
table_value := 1044192
;
when 12070 =>
table_value := 1044144
;
when 12071 =>
table_value := 1044096
;
when 12072 =>
table_value := 1044048
;
when 12073 =>
table_value := 1044000
;
when 12074 =>
table_value := 1043936
;
when 12075 =>
table_value := 1043888
;
when 12076 =>
table_value := 1043856
;
when 12077 =>
table_value := 1043792
;
when 12078 =>
table_value := 1043728
;
when 12079 =>
table_value := 1043696
;
when 12080 =>
table_value := 1043632
;
when 12081 =>
table_value := 1043584
;
when 12082 =>
table_value := 1043552
;
when 12083 =>
table_value := 1043488
;
when 12084 =>
table_value := 1043440
;
when 12085 =>
table_value := 1043392
;
when 12086 =>
table_value := 1043376
;
when 12087 =>
table_value := 1043328
;
when 12088 =>
table_value := 1043296
;
when 12089 =>
table_value := 1043264
;
when 12090 =>
table_value := 1043232
;
when 12091 =>
table_value := 1043200
;
when 12092 =>
table_value := 1043152
;
when 12093 =>
table_value := 1043152
;
when 12094 =>
table_value := 1043104
;
when 12095 =>
table_value := 1043072
;
when 12096 =>
table_value := 1043056
;
when 12097 =>
table_value := 1043024
;
when 12098 =>
table_value := 1043008
;
when 12099 =>
table_value := 1042960
;
when 12100 =>
table_value := 1042944
;
when 12101 =>
table_value := 1042928
;
when 12102 =>
table_value := 1042880
;
when 12103 =>
table_value := 1042864
;
when 12104 =>
table_value := 1042864
;
when 12105 =>
table_value := 1042832
;
when 12106 =>
table_value := 1042816
;
when 12107 =>
table_value := 1042800
;
when 12108 =>
table_value := 1042784
;
when 12109 =>
table_value := 1042752
;
when 12110 =>
table_value := 1042720
;
when 12111 =>
table_value := 1042704
;
when 12112 =>
table_value := 1042704
;
when 12113 =>
table_value := 1042704
;
when 12114 =>
table_value := 1042704
;
when 12115 =>
table_value := 1042704
;
when 12116 =>
table_value := 1042688
;
when 12117 =>
table_value := 1042704
;
when 12118 =>
table_value := 1042704
;
when 12119 =>
table_value := 1042720
;
when 12120 =>
table_value := 1042736
;
when 12121 =>
table_value := 1042752
;
when 12122 =>
table_value := 1042768
;
when 12123 =>
table_value := 1042784
;
when 12124 =>
table_value := 1042800
;
when 12125 =>
table_value := 1042816
;
when 12126 =>
table_value := 1042832
;
when 12127 =>
table_value := 1042864
;
when 12128 =>
table_value := 1042880
;
when 12129 =>
table_value := 1042880
;
when 12130 =>
table_value := 1042912
;
when 12131 =>
table_value := 1042960
;
when 12132 =>
table_value := 1042976
;
when 12133 =>
table_value := 1042992
;
when 12134 =>
table_value := 1043024
;
when 12135 =>
table_value := 1043040
;
when 12136 =>
table_value := 1043104
;
when 12137 =>
table_value := 1043120
;
when 12138 =>
table_value := 1043168
;
when 12139 =>
table_value := 1043216
;
when 12140 =>
table_value := 1043280
;
when 12141 =>
table_value := 1043312
;
when 12142 =>
table_value := 1043344
;
when 12143 =>
table_value := 1043408
;
when 12144 =>
table_value := 1043456
;
when 12145 =>
table_value := 1043504
;
when 12146 =>
table_value := 1043568
;
when 12147 =>
table_value := 1043632
;
when 12148 =>
table_value := 1043680
;
when 12149 =>
table_value := 1043744
;
when 12150 =>
table_value := 1043792
;
when 12151 =>
table_value := 1043856
;
when 12152 =>
table_value := 1043936
;
when 12153 =>
table_value := 1043984
;
when 12154 =>
table_value := 1044064
;
when 12155 =>
table_value := 1044144
;
when 12156 =>
table_value := 1044224
;
when 12157 =>
table_value := 1044304
;
when 12158 =>
table_value := 1044384
;
when 12159 =>
table_value := 1044480
;
when 12160 =>
table_value := 1044560
;
when 12161 =>
table_value := 1044640
;
when 12162 =>
table_value := 1044736
;
when 12163 =>
table_value := 1044832
;
when 12164 =>
table_value := 1044944
;
when 12165 =>
table_value := 1045024
;
when 12166 =>
table_value := 1045136
;
when 12167 =>
table_value := 1045248
;
when 12168 =>
table_value := 1045344
;
when 12169 =>
table_value := 1045456
;
when 12170 =>
table_value := 1045552
;
when 12171 =>
table_value := 1045680
;
when 12172 =>
table_value := 1045760
;
when 12173 =>
table_value := 1045856
;
when 12174 =>
table_value := 1045952
;
when 12175 =>
table_value := 1046064
;
when 12176 =>
table_value := 1046160
;
when 12177 =>
table_value := 1046256
;
when 12178 =>
table_value := 1046336
;
when 12179 =>
table_value := 1046432
;
when 12180 =>
table_value := 1046528
;
when 12181 =>
table_value := 1046624
;
when 12182 =>
table_value := 1046704
;
when 12183 =>
table_value := 1046816
;
when 12184 =>
table_value := 1046896
;
when 12185 =>
table_value := 1047008
;
when 12186 =>
table_value := 1047088
;
when 12187 =>
table_value := 1047152
;
when 12188 =>
table_value := 1047264
;
when 12189 =>
table_value := 1047344
;
when 12190 =>
table_value := 1047408
;
when 12191 =>
table_value := 1047456
;
when 12192 =>
table_value := 1047520
;
when 12193 =>
table_value := 1047584
;
when 12194 =>
table_value := 1047648
;
when 12195 =>
table_value := 1047696
;
when 12196 =>
table_value := 1047744
;
when 12197 =>
table_value := 1047792
;
when 12198 =>
table_value := 1047824
;
when 12199 =>
table_value := 1047872
;
when 12200 =>
table_value := 1047920
;
when 12201 =>
table_value := 1047952
;
when 12202 =>
table_value := 1047968
;
when 12203 =>
table_value := 1048000
;
when 12204 =>
table_value := 1048016
;
when 12205 =>
table_value := 1048048
;
when 12206 =>
table_value := 1048064
;
when 12207 =>
table_value := 1048064
;
when 12208 =>
table_value := 1048080
;
when 12209 =>
table_value := 1048080
;
when 12210 =>
table_value := 1048096
;
when 12211 =>
table_value := 1048112
;
when 12212 =>
table_value := 1048112
;
when 12213 =>
table_value := 1048112
;
when 12214 =>
table_value := 1048112
;
when 12215 =>
table_value := 1048128
;
when 12216 =>
table_value := 1048112
;
when 12217 =>
table_value := 1048112
;
when 12218 =>
table_value := 1048096
;
when 12219 =>
table_value := 1048096
;
when 12220 =>
table_value := 1048048
;
when 12221 =>
table_value := 1048048
;
when 12222 =>
table_value := 1048032
;
when 12223 =>
table_value := 1048016
;
when 12224 =>
table_value := 1047984
;
when 12225 =>
table_value := 1047968
;
when 12226 =>
table_value := 1047968
;
when 12227 =>
table_value := 1047936
;
when 12228 =>
table_value := 1047904
;
when 12229 =>
table_value := 1047888
;
when 12230 =>
table_value := 1047856
;
when 12231 =>
table_value := 1047824
;
when 12232 =>
table_value := 1047824
;
when 12233 =>
table_value := 1047792
;
when 12234 =>
table_value := 1047760
;
when 12235 =>
table_value := 1047744
;
when 12236 =>
table_value := 1047712
;
when 12237 =>
table_value := 1047696
;
when 12238 =>
table_value := 1047664
;
when 12239 =>
table_value := 1047664
;
when 12240 =>
table_value := 1047632
;
when 12241 =>
table_value := 1047616
;
when 12242 =>
table_value := 1047584
;
when 12243 =>
table_value := 1047552
;
when 12244 =>
table_value := 1047520
;
when 12245 =>
table_value := 1047504
;
when 12246 =>
table_value := 1047488
;
when 12247 =>
table_value := 1047456
;
when 12248 =>
table_value := 1047440
;
when 12249 =>
table_value := 1047424
;
when 12250 =>
table_value := 1047408
;
when 12251 =>
table_value := 1047392
;
when 12252 =>
table_value := 1047376
;
when 12253 =>
table_value := 1047360
;
when 12254 =>
table_value := 1047328
;
when 12255 =>
table_value := 1047328
;
when 12256 =>
table_value := 1047296
;
when 12257 =>
table_value := 1047296
;
when 12258 =>
table_value := 1047264
;
when 12259 =>
table_value := 1047232
;
when 12260 =>
table_value := 1047216
;
when 12261 =>
table_value := 1047200
;
when 12262 =>
table_value := 1047184
;
when 12263 =>
table_value := 1047184
;
when 12264 =>
table_value := 1047152
;
when 12265 =>
table_value := 1047136
;
when 12266 =>
table_value := 1047104
;
when 12267 =>
table_value := 1047088
;
when 12268 =>
table_value := 1047056
;
when 12269 =>
table_value := 1047024
;
when 12270 =>
table_value := 1046976
;
when 12271 =>
table_value := 1046960
;
when 12272 =>
table_value := 1046928
;
when 12273 =>
table_value := 1046880
;
when 12274 =>
table_value := 1046848
;
when 12275 =>
table_value := 1046800
;
when 12276 =>
table_value := 1046768
;
when 12277 =>
table_value := 1046736
;
when 12278 =>
table_value := 1046688
;
when 12279 =>
table_value := 1046656
;
when 12280 =>
table_value := 1046608
;
when 12281 =>
table_value := 1046544
;
when 12282 =>
table_value := 1046496
;
when 12283 =>
table_value := 1046432
;
when 12284 =>
table_value := 1046368
;
when 12285 =>
table_value := 1046336
;
when 12286 =>
table_value := 1046288
;
when 12287 =>
table_value := 1046224
;
when 12288 =>
table_value := 1046192
;
when 12289 =>
table_value := 1046112
;
when 12290 =>
table_value := 1046064
;
when 12291 =>
table_value := 1046000
;
when 12292 =>
table_value := 1045952
;
when 12293 =>
table_value := 1045904
;
when 12294 =>
table_value := 1045856
;
when 12295 =>
table_value := 1045792
;
when 12296 =>
table_value := 1045728
;
when 12297 =>
table_value := 1045696
;
when 12298 =>
table_value := 1045616
;
when 12299 =>
table_value := 1045568
;
when 12300 =>
table_value := 1045520
;
when 12301 =>
table_value := 1045488
;
when 12302 =>
table_value := 1045440
;
when 12303 =>
table_value := 1045408
;
when 12304 =>
table_value := 1045376
;
when 12305 =>
table_value := 1045344
;
when 12306 =>
table_value := 1045328
;
when 12307 =>
table_value := 1045296
;
when 12308 =>
table_value := 1045280
;
when 12309 =>
table_value := 1045248
;
when 12310 =>
table_value := 1045264
;
when 12311 =>
table_value := 1045248
;
when 12312 =>
table_value := 1045248
;
when 12313 =>
table_value := 1045280
;
when 12314 =>
table_value := 1045280
;
when 12315 =>
table_value := 1045296
;
when 12316 =>
table_value := 1045328
;
when 12317 =>
table_value := 1045360
;
when 12318 =>
table_value := 1045408
;
when 12319 =>
table_value := 1045456
;
when 12320 =>
table_value := 1045520
;
when 12321 =>
table_value := 1045584
;
when 12322 =>
table_value := 1045632
;
when 12323 =>
table_value := 1045712
;
when 12324 =>
table_value := 1045776
;
when 12325 =>
table_value := 1045856
;
when 12326 =>
table_value := 1045920
;
when 12327 =>
table_value := 1045984
;
when 12328 =>
table_value := 1046080
;
when 12329 =>
table_value := 1046192
;
when 12330 =>
table_value := 1046256
;
when 12331 =>
table_value := 1046368
;
when 12332 =>
table_value := 1046464
;
when 12333 =>
table_value := 1046576
;
when 12334 =>
table_value := 1046688
;
when 12335 =>
table_value := 1046800
;
when 12336 =>
table_value := 1046928
;
when 12337 =>
table_value := 1047040
;
when 12338 =>
table_value := 1047152
;
when 12339 =>
table_value := 1047280
;
when 12340 =>
table_value := 1047392
;
when 12341 =>
table_value := 1047504
;
when 12342 =>
table_value := 1047616
;
when 12343 =>
table_value := 1047728
;
when 12344 =>
table_value := 1047840
;
when 12345 =>
table_value := 1047952
;
when 12346 =>
table_value := 1048048
;
when 12347 =>
table_value := 1048160
;
when 12348 =>
table_value := 1048272
;
when 12349 =>
table_value := 1048368
;
when 12350 =>
table_value := 1048448
;
when 12351 =>
table_value := 1048560
;
when 12352 =>
table_value := 64
;
when 12353 =>
table_value := 144
;
when 12354 =>
table_value := 240
;
when 12355 =>
table_value := 320
;
when 12356 =>
table_value := 416
;
when 12357 =>
table_value := 480
;
when 12358 =>
table_value := 560
;
when 12359 =>
table_value := 640
;
when 12360 =>
table_value := 688
;
when 12361 =>
table_value := 752
;
when 12362 =>
table_value := 816
;
when 12363 =>
table_value := 864
;
when 12364 =>
table_value := 912
;
when 12365 =>
table_value := 944
;
when 12366 =>
table_value := 992
;
when 12367 =>
table_value := 1024
;
when 12368 =>
table_value := 1040
;
when 12369 =>
table_value := 1056
;
when 12370 =>
table_value := 1072
;
when 12371 =>
table_value := 1088
;
when 12372 =>
table_value := 1088
;
when 12373 =>
table_value := 1120
;
when 12374 =>
table_value := 1120
;
when 12375 =>
table_value := 1136
;
when 12376 =>
table_value := 1136
;
when 12377 =>
table_value := 1120
;
when 12378 =>
table_value := 1136
;
when 12379 =>
table_value := 1152
;
when 12380 =>
table_value := 1152
;
when 12381 =>
table_value := 1136
;
when 12382 =>
table_value := 1120
;
when 12383 =>
table_value := 1136
;
when 12384 =>
table_value := 1136
;
when 12385 =>
table_value := 1136
;
when 12386 =>
table_value := 1152
;
when 12387 =>
table_value := 1136
;
when 12388 =>
table_value := 1136
;
when 12389 =>
table_value := 1136
;
when 12390 =>
table_value := 1120
;
when 12391 =>
table_value := 1152
;
when 12392 =>
table_value := 1136
;
when 12393 =>
table_value := 1152
;
when 12394 =>
table_value := 1152
;
when 12395 =>
table_value := 1152
;
when 12396 =>
table_value := 1184
;
when 12397 =>
table_value := 1200
;
when 12398 =>
table_value := 1232
;
when 12399 =>
table_value := 1248
;
when 12400 =>
table_value := 1280
;
when 12401 =>
table_value := 1296
;
when 12402 =>
table_value := 1312
;
when 12403 =>
table_value := 1344
;
when 12404 =>
table_value := 1376
;
when 12405 =>
table_value := 1392
;
when 12406 =>
table_value := 1424
;
when 12407 =>
table_value := 1456
;
when 12408 =>
table_value := 1488
;
when 12409 =>
table_value := 1536
;
when 12410 =>
table_value := 1568
;
when 12411 =>
table_value := 1600
;
when 12412 =>
table_value := 1600
;
when 12413 =>
table_value := 1632
;
when 12414 =>
table_value := 1648
;
when 12415 =>
table_value := 1680
;
when 12416 =>
table_value := 1696
;
when 12417 =>
table_value := 1712
;
when 12418 =>
table_value := 1728
;
when 12419 =>
table_value := 1760
;
when 12420 =>
table_value := 1776
;
when 12421 =>
table_value := 1808
;
when 12422 =>
table_value := 1824
;
when 12423 =>
table_value := 1840
;
when 12424 =>
table_value := 1856
;
when 12425 =>
table_value := 1872
;
when 12426 =>
table_value := 1872
;
when 12427 =>
table_value := 1872
;
when 12428 =>
table_value := 1888
;
when 12429 =>
table_value := 1872
;
when 12430 =>
table_value := 1872
;
when 12431 =>
table_value := 1872
;
when 12432 =>
table_value := 1872
;
when 12433 =>
table_value := 1872
;
when 12434 =>
table_value := 1856
;
when 12435 =>
table_value := 1856
;
when 12436 =>
table_value := 1840
;
when 12437 =>
table_value := 1824
;
when 12438 =>
table_value := 1792
;
when 12439 =>
table_value := 1776
;
when 12440 =>
table_value := 1760
;
when 12441 =>
table_value := 1728
;
when 12442 =>
table_value := 1680
;
when 12443 =>
table_value := 1664
;
when 12444 =>
table_value := 1616
;
when 12445 =>
table_value := 1600
;
when 12446 =>
table_value := 1568
;
when 12447 =>
table_value := 1520
;
when 12448 =>
table_value := 1472
;
when 12449 =>
table_value := 1440
;
when 12450 =>
table_value := 1408
;
when 12451 =>
table_value := 1360
;
when 12452 =>
table_value := 1328
;
when 12453 =>
table_value := 1296
;
when 12454 =>
table_value := 1248
;
when 12455 =>
table_value := 1200
;
when 12456 =>
table_value := 1168
;
when 12457 =>
table_value := 1136
;
when 12458 =>
table_value := 1088
;
when 12459 =>
table_value := 1056
;
when 12460 =>
table_value := 1008
;
when 12461 =>
table_value := 976
;
when 12462 =>
table_value := 928
;
when 12463 =>
table_value := 912
;
when 12464 =>
table_value := 880
;
when 12465 =>
table_value := 848
;
when 12466 =>
table_value := 816
;
when 12467 =>
table_value := 784
;
when 12468 =>
table_value := 768
;
when 12469 =>
table_value := 752
;
when 12470 =>
table_value := 720
;
when 12471 =>
table_value := 688
;
when 12472 =>
table_value := 656
;
when 12473 =>
table_value := 640
;
when 12474 =>
table_value := 624
;
when 12475 =>
table_value := 608
;
when 12476 =>
table_value := 608
;
when 12477 =>
table_value := 592
;
when 12478 =>
table_value := 576
;
when 12479 =>
table_value := 576
;
when 12480 =>
table_value := 560
;
when 12481 =>
table_value := 560
;
when 12482 =>
table_value := 560
;
when 12483 =>
table_value := 544
;
when 12484 =>
table_value := 544
;
when 12485 =>
table_value := 528
;
when 12486 =>
table_value := 528
;
when 12487 =>
table_value := 544
;
when 12488 =>
table_value := 560
;
when 12489 =>
table_value := 528
;
when 12490 =>
table_value := 544
;
when 12491 =>
table_value := 544
;
when 12492 =>
table_value := 544
;
when 12493 =>
table_value := 560
;
when 12494 =>
table_value := 544
;
when 12495 =>
table_value := 560
;
when 12496 =>
table_value := 576
;
when 12497 =>
table_value := 576
;
when 12498 =>
table_value := 592
;
when 12499 =>
table_value := 608
;
when 12500 =>
table_value := 608
;
when 12501 =>
table_value := 608
;
when 12502 =>
table_value := 608
;
when 12503 =>
table_value := 624
;
when 12504 =>
table_value := 624
;
when 12505 =>
table_value := 640
;
when 12506 =>
table_value := 640
;
when 12507 =>
table_value := 640
;
when 12508 =>
table_value := 656
;
when 12509 =>
table_value := 672
;
when 12510 =>
table_value := 672
;
when 12511 =>
table_value := 688
;
when 12512 =>
table_value := 688
;
when 12513 =>
table_value := 704
;
when 12514 =>
table_value := 704
;
when 12515 =>
table_value := 720
;
when 12516 =>
table_value := 720
;
when 12517 =>
table_value := 736
;
when 12518 =>
table_value := 736
;
when 12519 =>
table_value := 752
;
when 12520 =>
table_value := 752
;
when 12521 =>
table_value := 752
;
when 12522 =>
table_value := 736
;
when 12523 =>
table_value := 752
;
when 12524 =>
table_value := 752
;
when 12525 =>
table_value := 752
;
when 12526 =>
table_value := 768
;
when 12527 =>
table_value := 768
;
when 12528 =>
table_value := 768
;
when 12529 =>
table_value := 768
;
when 12530 =>
table_value := 784
;
when 12531 =>
table_value := 784
;
when 12532 =>
table_value := 800
;
when 12533 =>
table_value := 784
;
when 12534 =>
table_value := 784
;
when 12535 =>
table_value := 816
;
when 12536 =>
table_value := 816
;
when 12537 =>
table_value := 832
;
when 12538 =>
table_value := 832
;
when 12539 =>
table_value := 864
;
when 12540 =>
table_value := 864
;
when 12541 =>
table_value := 896
;
when 12542 =>
table_value := 928
;
when 12543 =>
table_value := 944
;
when 12544 =>
table_value := 960
;
when 12545 =>
table_value := 976
;
when 12546 =>
table_value := 1008
;
when 12547 =>
table_value := 1056
;
when 12548 =>
table_value := 1072
;
when 12549 =>
table_value := 1104
;
when 12550 =>
table_value := 1136
;
when 12551 =>
table_value := 1200
;
when 12552 =>
table_value := 1216
;
when 12553 =>
table_value := 1264
;
when 12554 =>
table_value := 1312
;
when 12555 =>
table_value := 1360
;
when 12556 =>
table_value := 1392
;
when 12557 =>
table_value := 1456
;
when 12558 =>
table_value := 1536
;
when 12559 =>
table_value := 1568
;
when 12560 =>
table_value := 1632
;
when 12561 =>
table_value := 1696
;
when 12562 =>
table_value := 1760
;
when 12563 =>
table_value := 1808
;
when 12564 =>
table_value := 1872
;
when 12565 =>
table_value := 1936
;
when 12566 =>
table_value := 2000
;
when 12567 =>
table_value := 2080
;
when 12568 =>
table_value := 2144
;
when 12569 =>
table_value := 2208
;
when 12570 =>
table_value := 2256
;
when 12571 =>
table_value := 2320
;
when 12572 =>
table_value := 2400
;
when 12573 =>
table_value := 2464
;
when 12574 =>
table_value := 2544
;
when 12575 =>
table_value := 2608
;
when 12576 =>
table_value := 2672
;
when 12577 =>
table_value := 2752
;
when 12578 =>
table_value := 2816
;
when 12579 =>
table_value := 2880
;
when 12580 =>
table_value := 2944
;
when 12581 =>
table_value := 3008
;
when 12582 =>
table_value := 3072
;
when 12583 =>
table_value := 3136
;
when 12584 =>
table_value := 3168
;
when 12585 =>
table_value := 3232
;
when 12586 =>
table_value := 3280
;
when 12587 =>
table_value := 3312
;
when 12588 =>
table_value := 3360
;
when 12589 =>
table_value := 3408
;
when 12590 =>
table_value := 3424
;
when 12591 =>
table_value := 3472
;
when 12592 =>
table_value := 3488
;
when 12593 =>
table_value := 3520
;
when 12594 =>
table_value := 3552
;
when 12595 =>
table_value := 3584
;
when 12596 =>
table_value := 3616
;
when 12597 =>
table_value := 3616
;
when 12598 =>
table_value := 3632
;
when 12599 =>
table_value := 3632
;
when 12600 =>
table_value := 3664
;
when 12601 =>
table_value := 3664
;
when 12602 =>
table_value := 3664
;
when 12603 =>
table_value := 3648
;
when 12604 =>
table_value := 3648
;
when 12605 =>
table_value := 3648
;
when 12606 =>
table_value := 3632
;
when 12607 =>
table_value := 3632
;
when 12608 =>
table_value := 3616
;
when 12609 =>
table_value := 3600
;
when 12610 =>
table_value := 3616
;
when 12611 =>
table_value := 3600
;
when 12612 =>
table_value := 3584
;
when 12613 =>
table_value := 3568
;
when 12614 =>
table_value := 3552
;
when 12615 =>
table_value := 3552
;
when 12616 =>
table_value := 3536
;
when 12617 =>
table_value := 3520
;
when 12618 =>
table_value := 3504
;
when 12619 =>
table_value := 3504
;
when 12620 =>
table_value := 3472
;
when 12621 =>
table_value := 3472
;
when 12622 =>
table_value := 3456
;
when 12623 =>
table_value := 3440
;
when 12624 =>
table_value := 3440
;
when 12625 =>
table_value := 3440
;
when 12626 =>
table_value := 3440
;
when 12627 =>
table_value := 3424
;
when 12628 =>
table_value := 3440
;
when 12629 =>
table_value := 3440
;
when 12630 =>
table_value := 3440
;
when 12631 =>
table_value := 3472
;
when 12632 =>
table_value := 3472
;
when 12633 =>
table_value := 3488
;
when 12634 =>
table_value := 3504
;
when 12635 =>
table_value := 3536
;
when 12636 =>
table_value := 3520
;
when 12637 =>
table_value := 3552
;
when 12638 =>
table_value := 3568
;
when 12639 =>
table_value := 3600
;
when 12640 =>
table_value := 3616
;
when 12641 =>
table_value := 3648
;
when 12642 =>
table_value := 3664
;
when 12643 =>
table_value := 3680
;
when 12644 =>
table_value := 3728
;
when 12645 =>
table_value := 3760
;
when 12646 =>
table_value := 3776
;
when 12647 =>
table_value := 3808
;
when 12648 =>
table_value := 3856
;
when 12649 =>
table_value := 3872
;
when 12650 =>
table_value := 3904
;
when 12651 =>
table_value := 3952
;
when 12652 =>
table_value := 4000
;
when 12653 =>
table_value := 4016
;
when 12654 =>
table_value := 4064
;
when 12655 =>
table_value := 4080
;
when 12656 =>
table_value := 4112
;
when 12657 =>
table_value := 4144
;
when 12658 =>
table_value := 4160
;
when 12659 =>
table_value := 4192
;
when 12660 =>
table_value := 4192
;
when 12661 =>
table_value := 4224
;
when 12662 =>
table_value := 4240
;
when 12663 =>
table_value := 4256
;
when 12664 =>
table_value := 4256
;
when 12665 =>
table_value := 4272
;
when 12666 =>
table_value := 4288
;
when 12667 =>
table_value := 4304
;
when 12668 =>
table_value := 4304
;
when 12669 =>
table_value := 4288
;
when 12670 =>
table_value := 4288
;
when 12671 =>
table_value := 4304
;
when 12672 =>
table_value := 4288
;
when 12673 =>
table_value := 4288
;
when 12674 =>
table_value := 4272
;
when 12675 =>
table_value := 4240
;
when 12676 =>
table_value := 4240
;
when 12677 =>
table_value := 4192
;
when 12678 =>
table_value := 4176
;
when 12679 =>
table_value := 4144
;
when 12680 =>
table_value := 4112
;
when 12681 =>
table_value := 4080
;
when 12682 =>
table_value := 4048
;
when 12683 =>
table_value := 4016
;
when 12684 =>
table_value := 3952
;
when 12685 =>
table_value := 3904
;
when 12686 =>
table_value := 3856
;
when 12687 =>
table_value := 3824
;
when 12688 =>
table_value := 3760
;
when 12689 =>
table_value := 3696
;
when 12690 =>
table_value := 3648
;
when 12691 =>
table_value := 3584
;
when 12692 =>
table_value := 3536
;
when 12693 =>
table_value := 3472
;
when 12694 =>
table_value := 3424
;
when 12695 =>
table_value := 3360
;
when 12696 =>
table_value := 3296
;
when 12697 =>
table_value := 3232
;
when 12698 =>
table_value := 3184
;
when 12699 =>
table_value := 3120
;
when 12700 =>
table_value := 3056
;
when 12701 =>
table_value := 2992
;
when 12702 =>
table_value := 2944
;
when 12703 =>
table_value := 2880
;
when 12704 =>
table_value := 2832
;
when 12705 =>
table_value := 2768
;
when 12706 =>
table_value := 2704
;
when 12707 =>
table_value := 2640
;
when 12708 =>
table_value := 2576
;
when 12709 =>
table_value := 2512
;
when 12710 =>
table_value := 2464
;
when 12711 =>
table_value := 2416
;
when 12712 =>
table_value := 2352
;
when 12713 =>
table_value := 2288
;
when 12714 =>
table_value := 2240
;
when 12715 =>
table_value := 2176
;
when 12716 =>
table_value := 2144
;
when 12717 =>
table_value := 2080
;
when 12718 =>
table_value := 2032
;
when 12719 =>
table_value := 1968
;
when 12720 =>
table_value := 1920
;
when 12721 =>
table_value := 1872
;
when 12722 =>
table_value := 1824
;
when 12723 =>
table_value := 1744
;
when 12724 =>
table_value := 1696
;
when 12725 =>
table_value := 1616
;
when 12726 =>
table_value := 1568
;
when 12727 =>
table_value := 1504
;
when 12728 =>
table_value := 1440
;
when 12729 =>
table_value := 1376
;
when 12730 =>
table_value := 1328
;
when 12731 =>
table_value := 1248
;
when 12732 =>
table_value := 1200
;
when 12733 =>
table_value := 1120
;
when 12734 =>
table_value := 1040
;
when 12735 =>
table_value := 992
;
when 12736 =>
table_value := 944
;
when 12737 =>
table_value := 880
;
when 12738 =>
table_value := 816
;
when 12739 =>
table_value := 768
;
when 12740 =>
table_value := 704
;
when 12741 =>
table_value := 624
;
when 12742 =>
table_value := 608
;
when 12743 =>
table_value := 592
;
when 12744 =>
table_value := 480
;
when 12745 =>
table_value := 416
;
when 12746 =>
table_value := 368
;
when 12747 =>
table_value := 304
;
when 12748 =>
table_value := 256
;
when 12749 =>
table_value := 208
;
when 12750 =>
table_value := 176
;
when 12751 =>
table_value := 112
;
when 12752 =>
table_value := 64
;
when 12753 =>
table_value := 32
;
when 12754 =>
table_value := 0
;
when 12755 =>
table_value := 1048544
;
when 12756 =>
table_value := 1048512
;
when 12757 =>
table_value := 1048464
;
when 12758 =>
table_value := 1048416
;
when 12759 =>
table_value := 1048400
;
when 12760 =>
table_value := 1048368
;
when 12761 =>
table_value := 1048352
;
when 12762 =>
table_value := 1048320
;
when 12763 =>
table_value := 1048336
;
when 12764 =>
table_value := 1048304
;
when 12765 =>
table_value := 1048288
;
when 12766 =>
table_value := 1048272
;
when 12767 =>
table_value := 1048272
;
when 12768 =>
table_value := 1048272
;
when 12769 =>
table_value := 1048256
;
when 12770 =>
table_value := 1048256
;
when 12771 =>
table_value := 1048256
;
when 12772 =>
table_value := 1048240
;
when 12773 =>
table_value := 1048240
;
when 12774 =>
table_value := 1048256
;
when 12775 =>
table_value := 1048256
;
when 12776 =>
table_value := 1048256
;
when 12777 =>
table_value := 1048272
;
when 12778 =>
table_value := 1048272
;
when 12779 =>
table_value := 1048288
;
when 12780 =>
table_value := 1048304
;
when 12781 =>
table_value := 1048304
;
when 12782 =>
table_value := 1048336
;
when 12783 =>
table_value := 1048368
;
when 12784 =>
table_value := 1048400
;
when 12785 =>
table_value := 1048416
;
when 12786 =>
table_value := 1048464
;
when 12787 =>
table_value := 1048464
;
when 12788 =>
table_value := 1048496
;
when 12789 =>
table_value := 1048528
;
when 12790 =>
table_value := 1048544
;
when 12791 =>
table_value := 1048560
;
when 12792 =>
table_value := 0
;
when 12793 =>
table_value := 0
;
when 12794 =>
table_value := 16
;
when 12795 =>
table_value := 48
;
when 12796 =>
table_value := 64
;
when 12797 =>
table_value := 96
;
when 12798 =>
table_value := 96
;
when 12799 =>
table_value := 128
;
when 12800 =>
table_value := 144
;
when 12801 =>
table_value := 160
;
when 12802 =>
table_value := 176
;
when 12803 =>
table_value := 192
;
when 12804 =>
table_value := 208
;
when 12805 =>
table_value := 208
;
when 12806 =>
table_value := 224
;
when 12807 =>
table_value := 224
;
when 12808 =>
table_value := 208
;
when 12809 =>
table_value := 224
;
when 12810 =>
table_value := 224
;
when 12811 =>
table_value := 208
;
when 12812 =>
table_value := 208
;
when 12813 =>
table_value := 208
;
when 12814 =>
table_value := 208
;
when 12815 =>
table_value := 192
;
when 12816 =>
table_value := 208
;
when 12817 =>
table_value := 192
;
when 12818 =>
table_value := 176
;
when 12819 =>
table_value := 160
;
when 12820 =>
table_value := 160
;
when 12821 =>
table_value := 144
;
when 12822 =>
table_value := 144
;
when 12823 =>
table_value := 144
;
when 12824 =>
table_value := 128
;
when 12825 =>
table_value := 112
;
when 12826 =>
table_value := 96
;
when 12827 =>
table_value := 80
;
when 12828 =>
table_value := 80
;
when 12829 =>
table_value := 80
;
when 12830 =>
table_value := 64
;
when 12831 =>
table_value := 80
;
when 12832 =>
table_value := 64
;
when 12833 =>
table_value := 48
;
when 12834 =>
table_value := 48
;
when 12835 =>
table_value := 32
;
when 12836 =>
table_value := 16
;
when 12837 =>
table_value := 16
;
when 12838 =>
table_value := 16
;
when 12839 =>
table_value := 0
;
when 12840 =>
table_value := 0
;
when 12841 =>
table_value := 0
;
when 12842 =>
table_value := 0
;
when 12843 =>
table_value := 0
;
when 12844 =>
table_value := 1048560
;
when 12845 =>
table_value := 1048544
;
when 12846 =>
table_value := 1048560
;
when 12847 =>
table_value := 1048560
;
when 12848 =>
table_value := 1048544
;
when 12849 =>
table_value := 1048528
;
when 12850 =>
table_value := 1048528
;
when 12851 =>
table_value := 1048512
;
when 12852 =>
table_value := 1048512
;
when 12853 =>
table_value := 1048480
;
when 12854 =>
table_value := 1048480
;
when 12855 =>
table_value := 1048448
;
when 12856 =>
table_value := 1048416
;
when 12857 =>
table_value := 1048400
;
when 12858 =>
table_value := 1048368
;
when 12859 =>
table_value := 1048352
;
when 12860 =>
table_value := 1048304
;
when 12861 =>
table_value := 1048288
;
when 12862 =>
table_value := 1048256
;
when 12863 =>
table_value := 1048208
;
when 12864 =>
table_value := 1048176
;
when 12865 =>
table_value := 1048128
;
when 12866 =>
table_value := 1048096
;
when 12867 =>
table_value := 1048064
;
when 12868 =>
table_value := 1047984
;
when 12869 =>
table_value := 1047952
;
when 12870 =>
table_value := 1047888
;
when 12871 =>
table_value := 1047824
;
when 12872 =>
table_value := 1047776
;
when 12873 =>
table_value := 1047696
;
when 12874 =>
table_value := 1047648
;
when 12875 =>
table_value := 1047568
;
when 12876 =>
table_value := 1047504
;
when 12877 =>
table_value := 1047424
;
when 12878 =>
table_value := 1047360
;
when 12879 =>
table_value := 1047280
;
when 12880 =>
table_value := 1047184
;
when 12881 =>
table_value := 1047104
;
when 12882 =>
table_value := 1047024
;
when 12883 =>
table_value := 1046928
;
when 12884 =>
table_value := 1046832
;
when 12885 =>
table_value := 1046736
;
when 12886 =>
table_value := 1046656
;
when 12887 =>
table_value := 1046544
;
when 12888 =>
table_value := 1046432
;
when 12889 =>
table_value := 1046352
;
when 12890 =>
table_value := 1046240
;
when 12891 =>
table_value := 1046160
;
when 12892 =>
table_value := 1046032
;
when 12893 =>
table_value := 1045936
;
when 12894 =>
table_value := 1045840
;
when 12895 =>
table_value := 1045744
;
when 12896 =>
table_value := 1045648
;
when 12897 =>
table_value := 1045568
;
when 12898 =>
table_value := 1045472
;
when 12899 =>
table_value := 1045376
;
when 12900 =>
table_value := 1045296
;
when 12901 =>
table_value := 1045184
;
when 12902 =>
table_value := 1045104
;
when 12903 =>
table_value := 1044992
;
when 12904 =>
table_value := 1044896
;
when 12905 =>
table_value := 1044832
;
when 12906 =>
table_value := 1044736
;
when 12907 =>
table_value := 1044656
;
when 12908 =>
table_value := 1044560
;
when 12909 =>
table_value := 1044496
;
when 12910 =>
table_value := 1044400
;
when 12911 =>
table_value := 1044336
;
when 12912 =>
table_value := 1044256
;
when 12913 =>
table_value := 1044192
;
when 12914 =>
table_value := 1044128
;
when 12915 =>
table_value := 1044064
;
when 12916 =>
table_value := 1044000
;
when 12917 =>
table_value := 1043952
;
when 12918 =>
table_value := 1043888
;
when 12919 =>
table_value := 1043840
;
when 12920 =>
table_value := 1043792
;
when 12921 =>
table_value := 1043760
;
when 12922 =>
table_value := 1043712
;
when 12923 =>
table_value := 1043664
;
when 12924 =>
table_value := 1043632
;
when 12925 =>
table_value := 1043568
;
when 12926 =>
table_value := 1043536
;
when 12927 =>
table_value := 1043488
;
when 12928 =>
table_value := 1043472
;
when 12929 =>
table_value := 1043424
;
when 12930 =>
table_value := 1043392
;
when 12931 =>
table_value := 1043344
;
when 12932 =>
table_value := 1043344
;
when 12933 =>
table_value := 1043312
;
when 12934 =>
table_value := 1043296
;
when 12935 =>
table_value := 1043264
;
when 12936 =>
table_value := 1043248
;
when 12937 =>
table_value := 1043200
;
when 12938 =>
table_value := 1043168
;
when 12939 =>
table_value := 1043168
;
when 12940 =>
table_value := 1043136
;
when 12941 =>
table_value := 1043120
;
when 12942 =>
table_value := 1043104
;
when 12943 =>
table_value := 1043088
;
when 12944 =>
table_value := 1043088
;
when 12945 =>
table_value := 1043040
;
when 12946 =>
table_value := 1043040
;
when 12947 =>
table_value := 1043024
;
when 12948 =>
table_value := 1042992
;
when 12949 =>
table_value := 1042992
;
when 12950 =>
table_value := 1042960
;
when 12951 =>
table_value := 1042944
;
when 12952 =>
table_value := 1042944
;
when 12953 =>
table_value := 1042928
;
when 12954 =>
table_value := 1042928
;
when 12955 =>
table_value := 1042928
;
when 12956 =>
table_value := 1042896
;
when 12957 =>
table_value := 1042880
;
when 12958 =>
table_value := 1042896
;
when 12959 =>
table_value := 1042896
;
when 12960 =>
table_value := 1042896
;
when 12961 =>
table_value := 1042896
;
when 12962 =>
table_value := 1042880
;
when 12963 =>
table_value := 1042896
;
when 12964 =>
table_value := 1042896
;
when 12965 =>
table_value := 1042896
;
when 12966 =>
table_value := 1042896
;
when 12967 =>
table_value := 1042928
;
when 12968 =>
table_value := 1042912
;
when 12969 =>
table_value := 1042944
;
when 12970 =>
table_value := 1042960
;
when 12971 =>
table_value := 1042960
;
when 12972 =>
table_value := 1042992
;
when 12973 =>
table_value := 1043008
;
when 12974 =>
table_value := 1043024
;
when 12975 =>
table_value := 1043072
;
when 12976 =>
table_value := 1043104
;
when 12977 =>
table_value := 1043120
;
when 12978 =>
table_value := 1043152
;
when 12979 =>
table_value := 1043184
;
when 12980 =>
table_value := 1043216
;
when 12981 =>
table_value := 1043280
;
when 12982 =>
table_value := 1043312
;
when 12983 =>
table_value := 1043344
;
when 12984 =>
table_value := 1043424
;
when 12985 =>
table_value := 1043456
;
when 12986 =>
table_value := 1043504
;
when 12987 =>
table_value := 1043584
;
when 12988 =>
table_value := 1043632
;
when 12989 =>
table_value := 1043696
;
when 12990 =>
table_value := 1043744
;
when 12991 =>
table_value := 1043808
;
when 12992 =>
table_value := 1043872
;
when 12993 =>
table_value := 1043936
;
when 12994 =>
table_value := 1044032
;
when 12995 =>
table_value := 1044096
;
when 12996 =>
table_value := 1044176
;
when 12997 =>
table_value := 1044256
;
when 12998 =>
table_value := 1044320
;
when 12999 =>
table_value := 1044432
;
when 13000 =>
table_value := 1044496
;
when 13001 =>
table_value := 1044624
;
when 13002 =>
table_value := 1044720
;
when 13003 =>
table_value := 1044816
;
when 13004 =>
table_value := 1044912
;
when 13005 =>
table_value := 1045040
;
when 13006 =>
table_value := 1045136
;
when 13007 =>
table_value := 1045264
;
when 13008 =>
table_value := 1045344
;
when 13009 =>
table_value := 1045456
;
when 13010 =>
table_value := 1045584
;
when 13011 =>
table_value := 1045712
;
when 13012 =>
table_value := 1045808
;
when 13013 =>
table_value := 1045920
;
when 13014 =>
table_value := 1046048
;
when 13015 =>
table_value := 1046160
;
when 13016 =>
table_value := 1046272
;
when 13017 =>
table_value := 1046400
;
when 13018 =>
table_value := 1046512
;
when 13019 =>
table_value := 1046624
;
when 13020 =>
table_value := 1046736
;
when 13021 =>
table_value := 1046848
;
when 13022 =>
table_value := 1046960
;
when 13023 =>
table_value := 1047072
;
when 13024 =>
table_value := 1047184
;
when 13025 =>
table_value := 1047264
;
when 13026 =>
table_value := 1047376
;
when 13027 =>
table_value := 1047472
;
when 13028 =>
table_value := 1047568
;
when 13029 =>
table_value := 1047664
;
when 13030 =>
table_value := 1047776
;
when 13031 =>
table_value := 1047840
;
when 13032 =>
table_value := 1047936
;
when 13033 =>
table_value := 1048000
;
when 13034 =>
table_value := 1048080
;
when 13035 =>
table_value := 1048160
;
when 13036 =>
table_value := 1048224
;
when 13037 =>
table_value := 1048288
;
when 13038 =>
table_value := 1048368
;
when 13039 =>
table_value := 1048432
;
when 13040 =>
table_value := 1048496
;
when 13041 =>
table_value := 1048544
;
when 13042 =>
table_value := 0
;
when 13043 =>
table_value := 32
;
when 13044 =>
table_value := 64
;
when 13045 =>
table_value := 112
;
when 13046 =>
table_value := 144
;
when 13047 =>
table_value := 176
;
when 13048 =>
table_value := 208
;
when 13049 =>
table_value := 272
;
when 13050 =>
table_value := 304
;
when 13051 =>
table_value := 304
;
when 13052 =>
table_value := 368
;
when 13053 =>
table_value := 384
;
when 13054 =>
table_value := 400
;
when 13055 =>
table_value := 432
;
when 13056 =>
table_value := 464
;
when 13057 =>
table_value := 480
;
when 13058 =>
table_value := 512
;
when 13059 =>
table_value := 528
;
when 13060 =>
table_value := 576
;
when 13061 =>
table_value := 608
;
when 13062 =>
table_value := 608
;
when 13063 =>
table_value := 640
;
when 13064 =>
table_value := 672
;
when 13065 =>
table_value := 688
;
when 13066 =>
table_value := 720
;
when 13067 =>
table_value := 752
;
when 13068 =>
table_value := 768
;
when 13069 =>
table_value := 784
;
when 13070 =>
table_value := 800
;
when 13071 =>
table_value := 832
;
when 13072 =>
table_value := 848
;
when 13073 =>
table_value := 880
;
when 13074 =>
table_value := 912
;
when 13075 =>
table_value := 928
;
when 13076 =>
table_value := 960
;
when 13077 =>
table_value := 992
;
when 13078 =>
table_value := 1008
;
when 13079 =>
table_value := 1024
;
when 13080 =>
table_value := 1072
;
when 13081 =>
table_value := 1088
;
when 13082 =>
table_value := 1104
;
when 13083 =>
table_value := 1136
;
when 13084 =>
table_value := 1152
;
when 13085 =>
table_value := 1168
;
when 13086 =>
table_value := 1200
;
when 13087 =>
table_value := 1200
;
when 13088 =>
table_value := 1216
;
when 13089 =>
table_value := 1232
;
when 13090 =>
table_value := 1248
;
when 13091 =>
table_value := 1264
;
when 13092 =>
table_value := 1280
;
when 13093 =>
table_value := 1296
;
when 13094 =>
table_value := 1296
;
when 13095 =>
table_value := 1312
;
when 13096 =>
table_value := 1312
;
when 13097 =>
table_value := 1328
;
when 13098 =>
table_value := 1344
;
when 13099 =>
table_value := 1360
;
when 13100 =>
table_value := 1376
;
when 13101 =>
table_value := 1376
;
when 13102 =>
table_value := 1392
;
when 13103 =>
table_value := 1392
;
when 13104 =>
table_value := 1392
;
when 13105 =>
table_value := 1392
;
when 13106 =>
table_value := 1392
;
when 13107 =>
table_value := 1392
;
when 13108 =>
table_value := 1376
;
when 13109 =>
table_value := 1392
;
when 13110 =>
table_value := 1392
;
when 13111 =>
table_value := 1376
;
when 13112 =>
table_value := 1376
;
when 13113 =>
table_value := 1360
;
when 13114 =>
table_value := 1328
;
when 13115 =>
table_value := 1344
;
when 13116 =>
table_value := 1312
;
when 13117 =>
table_value := 1296
;
when 13118 =>
table_value := 1264
;
when 13119 =>
table_value := 1248
;
when 13120 =>
table_value := 1232
;
when 13121 =>
table_value := 1232
;
when 13122 =>
table_value := 1184
;
when 13123 =>
table_value := 1152
;
when 13124 =>
table_value := 1136
;
when 13125 =>
table_value := 1120
;
when 13126 =>
table_value := 1072
;
when 13127 =>
table_value := 1072
;
when 13128 =>
table_value := 1040
;
when 13129 =>
table_value := 1008
;
when 13130 =>
table_value := 992
;
when 13131 =>
table_value := 960
;
when 13132 =>
table_value := 944
;
when 13133 =>
table_value := 928
;
when 13134 =>
table_value := 912
;
when 13135 =>
table_value := 880
;
when 13136 =>
table_value := 848
;
when 13137 =>
table_value := 832
;
when 13138 =>
table_value := 800
;
when 13139 =>
table_value := 768
;
when 13140 =>
table_value := 768
;
when 13141 =>
table_value := 752
;
when 13142 =>
table_value := 704
;
when 13143 =>
table_value := 704
;
when 13144 =>
table_value := 688
;
when 13145 =>
table_value := 672
;
when 13146 =>
table_value := 656
;
when 13147 =>
table_value := 624
;
when 13148 =>
table_value := 608
;
when 13149 =>
table_value := 576
;
when 13150 =>
table_value := 544
;
when 13151 =>
table_value := 512
;
when 13152 =>
table_value := 512
;
when 13153 =>
table_value := 448
;
when 13154 =>
table_value := 416
;
when 13155 =>
table_value := 384
;
when 13156 =>
table_value := 320
;
when 13157 =>
table_value := 304
;
when 13158 =>
table_value := 256
;
when 13159 =>
table_value := 224
;
when 13160 =>
table_value := 160
;
when 13161 =>
table_value := 128
;
when 13162 =>
table_value := 64
;
when 13163 =>
table_value := 16
;
when 13164 =>
table_value := 0
;
when 13165 =>
table_value := 1048512
;
when 13166 =>
table_value := 1048480
;
when 13167 =>
table_value := 1048400
;
when 13168 =>
table_value := 1048352
;
when 13169 =>
table_value := 1048272
;
when 13170 =>
table_value := 1048240
;
when 13171 =>
table_value := 1048176
;
when 13172 =>
table_value := 1048096
;
when 13173 =>
table_value := 1048064
;
when 13174 =>
table_value := 1047984
;
when 13175 =>
table_value := 1047936
;
when 13176 =>
table_value := 1047888
;
when 13177 =>
table_value := 1047840
;
when 13178 =>
table_value := 1047808
;
when 13179 =>
table_value := 1047728
;
when 13180 =>
table_value := 1047712
;
when 13181 =>
table_value := 1047648
;
when 13182 =>
table_value := 1047616
;
when 13183 =>
table_value := 1047568
;
when 13184 =>
table_value := 1047536
;
when 13185 =>
table_value := 1047472
;
when 13186 =>
table_value := 1047440
;
when 13187 =>
table_value := 1047424
;
when 13188 =>
table_value := 1047376
;
when 13189 =>
table_value := 1047344
;
when 13190 =>
table_value := 1047328
;
when 13191 =>
table_value := 1047296
;
when 13192 =>
table_value := 1047264
;
when 13193 =>
table_value := 1047264
;
when 13194 =>
table_value := 1047216
;
when 13195 =>
table_value := 1047216
;
when 13196 =>
table_value := 1047184
;
when 13197 =>
table_value := 1047168
;
when 13198 =>
table_value := 1047168
;
when 13199 =>
table_value := 1047168
;
when 13200 =>
table_value := 1047136
;
when 13201 =>
table_value := 1047152
;
when 13202 =>
table_value := 1047152
;
when 13203 =>
table_value := 1047120
;
when 13204 =>
table_value := 1047152
;
when 13205 =>
table_value := 1047136
;
when 13206 =>
table_value := 1047136
;
when 13207 =>
table_value := 1047152
;
when 13208 =>
table_value := 1047152
;
when 13209 =>
table_value := 1047168
;
when 13210 =>
table_value := 1047152
;
when 13211 =>
table_value := 1047184
;
when 13212 =>
table_value := 1047184
;
when 13213 =>
table_value := 1047200
;
when 13214 =>
table_value := 1047200
;
when 13215 =>
table_value := 1047216
;
when 13216 =>
table_value := 1047232
;
when 13217 =>
table_value := 1047264
;
when 13218 =>
table_value := 1047264
;
when 13219 =>
table_value := 1047264
;
when 13220 =>
table_value := 1047296
;
when 13221 =>
table_value := 1047296
;
when 13222 =>
table_value := 1047312
;
when 13223 =>
table_value := 1047296
;
when 13224 =>
table_value := 1047344
;
when 13225 =>
table_value := 1047328
;
when 13226 =>
table_value := 1047344
;
when 13227 =>
table_value := 1047360
;
when 13228 =>
table_value := 1047344
;
when 13229 =>
table_value := 1047360
;
when 13230 =>
table_value := 1047344
;
when 13231 =>
table_value := 1047360
;
when 13232 =>
table_value := 1047360
;
when 13233 =>
table_value := 1047344
;
when 13234 =>
table_value := 1047360
;
when 13235 =>
table_value := 1047360
;
when 13236 =>
table_value := 1047360
;
when 13237 =>
table_value := 1047344
;
when 13238 =>
table_value := 1047344
;
when 13239 =>
table_value := 1047344
;
when 13240 =>
table_value := 1047328
;
when 13241 =>
table_value := 1047344
;
when 13242 =>
table_value := 1047328
;
when 13243 =>
table_value := 1047328
;
when 13244 =>
table_value := 1047328
;
when 13245 =>
table_value := 1047312
;
when 13246 =>
table_value := 1047328
;
when 13247 =>
table_value := 1047312
;
when 13248 =>
table_value := 1047328
;
when 13249 =>
table_value := 1047296
;
when 13250 =>
table_value := 1047296
;
when 13251 =>
table_value := 1047296
;
when 13252 =>
table_value := 1047296
;
when 13253 =>
table_value := 1047296
;
when 13254 =>
table_value := 1047296
;
when 13255 =>
table_value := 1047296
;
when 13256 =>
table_value := 1047280
;
when 13257 =>
table_value := 1047296
;
when 13258 =>
table_value := 1047280
;
when 13259 =>
table_value := 1047296
;
when 13260 =>
table_value := 1047280
;
when 13261 =>
table_value := 1047296
;
when 13262 =>
table_value := 1047264
;
when 13263 =>
table_value := 1047264
;
when 13264 =>
table_value := 1047280
;
when 13265 =>
table_value := 1047280
;
when 13266 =>
table_value := 1047280
;
when 13267 =>
table_value := 1047280
;
when 13268 =>
table_value := 1047296
;
when 13269 =>
table_value := 1047280
;
when 13270 =>
table_value := 1047296
;
when 13271 =>
table_value := 1047296
;
when 13272 =>
table_value := 1047328
;
when 13273 =>
table_value := 1047312
;
when 13274 =>
table_value := 1047344
;
when 13275 =>
table_value := 1047344
;
when 13276 =>
table_value := 1047376
;
when 13277 =>
table_value := 1047408
;
when 13278 =>
table_value := 1047424
;
when 13279 =>
table_value := 1047440
;
when 13280 =>
table_value := 1047488
;
when 13281 =>
table_value := 1047488
;
when 13282 =>
table_value := 1047520
;
when 13283 =>
table_value := 1047552
;
when 13284 =>
table_value := 1047600
;
when 13285 =>
table_value := 1047616
;
when 13286 =>
table_value := 1047664
;
when 13287 =>
table_value := 1047712
;
when 13288 =>
table_value := 1047728
;
when 13289 =>
table_value := 1047776
;
when 13290 =>
table_value := 1047792
;
when 13291 =>
table_value := 1047840
;
when 13292 =>
table_value := 1047904
;
when 13293 =>
table_value := 1047952
;
when 13294 =>
table_value := 1048000
;
when 13295 =>
table_value := 1048048
;
when 13296 =>
table_value := 1048112
;
when 13297 =>
table_value := 1048128
;
when 13298 =>
table_value := 1048192
;
when 13299 =>
table_value := 1048240
;
when 13300 =>
table_value := 1048288
;
when 13301 =>
table_value := 1048352
;
when 13302 =>
table_value := 1048384
;
when 13303 =>
table_value := 1048432
;
when 13304 =>
table_value := 1048480
;
when 13305 =>
table_value := 1048528
;
when 13306 =>
table_value := 1048560
;
when 13307 =>
table_value := 0
;
when 13308 =>
table_value := 48
;
when 13309 =>
table_value := 64
;
when 13310 =>
table_value := 128
;
when 13311 =>
table_value := 144
;
when 13312 =>
table_value := 160
;
when 13313 =>
table_value := 224
;
when 13314 =>
table_value := 240
;
when 13315 =>
table_value := 256
;
when 13316 =>
table_value := 288
;
when 13317 =>
table_value := 304
;
when 13318 =>
table_value := 336
;
when 13319 =>
table_value := 352
;
when 13320 =>
table_value := 368
;
when 13321 =>
table_value := 400
;
when 13322 =>
table_value := 400
;
when 13323 =>
table_value := 416
;
when 13324 =>
table_value := 448
;
when 13325 =>
table_value := 448
;
when 13326 =>
table_value := 448
;
when 13327 =>
table_value := 480
;
when 13328 =>
table_value := 480
;
when 13329 =>
table_value := 480
;
when 13330 =>
table_value := 464
;
when 13331 =>
table_value := 480
;
when 13332 =>
table_value := 480
;
when 13333 =>
table_value := 496
;
when 13334 =>
table_value := 480
;
when 13335 =>
table_value := 480
;
when 13336 =>
table_value := 480
;
when 13337 =>
table_value := 496
;
when 13338 =>
table_value := 480
;
when 13339 =>
table_value := 496
;
when 13340 =>
table_value := 496
;
when 13341 =>
table_value := 512
;
when 13342 =>
table_value := 496
;
when 13343 =>
table_value := 512
;
when 13344 =>
table_value := 496
;
when 13345 =>
table_value := 512
;
when 13346 =>
table_value := 528
;
when 13347 =>
table_value := 528
;
when 13348 =>
table_value := 528
;
when 13349 =>
table_value := 528
;
when 13350 =>
table_value := 528
;
when 13351 =>
table_value := 560
;
when 13352 =>
table_value := 576
;
when 13353 =>
table_value := 592
;
when 13354 =>
table_value := 592
;
when 13355 =>
table_value := 608
;
when 13356 =>
table_value := 624
;
when 13357 =>
table_value := 672
;
when 13358 =>
table_value := 688
;
when 13359 =>
table_value := 704
;
when 13360 =>
table_value := 752
;
when 13361 =>
table_value := 768
;
when 13362 =>
table_value := 816
;
when 13363 =>
table_value := 832
;
when 13364 =>
table_value := 864
;
when 13365 =>
table_value := 912
;
when 13366 =>
table_value := 928
;
when 13367 =>
table_value := 976
;
when 13368 =>
table_value := 1008
;
when 13369 =>
table_value := 1024
;
when 13370 =>
table_value := 1072
;
when 13371 =>
table_value := 1088
;
when 13372 =>
table_value := 1104
;
when 13373 =>
table_value := 1136
;
when 13374 =>
table_value := 1184
;
when 13375 =>
table_value := 1200
;
when 13376 =>
table_value := 1248
;
when 13377 =>
table_value := 1296
;
when 13378 =>
table_value := 1328
;
when 13379 =>
table_value := 1360
;
when 13380 =>
table_value := 1392
;
when 13381 =>
table_value := 1440
;
when 13382 =>
table_value := 1440
;
when 13383 =>
table_value := 1472
;
when 13384 =>
table_value := 1520
;
when 13385 =>
table_value := 1552
;
when 13386 =>
table_value := 1552
;
when 13387 =>
table_value := 1584
;
when 13388 =>
table_value := 1616
;
when 13389 =>
table_value := 1632
;
when 13390 =>
table_value := 1648
;
when 13391 =>
table_value := 1664
;
when 13392 =>
table_value := 1680
;
when 13393 =>
table_value := 1696
;
when 13394 =>
table_value := 1696
;
when 13395 =>
table_value := 1696
;
when 13396 =>
table_value := 1712
;
when 13397 =>
table_value := 1712
;
when 13398 =>
table_value := 1712
;
when 13399 =>
table_value := 1696
;
when 13400 =>
table_value := 1712
;
when 13401 =>
table_value := 1728
;
when 13402 =>
table_value := 1712
;
when 13403 =>
table_value := 1696
;
when 13404 =>
table_value := 1696
;
when 13405 =>
table_value := 1680
;
when 13406 =>
table_value := 1680
;
when 13407 =>
table_value := 1680
;
when 13408 =>
table_value := 1648
;
when 13409 =>
table_value := 1632
;
when 13410 =>
table_value := 1616
;
when 13411 =>
table_value := 1616
;
when 13412 =>
table_value := 1616
;
when 13413 =>
table_value := 1616
;
when 13414 =>
table_value := 1616
;
when 13415 =>
table_value := 1616
;
when 13416 =>
table_value := 1600
;
when 13417 =>
table_value := 1616
;
when 13418 =>
table_value := 1616
;
when 13419 =>
table_value := 1616
;
when 13420 =>
table_value := 1600
;
when 13421 =>
table_value := 1616
;
when 13422 =>
table_value := 1616
;
when 13423 =>
table_value := 1616
;
when 13424 =>
table_value := 1648
;
when 13425 =>
table_value := 1664
;
when 13426 =>
table_value := 1680
;
when 13427 =>
table_value := 1696
;
when 13428 =>
table_value := 1712
;
when 13429 =>
table_value := 1744
;
when 13430 =>
table_value := 1776
;
when 13431 =>
table_value := 1792
;
when 13432 =>
table_value := 1840
;
when 13433 =>
table_value := 1856
;
when 13434 =>
table_value := 1904
;
when 13435 =>
table_value := 1936
;
when 13436 =>
table_value := 2000
;
when 13437 =>
table_value := 2032
;
when 13438 =>
table_value := 2080
;
when 13439 =>
table_value := 2128
;
when 13440 =>
table_value := 2176
;
when 13441 =>
table_value := 2240
;
when 13442 =>
table_value := 2304
;
when 13443 =>
table_value := 2336
;
when 13444 =>
table_value := 2400
;
when 13445 =>
table_value := 2464
;
when 13446 =>
table_value := 2512
;
when 13447 =>
table_value := 2560
;
when 13448 =>
table_value := 2624
;
when 13449 =>
table_value := 2672
;
when 13450 =>
table_value := 2736
;
when 13451 =>
table_value := 2784
;
when 13452 =>
table_value := 2832
;
when 13453 =>
table_value := 2896
;
when 13454 =>
table_value := 2960
;
when 13455 =>
table_value := 3024
;
when 13456 =>
table_value := 3088
;
when 13457 =>
table_value := 3136
;
when 13458 =>
table_value := 3216
;
when 13459 =>
table_value := 3264
;
when 13460 =>
table_value := 3312
;
when 13461 =>
table_value := 3360
;
when 13462 =>
table_value := 3424
;
when 13463 =>
table_value := 3488
;
when 13464 =>
table_value := 3552
;
when 13465 =>
table_value := 3600
;
when 13466 =>
table_value := 3664
;
when 13467 =>
table_value := 3696
;
when 13468 =>
table_value := 3760
;
when 13469 =>
table_value := 3808
;
when 13470 =>
table_value := 3840
;
when 13471 =>
table_value := 3904
;
when 13472 =>
table_value := 3936
;
when 13473 =>
table_value := 3984
;
when 13474 =>
table_value := 4016
;
when 13475 =>
table_value := 4080
;
when 13476 =>
table_value := 4112
;
when 13477 =>
table_value := 4160
;
when 13478 =>
table_value := 4208
;
when 13479 =>
table_value := 4240
;
when 13480 =>
table_value := 4272
;
when 13481 =>
table_value := 4320
;
when 13482 =>
table_value := 4352
;
when 13483 =>
table_value := 4400
;
when 13484 =>
table_value := 4416
;
when 13485 =>
table_value := 4448
;
when 13486 =>
table_value := 4464
;
when 13487 =>
table_value := 4496
;
when 13488 =>
table_value := 4512
;
when 13489 =>
table_value := 4544
;
when 13490 =>
table_value := 4560
;
when 13491 =>
table_value := 4576
;
when 13492 =>
table_value := 4592
;
when 13493 =>
table_value := 4624
;
when 13494 =>
table_value := 4624
;
when 13495 =>
table_value := 4640
;
when 13496 =>
table_value := 4640
;
when 13497 =>
table_value := 4688
;
when 13498 =>
table_value := 4704
;
when 13499 =>
table_value := 4688
;
when 13500 =>
table_value := 4704
;
when 13501 =>
table_value := 4720
;
when 13502 =>
table_value := 4720
;
when 13503 =>
table_value := 4720
;
when 13504 =>
table_value := 4720
;
when 13505 =>
table_value := 4720
;
when 13506 =>
table_value := 4720
;
when 13507 =>
table_value := 4720
;
when 13508 =>
table_value := 4720
;
when 13509 =>
table_value := 4768
;
when 13510 =>
table_value := 4752
;
when 13511 =>
table_value := 4736
;
when 13512 =>
table_value := 4768
;
when 13513 =>
table_value := 4752
;
when 13514 =>
table_value := 4768
;
when 13515 =>
table_value := 4768
;
when 13516 =>
table_value := 4784
;
when 13517 =>
table_value := 4768
;
when 13518 =>
table_value := 4768
;
when 13519 =>
table_value := 4768
;
when 13520 =>
table_value := 4768
;
when 13521 =>
table_value := 4784
;
when 13522 =>
table_value := 4784
;
when 13523 =>
table_value := 4800
;
when 13524 =>
table_value := 4784
;
when 13525 =>
table_value := 4784
;
when 13526 =>
table_value := 4784
;
when 13527 =>
table_value := 4784
;
when 13528 =>
table_value := 4784
;
when 13529 =>
table_value := 4784
;
when 13530 =>
table_value := 4768
;
when 13531 =>
table_value := 4768
;
when 13532 =>
table_value := 4752
;
when 13533 =>
table_value := 4752
;
when 13534 =>
table_value := 4736
;
when 13535 =>
table_value := 4720
;
when 13536 =>
table_value := 4704
;
when 13537 =>
table_value := 4704
;
when 13538 =>
table_value := 4688
;
when 13539 =>
table_value := 4672
;
when 13540 =>
table_value := 4656
;
when 13541 =>
table_value := 4608
;
when 13542 =>
table_value := 4592
;
when 13543 =>
table_value := 4560
;
when 13544 =>
table_value := 4544
;
when 13545 =>
table_value := 4512
;
when 13546 =>
table_value := 4480
;
when 13547 =>
table_value := 4448
;
when 13548 =>
table_value := 4400
;
when 13549 =>
table_value := 4384
;
when 13550 =>
table_value := 4336
;
when 13551 =>
table_value := 4320
;
when 13552 =>
table_value := 4256
;
when 13553 =>
table_value := 4224
;
when 13554 =>
table_value := 4192
;
when 13555 =>
table_value := 4160
;
when 13556 =>
table_value := 4112
;
when 13557 =>
table_value := 4096
;
when 13558 =>
table_value := 4048
;
when 13559 =>
table_value := 3984
;
when 13560 =>
table_value := 3936
;
when 13561 =>
table_value := 3872
;
when 13562 =>
table_value := 3840
;
when 13563 =>
table_value := 3776
;
when 13564 =>
table_value := 3728
;
when 13565 =>
table_value := 3664
;
when 13566 =>
table_value := 3616
;
when 13567 =>
table_value := 3552
;
when 13568 =>
table_value := 3488
;
when 13569 =>
table_value := 3424
;
when 13570 =>
table_value := 3344
;
when 13571 =>
table_value := 3296
;
when 13572 =>
table_value := 3232
;
when 13573 =>
table_value := 3152
;
when 13574 =>
table_value := 3104
;
when 13575 =>
table_value := 3024
;
when 13576 =>
table_value := 2944
;
when 13577 =>
table_value := 2880
;
when 13578 =>
table_value := 2784
;
when 13579 =>
table_value := 2720
;
when 13580 =>
table_value := 2672
;
when 13581 =>
table_value := 2560
;
when 13582 =>
table_value := 2496
;
when 13583 =>
table_value := 2416
;
when 13584 =>
table_value := 2336
;
when 13585 =>
table_value := 2272
;
when 13586 =>
table_value := 2192
;
when 13587 =>
table_value := 2128
;
when 13588 =>
table_value := 2032
;
when 13589 =>
table_value := 1968
;
when 13590 =>
table_value := 1888
;
when 13591 =>
table_value := 1808
;
when 13592 =>
table_value := 1728
;
when 13593 =>
table_value := 1680
;
when 13594 =>
table_value := 1600
;
when 13595 =>
table_value := 1536
;
when 13596 =>
table_value := 1472
;
when 13597 =>
table_value := 1392
;
when 13598 =>
table_value := 1344
;
when 13599 =>
table_value := 1264
;
when 13600 =>
table_value := 1216
;
when 13601 =>
table_value := 1152
;
when 13602 =>
table_value := 1088
;
when 13603 =>
table_value := 1008
;
when 13604 =>
table_value := 960
;
when 13605 =>
table_value := 896
;
when 13606 =>
table_value := 848
;
when 13607 =>
table_value := 784
;
when 13608 =>
table_value := 736
;
when 13609 =>
table_value := 672
;
when 13610 =>
table_value := 624
;
when 13611 =>
table_value := 560
;
when 13612 =>
table_value := 512
;
when 13613 =>
table_value := 480
;
when 13614 =>
table_value := 432
;
when 13615 =>
table_value := 384
;
when 13616 =>
table_value := 336
;
when 13617 =>
table_value := 288
;
when 13618 =>
table_value := 256
;
when 13619 =>
table_value := 208
;
when 13620 =>
table_value := 160
;
when 13621 =>
table_value := 112
;
when 13622 =>
table_value := 80
;
when 13623 =>
table_value := 32
;
when 13624 =>
table_value := 0
;
when 13625 =>
table_value := 0
;
when 13626 =>
table_value := 1048512
;
when 13627 =>
table_value := 1048480
;
when 13628 =>
table_value := 1048432
;
when 13629 =>
table_value := 1048384
;
when 13630 =>
table_value := 1048352
;
when 13631 =>
table_value := 1048320
;
when 13632 =>
table_value := 1048272
;
when 13633 =>
table_value := 1048240
;
when 13634 =>
table_value := 1048192
;
when 13635 =>
table_value := 1048128
;
when 13636 =>
table_value := 1048096
;
when 13637 =>
table_value := 1048048
;
when 13638 =>
table_value := 1048000
;
when 13639 =>
table_value := 1047968
;
when 13640 =>
table_value := 1047904
;
when 13641 =>
table_value := 1047856
;
when 13642 =>
table_value := 1047792
;
when 13643 =>
table_value := 1047744
;
when 13644 =>
table_value := 1047696
;
when 13645 =>
table_value := 1047648
;
when 13646 =>
table_value := 1047568
;
when 13647 =>
table_value := 1047504
;
when 13648 =>
table_value := 1047440
;
when 13649 =>
table_value := 1047376
;
when 13650 =>
table_value := 1047312
;
when 13651 =>
table_value := 1047248
;
when 13652 =>
table_value := 1047200
;
when 13653 =>
table_value := 1047120
;
when 13654 =>
table_value := 1047056
;
when 13655 =>
table_value := 1046992
;
when 13656 =>
table_value := 1046944
;
when 13657 =>
table_value := 1046848
;
when 13658 =>
table_value := 1046784
;
when 13659 =>
table_value := 1046704
;
when 13660 =>
table_value := 1046624
;
when 13661 =>
table_value := 1046560
;
when 13662 =>
table_value := 1046480
;
when 13663 =>
table_value := 1046416
;
when 13664 =>
table_value := 1046336
;
when 13665 =>
table_value := 1046272
;
when 13666 =>
table_value := 1046192
;
when 13667 =>
table_value := 1046128
;
when 13668 =>
table_value := 1046048
;
when 13669 =>
table_value := 1045968
;
when 13670 =>
table_value := 1045904
;
when 13671 =>
table_value := 1045824
;
when 13672 =>
table_value := 1045744
;
when 13673 =>
table_value := 1045680
;
when 13674 =>
table_value := 1045600
;
when 13675 =>
table_value := 1045552
;
when 13676 =>
table_value := 1045488
;
when 13677 =>
table_value := 1045424
;
when 13678 =>
table_value := 1045376
;
when 13679 =>
table_value := 1045312
;
when 13680 =>
table_value := 1045248
;
when 13681 =>
table_value := 1045216
;
when 13682 =>
table_value := 1045136
;
when 13683 =>
table_value := 1045104
;
when 13684 =>
table_value := 1045056
;
when 13685 =>
table_value := 1045008
;
when 13686 =>
table_value := 1044944
;
when 13687 =>
table_value := 1044896
;
when 13688 =>
table_value := 1044864
;
when 13689 =>
table_value := 1044816
;
when 13690 =>
table_value := 1044784
;
when 13691 =>
table_value := 1044736
;
when 13692 =>
table_value := 1044720
;
when 13693 =>
table_value := 1044656
;
when 13694 =>
table_value := 1044640
;
when 13695 =>
table_value := 1044592
;
when 13696 =>
table_value := 1044560
;
when 13697 =>
table_value := 1044544
;
when 13698 =>
table_value := 1044512
;
when 13699 =>
table_value := 1044496
;
when 13700 =>
table_value := 1044464
;
when 13701 =>
table_value := 1044464
;
when 13702 =>
table_value := 1044432
;
when 13703 =>
table_value := 1044416
;
when 13704 =>
table_value := 1044416
;
when 13705 =>
table_value := 1044368
;
when 13706 =>
table_value := 1044384
;
when 13707 =>
table_value := 1044368
;
when 13708 =>
table_value := 1044368
;
when 13709 =>
table_value := 1044336
;
when 13710 =>
table_value := 1044336
;
when 13711 =>
table_value := 1044336
;
when 13712 =>
table_value := 1044320
;
when 13713 =>
table_value := 1044320
;
when 13714 =>
table_value := 1044304
;
when 13715 =>
table_value := 1044304
;
when 13716 =>
table_value := 1044304
;
when 13717 =>
table_value := 1044304
;
when 13718 =>
table_value := 1044288
;
when 13719 =>
table_value := 1044272
;
when 13720 =>
table_value := 1044288
;
when 13721 =>
table_value := 1044304
;
when 13722 =>
table_value := 1044288
;
when 13723 =>
table_value := 1044304
;
when 13724 =>
table_value := 1044304
;
when 13725 =>
table_value := 1044304
;
when 13726 =>
table_value := 1044288
;
when 13727 =>
table_value := 1044304
;
when 13728 =>
table_value := 1044320
;
when 13729 =>
table_value := 1044320
;
when 13730 =>
table_value := 1044320
;
when 13731 =>
table_value := 1044336
;
when 13732 =>
table_value := 1044336
;
when 13733 =>
table_value := 1044352
;
when 13734 =>
table_value := 1044368
;
when 13735 =>
table_value := 1044368
;
when 13736 =>
table_value := 1044384
;
when 13737 =>
table_value := 1044400
;
when 13738 =>
table_value := 1044416
;
when 13739 =>
table_value := 1044432
;
when 13740 =>
table_value := 1044448
;
when 13741 =>
table_value := 1044464
;
when 13742 =>
table_value := 1044480
;
when 13743 =>
table_value := 1044496
;
when 13744 =>
table_value := 1044512
;
when 13745 =>
table_value := 1044512
;
when 13746 =>
table_value := 1044544
;
when 13747 =>
table_value := 1044560
;
when 13748 =>
table_value := 1044560
;
when 13749 =>
table_value := 1044592
;
when 13750 =>
table_value := 1044608
;
when 13751 =>
table_value := 1044624
;
when 13752 =>
table_value := 1044640
;
when 13753 =>
table_value := 1044640
;
when 13754 =>
table_value := 1044672
;
when 13755 =>
table_value := 1044672
;
when 13756 =>
table_value := 1044688
;
when 13757 =>
table_value := 1044704
;
when 13758 =>
table_value := 1044720
;
when 13759 =>
table_value := 1044736
;
when 13760 =>
table_value := 1044752
;
when 13761 =>
table_value := 1044752
;
when 13762 =>
table_value := 1044768
;
when 13763 =>
table_value := 1044768
;
when 13764 =>
table_value := 1044800
;
when 13765 =>
table_value := 1044816
;
when 13766 =>
table_value := 1044832
;
when 13767 =>
table_value := 1044848
;
when 13768 =>
table_value := 1044880
;
when 13769 =>
table_value := 1044880
;
when 13770 =>
table_value := 1044896
;
when 13771 =>
table_value := 1044912
;
when 13772 =>
table_value := 1044944
;
when 13773 =>
table_value := 1044944
;
when 13774 =>
table_value := 1044960
;
when 13775 =>
table_value := 1044976
;
when 13776 =>
table_value := 1045024
;
when 13777 =>
table_value := 1045056
;
when 13778 =>
table_value := 1045072
;
when 13779 =>
table_value := 1045104
;
when 13780 =>
table_value := 1045136
;
when 13781 =>
table_value := 1045168
;
when 13782 =>
table_value := 1045200
;
when 13783 =>
table_value := 1045248
;
when 13784 =>
table_value := 1045280
;
when 13785 =>
table_value := 1045312
;
when 13786 =>
table_value := 1045344
;
when 13787 =>
table_value := 1045408
;
when 13788 =>
table_value := 1045440
;
when 13789 =>
table_value := 1045472
;
when 13790 =>
table_value := 1045504
;
when 13791 =>
table_value := 1045552
;
when 13792 =>
table_value := 1045584
;
when 13793 =>
table_value := 1045648
;
when 13794 =>
table_value := 1045680
;
when 13795 =>
table_value := 1045728
;
when 13796 =>
table_value := 1045792
;
when 13797 =>
table_value := 1045824
;
when 13798 =>
table_value := 1045872
;
when 13799 =>
table_value := 1045920
;
when 13800 =>
table_value := 1045968
;
when 13801 =>
table_value := 1046032
;
when 13802 =>
table_value := 1046064
;
when 13803 =>
table_value := 1046112
;
when 13804 =>
table_value := 1046176
;
when 13805 =>
table_value := 1046224
;
when 13806 =>
table_value := 1046304
;
when 13807 =>
table_value := 1046352
;
when 13808 =>
table_value := 1046416
;
when 13809 =>
table_value := 1046480
;
when 13810 =>
table_value := 1046528
;
when 13811 =>
table_value := 1046576
;
when 13812 =>
table_value := 1046640
;
when 13813 =>
table_value := 1046688
;
when 13814 =>
table_value := 1046768
;
when 13815 =>
table_value := 1046816
;
when 13816 =>
table_value := 1046880
;
when 13817 =>
table_value := 1046928
;
when 13818 =>
table_value := 1046976
;
when 13819 =>
table_value := 1047040
;
when 13820 =>
table_value := 1047104
;
when 13821 =>
table_value := 1047152
;
when 13822 =>
table_value := 1047200
;
when 13823 =>
table_value := 1047248
;
when 13824 =>
table_value := 1047296
;
when 13825 =>
table_value := 1047344
;
when 13826 =>
table_value := 1047392
;
when 13827 =>
table_value := 1047456
;
when 13828 =>
table_value := 1047504
;
when 13829 =>
table_value := 1047520
;
when 13830 =>
table_value := 1047584
;
when 13831 =>
table_value := 1047648
;
when 13832 =>
table_value := 1047664
;
when 13833 =>
table_value := 1047712
;
when 13834 =>
table_value := 1047744
;
when 13835 =>
table_value := 1047792
;
when 13836 =>
table_value := 1047808
;
when 13837 =>
table_value := 1047872
;
when 13838 =>
table_value := 1047888
;
when 13839 =>
table_value := 1047920
;
when 13840 =>
table_value := 1047968
;
when 13841 =>
table_value := 1047984
;
when 13842 =>
table_value := 1048016
;
when 13843 =>
table_value := 1048048
;
when 13844 =>
table_value := 1048080
;
when 13845 =>
table_value := 1048096
;
when 13846 =>
table_value := 1048128
;
when 13847 =>
table_value := 1048160
;
when 13848 =>
table_value := 1048176
;
when 13849 =>
table_value := 1048208
;
when 13850 =>
table_value := 1048224
;
when 13851 =>
table_value := 1048240
;
when 13852 =>
table_value := 1048256
;
when 13853 =>
table_value := 1048288
;
when 13854 =>
table_value := 1048288
;
when 13855 =>
table_value := 1048304
;
when 13856 =>
table_value := 1048336
;
when 13857 =>
table_value := 1048336
;
when 13858 =>
table_value := 1048368
;
when 13859 =>
table_value := 1048368
;
when 13860 =>
table_value := 1048400
;
when 13861 =>
table_value := 1048416
;
when 13862 =>
table_value := 1048432
;
when 13863 =>
table_value := 1048448
;
when 13864 =>
table_value := 1048464
;
when 13865 =>
table_value := 1048496
;
when 13866 =>
table_value := 1048496
;
when 13867 =>
table_value := 1048512
;
when 13868 =>
table_value := 1048512
;
when 13869 =>
table_value := 1048512
;
when 13870 =>
table_value := 1048528
;
when 13871 =>
table_value := 1048528
;
when 13872 =>
table_value := 1048560
;
when 13873 =>
table_value := 1048560
;
when 13874 =>
table_value := 0
;
when 13875 =>
table_value := 0
;
when 13876 =>
table_value := 0
;
when 13877 =>
table_value := 0
;
when 13878 =>
table_value := 0
;
when 13879 =>
table_value := 16
;
when 13880 =>
table_value := 48
;
when 13881 =>
table_value := 48
;
when 13882 =>
table_value := 48
;
when 13883 =>
table_value := 48
;
when 13884 =>
table_value := 48
;
when 13885 =>
table_value := 48
;
when 13886 =>
table_value := 64
;
when 13887 =>
table_value := 80
;
when 13888 =>
table_value := 64
;
when 13889 =>
table_value := 64
;
when 13890 =>
table_value := 64
;
when 13891 =>
table_value := 64
;
when 13892 =>
table_value := 64
;
when 13893 =>
table_value := 64
;
when 13894 =>
table_value := 48
;
when 13895 =>
table_value := 48
;
when 13896 =>
table_value := 48
;
when 13897 =>
table_value := 16
;
when 13898 =>
table_value := 32
;
when 13899 =>
table_value := 16
;
when 13900 =>
table_value := 0
;
when 13901 =>
table_value := 0
;
when 13902 =>
table_value := 0
;
when 13903 =>
table_value := 0
;
when 13904 =>
table_value := 0
;
when 13905 =>
table_value := 0
;
when 13906 =>
table_value := 1048560
;
when 13907 =>
table_value := 1048544
;
when 13908 =>
table_value := 1048528
;
when 13909 =>
table_value := 1048528
;
when 13910 =>
table_value := 1048528
;
when 13911 =>
table_value := 1048496
;
when 13912 =>
table_value := 1048496
;
when 13913 =>
table_value := 1048464
;
when 13914 =>
table_value := 1048448
;
when 13915 =>
table_value := 1048432
;
when 13916 =>
table_value := 1048416
;
when 13917 =>
table_value := 1048400
;
when 13918 =>
table_value := 1048400
;
when 13919 =>
table_value := 1048368
;
when 13920 =>
table_value := 1048336
;
when 13921 =>
table_value := 1048336
;
when 13922 =>
table_value := 1048304
;
when 13923 =>
table_value := 1048272
;
when 13924 =>
table_value := 1048272
;
when 13925 =>
table_value := 1048256
;
when 13926 =>
table_value := 1048256
;
when 13927 =>
table_value := 1048224
;
when 13928 =>
table_value := 1048224
;
when 13929 =>
table_value := 1048192
;
when 13930 =>
table_value := 1048192
;
when 13931 =>
table_value := 1048176
;
when 13932 =>
table_value := 1048160
;
when 13933 =>
table_value := 1048160
;
when 13934 =>
table_value := 1048128
;
when 13935 =>
table_value := 1048128
;
when 13936 =>
table_value := 1048112
;
when 13937 =>
table_value := 1048112
;
when 13938 =>
table_value := 1048096
;
when 13939 =>
table_value := 1048096
;
when 13940 =>
table_value := 1048064
;
when 13941 =>
table_value := 1048064
;
when 13942 =>
table_value := 1048048
;
when 13943 =>
table_value := 1048048
;
when 13944 =>
table_value := 1048032
;
when 13945 =>
table_value := 1048016
;
when 13946 =>
table_value := 1048016
;
when 13947 =>
table_value := 1048016
;
when 13948 =>
table_value := 1048000
;
when 13949 =>
table_value := 1047984
;
when 13950 =>
table_value := 1047952
;
when 13951 =>
table_value := 1047936
;
when 13952 =>
table_value := 1047920
;
when 13953 =>
table_value := 1047904
;
when 13954 =>
table_value := 1047872
;
when 13955 =>
table_value := 1047872
;
when 13956 =>
table_value := 1047840
;
when 13957 =>
table_value := 1047824
;
when 13958 =>
table_value := 1047792
;
when 13959 =>
table_value := 1047760
;
when 13960 =>
table_value := 1047744
;
when 13961 =>
table_value := 1047712
;
when 13962 =>
table_value := 1047712
;
when 13963 =>
table_value := 1047664
;
when 13964 =>
table_value := 1047648
;
when 13965 =>
table_value := 1047600
;
when 13966 =>
table_value := 1047584
;
when 13967 =>
table_value := 1047568
;
when 13968 =>
table_value := 1047536
;
when 13969 =>
table_value := 1047520
;
when 13970 =>
table_value := 1047504
;
when 13971 =>
table_value := 1047472
;
when 13972 =>
table_value := 1047456
;
when 13973 =>
table_value := 1047408
;
when 13974 =>
table_value := 1047392
;
when 13975 =>
table_value := 1047376
;
when 13976 =>
table_value := 1047344
;
when 13977 =>
table_value := 1047344
;
when 13978 =>
table_value := 1047328
;
when 13979 =>
table_value := 1047296
;
when 13980 =>
table_value := 1047296
;
when 13981 =>
table_value := 1047296
;
when 13982 =>
table_value := 1047264
;
when 13983 =>
table_value := 1047264
;
when 13984 =>
table_value := 1047264
;
when 13985 =>
table_value := 1047248
;
when 13986 =>
table_value := 1047232
;
when 13987 =>
table_value := 1047232
;
when 13988 =>
table_value := 1047248
;
when 13989 =>
table_value := 1047248
;
when 13990 =>
table_value := 1047248
;
when 13991 =>
table_value := 1047232
;
when 13992 =>
table_value := 1047248
;
when 13993 =>
table_value := 1047248
;
when 13994 =>
table_value := 1047248
;
when 13995 =>
table_value := 1047264
;
when 13996 =>
table_value := 1047280
;
when 13997 =>
table_value := 1047280
;
when 13998 =>
table_value := 1047296
;
when 13999 =>
table_value := 1047296
;
when 14000 =>
table_value := 1047312
;
when 14001 =>
table_value := 1047328
;
when 14002 =>
table_value := 1047360
;
when 14003 =>
table_value := 1047376
;
when 14004 =>
table_value := 1047424
;
when 14005 =>
table_value := 1047440
;
when 14006 =>
table_value := 1047472
;
when 14007 =>
table_value := 1047504
;
when 14008 =>
table_value := 1047536
;
when 14009 =>
table_value := 1047584
;
when 14010 =>
table_value := 1047632
;
when 14011 =>
table_value := 1047648
;
when 14012 =>
table_value := 1047680
;
when 14013 =>
table_value := 1047712
;
when 14014 =>
table_value := 1047760
;
when 14015 =>
table_value := 1047808
;
when 14016 =>
table_value := 1047840
;
when 14017 =>
table_value := 1047872
;
when 14018 =>
table_value := 1047920
;
when 14019 =>
table_value := 1047952
;
when 14020 =>
table_value := 1048000
;
when 14021 =>
table_value := 1048048
;
when 14022 =>
table_value := 1048080
;
when 14023 =>
table_value := 1048128
;
when 14024 =>
table_value := 1048176
;
when 14025 =>
table_value := 1048208
;
when 14026 =>
table_value := 1048256
;
when 14027 =>
table_value := 1048288
;
when 14028 =>
table_value := 1048320
;
when 14029 =>
table_value := 1048352
;
when 14030 =>
table_value := 1048384
;
when 14031 =>
table_value := 1048416
;
when 14032 =>
table_value := 1048432
;
when 14033 =>
table_value := 1048448
;
when 14034 =>
table_value := 1048480
;
when 14035 =>
table_value := 1048496
;
when 14036 =>
table_value := 1048528
;
when 14037 =>
table_value := 1048544
;
when 14038 =>
table_value := 1048560
;
when 14039 =>
table_value := 1048560
;
when 14040 =>
table_value := 0
;
when 14041 =>
table_value := 0
;
when 14042 =>
table_value := 0
;
when 14043 =>
table_value := 16
;
when 14044 =>
table_value := 0
;
when 14045 =>
table_value := 32
;
when 14046 =>
table_value := 32
;
when 14047 =>
table_value := 48
;
when 14048 =>
table_value := 48
;
when 14049 =>
table_value := 64
;
when 14050 =>
table_value := 80
;
when 14051 =>
table_value := 80
;
when 14052 =>
table_value := 112
;
when 14053 =>
table_value := 96
;
when 14054 =>
table_value := 112
;
when 14055 =>
table_value := 128
;
when 14056 =>
table_value := 144
;
when 14057 =>
table_value := 160
;
when 14058 =>
table_value := 160
;
when 14059 =>
table_value := 176
;
when 14060 =>
table_value := 192
;
when 14061 =>
table_value := 208
;
when 14062 =>
table_value := 224
;
when 14063 =>
table_value := 240
;
when 14064 =>
table_value := 256
;
when 14065 =>
table_value := 272
;
when 14066 =>
table_value := 304
;
when 14067 =>
table_value := 320
;
when 14068 =>
table_value := 336
;
when 14069 =>
table_value := 352
;
when 14070 =>
table_value := 384
;
when 14071 =>
table_value := 400
;
when 14072 =>
table_value := 448
;
when 14073 =>
table_value := 448
;
when 14074 =>
table_value := 480
;
when 14075 =>
table_value := 496
;
when 14076 =>
table_value := 528
;
when 14077 =>
table_value := 544
;
when 14078 =>
table_value := 576
;
when 14079 =>
table_value := 608
;
when 14080 =>
table_value := 608
;
when 14081 =>
table_value := 640
;
when 14082 =>
table_value := 672
;
when 14083 =>
table_value := 704
;
when 14084 =>
table_value := 720
;
when 14085 =>
table_value := 736
;
when 14086 =>
table_value := 736
;
when 14087 =>
table_value := 768
;
when 14088 =>
table_value := 768
;
when 14089 =>
table_value := 800
;
when 14090 =>
table_value := 800
;
when 14091 =>
table_value := 816
;
when 14092 =>
table_value := 832
;
when 14093 =>
table_value := 848
;
when 14094 =>
table_value := 848
;
when 14095 =>
table_value := 848
;
when 14096 =>
table_value := 864
;
when 14097 =>
table_value := 848
;
when 14098 =>
table_value := 864
;
when 14099 =>
table_value := 848
;
when 14100 =>
table_value := 848
;
when 14101 =>
table_value := 832
;
when 14102 =>
table_value := 816
;
when 14103 =>
table_value := 800
;
when 14104 =>
table_value := 784
;
when 14105 =>
table_value := 752
;
when 14106 =>
table_value := 720
;
when 14107 =>
table_value := 688
;
when 14108 =>
table_value := 656
;
when 14109 =>
table_value := 608
;
when 14110 =>
table_value := 560
;
when 14111 =>
table_value := 512
;
when 14112 =>
table_value := 464
;
when 14113 =>
table_value := 432
;
when 14114 =>
table_value := 368
;
when 14115 =>
table_value := 320
;
when 14116 =>
table_value := 272
;
when 14117 =>
table_value := 192
;
when 14118 =>
table_value := 128
;
when 14119 =>
table_value := 64
;
when 14120 =>
table_value := 0
;
when 14121 =>
table_value := 1048528
;
when 14122 =>
table_value := 1048448
;
when 14123 =>
table_value := 1048384
;
when 14124 =>
table_value := 1048304
;
when 14125 =>
table_value := 1048224
;
when 14126 =>
table_value := 1048160
;
when 14127 =>
table_value := 1048080
;
when 14128 =>
table_value := 1047984
;
when 14129 =>
table_value := 1047920
;
when 14130 =>
table_value := 1047840
;
when 14131 =>
table_value := 1047760
;
when 14132 =>
table_value := 1047680
;
when 14133 =>
table_value := 1047584
;
when 14134 =>
table_value := 1047520
;
when 14135 =>
table_value := 1047440
;
when 14136 =>
table_value := 1047344
;
when 14137 =>
table_value := 1047296
;
when 14138 =>
table_value := 1047216
;
when 14139 =>
table_value := 1047136
;
when 14140 =>
table_value := 1047088
;
when 14141 =>
table_value := 1047008
;
when 14142 =>
table_value := 1046944
;
when 14143 =>
table_value := 1046896
;
when 14144 =>
table_value := 1046832
;
when 14145 =>
table_value := 1046784
;
when 14146 =>
table_value := 1046736
;
when 14147 =>
table_value := 1046688
;
when 14148 =>
table_value := 1046640
;
when 14149 =>
table_value := 1046592
;
when 14150 =>
table_value := 1046560
;
when 14151 =>
table_value := 1046544
;
when 14152 =>
table_value := 1046512
;
when 14153 =>
table_value := 1046496
;
when 14154 =>
table_value := 1046464
;
when 14155 =>
table_value := 1046464
;
when 14156 =>
table_value := 1046448
;
when 14157 =>
table_value := 1046448
;
when 14158 =>
table_value := 1046432
;
when 14159 =>
table_value := 1046432
;
when 14160 =>
table_value := 1046448
;
when 14161 =>
table_value := 1046464
;
when 14162 =>
table_value := 1046464
;
when 14163 =>
table_value := 1046496
;
when 14164 =>
table_value := 1046512
;
when 14165 =>
table_value := 1046544
;
when 14166 =>
table_value := 1046576
;
when 14167 =>
table_value := 1046608
;
when 14168 =>
table_value := 1046672
;
when 14169 =>
table_value := 1046704
;
when 14170 =>
table_value := 1046736
;
when 14171 =>
table_value := 1046816
;
when 14172 =>
table_value := 1046848
;
when 14173 =>
table_value := 1046896
;
when 14174 =>
table_value := 1046960
;
when 14175 =>
table_value := 1047024
;
when 14176 =>
table_value := 1047072
;
when 14177 =>
table_value := 1047136
;
when 14178 =>
table_value := 1047200
;
when 14179 =>
table_value := 1047264
;
when 14180 =>
table_value := 1047344
;
when 14181 =>
table_value := 1047408
;
when 14182 =>
table_value := 1047472
;
when 14183 =>
table_value := 1047536
;
when 14184 =>
table_value := 1047616
;
when 14185 =>
table_value := 1047664
;
when 14186 =>
table_value := 1047728
;
when 14187 =>
table_value := 1047808
;
when 14188 =>
table_value := 1047872
;
when 14189 =>
table_value := 1047936
;
when 14190 =>
table_value := 1048000
;
when 14191 =>
table_value := 1048048
;
when 14192 =>
table_value := 1048128
;
when 14193 =>
table_value := 1048192
;
when 14194 =>
table_value := 1048256
;
when 14195 =>
table_value := 1048320
;
when 14196 =>
table_value := 1048368
;
when 14197 =>
table_value := 1048432
;
when 14198 =>
table_value := 1048496
;
when 14199 =>
table_value := 1048544
;
when 14200 =>
table_value := 0
;
when 14201 =>
table_value := 64
;
when 14202 =>
table_value := 112
;
when 14203 =>
table_value := 176
;
when 14204 =>
table_value := 224
;
when 14205 =>
table_value := 304
;
when 14206 =>
table_value := 352
;
when 14207 =>
table_value := 400
;
when 14208 =>
table_value := 448
;
when 14209 =>
table_value := 528
;
when 14210 =>
table_value := 592
;
when 14211 =>
table_value := 640
;
when 14212 =>
table_value := 704
;
when 14213 =>
table_value := 768
;
when 14214 =>
table_value := 848
;
when 14215 =>
table_value := 912
;
when 14216 =>
table_value := 976
;
when 14217 =>
table_value := 1040
;
when 14218 =>
table_value := 1120
;
when 14219 =>
table_value := 1200
;
when 14220 =>
table_value := 1280
;
when 14221 =>
table_value := 1344
;
when 14222 =>
table_value := 1440
;
when 14223 =>
table_value := 1520
;
when 14224 =>
table_value := 1616
;
when 14225 =>
table_value := 1696
;
when 14226 =>
table_value := 1792
;
when 14227 =>
table_value := 1872
;
when 14228 =>
table_value := 1968
;
when 14229 =>
table_value := 2064
;
when 14230 =>
table_value := 2160
;
when 14231 =>
table_value := 2272
;
when 14232 =>
table_value := 2368
;
when 14233 =>
table_value := 2464
;
when 14234 =>
table_value := 2560
;
when 14235 =>
table_value := 2688
;
when 14236 =>
table_value := 2800
;
when 14237 =>
table_value := 2896
;
when 14238 =>
table_value := 3008
;
when 14239 =>
table_value := 3120
;
when 14240 =>
table_value := 3248
;
when 14241 =>
table_value := 3360
;
when 14242 =>
table_value := 3472
;
when 14243 =>
table_value := 3584
;
when 14244 =>
table_value := 3696
;
when 14245 =>
table_value := 3808
;
when 14246 =>
table_value := 3920
;
when 14247 =>
table_value := 4032
;
when 14248 =>
table_value := 4160
;
when 14249 =>
table_value := 4272
;
when 14250 =>
table_value := 4384
;
when 14251 =>
table_value := 4480
;
when 14252 =>
table_value := 4576
;
when 14253 =>
table_value := 4688
;
when 14254 =>
table_value := 4784
;
when 14255 =>
table_value := 4880
;
when 14256 =>
table_value := 4960
;
when 14257 =>
table_value := 5056
;
when 14258 =>
table_value := 5136
;
when 14259 =>
table_value := 5232
;
when 14260 =>
table_value := 5312
;
when 14261 =>
table_value := 5392
;
when 14262 =>
table_value := 5472
;
when 14263 =>
table_value := 5552
;
when 14264 =>
table_value := 5616
;
when 14265 =>
table_value := 5664
;
when 14266 =>
table_value := 5728
;
when 14267 =>
table_value := 5792
;
when 14268 =>
table_value := 5840
;
when 14269 =>
table_value := 5872
;
when 14270 =>
table_value := 5920
;
when 14271 =>
table_value := 5952
;
when 14272 =>
table_value := 5984
;
when 14273 =>
table_value := 6016
;
when 14274 =>
table_value := 6048
;
when 14275 =>
table_value := 6064
;
when 14276 =>
table_value := 6080
;
when 14277 =>
table_value := 6096
;
when 14278 =>
table_value := 6112
;
when 14279 =>
table_value := 6112
;
when 14280 =>
table_value := 6112
;
when 14281 =>
table_value := 6112
;
when 14282 =>
table_value := 6112
;
when 14283 =>
table_value := 6112
;
when 14284 =>
table_value := 6112
;
when 14285 =>
table_value := 6096
;
when 14286 =>
table_value := 6096
;
when 14287 =>
table_value := 6080
;
when 14288 =>
table_value := 6064
;
when 14289 =>
table_value := 6032
;
when 14290 =>
table_value := 6016
;
when 14291 =>
table_value := 5984
;
when 14292 =>
table_value := 5952
;
when 14293 =>
table_value := 5936
;
when 14294 =>
table_value := 5888
;
when 14295 =>
table_value := 5872
;
when 14296 =>
table_value := 5824
;
when 14297 =>
table_value := 5792
;
when 14298 =>
table_value := 5744
;
when 14299 =>
table_value := 5696
;
when 14300 =>
table_value := 5664
;
when 14301 =>
table_value := 5600
;
when 14302 =>
table_value := 5568
;
when 14303 =>
table_value := 5504
;
when 14304 =>
table_value := 5456
;
when 14305 =>
table_value := 5408
;
when 14306 =>
table_value := 5344
;
when 14307 =>
table_value := 5312
;
when 14308 =>
table_value := 5232
;
when 14309 =>
table_value := 5168
;
when 14310 =>
table_value := 5104
;
when 14311 =>
table_value := 5024
;
when 14312 =>
table_value := 4960
;
when 14313 =>
table_value := 4912
;
when 14314 =>
table_value := 4816
;
when 14315 =>
table_value := 4752
;
when 14316 =>
table_value := 4672
;
when 14317 =>
table_value := 4576
;
when 14318 =>
table_value := 4512
;
when 14319 =>
table_value := 4448
;
when 14320 =>
table_value := 4352
;
when 14321 =>
table_value := 4256
;
when 14322 =>
table_value := 4192
;
when 14323 =>
table_value := 4096
;
when 14324 =>
table_value := 4016
;
when 14325 =>
table_value := 3936
;
when 14326 =>
table_value := 3840
;
when 14327 =>
table_value := 3744
;
when 14328 =>
table_value := 3664
;
when 14329 =>
table_value := 3552
;
when 14330 =>
table_value := 3472
;
when 14331 =>
table_value := 3376
;
when 14332 =>
table_value := 3264
;
when 14333 =>
table_value := 3184
;
when 14334 =>
table_value := 3088
;
when 14335 =>
table_value := 2976
;
when 14336 =>
table_value := 2896
;
when 14337 =>
table_value := 2784
;
when 14338 =>
table_value := 2704
;
when 14339 =>
table_value := 2608
;
when 14340 =>
table_value := 2528
;
when 14341 =>
table_value := 2416
;
when 14342 =>
table_value := 2336
;
when 14343 =>
table_value := 2240
;
when 14344 =>
table_value := 2128
;
when 14345 =>
table_value := 2048
;
when 14346 =>
table_value := 1952
;
when 14347 =>
table_value := 1872
;
when 14348 =>
table_value := 1792
;
when 14349 =>
table_value := 1696
;
when 14350 =>
table_value := 1616
;
when 14351 =>
table_value := 1520
;
when 14352 =>
table_value := 1456
;
when 14353 =>
table_value := 1376
;
when 14354 =>
table_value := 1296
;
when 14355 =>
table_value := 1232
;
when 14356 =>
table_value := 1152
;
when 14357 =>
table_value := 1088
;
when 14358 =>
table_value := 1040
;
when 14359 =>
table_value := 976
;
when 14360 =>
table_value := 912
;
when 14361 =>
table_value := 848
;
when 14362 =>
table_value := 784
;
when 14363 =>
table_value := 736
;
when 14364 =>
table_value := 704
;
when 14365 =>
table_value := 640
;
when 14366 =>
table_value := 608
;
when 14367 =>
table_value := 576
;
when 14368 =>
table_value := 512
;
when 14369 =>
table_value := 464
;
when 14370 =>
table_value := 432
;
when 14371 =>
table_value := 384
;
when 14372 =>
table_value := 352
;
when 14373 =>
table_value := 320
;
when 14374 =>
table_value := 288
;
when 14375 =>
table_value := 256
;
when 14376 =>
table_value := 224
;
when 14377 =>
table_value := 208
;
when 14378 =>
table_value := 176
;
when 14379 =>
table_value := 144
;
when 14380 =>
table_value := 96
;
when 14381 =>
table_value := 80
;
when 14382 =>
table_value := 64
;
when 14383 =>
table_value := 16
;
when 14384 =>
table_value := 0
;
when 14385 =>
table_value := 1048544
;
when 14386 =>
table_value := 1048512
;
when 14387 =>
table_value := 1048480
;
when 14388 =>
table_value := 1048432
;
when 14389 =>
table_value := 1048400
;
when 14390 =>
table_value := 1048352
;
when 14391 =>
table_value := 1048320
;
when 14392 =>
table_value := 1048288
;
when 14393 =>
table_value := 1048256
;
when 14394 =>
table_value := 1048208
;
when 14395 =>
table_value := 1048160
;
when 14396 =>
table_value := 1048112
;
when 14397 =>
table_value := 1048064
;
when 14398 =>
table_value := 1048032
;
when 14399 =>
table_value := 1047968
;
when 14400 =>
table_value := 1047936
;
when 14401 =>
table_value := 1047872
;
when 14402 =>
table_value := 1047840
;
when 14403 =>
table_value := 1047792
;
when 14404 =>
table_value := 1047744
;
when 14405 =>
table_value := 1047696
;
when 14406 =>
table_value := 1047664
;
when 14407 =>
table_value := 1047600
;
when 14408 =>
table_value := 1047568
;
when 14409 =>
table_value := 1047520
;
when 14410 =>
table_value := 1047488
;
when 14411 =>
table_value := 1047424
;
when 14412 =>
table_value := 1047392
;
when 14413 =>
table_value := 1047360
;
when 14414 =>
table_value := 1047312
;
when 14415 =>
table_value := 1047264
;
when 14416 =>
table_value := 1047232
;
when 14417 =>
table_value := 1047200
;
when 14418 =>
table_value := 1047184
;
when 14419 =>
table_value := 1047136
;
when 14420 =>
table_value := 1047120
;
when 14421 =>
table_value := 1047104
;
when 14422 =>
table_value := 1047088
;
when 14423 =>
table_value := 1047056
;
when 14424 =>
table_value := 1047056
;
when 14425 =>
table_value := 1047040
;
when 14426 =>
table_value := 1047040
;
when 14427 =>
table_value := 1047024
;
when 14428 =>
table_value := 1047024
;
when 14429 =>
table_value := 1047024
;
when 14430 =>
table_value := 1047024
;
when 14431 =>
table_value := 1047040
;
when 14432 =>
table_value := 1047040
;
when 14433 =>
table_value := 1047056
;
when 14434 =>
table_value := 1047072
;
when 14435 =>
table_value := 1047088
;
when 14436 =>
table_value := 1047104
;
when 14437 =>
table_value := 1047136
;
when 14438 =>
table_value := 1047152
;
when 14439 =>
table_value := 1047184
;
when 14440 =>
table_value := 1047200
;
when 14441 =>
table_value := 1047248
;
when 14442 =>
table_value := 1047280
;
when 14443 =>
table_value := 1047296
;
when 14444 =>
table_value := 1047328
;
when 14445 =>
table_value := 1047344
;
when 14446 =>
table_value := 1047392
;
when 14447 =>
table_value := 1047408
;
when 14448 =>
table_value := 1047456
;
when 14449 =>
table_value := 1047488
;
when 14450 =>
table_value := 1047520
;
when 14451 =>
table_value := 1047568
;
when 14452 =>
table_value := 1047616
;
when 14453 =>
table_value := 1047664
;
when 14454 =>
table_value := 1047696
;
when 14455 =>
table_value := 1047728
;
when 14456 =>
table_value := 1047760
;
when 14457 =>
table_value := 1047824
;
when 14458 =>
table_value := 1047840
;
when 14459 =>
table_value := 1047888
;
when 14460 =>
table_value := 1047920
;
when 14461 =>
table_value := 1047952
;
when 14462 =>
table_value := 1048000
;
when 14463 =>
table_value := 1048032
;
when 14464 =>
table_value := 1048064
;
when 14465 =>
table_value := 1048096
;
when 14466 =>
table_value := 1048128
;
when 14467 =>
table_value := 1048144
;
when 14468 =>
table_value := 1048176
;
when 14469 =>
table_value := 1048192
;
when 14470 =>
table_value := 1048192
;
when 14471 =>
table_value := 1048208
;
when 14472 =>
table_value := 1048240
;
when 14473 =>
table_value := 1048272
;
when 14474 =>
table_value := 1048272
;
when 14475 =>
table_value := 1048288
;
when 14476 =>
table_value := 1048288
;
when 14477 =>
table_value := 1048304
;
when 14478 =>
table_value := 1048336
;
when 14479 =>
table_value := 1048320
;
when 14480 =>
table_value := 1048320
;
when 14481 =>
table_value := 1048304
;
when 14482 =>
table_value := 1048304
;
when 14483 =>
table_value := 1048304
;
when 14484 =>
table_value := 1048336
;
when 14485 =>
table_value := 1048336
;
when 14486 =>
table_value := 1048304
;
when 14487 =>
table_value := 1048304
;
when 14488 =>
table_value := 1048288
;
when 14489 =>
table_value := 1048272
;
when 14490 =>
table_value := 1048256
;
when 14491 =>
table_value := 1048272
;
when 14492 =>
table_value := 1048240
;
when 14493 =>
table_value := 1048208
;
when 14494 =>
table_value := 1048192
;
when 14495 =>
table_value := 1048176
;
when 14496 =>
table_value := 1048160
;
when 14497 =>
table_value := 1048144
;
when 14498 =>
table_value := 1048128
;
when 14499 =>
table_value := 1048112
;
when 14500 =>
table_value := 1048096
;
when 14501 =>
table_value := 1048064
;
when 14502 =>
table_value := 1048048
;
when 14503 =>
table_value := 1048016
;
when 14504 =>
table_value := 1047984
;
when 14505 =>
table_value := 1047968
;
when 14506 =>
table_value := 1047936
;
when 14507 =>
table_value := 1047904
;
when 14508 =>
table_value := 1047872
;
when 14509 =>
table_value := 1047840
;
when 14510 =>
table_value := 1047808
;
when 14511 =>
table_value := 1047776
;
when 14512 =>
table_value := 1047728
;
when 14513 =>
table_value := 1047712
;
when 14514 =>
table_value := 1047664
;
when 14515 =>
table_value := 1047632
;
when 14516 =>
table_value := 1047600
;
when 14517 =>
table_value := 1047552
;
when 14518 =>
table_value := 1047536
;
when 14519 =>
table_value := 1047504
;
when 14520 =>
table_value := 1047472
;
when 14521 =>
table_value := 1047456
;
when 14522 =>
table_value := 1047408
;
when 14523 =>
table_value := 1047360
;
when 14524 =>
table_value := 1047312
;
when 14525 =>
table_value := 1047296
;
when 14526 =>
table_value := 1047248
;
when 14527 =>
table_value := 1047216
;
when 14528 =>
table_value := 1047184
;
when 14529 =>
table_value := 1047152
;
when 14530 =>
table_value := 1047120
;
when 14531 =>
table_value := 1047072
;
when 14532 =>
table_value := 1047024
;
when 14533 =>
table_value := 1046992
;
when 14534 =>
table_value := 1046976
;
when 14535 =>
table_value := 1046944
;
when 14536 =>
table_value := 1046912
;
when 14537 =>
table_value := 1046880
;
when 14538 =>
table_value := 1046864
;
when 14539 =>
table_value := 1046816
;
when 14540 =>
table_value := 1046800
;
when 14541 =>
table_value := 1046784
;
when 14542 =>
table_value := 1046752
;
when 14543 =>
table_value := 1046736
;
when 14544 =>
table_value := 1046704
;
when 14545 =>
table_value := 1046688
;
when 14546 =>
table_value := 1046672
;
when 14547 =>
table_value := 1046640
;
when 14548 =>
table_value := 1046624
;
when 14549 =>
table_value := 1046592
;
when 14550 =>
table_value := 1046576
;
when 14551 =>
table_value := 1046576
;
when 14552 =>
table_value := 1046560
;
when 14553 =>
table_value := 1046544
;
when 14554 =>
table_value := 1046528
;
when 14555 =>
table_value := 1046528
;
when 14556 =>
table_value := 1046512
;
when 14557 =>
table_value := 1046512
;
when 14558 =>
table_value := 1046496
;
when 14559 =>
table_value := 1046496
;
when 14560 =>
table_value := 1046512
;
when 14561 =>
table_value := 1046512
;
when 14562 =>
table_value := 1046512
;
when 14563 =>
table_value := 1046512
;
when 14564 =>
table_value := 1046528
;
when 14565 =>
table_value := 1046560
;
when 14566 =>
table_value := 1046560
;
when 14567 =>
table_value := 1046560
;
when 14568 =>
table_value := 1046560
;
when 14569 =>
table_value := 1046576
;
when 14570 =>
table_value := 1046592
;
when 14571 =>
table_value := 1046624
;
when 14572 =>
table_value := 1046624
;
when 14573 =>
table_value := 1046656
;
when 14574 =>
table_value := 1046672
;
when 14575 =>
table_value := 1046688
;
when 14576 =>
table_value := 1046720
;
when 14577 =>
table_value := 1046736
;
when 14578 =>
table_value := 1046736
;
when 14579 =>
table_value := 1046768
;
when 14580 =>
table_value := 1046784
;
when 14581 =>
table_value := 1046800
;
when 14582 =>
table_value := 1046816
;
when 14583 =>
table_value := 1046848
;
when 14584 =>
table_value := 1046880
;
when 14585 =>
table_value := 1046896
;
when 14586 =>
table_value := 1046944
;
when 14587 =>
table_value := 1046976
;
when 14588 =>
table_value := 1047008
;
when 14589 =>
table_value := 1047040
;
when 14590 =>
table_value := 1047072
;
when 14591 =>
table_value := 1047088
;
when 14592 =>
table_value := 1047136
;
when 14593 =>
table_value := 1047152
;
when 14594 =>
table_value := 1047200
;
when 14595 =>
table_value := 1047216
;
when 14596 =>
table_value := 1047248
;
when 14597 =>
table_value := 1047280
;
when 14598 =>
table_value := 1047328
;
when 14599 =>
table_value := 1047344
;
when 14600 =>
table_value := 1047360
;
when 14601 =>
table_value := 1047424
;
when 14602 =>
table_value := 1047440
;
when 14603 =>
table_value := 1047472
;
when 14604 =>
table_value := 1047504
;
when 14605 =>
table_value := 1047536
;
when 14606 =>
table_value := 1047552
;
when 14607 =>
table_value := 1047568
;
when 14608 =>
table_value := 1047584
;
when 14609 =>
table_value := 1047600
;
when 14610 =>
table_value := 1047616
;
when 14611 =>
table_value := 1047648
;
when 14612 =>
table_value := 1047648
;
when 14613 =>
table_value := 1047664
;
when 14614 =>
table_value := 1047680
;
when 14615 =>
table_value := 1047680
;
when 14616 =>
table_value := 1047680
;
when 14617 =>
table_value := 1047696
;
when 14618 =>
table_value := 1047696
;
when 14619 =>
table_value := 1047696
;
when 14620 =>
table_value := 1047696
;
when 14621 =>
table_value := 1047696
;
when 14622 =>
table_value := 1047680
;
when 14623 =>
table_value := 1047696
;
when 14624 =>
table_value := 1047680
;
when 14625 =>
table_value := 1047680
;
when 14626 =>
table_value := 1047680
;
when 14627 =>
table_value := 1047664
;
when 14628 =>
table_value := 1047664
;
when 14629 =>
table_value := 1047648
;
when 14630 =>
table_value := 1047632
;
when 14631 =>
table_value := 1047632
;
when 14632 =>
table_value := 1047600
;
when 14633 =>
table_value := 1047600
;
when 14634 =>
table_value := 1047584
;
when 14635 =>
table_value := 1047584
;
when 14636 =>
table_value := 1047584
;
when 14637 =>
table_value := 1047552
;
when 14638 =>
table_value := 1047552
;
when 14639 =>
table_value := 1047536
;
when 14640 =>
table_value := 1047520
;
when 14641 =>
table_value := 1047520
;
when 14642 =>
table_value := 1047488
;
when 14643 =>
table_value := 1047488
;
when 14644 =>
table_value := 1047472
;
when 14645 =>
table_value := 1047440
;
when 14646 =>
table_value := 1047440
;
when 14647 =>
table_value := 1047408
;
when 14648 =>
table_value := 1047424
;
when 14649 =>
table_value := 1047408
;
when 14650 =>
table_value := 1047376
;
when 14651 =>
table_value := 1047360
;
when 14652 =>
table_value := 1047360
;
when 14653 =>
table_value := 1047344
;
when 14654 =>
table_value := 1047344
;
when 14655 =>
table_value := 1047328
;
when 14656 =>
table_value := 1047296
;
when 14657 =>
table_value := 1047296
;
when 14658 =>
table_value := 1047296
;
when 14659 =>
table_value := 1047280
;
when 14660 =>
table_value := 1047280
;
when 14661 =>
table_value := 1047280
;
when 14662 =>
table_value := 1047264
;
when 14663 =>
table_value := 1047264
;
when 14664 =>
table_value := 1047264
;
when 14665 =>
table_value := 1047264
;
when 14666 =>
table_value := 1047248
;
when 14667 =>
table_value := 1047248
;
when 14668 =>
table_value := 1047248
;
when 14669 =>
table_value := 1047232
;
when 14670 =>
table_value := 1047248
;
when 14671 =>
table_value := 1047248
;
when 14672 =>
table_value := 1047248
;
when 14673 =>
table_value := 1047248
;
when 14674 =>
table_value := 1047216
;
when 14675 =>
table_value := 1047232
;
when 14676 =>
table_value := 1047248
;
when 14677 =>
table_value := 1047248
;
when 14678 =>
table_value := 1047232
;
when 14679 =>
table_value := 1047248
;
when 14680 =>
table_value := 1047248
;
when 14681 =>
table_value := 1047248
;
when 14682 =>
table_value := 1047264
;
when 14683 =>
table_value := 1047280
;
when 14684 =>
table_value := 1047280
;
when 14685 =>
table_value := 1047280
;
when 14686 =>
table_value := 1047296
;
when 14687 =>
table_value := 1047312
;
when 14688 =>
table_value := 1047312
;
when 14689 =>
table_value := 1047312
;
when 14690 =>
table_value := 1047344
;
when 14691 =>
table_value := 1047328
;
when 14692 =>
table_value := 1047344
;
when 14693 =>
table_value := 1047328
;
when 14694 =>
table_value := 1047344
;
when 14695 =>
table_value := 1047344
;
when 14696 =>
table_value := 1047344
;
when 14697 =>
table_value := 1047344
;
when 14698 =>
table_value := 1047344
;
when 14699 =>
table_value := 1047344
;
when 14700 =>
table_value := 1047344
;
when 14701 =>
table_value := 1047344
;
when 14702 =>
table_value := 1047360
;
when 14703 =>
table_value := 1047360
;
when 14704 =>
table_value := 1047360
;
when 14705 =>
table_value := 1047344
;
when 14706 =>
table_value := 1047360
;
when 14707 =>
table_value := 1047360
;
when 14708 =>
table_value := 1047376
;
when 14709 =>
table_value := 1047360
;
when 14710 =>
table_value := 1047376
;
when 14711 =>
table_value := 1047376
;
when 14712 =>
table_value := 1047376
;
when 14713 =>
table_value := 1047376
;
when 14714 =>
table_value := 1047408
;
when 14715 =>
table_value := 1047408
;
when 14716 =>
table_value := 1047424
;
when 14717 =>
table_value := 1047424
;
when 14718 =>
table_value := 1047440
;
when 14719 =>
table_value := 1047456
;
when 14720 =>
table_value := 1047472
;
when 14721 =>
table_value := 1047504
;
when 14722 =>
table_value := 1047504
;
when 14723 =>
table_value := 1047520
;
when 14724 =>
table_value := 1047568
;
when 14725 =>
table_value := 1047584
;
when 14726 =>
table_value := 1047616
;
when 14727 =>
table_value := 1047632
;
when 14728 =>
table_value := 1047648
;
when 14729 =>
table_value := 1047664
;
when 14730 =>
table_value := 1047680
;
when 14731 =>
table_value := 1047696
;
when 14732 =>
table_value := 1047728
;
when 14733 =>
table_value := 1047760
;
when 14734 =>
table_value := 1047776
;
when 14735 =>
table_value := 1047808
;
when 14736 =>
table_value := 1047840
;
when 14737 =>
table_value := 1047840
;
when 14738 =>
table_value := 1047872
;
when 14739 =>
table_value := 1047904
;
when 14740 =>
table_value := 1047920
;
when 14741 =>
table_value := 1047952
;
when 14742 =>
table_value := 1047984
;
when 14743 =>
table_value := 1047984
;
when 14744 =>
table_value := 1048016
;
when 14745 =>
table_value := 1048048
;
when 14746 =>
table_value := 1048064
;
when 14747 =>
table_value := 1048096
;
when 14748 =>
table_value := 1048112
;
when 14749 =>
table_value := 1048128
;
when 14750 =>
table_value := 1048144
;
when 14751 =>
table_value := 1048176
;
when 14752 =>
table_value := 1048176
;
when 14753 =>
table_value := 1048208
;
when 14754 =>
table_value := 1048208
;
when 14755 =>
table_value := 1048224
;
when 14756 =>
table_value := 1048208
;
when 14757 =>
table_value := 1048240
;
when 14758 =>
table_value := 1048256
;
when 14759 =>
table_value := 1048256
;
when 14760 =>
table_value := 1048272
;
when 14761 =>
table_value := 1048272
;
when 14762 =>
table_value := 1048272
;
when 14763 =>
table_value := 1048288
;
when 14764 =>
table_value := 1048272
;
when 14765 =>
table_value := 1048272
;
when 14766 =>
table_value := 1048288
;
when 14767 =>
table_value := 1048272
;
when 14768 =>
table_value := 1048288
;
when 14769 =>
table_value := 1048288
;
when 14770 =>
table_value := 1048256
;
when 14771 =>
table_value := 1048272
;
when 14772 =>
table_value := 1048256
;
when 14773 =>
table_value := 1048240
;
when 14774 =>
table_value := 1048240
;
when 14775 =>
table_value := 1048240
;
when 14776 =>
table_value := 1048224
;
when 14777 =>
table_value := 1048224
;
when 14778 =>
table_value := 1048224
;
when 14779 =>
table_value := 1048208
;
when 14780 =>
table_value := 1048192
;
when 14781 =>
table_value := 1048176
;
when 14782 =>
table_value := 1048176
;
when 14783 =>
table_value := 1048144
;
when 14784 =>
table_value := 1048144
;
when 14785 =>
table_value := 1048128
;
when 14786 =>
table_value := 1048112
;
when 14787 =>
table_value := 1048112
;
when 14788 =>
table_value := 1048096
;
when 14789 =>
table_value := 1048064
;
when 14790 =>
table_value := 1048048
;
when 14791 =>
table_value := 1048048
;
when 14792 =>
table_value := 1048048
;
when 14793 =>
table_value := 1048032
;
when 14794 =>
table_value := 1048032
;
when 14795 =>
table_value := 1048016
;
when 14796 =>
table_value := 1048000
;
when 14797 =>
table_value := 1047968
;
when 14798 =>
table_value := 1047968
;
when 14799 =>
table_value := 1047968
;
when 14800 =>
table_value := 1047952
;
when 14801 =>
table_value := 1047952
;
when 14802 =>
table_value := 1047936
;
when 14803 =>
table_value := 1047920
;
when 14804 =>
table_value := 1047920
;
when 14805 =>
table_value := 1047904
;
when 14806 =>
table_value := 1047888
;
when 14807 =>
table_value := 1047888
;
when 14808 =>
table_value := 1047872
;
when 14809 =>
table_value := 1047872
;
when 14810 =>
table_value := 1047872
;
when 14811 =>
table_value := 1047840
;
when 14812 =>
table_value := 1047840
;
when 14813 =>
table_value := 1047824
;
when 14814 =>
table_value := 1047824
;
when 14815 =>
table_value := 1047824
;
when 14816 =>
table_value := 1047808
;
when 14817 =>
table_value := 1047808
;
when 14818 =>
table_value := 1047808
;
when 14819 =>
table_value := 1047776
;
when 14820 =>
table_value := 1047776
;
when 14821 =>
table_value := 1047776
;
when 14822 =>
table_value := 1047760
;
when 14823 =>
table_value := 1047760
;
when 14824 =>
table_value := 1047776
;
when 14825 =>
table_value := 1047760
;
when 14826 =>
table_value := 1047760
;
when 14827 =>
table_value := 1047760
;
when 14828 =>
table_value := 1047744
;
when 14829 =>
table_value := 1047776
;
when 14830 =>
table_value := 1047760
;
when 14831 =>
table_value := 1047776
;
when 14832 =>
table_value := 1047744
;
when 14833 =>
table_value := 1047760
;
when 14834 =>
table_value := 1047760
;
when 14835 =>
table_value := 1047760
;
when 14836 =>
table_value := 1047744
;
when 14837 =>
table_value := 1047760
;
when 14838 =>
table_value := 1047744
;
when 14839 =>
table_value := 1047760
;
when 14840 =>
table_value := 1047760
;
when 14841 =>
table_value := 1047760
;
when 14842 =>
table_value := 1047760
;
when 14843 =>
table_value := 1047760
;
when 14844 =>
table_value := 1047760
;
when 14845 =>
table_value := 1047760
;
when 14846 =>
table_value := 1047760
;
when 14847 =>
table_value := 1047744
;
when 14848 =>
table_value := 1047760
;
when 14849 =>
table_value := 1047776
;
when 14850 =>
table_value := 1047776
;
when 14851 =>
table_value := 1047776
;
when 14852 =>
table_value := 1047760
;
when 14853 =>
table_value := 1047776
;
when 14854 =>
table_value := 1047760
;
when 14855 =>
table_value := 1047760
;
when 14856 =>
table_value := 1047776
;
when 14857 =>
table_value := 1047776
;
when 14858 =>
table_value := 1047776
;
when 14859 =>
table_value := 1047776
;
when 14860 =>
table_value := 1047776
;
when 14861 =>
table_value := 1047776
;
when 14862 =>
table_value := 1047776
;
when 14863 =>
table_value := 1047760
;
when 14864 =>
table_value := 1047776
;
when 14865 =>
table_value := 1047760
;
when 14866 =>
table_value := 1047744
;
when 14867 =>
table_value := 1047744
;
when 14868 =>
table_value := 1047728
;
when 14869 =>
table_value := 1047728
;
when 14870 =>
table_value := 1047728
;
when 14871 =>
table_value := 1047728
;
when 14872 =>
table_value := 1047712
;
when 14873 =>
table_value := 1047696
;
when 14874 =>
table_value := 1047696
;
when 14875 =>
table_value := 1047680
;
when 14876 =>
table_value := 1047680
;
when 14877 =>
table_value := 1047664
;
when 14878 =>
table_value := 1047648
;
when 14879 =>
table_value := 1047648
;
when 14880 =>
table_value := 1047616
;
when 14881 =>
table_value := 1047616
;
when 14882 =>
table_value := 1047600
;
when 14883 =>
table_value := 1047584
;
when 14884 =>
table_value := 1047584
;
when 14885 =>
table_value := 1047552
;
when 14886 =>
table_value := 1047552
;
when 14887 =>
table_value := 1047552
;
when 14888 =>
table_value := 1047552
;
when 14889 =>
table_value := 1047536
;
when 14890 =>
table_value := 1047520
;
when 14891 =>
table_value := 1047520
;
when 14892 =>
table_value := 1047504
;
when 14893 =>
table_value := 1047504
;
when 14894 =>
table_value := 1047488
;
when 14895 =>
table_value := 1047488
;
when 14896 =>
table_value := 1047472
;
when 14897 =>
table_value := 1047456
;
when 14898 =>
table_value := 1047472
;
when 14899 =>
table_value := 1047472
;
when 14900 =>
table_value := 1047472
;
when 14901 =>
table_value := 1047456
;
when 14902 =>
table_value := 1047472
;
when 14903 =>
table_value := 1047456
;
when 14904 =>
table_value := 1047472
;
when 14905 =>
table_value := 1047472
;
when 14906 =>
table_value := 1047472
;
when 14907 =>
table_value := 1047472
;
when 14908 =>
table_value := 1047472
;
when 14909 =>
table_value := 1047472
;
when 14910 =>
table_value := 1047488
;
when 14911 =>
table_value := 1047488
;
when 14912 =>
table_value := 1047488
;
when 14913 =>
table_value := 1047504
;
when 14914 =>
table_value := 1047488
;
when 14915 =>
table_value := 1047504
;
when 14916 =>
table_value := 1047504
;
when 14917 =>
table_value := 1047504
;
when 14918 =>
table_value := 1047504
;
when 14919 =>
table_value := 1047520
;
when 14920 =>
table_value := 1047520
;
when 14921 =>
table_value := 1047536
;
when 14922 =>
table_value := 1047552
;
when 14923 =>
table_value := 1047536
;
when 14924 =>
table_value := 1047536
;
when 14925 =>
table_value := 1047504
;
when 14926 =>
table_value := 1047536
;
when 14927 =>
table_value := 1047520
;
when 14928 =>
table_value := 1047552
;
when 14929 =>
table_value := 1047552
;
when 14930 =>
table_value := 1047536
;
when 14931 =>
table_value := 1047568
;
when 14932 =>
table_value := 1047552
;
when 14933 =>
table_value := 1047584
;
when 14934 =>
table_value := 1047584
;
when 14935 =>
table_value := 1047584
;
when 14936 =>
table_value := 1047584
;
when 14937 =>
table_value := 1047584
;
when 14938 =>
table_value := 1047600
;
when 14939 =>
table_value := 1047600
;
when 14940 =>
table_value := 1047600
;
when 14941 =>
table_value := 1047616
;
when 14942 =>
table_value := 1047600
;
when 14943 =>
table_value := 1047616
;
when 14944 =>
table_value := 1047648
;
when 14945 =>
table_value := 1047648
;
when 14946 =>
table_value := 1047648
;
when 14947 =>
table_value := 1047648
;
when 14948 =>
table_value := 1047664
;
when 14949 =>
table_value := 1047696
;
when 14950 =>
table_value := 1047696
;
when 14951 =>
table_value := 1047712
;
when 14952 =>
table_value := 1047728
;
when 14953 =>
table_value := 1047728
;
when 14954 =>
table_value := 1047760
;
when 14955 =>
table_value := 1047744
;
when 14956 =>
table_value := 1047792
;
when 14957 =>
table_value := 1047792
;
when 14958 =>
table_value := 1047808
;
when 14959 =>
table_value := 1047840
;
when 14960 =>
table_value := 1047840
;
when 14961 =>
table_value := 1047872
;
when 14962 =>
table_value := 1047888
;
when 14963 =>
table_value := 1047936
;
when 14964 =>
table_value := 1047952
;
when 14965 =>
table_value := 1047968
;
when 14966 =>
table_value := 1048000
;
when 14967 =>
table_value := 1048016
;
when 14968 =>
table_value := 1048048
;
when 14969 =>
table_value := 1048080
;
when 14970 =>
table_value := 1048128
;
when 14971 =>
table_value := 1048160
;
when 14972 =>
table_value := 1048208
;
when 14973 =>
table_value := 1048224
;
when 14974 =>
table_value := 1048272
;
when 14975 =>
table_value := 1048288
;
when 14976 =>
table_value := 1048336
;
when 14977 =>
table_value := 1048368
;
when 14978 =>
table_value := 1048400
;
when 14979 =>
table_value := 1048432
;
when 14980 =>
table_value := 1048464
;
when 14981 =>
table_value := 1048512
;
when 14982 =>
table_value := 1048528
;
when 14983 =>
table_value := 1048560
;
when 14984 =>
table_value := 0
;
when 14985 =>
table_value := 16
;
when 14986 =>
table_value := 64
;
when 14987 =>
table_value := 80
;
when 14988 =>
table_value := 112
;
when 14989 =>
table_value := 144
;
when 14990 =>
table_value := 176
;
when 14991 =>
table_value := 224
;
when 14992 =>
table_value := 240
;
when 14993 =>
table_value := 288
;
when 14994 =>
table_value := 320
;
when 14995 =>
table_value := 336
;
when 14996 =>
table_value := 352
;
when 14997 =>
table_value := 384
;
when 14998 =>
table_value := 400
;
when 14999 =>
table_value := 432
;
when 15000 =>
table_value := 464
;
when 15001 =>
table_value := 480
;
when 15002 =>
table_value := 512
;
when 15003 =>
table_value := 528
;
when 15004 =>
table_value := 528
;
when 15005 =>
table_value := 560
;
when 15006 =>
table_value := 608
;
when 15007 =>
table_value := 608
;
when 15008 =>
table_value := 640
;
when 15009 =>
table_value := 656
;
when 15010 =>
table_value := 672
;
when 15011 =>
table_value := 688
;
when 15012 =>
table_value := 720
;
when 15013 =>
table_value := 736
;
when 15014 =>
table_value := 752
;
when 15015 =>
table_value := 752
;
when 15016 =>
table_value := 768
;
when 15017 =>
table_value := 816
;
when 15018 =>
table_value := 832
;
when 15019 =>
table_value := 848
;
when 15020 =>
table_value := 880
;
when 15021 =>
table_value := 864
;
when 15022 =>
table_value := 896
;
when 15023 =>
table_value := 912
;
when 15024 =>
table_value := 928
;
when 15025 =>
table_value := 944
;
when 15026 =>
table_value := 944
;
when 15027 =>
table_value := 976
;
when 15028 =>
table_value := 1008
;
when 15029 =>
table_value := 1024
;
when 15030 =>
table_value := 1056
;
when 15031 =>
table_value := 1072
;
when 15032 =>
table_value := 1104
;
when 15033 =>
table_value := 1136
;
when 15034 =>
table_value := 1168
;
when 15035 =>
table_value := 1184
;
when 15036 =>
table_value := 1216
;
when 15037 =>
table_value := 1248
;
when 15038 =>
table_value := 1280
;
when 15039 =>
table_value := 1312
;
when 15040 =>
table_value := 1360
;
when 15041 =>
table_value := 1392
;
when 15042 =>
table_value := 1440
;
when 15043 =>
table_value := 1472
;
when 15044 =>
table_value := 1520
;
when 15045 =>
table_value := 1568
;
when 15046 =>
table_value := 1600
;
when 15047 =>
table_value := 1632
;
when 15048 =>
table_value := 1696
;
when 15049 =>
table_value := 1712
;
when 15050 =>
table_value := 1760
;
when 15051 =>
table_value := 1824
;
when 15052 =>
table_value := 1856
;
when 15053 =>
table_value := 1904
;
when 15054 =>
table_value := 1936
;
when 15055 =>
table_value := 1968
;
when 15056 =>
table_value := 2016
;
when 15057 =>
table_value := 2064
;
when 15058 =>
table_value := 2096
;
when 15059 =>
table_value := 2144
;
when 15060 =>
table_value := 2208
;
when 15061 =>
table_value := 2224
;
when 15062 =>
table_value := 2256
;
when 15063 =>
table_value := 2304
;
when 15064 =>
table_value := 2352
;
when 15065 =>
table_value := 2400
;
when 15066 =>
table_value := 2432
;
when 15067 =>
table_value := 2480
;
when 15068 =>
table_value := 2512
;
when 15069 =>
table_value := 2544
;
when 15070 =>
table_value := 2592
;
when 15071 =>
table_value := 2624
;
when 15072 =>
table_value := 2640
;
when 15073 =>
table_value := 2688
;
when 15074 =>
table_value := 2720
;
when 15075 =>
table_value := 2736
;
when 15076 =>
table_value := 2768
;
when 15077 =>
table_value := 2800
;
when 15078 =>
table_value := 2832
;
when 15079 =>
table_value := 2864
;
when 15080 =>
table_value := 2912
;
when 15081 =>
table_value := 2928
;
when 15082 =>
table_value := 2944
;
when 15083 =>
table_value := 2992
;
when 15084 =>
table_value := 3008
;
when 15085 =>
table_value := 3040
;
when 15086 =>
table_value := 3088
;
when 15087 =>
table_value := 3104
;
when 15088 =>
table_value := 3136
;
when 15089 =>
table_value := 3168
;
when 15090 =>
table_value := 3200
;
when 15091 =>
table_value := 3216
;
when 15092 =>
table_value := 3248
;
when 15093 =>
table_value := 3280
;
when 15094 =>
table_value := 3312
;
when 15095 =>
table_value := 3360
;
when 15096 =>
table_value := 3392
;
when 15097 =>
table_value := 3408
;
when 15098 =>
table_value := 3456
;
when 15099 =>
table_value := 3472
;
when 15100 =>
table_value := 3504
;
when 15101 =>
table_value := 3552
;
when 15102 =>
table_value := 3584
;
when 15103 =>
table_value := 3616
;
when 15104 =>
table_value := 3648
;
when 15105 =>
table_value := 3696
;
when 15106 =>
table_value := 3728
;
when 15107 =>
table_value := 3760
;
when 15108 =>
table_value := 3792
;
when 15109 =>
table_value := 3824
;
when 15110 =>
table_value := 3872
;
when 15111 =>
table_value := 3904
;
when 15112 =>
table_value := 3952
;
when 15113 =>
table_value := 3984
;
when 15114 =>
table_value := 4000
;
when 15115 =>
table_value := 4032
;
when 15116 =>
table_value := 4064
;
when 15117 =>
table_value := 4096
;
when 15118 =>
table_value := 4112
;
when 15119 =>
table_value := 4160
;
when 15120 =>
table_value := 4160
;
when 15121 =>
table_value := 4192
;
when 15122 =>
table_value := 4192
;
when 15123 =>
table_value := 4224
;
when 15124 =>
table_value := 4240
;
when 15125 =>
table_value := 4240
;
when 15126 =>
table_value := 4256
;
when 15127 =>
table_value := 4272
;
when 15128 =>
table_value := 4240
;
when 15129 =>
table_value := 4256
;
when 15130 =>
table_value := 4256
;
when 15131 =>
table_value := 4256
;
when 15132 =>
table_value := 4240
;
when 15133 =>
table_value := 4240
;
when 15134 =>
table_value := 4240
;
when 15135 =>
table_value := 4208
;
when 15136 =>
table_value := 4176
;
when 15137 =>
table_value := 4176
;
when 15138 =>
table_value := 4160
;
when 15139 =>
table_value := 4144
;
when 15140 =>
table_value := 4128
;
when 15141 =>
table_value := 4096
;
when 15142 =>
table_value := 4080
;
when 15143 =>
table_value := 4064
;
when 15144 =>
table_value := 4000
;
when 15145 =>
table_value := 3984
;
when 15146 =>
table_value := 3952
;
when 15147 =>
table_value := 3936
;
when 15148 =>
table_value := 3888
;
when 15149 =>
table_value := 3872
;
when 15150 =>
table_value := 3840
;
when 15151 =>
table_value := 3824
;
when 15152 =>
table_value := 3792
;
when 15153 =>
table_value := 3760
;
when 15154 =>
table_value := 3728
;
when 15155 =>
table_value := 3712
;
when 15156 =>
table_value := 3664
;
when 15157 =>
table_value := 3632
;
when 15158 =>
table_value := 3616
;
when 15159 =>
table_value := 3584
;
when 15160 =>
table_value := 3552
;
when 15161 =>
table_value := 3552
;
when 15162 =>
table_value := 3520
;
when 15163 =>
table_value := 3472
;
when 15164 =>
table_value := 3456
;
when 15165 =>
table_value := 3424
;
when 15166 =>
table_value := 3392
;
when 15167 =>
table_value := 3376
;
when 15168 =>
table_value := 3344
;
when 15169 =>
table_value := 3312
;
when 15170 =>
table_value := 3312
;
when 15171 =>
table_value := 3280
;
when 15172 =>
table_value := 3248
;
when 15173 =>
table_value := 3248
;
when 15174 =>
table_value := 3200
;
when 15175 =>
table_value := 3184
;
when 15176 =>
table_value := 3168
;
when 15177 =>
table_value := 3136
;
when 15178 =>
table_value := 3104
;
when 15179 =>
table_value := 3088
;
when 15180 =>
table_value := 3072
;
when 15181 =>
table_value := 3008
;
when 15182 =>
table_value := 2992
;
when 15183 =>
table_value := 2976
;
when 15184 =>
table_value := 2912
;
when 15185 =>
table_value := 2896
;
when 15186 =>
table_value := 2848
;
when 15187 =>
table_value := 2816
;
when 15188 =>
table_value := 2784
;
when 15189 =>
table_value := 2752
;
when 15190 =>
table_value := 2704
;
when 15191 =>
table_value := 2672
;
when 15192 =>
table_value := 2624
;
when 15193 =>
table_value := 2592
;
when 15194 =>
table_value := 2544
;
when 15195 =>
table_value := 2496
;
when 15196 =>
table_value := 2448
;
when 15197 =>
table_value := 2400
;
when 15198 =>
table_value := 2336
;
when 15199 =>
table_value := 2272
;
when 15200 =>
table_value := 2224
;
when 15201 =>
table_value := 2176
;
when 15202 =>
table_value := 2128
;
when 15203 =>
table_value := 2080
;
when 15204 =>
table_value := 2016
;
when 15205 =>
table_value := 1968
;
when 15206 =>
table_value := 1888
;
when 15207 =>
table_value := 1840
;
when 15208 =>
table_value := 1776
;
when 15209 =>
table_value := 1712
;
when 15210 =>
table_value := 1664
;
when 15211 =>
table_value := 1600
;
when 15212 =>
table_value := 1520
;
when 15213 =>
table_value := 1456
;
when 15214 =>
table_value := 1408
;
when 15215 =>
table_value := 1344
;
when 15216 =>
table_value := 1296
;
when 15217 =>
table_value := 1232
;
when 15218 =>
table_value := 1168
;
when 15219 =>
table_value := 1104
;
when 15220 =>
table_value := 1056
;
when 15221 =>
table_value := 992
;
when 15222 =>
table_value := 928
;
when 15223 =>
table_value := 880
;
when 15224 =>
table_value := 832
;
when 15225 =>
table_value := 768
;
when 15226 =>
table_value := 720
;
when 15227 =>
table_value := 672
;
when 15228 =>
table_value := 624
;
when 15229 =>
table_value := 576
;
when 15230 =>
table_value := 528
;
when 15231 =>
table_value := 512
;
when 15232 =>
table_value := 464
;
when 15233 =>
table_value := 448
;
when 15234 =>
table_value := 416
;
when 15235 =>
table_value := 384
;
when 15236 =>
table_value := 368
;
when 15237 =>
table_value := 320
;
when 15238 =>
table_value := 288
;
when 15239 =>
table_value := 288
;
when 15240 =>
table_value := 256
;
when 15241 =>
table_value := 240
;
when 15242 =>
table_value := 224
;
when 15243 =>
table_value := 192
;
when 15244 =>
table_value := 160
;
when 15245 =>
table_value := 144
;
when 15246 =>
table_value := 128
;
when 15247 =>
table_value := 112
;
when 15248 =>
table_value := 96
;
when 15249 =>
table_value := 64
;
when 15250 =>
table_value := 64
;
when 15251 =>
table_value := 32
;
when 15252 =>
table_value := 16
;
when 15253 =>
table_value := 0
;
when 15254 =>
table_value := 0
;
when 15255 =>
table_value := 1048544
;
when 15256 =>
table_value := 1048528
;
when 15257 =>
table_value := 1048512
;
when 15258 =>
table_value := 1048496
;
when 15259 =>
table_value := 1048464
;
when 15260 =>
table_value := 1048448
;
when 15261 =>
table_value := 1048432
;
when 15262 =>
table_value := 1048416
;
when 15263 =>
table_value := 1048384
;
when 15264 =>
table_value := 1048352
;
when 15265 =>
table_value := 1048336
;
when 15266 =>
table_value := 1048304
;
when 15267 =>
table_value := 1048272
;
when 15268 =>
table_value := 1048240
;
when 15269 =>
table_value := 1048208
;
when 15270 =>
table_value := 1048192
;
when 15271 =>
table_value := 1048144
;
when 15272 =>
table_value := 1048128
;
when 15273 =>
table_value := 1048096
;
when 15274 =>
table_value := 1048064
;
when 15275 =>
table_value := 1048032
;
when 15276 =>
table_value := 1048000
;
when 15277 =>
table_value := 1047968
;
when 15278 =>
table_value := 1047936
;
when 15279 =>
table_value := 1047920
;
when 15280 =>
table_value := 1047888
;
when 15281 =>
table_value := 1047856
;
when 15282 =>
table_value := 1047824
;
when 15283 =>
table_value := 1047808
;
when 15284 =>
table_value := 1047776
;
when 15285 =>
table_value := 1047760
;
when 15286 =>
table_value := 1047728
;
when 15287 =>
table_value := 1047712
;
when 15288 =>
table_value := 1047680
;
when 15289 =>
table_value := 1047664
;
when 15290 =>
table_value := 1047632
;
when 15291 =>
table_value := 1047600
;
when 15292 =>
table_value := 1047584
;
when 15293 =>
table_value := 1047568
;
when 15294 =>
table_value := 1047552
;
when 15295 =>
table_value := 1047520
;
when 15296 =>
table_value := 1047504
;
when 15297 =>
table_value := 1047488
;
when 15298 =>
table_value := 1047472
;
when 15299 =>
table_value := 1047472
;
when 15300 =>
table_value := 1047440
;
when 15301 =>
table_value := 1047408
;
when 15302 =>
table_value := 1047424
;
when 15303 =>
table_value := 1047408
;
when 15304 =>
table_value := 1047408
;
when 15305 =>
table_value := 1047376
;
when 15306 =>
table_value := 1047360
;
when 15307 =>
table_value := 1047360
;
when 15308 =>
table_value := 1047360
;
when 15309 =>
table_value := 1047344
;
when 15310 =>
table_value := 1047328
;
when 15311 =>
table_value := 1047344
;
when 15312 =>
table_value := 1047328
;
when 15313 =>
table_value := 1047328
;
when 15314 =>
table_value := 1047296
;
when 15315 =>
table_value := 1047296
;
when 15316 =>
table_value := 1047312
;
when 15317 =>
table_value := 1047296
;
when 15318 =>
table_value := 1047296
;
when 15319 =>
table_value := 1047296
;
when 15320 =>
table_value := 1047296
;
when 15321 =>
table_value := 1047280
;
when 15322 =>
table_value := 1047296
;
when 15323 =>
table_value := 1047296
;
when 15324 =>
table_value := 1047312
;
when 15325 =>
table_value := 1047296
;
when 15326 =>
table_value := 1047312
;
when 15327 =>
table_value := 1047312
;
when 15328 =>
table_value := 1047344
;
when 15329 =>
table_value := 1047344
;
when 15330 =>
table_value := 1047344
;
when 15331 =>
table_value := 1047344
;
when 15332 =>
table_value := 1047376
;
when 15333 =>
table_value := 1047376
;
when 15334 =>
table_value := 1047376
;
when 15335 =>
table_value := 1047392
;
when 15336 =>
table_value := 1047408
;
when 15337 =>
table_value := 1047424
;
when 15338 =>
table_value := 1047424
;
when 15339 =>
table_value := 1047424
;
when 15340 =>
table_value := 1047440
;
when 15341 =>
table_value := 1047440
;
when 15342 =>
table_value := 1047456
;
when 15343 =>
table_value := 1047456
;
when 15344 =>
table_value := 1047472
;
when 15345 =>
table_value := 1047488
;
when 15346 =>
table_value := 1047488
;
when 15347 =>
table_value := 1047488
;
when 15348 =>
table_value := 1047504
;
when 15349 =>
table_value := 1047488
;
when 15350 =>
table_value := 1047488
;
when 15351 =>
table_value := 1047488
;
when 15352 =>
table_value := 1047456
;
when 15353 =>
table_value := 1047456
;
when 15354 =>
table_value := 1047456
;
when 15355 =>
table_value := 1047440
;
when 15356 =>
table_value := 1047424
;
when 15357 =>
table_value := 1047408
;
when 15358 =>
table_value := 1047376
;
when 15359 =>
table_value := 1047344
;
when 15360 =>
table_value := 1047328
;
when 15361 =>
table_value := 1047328
;
when 15362 =>
table_value := 1047280
;
when 15363 =>
table_value := 1047248
;
when 15364 =>
table_value := 1047248
;
when 15365 =>
table_value := 1047200
;
when 15366 =>
table_value := 1047184
;
when 15367 =>
table_value := 1047136
;
when 15368 =>
table_value := 1047104
;
when 15369 =>
table_value := 1047056
;
when 15370 =>
table_value := 1047024
;
when 15371 =>
table_value := 1046960
;
when 15372 =>
table_value := 1046928
;
when 15373 =>
table_value := 1046880
;
when 15374 =>
table_value := 1046832
;
when 15375 =>
table_value := 1046800
;
when 15376 =>
table_value := 1046752
;
when 15377 =>
table_value := 1046720
;
when 15378 =>
table_value := 1046704
;
when 15379 =>
table_value := 1046640
;
when 15380 =>
table_value := 1046592
;
when 15381 =>
table_value := 1046560
;
when 15382 =>
table_value := 1046528
;
when 15383 =>
table_value := 1046496
;
when 15384 =>
table_value := 1046448
;
when 15385 =>
table_value := 1046416
;
when 15386 =>
table_value := 1046400
;
when 15387 =>
table_value := 1046352
;
when 15388 =>
table_value := 1046320
;
when 15389 =>
table_value := 1046304
;
when 15390 =>
table_value := 1046256
;
when 15391 =>
table_value := 1046240
;
when 15392 =>
table_value := 1046208
;
when 15393 =>
table_value := 1046192
;
when 15394 =>
table_value := 1046176
;
when 15395 =>
table_value := 1046128
;
when 15396 =>
table_value := 1046128
;
when 15397 =>
table_value := 1046112
;
when 15398 =>
table_value := 1046080
;
when 15399 =>
table_value := 1046064
;
when 15400 =>
table_value := 1046032
;
when 15401 =>
table_value := 1046032
;
when 15402 =>
table_value := 1046032
;
when 15403 =>
table_value := 1046016
;
when 15404 =>
table_value := 1046016
;
when 15405 =>
table_value := 1046000
;
when 15406 =>
table_value := 1045984
;
when 15407 =>
table_value := 1045984
;
when 15408 =>
table_value := 1045984
;
when 15409 =>
table_value := 1045984
;
when 15410 =>
table_value := 1045984
;
when 15411 =>
table_value := 1045984
;
when 15412 =>
table_value := 1046000
;
when 15413 =>
table_value := 1046000
;
when 15414 =>
table_value := 1046000
;
when 15415 =>
table_value := 1046016
;
when 15416 =>
table_value := 1046016
;
when 15417 =>
table_value := 1046032
;
when 15418 =>
table_value := 1046048
;
when 15419 =>
table_value := 1046064
;
when 15420 =>
table_value := 1046080
;
when 15421 =>
table_value := 1046080
;
when 15422 =>
table_value := 1046112
;
when 15423 =>
table_value := 1046112
;
when 15424 =>
table_value := 1046128
;
when 15425 =>
table_value := 1046144
;
when 15426 =>
table_value := 1046176
;
when 15427 =>
table_value := 1046192
;
when 15428 =>
table_value := 1046208
;
when 15429 =>
table_value := 1046224
;
when 15430 =>
table_value := 1046256
;
when 15431 =>
table_value := 1046272
;
when 15432 =>
table_value := 1046288
;
when 15433 =>
table_value := 1046304
;
when 15434 =>
table_value := 1046336
;
when 15435 =>
table_value := 1046336
;
when 15436 =>
table_value := 1046368
;
when 15437 =>
table_value := 1046400
;
when 15438 =>
table_value := 1046416
;
when 15439 =>
table_value := 1046464
;
when 15440 =>
table_value := 1046480
;
when 15441 =>
table_value := 1046512
;
when 15442 =>
table_value := 1046528
;
when 15443 =>
table_value := 1046560
;
when 15444 =>
table_value := 1046592
;
when 15445 =>
table_value := 1046640
;
when 15446 =>
table_value := 1046656
;
when 15447 =>
table_value := 1046704
;
when 15448 =>
table_value := 1046736
;
when 15449 =>
table_value := 1046736
;
when 15450 =>
table_value := 1046784
;
when 15451 =>
table_value := 1046816
;
when 15452 =>
table_value := 1046848
;
when 15453 =>
table_value := 1046880
;
when 15454 =>
table_value := 1046912
;
when 15455 =>
table_value := 1046944
;
when 15456 =>
table_value := 1046976
;
when 15457 =>
table_value := 1047024
;
when 15458 =>
table_value := 1047040
;
when 15459 =>
table_value := 1047072
;
when 15460 =>
table_value := 1047120
;
when 15461 =>
table_value := 1047136
;
when 15462 =>
table_value := 1047168
;
when 15463 =>
table_value := 1047216
;
when 15464 =>
table_value := 1047264
;
when 15465 =>
table_value := 1047280
;
when 15466 =>
table_value := 1047296
;
when 15467 =>
table_value := 1047328
;
when 15468 =>
table_value := 1047360
;
when 15469 =>
table_value := 1047408
;
when 15470 =>
table_value := 1047440
;
when 15471 =>
table_value := 1047456
;
when 15472 =>
table_value := 1047504
;
when 15473 =>
table_value := 1047520
;
when 15474 =>
table_value := 1047536
;
when 15475 =>
table_value := 1047584
;
when 15476 =>
table_value := 1047600
;
when 15477 =>
table_value := 1047632
;
when 15478 =>
table_value := 1047664
;
when 15479 =>
table_value := 1047680
;
when 15480 =>
table_value := 1047712
;
when 15481 =>
table_value := 1047728
;
when 15482 =>
table_value := 1047744
;
when 15483 =>
table_value := 1047776
;
when 15484 =>
table_value := 1047776
;
when 15485 =>
table_value := 1047792
;
when 15486 =>
table_value := 1047808
;
when 15487 =>
table_value := 1047824
;
when 15488 =>
table_value := 1047840
;
when 15489 =>
table_value := 1047840
;
when 15490 =>
table_value := 1047872
;
when 15491 =>
table_value := 1047872
;
when 15492 =>
table_value := 1047888
;
when 15493 =>
table_value := 1047872
;
when 15494 =>
table_value := 1047888
;
when 15495 =>
table_value := 1047904
;
when 15496 =>
table_value := 1047888
;
when 15497 =>
table_value := 1047888
;
when 15498 =>
table_value := 1047888
;
when 15499 =>
table_value := 1047888
;
when 15500 =>
table_value := 1047888
;
when 15501 =>
table_value := 1047888
;
when 15502 =>
table_value := 1047872
;
when 15503 =>
table_value := 1047856
;
when 15504 =>
table_value := 1047872
;
when 15505 =>
table_value := 1047856
;
when 15506 =>
table_value := 1047824
;
when 15507 =>
table_value := 1047824
;
when 15508 =>
table_value := 1047824
;
when 15509 =>
table_value := 1047808
;
when 15510 =>
table_value := 1047792
;
when 15511 =>
table_value := 1047792
;
when 15512 =>
table_value := 1047792
;
when 15513 =>
table_value := 1047760
;
when 15514 =>
table_value := 1047744
;
when 15515 =>
table_value := 1047728
;
when 15516 =>
table_value := 1047728
;
when 15517 =>
table_value := 1047696
;
when 15518 =>
table_value := 1047696
;
when 15519 =>
table_value := 1047680
;
when 15520 =>
table_value := 1047648
;
when 15521 =>
table_value := 1047648
;
when 15522 =>
table_value := 1047632
;
when 15523 =>
table_value := 1047632
;
when 15524 =>
table_value := 1047600
;
when 15525 =>
table_value := 1047600
;
when 15526 =>
table_value := 1047600
;
when 15527 =>
table_value := 1047584
;
when 15528 =>
table_value := 1047584
;
when 15529 =>
table_value := 1047584
;
when 15530 =>
table_value := 1047568
;
when 15531 =>
table_value := 1047552
;
when 15532 =>
table_value := 1047536
;
when 15533 =>
table_value := 1047520
;
when 15534 =>
table_value := 1047520
;
when 15535 =>
table_value := 1047520
;
when 15536 =>
table_value := 1047504
;
when 15537 =>
table_value := 1047504
;
when 15538 =>
table_value := 1047504
;
when 15539 =>
table_value := 1047504
;
when 15540 =>
table_value := 1047488
;
when 15541 =>
table_value := 1047488
;
when 15542 =>
table_value := 1047488
;
when 15543 =>
table_value := 1047488
;
when 15544 =>
table_value := 1047488
;
when 15545 =>
table_value := 1047472
;
when 15546 =>
table_value := 1047472
;
when 15547 =>
table_value := 1047472
;
when 15548 =>
table_value := 1047472
;
when 15549 =>
table_value := 1047488
;
when 15550 =>
table_value := 1047488
;
when 15551 =>
table_value := 1047488
;
when 15552 =>
table_value := 1047456
;
when 15553 =>
table_value := 1047456
;
when 15554 =>
table_value := 1047472
;
when 15555 =>
table_value := 1047456
;
when 15556 =>
table_value := 1047440
;
when 15557 =>
table_value := 1047440
;
when 15558 =>
table_value := 1047440
;
when 15559 =>
table_value := 1047440
;
when 15560 =>
table_value := 1047440
;
when 15561 =>
table_value := 1047440
;
when 15562 =>
table_value := 1047424
;
when 15563 =>
table_value := 1047424
;
when 15564 =>
table_value := 1047424
;
when 15565 =>
table_value := 1047408
;
when 15566 =>
table_value := 1047392
;
when 15567 =>
table_value := 1047392
;
when 15568 =>
table_value := 1047392
;
when 15569 =>
table_value := 1047376
;
when 15570 =>
table_value := 1047360
;
when 15571 =>
table_value := 1047360
;
when 15572 =>
table_value := 1047360
;
when 15573 =>
table_value := 1047360
;
when 15574 =>
table_value := 1047344
;
when 15575 =>
table_value := 1047360
;
when 15576 =>
table_value := 1047360
;
when 15577 =>
table_value := 1047360
;
when 15578 =>
table_value := 1047360
;
when 15579 =>
table_value := 1047344
;
when 15580 =>
table_value := 1047360
;
when 15581 =>
table_value := 1047360
;
when 15582 =>
table_value := 1047360
;
when 15583 =>
table_value := 1047376
;
when 15584 =>
table_value := 1047376
;
when 15585 =>
table_value := 1047392
;
when 15586 =>
table_value := 1047408
;
when 15587 =>
table_value := 1047424
;
when 15588 =>
table_value := 1047424
;
when 15589 =>
table_value := 1047440
;
when 15590 =>
table_value := 1047456
;
when 15591 =>
table_value := 1047488
;
when 15592 =>
table_value := 1047520
;
when 15593 =>
table_value := 1047552
;
when 15594 =>
table_value := 1047552
;
when 15595 =>
table_value := 1047584
;
when 15596 =>
table_value := 1047600
;
when 15597 =>
table_value := 1047648
;
when 15598 =>
table_value := 1047680
;
when 15599 =>
table_value := 1047696
;
when 15600 =>
table_value := 1047744
;
when 15601 =>
table_value := 1047776
;
when 15602 =>
table_value := 1047808
;
when 15603 =>
table_value := 1047856
;
when 15604 =>
table_value := 1047888
;
when 15605 =>
table_value := 1047936
;
when 15606 =>
table_value := 1047968
;
when 15607 =>
table_value := 1048000
;
when 15608 =>
table_value := 1048048
;
when 15609 =>
table_value := 1048080
;
when 15610 =>
table_value := 1048128
;
when 15611 =>
table_value := 1048160
;
when 15612 =>
table_value := 1048208
;
when 15613 =>
table_value := 1048256
;
when 15614 =>
table_value := 1048304
;
when 15615 =>
table_value := 1048320
;
when 15616 =>
table_value := 1048368
;
when 15617 =>
table_value := 1048416
;
when 15618 =>
table_value := 1048432
;
when 15619 =>
table_value := 1048480
;
when 15620 =>
table_value := 1048512
;
when 15621 =>
table_value := 1048528
;
when 15622 =>
table_value := 1048560
;
when 15623 =>
table_value := 0
;
when 15624 =>
table_value := 48
;
when 15625 =>
table_value := 64
;
when 15626 =>
table_value := 80
;
when 15627 =>
table_value := 128
;
when 15628 =>
table_value := 144
;
when 15629 =>
table_value := 176
;
when 15630 =>
table_value := 176
;
when 15631 =>
table_value := 208
;
when 15632 =>
table_value := 208
;
when 15633 =>
table_value := 224
;
when 15634 =>
table_value := 224
;
when 15635 =>
table_value := 240
;
when 15636 =>
table_value := 240
;
when 15637 =>
table_value := 240
;
when 15638 =>
table_value := 240
;
when 15639 =>
table_value := 224
;
when 15640 =>
table_value := 240
;
when 15641 =>
table_value := 224
;
when 15642 =>
table_value := 208
;
when 15643 =>
table_value := 208
;
when 15644 =>
table_value := 192
;
when 15645 =>
table_value := 176
;
when 15646 =>
table_value := 160
;
when 15647 =>
table_value := 160
;
when 15648 =>
table_value := 128
;
when 15649 =>
table_value := 128
;
when 15650 =>
table_value := 96
;
when 15651 =>
table_value := 80
;
when 15652 =>
table_value := 48
;
when 15653 =>
table_value := 16
;
when 15654 =>
table_value := 16
;
when 15655 =>
table_value := 0
;
when 15656 =>
table_value := 1048560
;
when 15657 =>
table_value := 1048528
;
when 15658 =>
table_value := 1048496
;
when 15659 =>
table_value := 1048480
;
when 15660 =>
table_value := 1048448
;
when 15661 =>
table_value := 1048416
;
when 15662 =>
table_value := 1048384
;
when 15663 =>
table_value := 1048352
;
when 15664 =>
table_value := 1048320
;
when 15665 =>
table_value := 1048288
;
when 15666 =>
table_value := 1048272
;
when 15667 =>
table_value := 1048208
;
when 15668 =>
table_value := 1048192
;
when 15669 =>
table_value := 1048160
;
when 15670 =>
table_value := 1048128
;
when 15671 =>
table_value := 1048080
;
when 15672 =>
table_value := 1048048
;
when 15673 =>
table_value := 1048032
;
when 15674 =>
table_value := 1047984
;
when 15675 =>
table_value := 1047968
;
when 15676 =>
table_value := 1047936
;
when 15677 =>
table_value := 1047904
;
when 15678 =>
table_value := 1047888
;
when 15679 =>
table_value := 1047840
;
when 15680 =>
table_value := 1047824
;
when 15681 =>
table_value := 1047792
;
when 15682 =>
table_value := 1047744
;
when 15683 =>
table_value := 1047712
;
when 15684 =>
table_value := 1047696
;
when 15685 =>
table_value := 1047664
;
when 15686 =>
table_value := 1047616
;
when 15687 =>
table_value := 1047584
;
when 15688 =>
table_value := 1047552
;
when 15689 =>
table_value := 1047520
;
when 15690 =>
table_value := 1047488
;
when 15691 =>
table_value := 1047440
;
when 15692 =>
table_value := 1047424
;
when 15693 =>
table_value := 1047392
;
when 15694 =>
table_value := 1047344
;
when 15695 =>
table_value := 1047328
;
when 15696 =>
table_value := 1047296
;
when 15697 =>
table_value := 1047248
;
when 15698 =>
table_value := 1047216
;
when 15699 =>
table_value := 1047184
;
when 15700 =>
table_value := 1047136
;
when 15701 =>
table_value := 1047120
;
when 15702 =>
table_value := 1047088
;
when 15703 =>
table_value := 1047056
;
when 15704 =>
table_value := 1047024
;
when 15705 =>
table_value := 1046992
;
when 15706 =>
table_value := 1046960
;
when 15707 =>
table_value := 1046944
;
when 15708 =>
table_value := 1046912
;
when 15709 =>
table_value := 1046864
;
when 15710 =>
table_value := 1046832
;
when 15711 =>
table_value := 1046800
;
when 15712 =>
table_value := 1046768
;
when 15713 =>
table_value := 1046736
;
when 15714 =>
table_value := 1046704
;
when 15715 =>
table_value := 1046672
;
when 15716 =>
table_value := 1046656
;
when 15717 =>
table_value := 1046624
;
when 15718 =>
table_value := 1046608
;
when 15719 =>
table_value := 1046576
;
when 15720 =>
table_value := 1046560
;
when 15721 =>
table_value := 1046528
;
when 15722 =>
table_value := 1046512
;
when 15723 =>
table_value := 1046496
;
when 15724 =>
table_value := 1046480
;
when 15725 =>
table_value := 1046448
;
when 15726 =>
table_value := 1046432
;
when 15727 =>
table_value := 1046432
;
when 15728 =>
table_value := 1046416
;
when 15729 =>
table_value := 1046400
;
when 15730 =>
table_value := 1046384
;
when 15731 =>
table_value := 1046368
;
when 15732 =>
table_value := 1046368
;
when 15733 =>
table_value := 1046352
;
when 15734 =>
table_value := 1046352
;
when 15735 =>
table_value := 1046336
;
when 15736 =>
table_value := 1046336
;
when 15737 =>
table_value := 1046320
;
when 15738 =>
table_value := 1046320
;
when 15739 =>
table_value := 1046320
;
when 15740 =>
table_value := 1046320
;
when 15741 =>
table_value := 1046320
;
when 15742 =>
table_value := 1046304
;
when 15743 =>
table_value := 1046320
;
when 15744 =>
table_value := 1046320
;
when 15745 =>
table_value := 1046320
;
when 15746 =>
table_value := 1046320
;
when 15747 =>
table_value := 1046336
;
when 15748 =>
table_value := 1046352
;
when 15749 =>
table_value := 1046352
;
when 15750 =>
table_value := 1046352
;
when 15751 =>
table_value := 1046384
;
when 15752 =>
table_value := 1046400
;
when 15753 =>
table_value := 1046416
;
when 15754 =>
table_value := 1046416
;
when 15755 =>
table_value := 1046448
;
when 15756 =>
table_value := 1046464
;
when 15757 =>
table_value := 1046480
;
when 15758 =>
table_value := 1046496
;
when 15759 =>
table_value := 1046544
;
when 15760 =>
table_value := 1046576
;
when 15761 =>
table_value := 1046592
;
when 15762 =>
table_value := 1046624
;
when 15763 =>
table_value := 1046672
;
when 15764 =>
table_value := 1046704
;
when 15765 =>
table_value := 1046736
;
when 15766 =>
table_value := 1046784
;
when 15767 =>
table_value := 1046816
;
when 15768 =>
table_value := 1046864
;
when 15769 =>
table_value := 1046896
;
when 15770 =>
table_value := 1046944
;
when 15771 =>
table_value := 1046992
;
when 15772 =>
table_value := 1047040
;
when 15773 =>
table_value := 1047104
;
when 15774 =>
table_value := 1047152
;
when 15775 =>
table_value := 1047200
;
when 15776 =>
table_value := 1047264
;
when 15777 =>
table_value := 1047328
;
when 15778 =>
table_value := 1047376
;
when 15779 =>
table_value := 1047440
;
when 15780 =>
table_value := 1047488
;
when 15781 =>
table_value := 1047568
;
when 15782 =>
table_value := 1047632
;
when 15783 =>
table_value := 1047696
;
when 15784 =>
table_value := 1047760
;
when 15785 =>
table_value := 1047824
;
when 15786 =>
table_value := 1047904
;
when 15787 =>
table_value := 1047968
;
when 15788 =>
table_value := 1048048
;
when 15789 =>
table_value := 1048128
;
when 15790 =>
table_value := 1048192
;
when 15791 =>
table_value := 1048272
;
when 15792 =>
table_value := 1048352
;
when 15793 =>
table_value := 1048448
;
when 15794 =>
table_value := 1048512
;
when 15795 =>
table_value := 16
;
when 15796 =>
table_value := 80
;
when 15797 =>
table_value := 144
;
when 15798 =>
table_value := 240
;
when 15799 =>
table_value := 320
;
when 15800 =>
table_value := 384
;
when 15801 =>
table_value := 448
;
when 15802 =>
table_value := 528
;
when 15803 =>
table_value := 592
;
when 15804 =>
table_value := 672
;
when 15805 =>
table_value := 736
;
when 15806 =>
table_value := 800
;
when 15807 =>
table_value := 864
;
when 15808 =>
table_value := 944
;
when 15809 =>
table_value := 1008
;
when 15810 =>
table_value := 1088
;
when 15811 =>
table_value := 1152
;
when 15812 =>
table_value := 1200
;
when 15813 =>
table_value := 1248
;
when 15814 =>
table_value := 1312
;
when 15815 =>
table_value := 1376
;
when 15816 =>
table_value := 1408
;
when 15817 =>
table_value := 1472
;
when 15818 =>
table_value := 1504
;
when 15819 =>
table_value := 1568
;
when 15820 =>
table_value := 1616
;
when 15821 =>
table_value := 1664
;
when 15822 =>
table_value := 1696
;
when 15823 =>
table_value := 1760
;
when 15824 =>
table_value := 1792
;
when 15825 =>
table_value := 1840
;
when 15826 =>
table_value := 1872
;
when 15827 =>
table_value := 1904
;
when 15828 =>
table_value := 1952
;
when 15829 =>
table_value := 1984
;
when 15830 =>
table_value := 2016
;
when 15831 =>
table_value := 2048
;
when 15832 =>
table_value := 2080
;
when 15833 =>
table_value := 2096
;
when 15834 =>
table_value := 2144
;
when 15835 =>
table_value := 2160
;
when 15836 =>
table_value := 2192
;
when 15837 =>
table_value := 2224
;
when 15838 =>
table_value := 2240
;
when 15839 =>
table_value := 2288
;
when 15840 =>
table_value := 2304
;
when 15841 =>
table_value := 2320
;
when 15842 =>
table_value := 2368
;
when 15843 =>
table_value := 2384
;
when 15844 =>
table_value := 2416
;
when 15845 =>
table_value := 2416
;
when 15846 =>
table_value := 2448
;
when 15847 =>
table_value := 2480
;
when 15848 =>
table_value := 2496
;
when 15849 =>
table_value := 2528
;
when 15850 =>
table_value := 2544
;
when 15851 =>
table_value := 2544
;
when 15852 =>
table_value := 2576
;
when 15853 =>
table_value := 2592
;
when 15854 =>
table_value := 2608
;
when 15855 =>
table_value := 2624
;
when 15856 =>
table_value := 2640
;
when 15857 =>
table_value := 2656
;
when 15858 =>
table_value := 2672
;
when 15859 =>
table_value := 2688
;
when 15860 =>
table_value := 2704
;
when 15861 =>
table_value := 2704
;
when 15862 =>
table_value := 2720
;
when 15863 =>
table_value := 2752
;
when 15864 =>
table_value := 2736
;
when 15865 =>
table_value := 2768
;
when 15866 =>
table_value := 2768
;
when 15867 =>
table_value := 2784
;
when 15868 =>
table_value := 2800
;
when 15869 =>
table_value := 2800
;
when 15870 =>
table_value := 2784
;
when 15871 =>
table_value := 2800
;
when 15872 =>
table_value := 2800
;
when 15873 =>
table_value := 2816
;
when 15874 =>
table_value := 2800
;
when 15875 =>
table_value := 2784
;
when 15876 =>
table_value := 2800
;
when 15877 =>
table_value := 2816
;
when 15878 =>
table_value := 2784
;
when 15879 =>
table_value := 2784
;
when 15880 =>
table_value := 2784
;
when 15881 =>
table_value := 2752
;
when 15882 =>
table_value := 2768
;
when 15883 =>
table_value := 2736
;
when 15884 =>
table_value := 2720
;
when 15885 =>
table_value := 2704
;
when 15886 =>
table_value := 2704
;
when 15887 =>
table_value := 2688
;
when 15888 =>
table_value := 2672
;
when 15889 =>
table_value := 2640
;
when 15890 =>
table_value := 2624
;
when 15891 =>
table_value := 2608
;
when 15892 =>
table_value := 2592
;
when 15893 =>
table_value := 2560
;
when 15894 =>
table_value := 2528
;
when 15895 =>
table_value := 2528
;
when 15896 =>
table_value := 2496
;
when 15897 =>
table_value := 2464
;
when 15898 =>
table_value := 2448
;
when 15899 =>
table_value := 2432
;
when 15900 =>
table_value := 2416
;
when 15901 =>
table_value := 2384
;
when 15902 =>
table_value := 2352
;
when 15903 =>
table_value := 2336
;
when 15904 =>
table_value := 2304
;
when 15905 =>
table_value := 2288
;
when 15906 =>
table_value := 2256
;
when 15907 =>
table_value := 2240
;
when 15908 =>
table_value := 2224
;
when 15909 =>
table_value := 2208
;
when 15910 =>
table_value := 2176
;
when 15911 =>
table_value := 2160
;
when 15912 =>
table_value := 2144
;
when 15913 =>
table_value := 2128
;
when 15914 =>
table_value := 2112
;
when 15915 =>
table_value := 2080
;
when 15916 =>
table_value := 2064
;
when 15917 =>
table_value := 2064
;
when 15918 =>
table_value := 2032
;
when 15919 =>
table_value := 2016
;
when 15920 =>
table_value := 2000
;
when 15921 =>
table_value := 1984
;
when 15922 =>
table_value := 1968
;
when 15923 =>
table_value := 1952
;
when 15924 =>
table_value := 1936
;
when 15925 =>
table_value := 1920
;
when 15926 =>
table_value := 1888
;
when 15927 =>
table_value := 1872
;
when 15928 =>
table_value := 1872
;
when 15929 =>
table_value := 1856
;
when 15930 =>
table_value := 1840
;
when 15931 =>
table_value := 1840
;
when 15932 =>
table_value := 1824
;
when 15933 =>
table_value := 1824
;
when 15934 =>
table_value := 1792
;
when 15935 =>
table_value := 1776
;
when 15936 =>
table_value := 1776
;
when 15937 =>
table_value := 1760
;
when 15938 =>
table_value := 1744
;
when 15939 =>
table_value := 1744
;
when 15940 =>
table_value := 1712
;
when 15941 =>
table_value := 1712
;
when 15942 =>
table_value := 1712
;
when 15943 =>
table_value := 1712
;
when 15944 =>
table_value := 1696
;
when 15945 =>
table_value := 1696
;
when 15946 =>
table_value := 1696
;
when 15947 =>
table_value := 1696
;
when 15948 =>
table_value := 1696
;
when 15949 =>
table_value := 1712
;
when 15950 =>
table_value := 1728
;
when 15951 =>
table_value := 1728
;
when 15952 =>
table_value := 1728
;
when 15953 =>
table_value := 1744
;
when 15954 =>
table_value := 1760
;
when 15955 =>
table_value := 1776
;
when 15956 =>
table_value := 1776
;
when 15957 =>
table_value := 1792
;
when 15958 =>
table_value := 1824
;
when 15959 =>
table_value := 1824
;
when 15960 =>
table_value := 1856
;
when 15961 =>
table_value := 1872
;
when 15962 =>
table_value := 1872
;
when 15963 =>
table_value := 1904
;
when 15964 =>
table_value := 1920
;
when 15965 =>
table_value := 1952
;
when 15966 =>
table_value := 1984
;
when 15967 =>
table_value := 2000
;
when 15968 =>
table_value := 2016
;
when 15969 =>
table_value := 2048
;
when 15970 =>
table_value := 2064
;
when 15971 =>
table_value := 2096
;
when 15972 =>
table_value := 2128
;
when 15973 =>
table_value := 2144
;
when 15974 =>
table_value := 2160
;
when 15975 =>
table_value := 2192
;
when 15976 =>
table_value := 2208
;
when 15977 =>
table_value := 2240
;
when 15978 =>
table_value := 2256
;
when 15979 =>
table_value := 2272
;
when 15980 =>
table_value := 2304
;
when 15981 =>
table_value := 2320
;
when 15982 =>
table_value := 2336
;
when 15983 =>
table_value := 2336
;
when 15984 =>
table_value := 2368
;
when 15985 =>
table_value := 2368
;
when 15986 =>
table_value := 2368
;
when 15987 =>
table_value := 2384
;
when 15988 =>
table_value := 2400
;
when 15989 =>
table_value := 2400
;
when 15990 =>
table_value := 2416
;
when 15991 =>
table_value := 2432
;
when 15992 =>
table_value := 2432
;
when 15993 =>
table_value := 2416
;
when 15994 =>
table_value := 2432
;
when 15995 =>
table_value := 2416
;
when 15996 =>
table_value := 2432
;
when 15997 =>
table_value := 2448
;
when 15998 =>
table_value := 2432
;
when 15999 =>
table_value := 2416
;
when 16000 =>
table_value := 2416
;
when 16001 =>
table_value := 2416
;
when 16002 =>
table_value := 2400
;
when 16003 =>
table_value := 2384
;
when 16004 =>
table_value := 2384
;
when 16005 =>
table_value := 2384
;
when 16006 =>
table_value := 2352
;
when 16007 =>
table_value := 2352
;
when 16008 =>
table_value := 2336
;
when 16009 =>
table_value := 2320
;
when 16010 =>
table_value := 2304
;
when 16011 =>
table_value := 2304
;
when 16012 =>
table_value := 2304
;
when 16013 =>
table_value := 2288
;
when 16014 =>
table_value := 2256
;
when 16015 =>
table_value := 2256
;
when 16016 =>
table_value := 2240
;
when 16017 =>
table_value := 2224
;
when 16018 =>
table_value := 2208
;
when 16019 =>
table_value := 2176
;
when 16020 =>
table_value := 2176
;
when 16021 =>
table_value := 2160
;
when 16022 =>
table_value := 2160
;
when 16023 =>
table_value := 2144
;
when 16024 =>
table_value := 2128
;
when 16025 =>
table_value := 2112
;
when 16026 =>
table_value := 2096
;
when 16027 =>
table_value := 2080
;
when 16028 =>
table_value := 2048
;
when 16029 =>
table_value := 2048
;
when 16030 =>
table_value := 2000
;
when 16031 =>
table_value := 2000
;
when 16032 =>
table_value := 1984
;
when 16033 =>
table_value := 1952
;
when 16034 =>
table_value := 1952
;
when 16035 =>
table_value := 1920
;
when 16036 =>
table_value := 1904
;
when 16037 =>
table_value := 1872
;
when 16038 =>
table_value := 1856
;
when 16039 =>
table_value := 1840
;
when 16040 =>
table_value := 1808
;
when 16041 =>
table_value := 1792
;
when 16042 =>
table_value := 1760
;
when 16043 =>
table_value := 1744
;
when 16044 =>
table_value := 1712
;
when 16045 =>
table_value := 1696
;
when 16046 =>
table_value := 1664
;
when 16047 =>
table_value := 1632
;
when 16048 =>
table_value := 1600
;
when 16049 =>
table_value := 1552
;
when 16050 =>
table_value := 1520
;
when 16051 =>
table_value := 1488
;
when 16052 =>
table_value := 1472
;
when 16053 =>
table_value := 1440
;
when 16054 =>
table_value := 1392
;
when 16055 =>
table_value := 1376
;
when 16056 =>
table_value := 1328
;
when 16057 =>
table_value := 1280
;
when 16058 =>
table_value := 1280
;
when 16059 =>
table_value := 1232
;
when 16060 =>
table_value := 1184
;
when 16061 =>
table_value := 1152
;
when 16062 =>
table_value := 1120
;
when 16063 =>
table_value := 1072
;
when 16064 =>
table_value := 1040
;
when 16065 =>
table_value := 992
;
when 16066 =>
table_value := 960
;
when 16067 =>
table_value := 912
;
when 16068 =>
table_value := 880
;
when 16069 =>
table_value := 832
;
when 16070 =>
table_value := 784
;
when 16071 =>
table_value := 752
;
when 16072 =>
table_value := 720
;
when 16073 =>
table_value := 688
;
when 16074 =>
table_value := 624
;
when 16075 =>
table_value := 592
;
when 16076 =>
table_value := 576
;
when 16077 =>
table_value := 528
;
when 16078 =>
table_value := 480
;
when 16079 =>
table_value := 464
;
when 16080 =>
table_value := 432
;
when 16081 =>
table_value := 384
;
when 16082 =>
table_value := 336
;
when 16083 =>
table_value := 304
;
when 16084 =>
table_value := 272
;
when 16085 =>
table_value := 240
;
when 16086 =>
table_value := 208
;
when 16087 =>
table_value := 176
;
when 16088 =>
table_value := 144
;
when 16089 =>
table_value := 96
;
when 16090 =>
table_value := 64
;
when 16091 =>
table_value := 48
;
when 16092 =>
table_value := 16
;
when 16093 =>
table_value := 0
;
when 16094 =>
table_value := 1048528
;
when 16095 =>
table_value := 1048512
;
when 16096 =>
table_value := 1048480
;
when 16097 =>
table_value := 1048448
;
when 16098 =>
table_value := 1048432
;
when 16099 =>
table_value := 1048400
;
when 16100 =>
table_value := 1048368
;
when 16101 =>
table_value := 1048336
;
when 16102 =>
table_value := 1048320
;
when 16103 =>
table_value := 1048304
;
when 16104 =>
table_value := 1048272
;
when 16105 =>
table_value := 1048272
;
when 16106 =>
table_value := 1048256
;
when 16107 =>
table_value := 1048224
;
when 16108 =>
table_value := 1048208
;
when 16109 =>
table_value := 1048192
;
when 16110 =>
table_value := 1048160
;
when 16111 =>
table_value := 1048160
;
when 16112 =>
table_value := 1048128
;
when 16113 =>
table_value := 1048128
;
when 16114 =>
table_value := 1048112
;
when 16115 =>
table_value := 1048096
;
when 16116 =>
table_value := 1048080
;
when 16117 =>
table_value := 1048048
;
when 16118 =>
table_value := 1048048
;
when 16119 =>
table_value := 1048048
;
when 16120 =>
table_value := 1048048
;
when 16121 =>
table_value := 1048032
;
when 16122 =>
table_value := 1048032
;
when 16123 =>
table_value := 1048032
;
when 16124 =>
table_value := 1048016
;
when 16125 =>
table_value := 1048000
;
when 16126 =>
table_value := 1048016
;
when 16127 =>
table_value := 1048000
;
when 16128 =>
table_value := 1047984
;
when 16129 =>
table_value := 1048000
;
when 16130 =>
table_value := 1048000
;
when 16131 =>
table_value := 1047984
;
when 16132 =>
table_value := 1047984
;
when 16133 =>
table_value := 1047968
;
when 16134 =>
table_value := 1047968
;
when 16135 =>
table_value := 1047968
;
when 16136 =>
table_value := 1047952
;
when 16137 =>
table_value := 1047936
;
when 16138 =>
table_value := 1047936
;
when 16139 =>
table_value := 1047920
;
when 16140 =>
table_value := 1047904
;
when 16141 =>
table_value := 1047888
;
when 16142 =>
table_value := 1047888
;
when 16143 =>
table_value := 1047888
;
when 16144 =>
table_value := 1047840
;
when 16145 =>
table_value := 1047840
;
when 16146 =>
table_value := 1047808
;
when 16147 =>
table_value := 1047808
;
when 16148 =>
table_value := 1047776
;
when 16149 =>
table_value := 1047760
;
when 16150 =>
table_value := 1047728
;
when 16151 =>
table_value := 1047712
;
when 16152 =>
table_value := 1047680
;
when 16153 =>
table_value := 1047664
;
when 16154 =>
table_value := 1047632
;
when 16155 =>
table_value := 1047584
;
when 16156 =>
table_value := 1047568
;
when 16157 =>
table_value := 1047520
;
when 16158 =>
table_value := 1047504
;
when 16159 =>
table_value := 1047456
;
when 16160 =>
table_value := 1047424
;
when 16161 =>
table_value := 1047392
;
when 16162 =>
table_value := 1047344
;
when 16163 =>
table_value := 1047328
;
when 16164 =>
table_value := 1047280
;
when 16165 =>
table_value := 1047248
;
when 16166 =>
table_value := 1047200
;
when 16167 =>
table_value := 1047184
;
when 16168 =>
table_value := 1047136
;
when 16169 =>
table_value := 1047104
;
when 16170 =>
table_value := 1047072
;
when 16171 =>
table_value := 1047040
;
when 16172 =>
table_value := 1047008
;
when 16173 =>
table_value := 1046960
;
when 16174 =>
table_value := 1046944
;
when 16175 =>
table_value := 1046896
;
when 16176 =>
table_value := 1046880
;
when 16177 =>
table_value := 1046848
;
when 16178 =>
table_value := 1046832
;
when 16179 =>
table_value := 1046800
;
when 16180 =>
table_value := 1046784
;
when 16181 =>
table_value := 1046752
;
when 16182 =>
table_value := 1046752
;
when 16183 =>
table_value := 1046736
;
when 16184 =>
table_value := 1046704
;
when 16185 =>
table_value := 1046704
;
when 16186 =>
table_value := 1046672
;
when 16187 =>
table_value := 1046656
;
when 16188 =>
table_value := 1046656
;
when 16189 =>
table_value := 1046640
;
when 16190 =>
table_value := 1046640
;
when 16191 =>
table_value := 1046624
;
when 16192 =>
table_value := 1046624
;
when 16193 =>
table_value := 1046640
;
when 16194 =>
table_value := 1046640
;
when 16195 =>
table_value := 1046640
;
when 16196 =>
table_value := 1046656
;
when 16197 =>
table_value := 1046656
;
when 16198 =>
table_value := 1046656
;
when 16199 =>
table_value := 1046672
;
when 16200 =>
table_value := 1046688
;
when 16201 =>
table_value := 1046688
;
when 16202 =>
table_value := 1046704
;
when 16203 =>
table_value := 1046720
;
when 16204 =>
table_value := 1046736
;
when 16205 =>
table_value := 1046736
;
when 16206 =>
table_value := 1046752
;
when 16207 =>
table_value := 1046768
;
when 16208 =>
table_value := 1046784
;
when 16209 =>
table_value := 1046800
;
when 16210 =>
table_value := 1046816
;
when 16211 =>
table_value := 1046848
;
when 16212 =>
table_value := 1046864
;
when 16213 =>
table_value := 1046880
;
when 16214 =>
table_value := 1046896
;
when 16215 =>
table_value := 1046912
;
when 16216 =>
table_value := 1046944
;
when 16217 =>
table_value := 1046944
;
when 16218 =>
table_value := 1046960
;
when 16219 =>
table_value := 1046992
;
when 16220 =>
table_value := 1047008
;
when 16221 =>
table_value := 1047024
;
when 16222 =>
table_value := 1047024
;
when 16223 =>
table_value := 1047040
;
when 16224 =>
table_value := 1047040
;
when 16225 =>
table_value := 1047072
;
when 16226 =>
table_value := 1047088
;
when 16227 =>
table_value := 1047120
;
when 16228 =>
table_value := 1047120
;
when 16229 =>
table_value := 1047136
;
when 16230 =>
table_value := 1047152
;
when 16231 =>
table_value := 1047152
;
when 16232 =>
table_value := 1047168
;
when 16233 =>
table_value := 1047184
;
when 16234 =>
table_value := 1047200
;
when 16235 =>
table_value := 1047200
;
when 16236 =>
table_value := 1047216
;
when 16237 =>
table_value := 1047216
;
when 16238 =>
table_value := 1047232
;
when 16239 =>
table_value := 1047248
;
when 16240 =>
table_value := 1047264
;
when 16241 =>
table_value := 1047264
;
when 16242 =>
table_value := 1047280
;
when 16243 =>
table_value := 1047296
;
when 16244 =>
table_value := 1047312
;
when 16245 =>
table_value := 1047328
;
when 16246 =>
table_value := 1047328
;
when 16247 =>
table_value := 1047344
;
when 16248 =>
table_value := 1047344
;
when 16249 =>
table_value := 1047360
;
when 16250 =>
table_value := 1047376
;
when 16251 =>
table_value := 1047392
;
when 16252 =>
table_value := 1047408
;
when 16253 =>
table_value := 1047424
;
when 16254 =>
table_value := 1047440
;
when 16255 =>
table_value := 1047456
;
when 16256 =>
table_value := 1047472
;
when 16257 =>
table_value := 1047504
;
when 16258 =>
table_value := 1047520
;
when 16259 =>
table_value := 1047536
;
when 16260 =>
table_value := 1047568
;
when 16261 =>
table_value := 1047568
;
when 16262 =>
table_value := 1047600
;
when 16263 =>
table_value := 1047616
;
when 16264 =>
table_value := 1047648
;
when 16265 =>
table_value := 1047664
;
when 16266 =>
table_value := 1047680
;
when 16267 =>
table_value := 1047712
;
when 16268 =>
table_value := 1047728
;
when 16269 =>
table_value := 1047744
;
when 16270 =>
table_value := 1047776
;
when 16271 =>
table_value := 1047808
;
when 16272 =>
table_value := 1047792
;
when 16273 =>
table_value := 1047840
;
when 16274 =>
table_value := 1047856
;
when 16275 =>
table_value := 1047888
;
when 16276 =>
table_value := 1047904
;
when 16277 =>
table_value := 1047920
;
when 16278 =>
table_value := 1047968
;
when 16279 =>
table_value := 1048000
;
when 16280 =>
table_value := 1048016
;
when 16281 =>
table_value := 1048048
;
when 16282 =>
table_value := 1048080
;
when 16283 =>
table_value := 1048112
;
when 16284 =>
table_value := 1048128
;
when 16285 =>
table_value := 1048160
;
when 16286 =>
table_value := 1048192
;
when 16287 =>
table_value := 1048224
;
when 16288 =>
table_value := 1048240
;
when 16289 =>
table_value := 1048256
;
when 16290 =>
table_value := 1048288
;
when 16291 =>
table_value := 1048304
;
when 16292 =>
table_value := 1048352
;
when 16293 =>
table_value := 1048352
;
when 16294 =>
table_value := 1048384
;
when 16295 =>
table_value := 1048400
;
when 16296 =>
table_value := 1048416
;
when 16297 =>
table_value := 1048448
;
when 16298 =>
table_value := 1048464
;
when 16299 =>
table_value := 1048496
;
when 16300 =>
table_value := 1048496
;
when 16301 =>
table_value := 1048512
;
when 16302 =>
table_value := 1048528
;
when 16303 =>
table_value := 1048560
;
when 16304 =>
table_value := 1048560
;
when 16305 =>
table_value := 0
;
when 16306 =>
table_value := 0
;
when 16307 =>
table_value := 0
;
when 16308 =>
table_value := 0
;
when 16309 =>
table_value := 0
;
when 16310 =>
table_value := 0
;
when 16311 =>
table_value := 0
;
when 16312 =>
table_value := 0
;
when 16313 =>
table_value := 0
;
when 16314 =>
table_value := 0
;
when 16315 =>
table_value := 0
;
when 16316 =>
table_value := 0
;
when 16317 =>
table_value := 1048560
;
when 16318 =>
table_value := 1048544
;
when 16319 =>
table_value := 1048528
;
when 16320 =>
table_value := 1048512
;
when 16321 =>
table_value := 1048496
;
when 16322 =>
table_value := 1048480
;
when 16323 =>
table_value := 1048464
;
when 16324 =>
table_value := 1048432
;
when 16325 =>
table_value := 1048416
;
when 16326 =>
table_value := 1048384
;
when 16327 =>
table_value := 1048368
;
when 16328 =>
table_value := 1048352
;
when 16329 =>
table_value := 1048336
;
when 16330 =>
table_value := 1048304
;
when 16331 =>
table_value := 1048272
;
when 16332 =>
table_value := 1048256
;
when 16333 =>
table_value := 1048224
;
when 16334 =>
table_value := 1048192
;
when 16335 =>
table_value := 1048176
;
when 16336 =>
table_value := 1048144
;
when 16337 =>
table_value := 1048112
;
when 16338 =>
table_value := 1048080
;
when 16339 =>
table_value := 1048032
;
when 16340 =>
table_value := 1048016
;
when 16341 =>
table_value := 1047984
;
when 16342 =>
table_value := 1047952
;
when 16343 =>
table_value := 1047920
;
when 16344 =>
table_value := 1047888
;
when 16345 =>
table_value := 1047872
;
when 16346 =>
table_value := 1047824
;
when 16347 =>
table_value := 1047792
;
when 16348 =>
table_value := 1047760
;
when 16349 =>
table_value := 1047728
;
when 16350 =>
table_value := 1047696
;
when 16351 =>
table_value := 1047648
;
when 16352 =>
table_value := 1047616
;
when 16353 =>
table_value := 1047584
;
when 16354 =>
table_value := 1047552
;
when 16355 =>
table_value := 1047504
;
when 16356 =>
table_value := 1047472
;
when 16357 =>
table_value := 1047424
;
when 16358 =>
table_value := 1047376
;
when 16359 =>
table_value := 1047344
;
when 16360 =>
table_value := 1047312
;
when 16361 =>
table_value := 1047248
;
when 16362 =>
table_value := 1047216
;
when 16363 =>
table_value := 1047184
;
when 16364 =>
table_value := 1047120
;
when 16365 =>
table_value := 1047072
;
when 16366 =>
table_value := 1047040
;
when 16367 =>
table_value := 1046992
;
when 16368 =>
table_value := 1046928
;
when 16369 =>
table_value := 1046880
;
when 16370 =>
table_value := 1046832
;
when 16371 =>
table_value := 1046784
;
when 16372 =>
table_value := 1046784
;
when 16373 =>
table_value := 1046720
;
when 16374 =>
table_value := 1046688
;
when 16375 =>
table_value := 1046640
;
when 16376 =>
table_value := 1046592
;
when 16377 =>
table_value := 1046544
;
when 16378 =>
table_value := 1046512
;
when 16379 =>
table_value := 1046496
;
when 16380 =>
table_value := 1046448
;
when 16381 =>
table_value := 1046416
;
when 16382 =>
table_value := 1046384
;
when 16383 =>
table_value := 1046352
;
when 16384 =>
table_value := 1046320
;
when 16385 =>
table_value := 1046272
;
when 16386 =>
table_value := 1046272
;
when 16387 =>
table_value := 1046224
;
when 16388 =>
table_value := 1046224
;
when 16389 =>
table_value := 1046192
;
when 16390 =>
table_value := 1046176
;
when 16391 =>
table_value := 1046192
;
when 16392 =>
table_value := 1046176
;
when 16393 =>
table_value := 1046160
;
when 16394 =>
table_value := 1046160
;
when 16395 =>
table_value := 1046160
;
when 16396 =>
table_value := 1046144
;
when 16397 =>
table_value := 1046160
;
when 16398 =>
table_value := 1046160
;
when 16399 =>
table_value := 1046160
;
when 16400 =>
table_value := 1046176
;
when 16401 =>
table_value := 1046176
;
when 16402 =>
table_value := 1046192
;
when 16403 =>
table_value := 1046208
;
when 16404 =>
table_value := 1046224
;
when 16405 =>
table_value := 1046240
;
when 16406 =>
table_value := 1046240
;
when 16407 =>
table_value := 1046256
;
when 16408 =>
table_value := 1046288
;
when 16409 =>
table_value := 1046304
;
when 16410 =>
table_value := 1046320
;
when 16411 =>
table_value := 1046352
;
when 16412 =>
table_value := 1046384
;
when 16413 =>
table_value := 1046400
;
when 16414 =>
table_value := 1046432
;
when 16415 =>
table_value := 1046464
;
when 16416 =>
table_value := 1046496
;
when 16417 =>
table_value := 1046528
;
when 16418 =>
table_value := 1046544
;
when 16419 =>
table_value := 1046576
;
when 16420 =>
table_value := 1046624
;
when 16421 =>
table_value := 1046656
;
when 16422 =>
table_value := 1046704
;
when 16423 =>
table_value := 1046736
;
when 16424 =>
table_value := 1046784
;
when 16425 =>
table_value := 1046816
;
when 16426 =>
table_value := 1046848
;
when 16427 =>
table_value := 1046864
;
when 16428 =>
table_value := 1046896
;
when 16429 =>
table_value := 1046944
;
when 16430 =>
table_value := 1046960
;
when 16431 =>
table_value := 1047008
;
when 16432 =>
table_value := 1047024
;
when 16433 =>
table_value := 1047040
;
when 16434 =>
table_value := 1047088
;
when 16435 =>
table_value := 1047104
;
when 16436 =>
table_value := 1047136
;
when 16437 =>
table_value := 1047168
;
when 16438 =>
table_value := 1047200
;
when 16439 =>
table_value := 1047232
;
when 16440 =>
table_value := 1047264
;
when 16441 =>
table_value := 1047264
;
when 16442 =>
table_value := 1047280
;
when 16443 =>
table_value := 1047328
;
when 16444 =>
table_value := 1047328
;
when 16445 =>
table_value := 1047376
;
when 16446 =>
table_value := 1047424
;
when 16447 =>
table_value := 1047440
;
when 16448 =>
table_value := 1047472
;
when 16449 =>
table_value := 1047504
;
when 16450 =>
table_value := 1047520
;
when 16451 =>
table_value := 1047536
;
when 16452 =>
table_value := 1047584
;
when 16453 =>
table_value := 1047616
;
when 16454 =>
table_value := 1047632
;
when 16455 =>
table_value := 1047680
;
when 16456 =>
table_value := 1047696
;
when 16457 =>
table_value := 1047744
;
when 16458 =>
table_value := 1047776
;
when 16459 =>
table_value := 1047808
;
when 16460 =>
table_value := 1047840
;
when 16461 =>
table_value := 1047888
;
when 16462 =>
table_value := 1047920
;
when 16463 =>
table_value := 1047952
;
when 16464 =>
table_value := 1047984
;
when 16465 =>
table_value := 1048032
;
when 16466 =>
table_value := 1048064
;
when 16467 =>
table_value := 1048128
;
when 16468 =>
table_value := 1048160
;
when 16469 =>
table_value := 1048208
;
when 16470 =>
table_value := 1048256
;
when 16471 =>
table_value := 1048288
;
when 16472 =>
table_value := 1048352
;
when 16473 =>
table_value := 1048384
;
when 16474 =>
table_value := 1048432
;
when 16475 =>
table_value := 1048480
;
when 16476 =>
table_value := 1048528
;
when 16477 =>
table_value := 1048560
;
when 16478 =>
table_value := 16
;
when 16479 =>
table_value := 48
;
when 16480 =>
table_value := 96
;
when 16481 =>
table_value := 144
;
when 16482 =>
table_value := 176
;
when 16483 =>
table_value := 224
;
when 16484 =>
table_value := 256
;
when 16485 =>
table_value := 288
;
when 16486 =>
table_value := 304
;
when 16487 =>
table_value := 352
;
when 16488 =>
table_value := 384
;
when 16489 =>
table_value := 416
;
when 16490 =>
table_value := 448
;
when 16491 =>
table_value := 480
;
when 16492 =>
table_value := 480
;
when 16493 =>
table_value := 512
;
when 16494 =>
table_value := 528
;
when 16495 =>
table_value := 560
;
when 16496 =>
table_value := 560
;
when 16497 =>
table_value := 576
;
when 16498 =>
table_value := 592
;
when 16499 =>
table_value := 592
;
when 16500 =>
table_value := 592
;
when 16501 =>
table_value := 592
;
when 16502 =>
table_value := 608
;
when 16503 =>
table_value := 608
;
when 16504 =>
table_value := 592
;
when 16505 =>
table_value := 576
;
when 16506 =>
table_value := 576
;
when 16507 =>
table_value := 560
;
when 16508 =>
table_value := 544
;
when 16509 =>
table_value := 544
;
when 16510 =>
table_value := 496
;
when 16511 =>
table_value := 480
;
when 16512 =>
table_value := 464
;
when 16513 =>
table_value := 448
;
when 16514 =>
table_value := 432
;
when 16515 =>
table_value := 416
;
when 16516 =>
table_value := 368
;
when 16517 =>
table_value := 336
;
when 16518 =>
table_value := 320
;
when 16519 =>
table_value := 272
;
when 16520 =>
table_value := 240
;
when 16521 =>
table_value := 208
;
when 16522 =>
table_value := 160
;
when 16523 =>
table_value := 144
;
when 16524 =>
table_value := 112
;
when 16525 =>
table_value := 64
;
when 16526 =>
table_value := 32
;
when 16527 =>
table_value := 0
;
when 16528 =>
table_value := 1048560
;
when 16529 =>
table_value := 1048512
;
when 16530 =>
table_value := 1048480
;
when 16531 =>
table_value := 1048432
;
when 16532 =>
table_value := 1048400
;
when 16533 =>
table_value := 1048368
;
when 16534 =>
table_value := 1048320
;
when 16535 =>
table_value := 1048288
;
when 16536 =>
table_value := 1048256
;
when 16537 =>
table_value := 1048224
;
when 16538 =>
table_value := 1048176
;
when 16539 =>
table_value := 1048128
;
when 16540 =>
table_value := 1048096
;
when 16541 =>
table_value := 1048048
;
when 16542 =>
table_value := 1048016
;
when 16543 =>
table_value := 1047984
;
when 16544 =>
table_value := 1047952
;
when 16545 =>
table_value := 1047920
;
when 16546 =>
table_value := 1047872
;
when 16547 =>
table_value := 1047840
;
when 16548 =>
table_value := 1047808
;
when 16549 =>
table_value := 1047760
;
when 16550 =>
table_value := 1047728
;
when 16551 =>
table_value := 1047712
;
when 16552 =>
table_value := 1047664
;
when 16553 =>
table_value := 1047632
;
when 16554 =>
table_value := 1047600
;
when 16555 =>
table_value := 1047568
;
when 16556 =>
table_value := 1047536
;
when 16557 =>
table_value := 1047504
;
when 16558 =>
table_value := 1047488
;
when 16559 =>
table_value := 1047440
;
when 16560 =>
table_value := 1047440
;
when 16561 =>
table_value := 1047392
;
when 16562 =>
table_value := 1047360
;
when 16563 =>
table_value := 1047344
;
when 16564 =>
table_value := 1047312
;
when 16565 =>
table_value := 1047280
;
when 16566 =>
table_value := 1047264
;
when 16567 =>
table_value := 1047232
;
when 16568 =>
table_value := 1047232
;
when 16569 =>
table_value := 1047200
;
when 16570 =>
table_value := 1047168
;
when 16571 =>
table_value := 1047168
;
when 16572 =>
table_value := 1047136
;
when 16573 =>
table_value := 1047120
;
when 16574 =>
table_value := 1047104
;
when 16575 =>
table_value := 1047104
;
when 16576 =>
table_value := 1047088
;
when 16577 =>
table_value := 1047072
;
when 16578 =>
table_value := 1047056
;
when 16579 =>
table_value := 1047040
;
when 16580 =>
table_value := 1047024
;
when 16581 =>
table_value := 1047024
;
when 16582 =>
table_value := 1047024
;
when 16583 =>
table_value := 1047008
;
when 16584 =>
table_value := 1046992
;
when 16585 =>
table_value := 1046992
;
when 16586 =>
table_value := 1046992
;
when 16587 =>
table_value := 1046976
;
when 16588 =>
table_value := 1046976
;
when 16589 =>
table_value := 1046960
;
when 16590 =>
table_value := 1046960
;
when 16591 =>
table_value := 1046960
;
when 16592 =>
table_value := 1046944
;
when 16593 =>
table_value := 1046960
;
when 16594 =>
table_value := 1046944
;
when 16595 =>
table_value := 1046944
;
when 16596 =>
table_value := 1046928
;
when 16597 =>
table_value := 1046928
;
when 16598 =>
table_value := 1046912
;
when 16599 =>
table_value := 1046912
;
when 16600 =>
table_value := 1046912
;
when 16601 =>
table_value := 1046896
;
when 16602 =>
table_value := 1046896
;
when 16603 =>
table_value := 1046896
;
when 16604 =>
table_value := 1046880
;
when 16605 =>
table_value := 1046896
;
when 16606 =>
table_value := 1046896
;
when 16607 =>
table_value := 1046896
;
when 16608 =>
table_value := 1046880
;
when 16609 =>
table_value := 1046880
;
when 16610 =>
table_value := 1046896
;
when 16611 =>
table_value := 1046896
;
when 16612 =>
table_value := 1046912
;
when 16613 =>
table_value := 1046896
;
when 16614 =>
table_value := 1046912
;
when 16615 =>
table_value := 1046928
;
when 16616 =>
table_value := 1046944
;
when 16617 =>
table_value := 1046960
;
when 16618 =>
table_value := 1046960
;
when 16619 =>
table_value := 1046976
;
when 16620 =>
table_value := 1047008
;
when 16621 =>
table_value := 1047024
;
when 16622 =>
table_value := 1047040
;
when 16623 =>
table_value := 1047088
;
when 16624 =>
table_value := 1047120
;
when 16625 =>
table_value := 1047136
;
when 16626 =>
table_value := 1047184
;
when 16627 =>
table_value := 1047216
;
when 16628 =>
table_value := 1047264
;
when 16629 =>
table_value := 1047296
;
when 16630 =>
table_value := 1047344
;
when 16631 =>
table_value := 1047408
;
when 16632 =>
table_value := 1047456
;
when 16633 =>
table_value := 1047520
;
when 16634 =>
table_value := 1047584
;
when 16635 =>
table_value := 1047648
;
when 16636 =>
table_value := 1047712
;
when 16637 =>
table_value := 1047776
;
when 16638 =>
table_value := 1047856
;
when 16639 =>
table_value := 1047952
;
when 16640 =>
table_value := 1048016
;
when 16641 =>
table_value := 1048096
;
when 16642 =>
table_value := 1048192
;
when 16643 =>
table_value := 1048288
;
when 16644 =>
table_value := 1048368
;
when 16645 =>
table_value := 1048448
;
when 16646 =>
table_value := 1048560
;
when 16647 =>
table_value := 64
;
when 16648 =>
table_value := 160
;
when 16649 =>
table_value := 256
;
when 16650 =>
table_value := 352
;
when 16651 =>
table_value := 464
;
when 16652 =>
table_value := 544
;
when 16653 =>
table_value := 672
;
when 16654 =>
table_value := 768
;
when 16655 =>
table_value := 864
;
when 16656 =>
table_value := 976
;
when 16657 =>
table_value := 1072
;
when 16658 =>
table_value := 1200
;
when 16659 =>
table_value := 1296
;
when 16660 =>
table_value := 1408
;
when 16661 =>
table_value := 1520
;
when 16662 =>
table_value := 1632
;
when 16663 =>
table_value := 1728
;
when 16664 =>
table_value := 1856
;
when 16665 =>
table_value := 1968
;
when 16666 =>
table_value := 2064
;
when 16667 =>
table_value := 2160
;
when 16668 =>
table_value := 2256
;
when 16669 =>
table_value := 2352
;
when 16670 =>
table_value := 2448
;
when 16671 =>
table_value := 2544
;
when 16672 =>
table_value := 2624
;
when 16673 =>
table_value := 2720
;
when 16674 =>
table_value := 2800
;
when 16675 =>
table_value := 2880
;
when 16676 =>
table_value := 2960
;
when 16677 =>
table_value := 3040
;
when 16678 =>
table_value := 3104
;
when 16679 =>
table_value := 3168
;
when 16680 =>
table_value := 3232
;
when 16681 =>
table_value := 3296
;
when 16682 =>
table_value := 3360
;
when 16683 =>
table_value := 3408
;
when 16684 =>
table_value := 3456
;
when 16685 =>
table_value := 3520
;
when 16686 =>
table_value := 3568
;
when 16687 =>
table_value := 3616
;
when 16688 =>
table_value := 3648
;
when 16689 =>
table_value := 3696
;
when 16690 =>
table_value := 3728
;
when 16691 =>
table_value := 3776
;
when 16692 =>
table_value := 3808
;
when 16693 =>
table_value := 3840
;
when 16694 =>
table_value := 3856
;
when 16695 =>
table_value := 3872
;
when 16696 =>
table_value := 3904
;
when 16697 =>
table_value := 3920
;
when 16698 =>
table_value := 3936
;
when 16699 =>
table_value := 3936
;
when 16700 =>
table_value := 3936
;
when 16701 =>
table_value := 3952
;
when 16702 =>
table_value := 3952
;
when 16703 =>
table_value := 3952
;
when 16704 =>
table_value := 3952
;
when 16705 =>
table_value := 3936
;
when 16706 =>
table_value := 3952
;
when 16707 =>
table_value := 3936
;
when 16708 =>
table_value := 3920
;
when 16709 =>
table_value := 3920
;
when 16710 =>
table_value := 3920
;
when 16711 =>
table_value := 3888
;
when 16712 =>
table_value := 3872
;
when 16713 =>
table_value := 3872
;
when 16714 =>
table_value := 3856
;
when 16715 =>
table_value := 3824
;
when 16716 =>
table_value := 3808
;
when 16717 =>
table_value := 3776
;
when 16718 =>
table_value := 3760
;
when 16719 =>
table_value := 3744
;
when 16720 =>
table_value := 3728
;
when 16721 =>
table_value := 3696
;
when 16722 =>
table_value := 3664
;
when 16723 =>
table_value := 3648
;
when 16724 =>
table_value := 3616
;
when 16725 =>
table_value := 3584
;
when 16726 =>
table_value := 3584
;
when 16727 =>
table_value := 3552
;
when 16728 =>
table_value := 3504
;
when 16729 =>
table_value := 3488
;
when 16730 =>
table_value := 3456
;
when 16731 =>
table_value := 3440
;
when 16732 =>
table_value := 3408
;
when 16733 =>
table_value := 3392
;
when 16734 =>
table_value := 3360
;
when 16735 =>
table_value := 3312
;
when 16736 =>
table_value := 3312
;
when 16737 =>
table_value := 3280
;
when 16738 =>
table_value := 3280
;
when 16739 =>
table_value := 3248
;
when 16740 =>
table_value := 3216
;
when 16741 =>
table_value := 3184
;
when 16742 =>
table_value := 3184
;
when 16743 =>
table_value := 3168
;
when 16744 =>
table_value := 3136
;
when 16745 =>
table_value := 3120
;
when 16746 =>
table_value := 3104
;
when 16747 =>
table_value := 3072
;
when 16748 =>
table_value := 3056
;
when 16749 =>
table_value := 3040
;
when 16750 =>
table_value := 3008
;
when 16751 =>
table_value := 3008
;
when 16752 =>
table_value := 2976
;
when 16753 =>
table_value := 2960
;
when 16754 =>
table_value := 2928
;
when 16755 =>
table_value := 2912
;
when 16756 =>
table_value := 2912
;
when 16757 =>
table_value := 2880
;
when 16758 =>
table_value := 2864
;
when 16759 =>
table_value := 2848
;
when 16760 =>
table_value := 2832
;
when 16761 =>
table_value := 2800
;
when 16762 =>
table_value := 2768
;
when 16763 =>
table_value := 2752
;
when 16764 =>
table_value := 2720
;
when 16765 =>
table_value := 2704
;
when 16766 =>
table_value := 2672
;
when 16767 =>
table_value := 2640
;
when 16768 =>
table_value := 2624
;
when 16769 =>
table_value := 2576
;
when 16770 =>
table_value := 2528
;
when 16771 =>
table_value := 2512
;
when 16772 =>
table_value := 2464
;
when 16773 =>
table_value := 2432
;
when 16774 =>
table_value := 2368
;
when 16775 =>
table_value := 2320
;
when 16776 =>
table_value := 2288
;
when 16777 =>
table_value := 2224
;
when 16778 =>
table_value := 2176
;
when 16779 =>
table_value := 2128
;
when 16780 =>
table_value := 2064
;
when 16781 =>
table_value := 2016
;
when 16782 =>
table_value := 1952
;
when 16783 =>
table_value := 1888
;
when 16784 =>
table_value := 1840
;
when 16785 =>
table_value := 1760
;
when 16786 =>
table_value := 1712
;
when 16787 =>
table_value := 1632
;
when 16788 =>
table_value := 1568
;
when 16789 =>
table_value := 1488
;
when 16790 =>
table_value := 1408
;
when 16791 =>
table_value := 1344
;
when 16792 =>
table_value := 1280
;
when 16793 =>
table_value := 1200
;
when 16794 =>
table_value := 1136
;
when 16795 =>
table_value := 1056
;
when 16796 =>
table_value := 976
;
when 16797 =>
table_value := 912
;
when 16798 =>
table_value := 832
;
when 16799 =>
table_value := 768
;
when 16800 =>
table_value := 672
;
when 16801 =>
table_value := 624
;
when 16802 =>
table_value := 560
;
when 16803 =>
table_value := 480
;
when 16804 =>
table_value := 432
;
when 16805 =>
table_value := 352
;
when 16806 =>
table_value := 304
;
when 16807 =>
table_value := 256
;
when 16808 =>
table_value := 208
;
when 16809 =>
table_value := 128
;
when 16810 =>
table_value := 96
;
when 16811 =>
table_value := 48
;
when 16812 =>
table_value := 16
;
when 16813 =>
table_value := 0
;
when 16814 =>
table_value := 1048528
;
when 16815 =>
table_value := 1048528
;
when 16816 =>
table_value := 1048480
;
when 16817 =>
table_value := 1048464
;
when 16818 =>
table_value := 1048432
;
when 16819 =>
table_value := 1048416
;
when 16820 =>
table_value := 1048400
;
when 16821 =>
table_value := 1048400
;
when 16822 =>
table_value := 1048384
;
when 16823 =>
table_value := 1048384
;
when 16824 =>
table_value := 1048368
;
when 16825 =>
table_value := 1048368
;
when 16826 =>
table_value := 1048384
;
when 16827 =>
table_value := 1048368
;
when 16828 =>
table_value := 1048368
;
when 16829 =>
table_value := 1048384
;
when 16830 =>
table_value := 1048400
;
when 16831 =>
table_value := 1048400
;
when 16832 =>
table_value := 1048416
;
when 16833 =>
table_value := 1048432
;
when 16834 =>
table_value := 1048448
;
when 16835 =>
table_value := 1048464
;
when 16836 =>
table_value := 1048480
;
when 16837 =>
table_value := 1048496
;
when 16838 =>
table_value := 1048512
;
when 16839 =>
table_value := 1048528
;
when 16840 =>
table_value := 1048544
;
when 16841 =>
table_value := 0
;
when 16842 =>
table_value := 0
;
when 16843 =>
table_value := 16
;
when 16844 =>
table_value := 64
;
when 16845 =>
table_value := 80
;
when 16846 =>
table_value := 80
;
when 16847 =>
table_value := 112
;
when 16848 =>
table_value := 128
;
when 16849 =>
table_value := 128
;
when 16850 =>
table_value := 160
;
when 16851 =>
table_value := 176
;
when 16852 =>
table_value := 192
;
when 16853 =>
table_value := 208
;
when 16854 =>
table_value := 208
;
when 16855 =>
table_value := 224
;
when 16856 =>
table_value := 224
;
when 16857 =>
table_value := 256
;
when 16858 =>
table_value := 256
;
when 16859 =>
table_value := 272
;
when 16860 =>
table_value := 288
;
when 16861 =>
table_value := 288
;
when 16862 =>
table_value := 288
;
when 16863 =>
table_value := 304
;
when 16864 =>
table_value := 304
;
when 16865 =>
table_value := 304
;
when 16866 =>
table_value := 320
;
when 16867 =>
table_value := 320
;
when 16868 =>
table_value := 320
;
when 16869 =>
table_value := 336
;
when 16870 =>
table_value := 320
;
when 16871 =>
table_value := 336
;
when 16872 =>
table_value := 304
;
when 16873 =>
table_value := 320
;
when 16874 =>
table_value := 336
;
when 16875 =>
table_value := 336
;
when 16876 =>
table_value := 304
;
when 16877 =>
table_value := 320
;
when 16878 =>
table_value := 320
;
when 16879 =>
table_value := 320
;
when 16880 =>
table_value := 320
;
when 16881 =>
table_value := 320
;
when 16882 =>
table_value := 304
;
when 16883 =>
table_value := 304
;
when 16884 =>
table_value := 304
;
when 16885 =>
table_value := 304
;
when 16886 =>
table_value := 320
;
when 16887 =>
table_value := 304
;
when 16888 =>
table_value := 304
;
when 16889 =>
table_value := 304
;
when 16890 =>
table_value := 288
;
when 16891 =>
table_value := 304
;
when 16892 =>
table_value := 304
;
when 16893 =>
table_value := 304
;
when 16894 =>
table_value := 304
;
when 16895 =>
table_value := 304
;
when 16896 =>
table_value := 288
;
when 16897 =>
table_value := 304
;
when 16898 =>
table_value := 304
;
when 16899 =>
table_value := 304
;
when 16900 =>
table_value := 304
;
when 16901 =>
table_value := 304
;
when 16902 =>
table_value := 304
;
when 16903 =>
table_value := 304
;
when 16904 =>
table_value := 304
;
when 16905 =>
table_value := 304
;
when 16906 =>
table_value := 288
;
when 16907 =>
table_value := 288
;
when 16908 =>
table_value := 288
;
when 16909 =>
table_value := 304
;
when 16910 =>
table_value := 288
;
when 16911 =>
table_value := 272
;
when 16912 =>
table_value := 288
;
when 16913 =>
table_value := 288
;
when 16914 =>
table_value := 272
;
when 16915 =>
table_value := 272
;
when 16916 =>
table_value := 256
;
when 16917 =>
table_value := 256
;
when 16918 =>
table_value := 272
;
when 16919 =>
table_value := 272
;
when 16920 =>
table_value := 240
;
when 16921 =>
table_value := 256
;
when 16922 =>
table_value := 240
;
when 16923 =>
table_value := 224
;
when 16924 =>
table_value := 240
;
when 16925 =>
table_value := 224
;
when 16926 =>
table_value := 208
;
when 16927 =>
table_value := 224
;
when 16928 =>
table_value := 208
;
when 16929 =>
table_value := 192
;
when 16930 =>
table_value := 192
;
when 16931 =>
table_value := 192
;
when 16932 =>
table_value := 192
;
when 16933 =>
table_value := 176
;
when 16934 =>
table_value := 176
;
when 16935 =>
table_value := 160
;
when 16936 =>
table_value := 144
;
when 16937 =>
table_value := 144
;
when 16938 =>
table_value := 144
;
when 16939 =>
table_value := 144
;
when 16940 =>
table_value := 144
;
when 16941 =>
table_value := 128
;
when 16942 =>
table_value := 112
;
when 16943 =>
table_value := 128
;
when 16944 =>
table_value := 112
;
when 16945 =>
table_value := 112
;
when 16946 =>
table_value := 96
;
when 16947 =>
table_value := 96
;
when 16948 =>
table_value := 96
;
when 16949 =>
table_value := 80
;
when 16950 =>
table_value := 80
;
when 16951 =>
table_value := 96
;
when 16952 =>
table_value := 80
;
when 16953 =>
table_value := 80
;
when 16954 =>
table_value := 64
;
when 16955 =>
table_value := 64
;
when 16956 =>
table_value := 64
;
when 16957 =>
table_value := 64
;
when 16958 =>
table_value := 64
;
when 16959 =>
table_value := 48
;
when 16960 =>
table_value := 48
;
when 16961 =>
table_value := 32
;
when 16962 =>
table_value := 32
;
when 16963 =>
table_value := 16
;
when 16964 =>
table_value := 0
;
when 16965 =>
table_value := 16
;
when 16966 =>
table_value := 0
;
when 16967 =>
table_value := 0
;
when 16968 =>
table_value := 0
;
when 16969 =>
table_value := 0
;
when 16970 =>
table_value := 0
;
when 16971 =>
table_value := 0
;
when 16972 =>
table_value := 0
;
when 16973 =>
table_value := 1048560
;
when 16974 =>
table_value := 1048544
;
when 16975 =>
table_value := 1048528
;
when 16976 =>
table_value := 1048512
;
when 16977 =>
table_value := 1048512
;
when 16978 =>
table_value := 1048496
;
when 16979 =>
table_value := 1048480
;
when 16980 =>
table_value := 1048464
;
when 16981 =>
table_value := 1048464
;
when 16982 =>
table_value := 1048432
;
when 16983 =>
table_value := 1048416
;
when 16984 =>
table_value := 1048400
;
when 16985 =>
table_value := 1048384
;
when 16986 =>
table_value := 1048368
;
when 16987 =>
table_value := 1048352
;
when 16988 =>
table_value := 1048320
;
when 16989 =>
table_value := 1048304
;
when 16990 =>
table_value := 1048304
;
when 16991 =>
table_value := 1048272
;
when 16992 =>
table_value := 1048256
;
when 16993 =>
table_value := 1048240
;
when 16994 =>
table_value := 1048208
;
when 16995 =>
table_value := 1048192
;
when 16996 =>
table_value := 1048160
;
when 16997 =>
table_value := 1048160
;
when 16998 =>
table_value := 1048128
;
when 16999 =>
table_value := 1048112
;
when 17000 =>
table_value := 1048064
;
when 17001 =>
table_value := 1048048
;
when 17002 =>
table_value := 1048032
;
when 17003 =>
table_value := 1048000
;
when 17004 =>
table_value := 1047984
;
when 17005 =>
table_value := 1047952
;
when 17006 =>
table_value := 1047920
;
when 17007 =>
table_value := 1047920
;
when 17008 =>
table_value := 1047888
;
when 17009 =>
table_value := 1047856
;
when 17010 =>
table_value := 1047840
;
when 17011 =>
table_value := 1047808
;
when 17012 =>
table_value := 1047792
;
when 17013 =>
table_value := 1047760
;
when 17014 =>
table_value := 1047728
;
when 17015 =>
table_value := 1047696
;
when 17016 =>
table_value := 1047664
;
when 17017 =>
table_value := 1047648
;
when 17018 =>
table_value := 1047616
;
when 17019 =>
table_value := 1047584
;
when 17020 =>
table_value := 1047568
;
when 17021 =>
table_value := 1047536
;
when 17022 =>
table_value := 1047520
;
when 17023 =>
table_value := 1047488
;
when 17024 =>
table_value := 1047488
;
when 17025 =>
table_value := 1047456
;
when 17026 =>
table_value := 1047408
;
when 17027 =>
table_value := 1047392
;
when 17028 =>
table_value := 1047376
;
when 17029 =>
table_value := 1047360
;
when 17030 =>
table_value := 1047328
;
when 17031 =>
table_value := 1047312
;
when 17032 =>
table_value := 1047280
;
when 17033 =>
table_value := 1047264
;
when 17034 =>
table_value := 1047232
;
when 17035 =>
table_value := 1047232
;
when 17036 =>
table_value := 1047200
;
when 17037 =>
table_value := 1047200
;
when 17038 =>
table_value := 1047168
;
when 17039 =>
table_value := 1047152
;
when 17040 =>
table_value := 1047136
;
when 17041 =>
table_value := 1047120
;
when 17042 =>
table_value := 1047104
;
when 17043 =>
table_value := 1047088
;
when 17044 =>
table_value := 1047072
;
when 17045 =>
table_value := 1047056
;
when 17046 =>
table_value := 1047056
;
when 17047 =>
table_value := 1047040
;
when 17048 =>
table_value := 1047024
;
when 17049 =>
table_value := 1047024
;
when 17050 =>
table_value := 1047024
;
when 17051 =>
table_value := 1047008
;
when 17052 =>
table_value := 1046992
;
when 17053 =>
table_value := 1047008
;
when 17054 =>
table_value := 1046992
;
when 17055 =>
table_value := 1046976
;
when 17056 =>
table_value := 1046992
;
when 17057 =>
table_value := 1046992
;
when 17058 =>
table_value := 1046976
;
when 17059 =>
table_value := 1046976
;
when 17060 =>
table_value := 1046992
;
when 17061 =>
table_value := 1046976
;
when 17062 =>
table_value := 1046992
;
when 17063 =>
table_value := 1046976
;
when 17064 =>
table_value := 1046976
;
when 17065 =>
table_value := 1046992
;
when 17066 =>
table_value := 1047008
;
when 17067 =>
table_value := 1046992
;
when 17068 =>
table_value := 1047008
;
when 17069 =>
table_value := 1047008
;
when 17070 =>
table_value := 1047008
;
when 17071 =>
table_value := 1047024
;
when 17072 =>
table_value := 1047024
;
when 17073 =>
table_value := 1047024
;
when 17074 =>
table_value := 1047024
;
when 17075 =>
table_value := 1047040
;
when 17076 =>
table_value := 1047040
;
when 17077 =>
table_value := 1047040
;
when 17078 =>
table_value := 1047056
;
when 17079 =>
table_value := 1047056
;
when 17080 =>
table_value := 1047056
;
when 17081 =>
table_value := 1047072
;
when 17082 =>
table_value := 1047072
;
when 17083 =>
table_value := 1047088
;
when 17084 =>
table_value := 1047088
;
when 17085 =>
table_value := 1047120
;
when 17086 =>
table_value := 1047120
;
when 17087 =>
table_value := 1047136
;
when 17088 =>
table_value := 1047120
;
when 17089 =>
table_value := 1047136
;
when 17090 =>
table_value := 1047136
;
when 17091 =>
table_value := 1047136
;
when 17092 =>
table_value := 1047152
;
when 17093 =>
table_value := 1047136
;
when 17094 =>
table_value := 1047152
;
when 17095 =>
table_value := 1047152
;
when 17096 =>
table_value := 1047168
;
when 17097 =>
table_value := 1047168
;
when 17098 =>
table_value := 1047168
;
when 17099 =>
table_value := 1047168
;
when 17100 =>
table_value := 1047168
;
when 17101 =>
table_value := 1047184
;
when 17102 =>
table_value := 1047168
;
when 17103 =>
table_value := 1047168
;
when 17104 =>
table_value := 1047184
;
when 17105 =>
table_value := 1047184
;
when 17106 =>
table_value := 1047184
;
when 17107 =>
table_value := 1047184
;
when 17108 =>
table_value := 1047200
;
when 17109 =>
table_value := 1047200
;
when 17110 =>
table_value := 1047184
;
when 17111 =>
table_value := 1047200
;
when 17112 =>
table_value := 1047200
;
when 17113 =>
table_value := 1047200
;
when 17114 =>
table_value := 1047216
;
when 17115 =>
table_value := 1047232
;
when 17116 =>
table_value := 1047232
;
when 17117 =>
table_value := 1047248
;
when 17118 =>
table_value := 1047264
;
when 17119 =>
table_value := 1047264
;
when 17120 =>
table_value := 1047280
;
when 17121 =>
table_value := 1047280
;
when 17122 =>
table_value := 1047312
;
when 17123 =>
table_value := 1047344
;
when 17124 =>
table_value := 1047344
;
when 17125 =>
table_value := 1047360
;
when 17126 =>
table_value := 1047376
;
when 17127 =>
table_value := 1047408
;
when 17128 =>
table_value := 1047424
;
when 17129 =>
table_value := 1047456
;
when 17130 =>
table_value := 1047472
;
when 17131 =>
table_value := 1047488
;
when 17132 =>
table_value := 1047536
;
when 17133 =>
table_value := 1047568
;
when 17134 =>
table_value := 1047600
;
when 17135 =>
table_value := 1047632
;
when 17136 =>
table_value := 1047664
;
when 17137 =>
table_value := 1047712
;
when 17138 =>
table_value := 1047744
;
when 17139 =>
table_value := 1047776
;
when 17140 =>
table_value := 1047808
;
when 17141 =>
table_value := 1047840
;
when 17142 =>
table_value := 1047888
;
when 17143 =>
table_value := 1047936
;
when 17144 =>
table_value := 1047968
;
when 17145 =>
table_value := 1048000
;
when 17146 =>
table_value := 1048048
;
when 17147 =>
table_value := 1048080
;
when 17148 =>
table_value := 1048128
;
when 17149 =>
table_value := 1048160
;
when 17150 =>
table_value := 1048208
;
when 17151 =>
table_value := 1048240
;
when 17152 =>
table_value := 1048272
;
when 17153 =>
table_value := 1048288
;
when 17154 =>
table_value := 1048336
;
when 17155 =>
table_value := 1048368
;
when 17156 =>
table_value := 1048400
;
when 17157 =>
table_value := 1048432
;
when 17158 =>
table_value := 1048448
;
when 17159 =>
table_value := 1048496
;
when 17160 =>
table_value := 1048512
;
when 17161 =>
table_value := 1048528
;
when 17162 =>
table_value := 1048560
;
when 17163 =>
table_value := 0
;
when 17164 =>
table_value := 0
;
when 17165 =>
table_value := 16
;
when 17166 =>
table_value := 48
;
when 17167 =>
table_value := 48
;
when 17168 =>
table_value := 64
;
when 17169 =>
table_value := 64
;
when 17170 =>
table_value := 80
;
when 17171 =>
table_value := 96
;
when 17172 =>
table_value := 96
;
when 17173 =>
table_value := 96
;
when 17174 =>
table_value := 96
;
when 17175 =>
table_value := 96
;
when 17176 =>
table_value := 96
;
when 17177 =>
table_value := 96
;
when 17178 =>
table_value := 96
;
when 17179 =>
table_value := 80
;
when 17180 =>
table_value := 80
;
when 17181 =>
table_value := 80
;
when 17182 =>
table_value := 80
;
when 17183 =>
table_value := 64
;
when 17184 =>
table_value := 64
;
when 17185 =>
table_value := 48
;
when 17186 =>
table_value := 32
;
when 17187 =>
table_value := 16
;
when 17188 =>
table_value := 0
;
when 17189 =>
table_value := 0
;
when 17190 =>
table_value := 1048560
;
when 17191 =>
table_value := 1048560
;
when 17192 =>
table_value := 1048544
;
when 17193 =>
table_value := 1048528
;
when 17194 =>
table_value := 1048528
;
when 17195 =>
table_value := 1048496
;
when 17196 =>
table_value := 1048496
;
when 17197 =>
table_value := 1048464
;
when 17198 =>
table_value := 1048448
;
when 17199 =>
table_value := 1048448
;
when 17200 =>
table_value := 1048432
;
when 17201 =>
table_value := 1048416
;
when 17202 =>
table_value := 1048400
;
when 17203 =>
table_value := 1048400
;
when 17204 =>
table_value := 1048368
;
when 17205 =>
table_value := 1048368
;
when 17206 =>
table_value := 1048352
;
when 17207 =>
table_value := 1048336
;
when 17208 =>
table_value := 1048304
;
when 17209 =>
table_value := 1048320
;
when 17210 =>
table_value := 1048304
;
when 17211 =>
table_value := 1048288
;
when 17212 =>
table_value := 1048288
;
when 17213 =>
table_value := 1048288
;
when 17214 =>
table_value := 1048272
;
when 17215 =>
table_value := 1048256
;
when 17216 =>
table_value := 1048256
;
when 17217 =>
table_value := 1048256
;
when 17218 =>
table_value := 1048256
;
when 17219 =>
table_value := 1048256
;
when 17220 =>
table_value := 1048224
;
when 17221 =>
table_value := 1048224
;
when 17222 =>
table_value := 1048240
;
when 17223 =>
table_value := 1048224
;
when 17224 =>
table_value := 1048240
;
when 17225 =>
table_value := 1048224
;
when 17226 =>
table_value := 1048208
;
when 17227 =>
table_value := 1048208
;
when 17228 =>
table_value := 1048208
;
when 17229 =>
table_value := 1048192
;
when 17230 =>
table_value := 1048192
;
when 17231 =>
table_value := 1048176
;
when 17232 =>
table_value := 1048176
;
when 17233 =>
table_value := 1048160
;
when 17234 =>
table_value := 1048144
;
when 17235 =>
table_value := 1048128
;
when 17236 =>
table_value := 1048128
;
when 17237 =>
table_value := 1048128
;
when 17238 =>
table_value := 1048112
;
when 17239 =>
table_value := 1048112
;
when 17240 =>
table_value := 1048080
;
when 17241 =>
table_value := 1048080
;
when 17242 =>
table_value := 1048080
;
when 17243 =>
table_value := 1048064
;
when 17244 =>
table_value := 1048048
;
when 17245 =>
table_value := 1048032
;
when 17246 =>
table_value := 1048016
;
when 17247 =>
table_value := 1048016
;
when 17248 =>
table_value := 1047984
;
when 17249 =>
table_value := 1047968
;
when 17250 =>
table_value := 1047952
;
when 17251 =>
table_value := 1047936
;
when 17252 =>
table_value := 1047904
;
when 17253 =>
table_value := 1047904
;
when 17254 =>
table_value := 1047888
;
when 17255 =>
table_value := 1047856
;
when 17256 =>
table_value := 1047824
;
when 17257 =>
table_value := 1047808
;
when 17258 =>
table_value := 1047792
;
when 17259 =>
table_value := 1047760
;
when 17260 =>
table_value := 1047744
;
when 17261 =>
table_value := 1047728
;
when 17262 =>
table_value := 1047712
;
when 17263 =>
table_value := 1047680
;
when 17264 =>
table_value := 1047664
;
when 17265 =>
table_value := 1047648
;
when 17266 =>
table_value := 1047632
;
when 17267 =>
table_value := 1047632
;
when 17268 =>
table_value := 1047600
;
when 17269 =>
table_value := 1047584
;
when 17270 =>
table_value := 1047552
;
when 17271 =>
table_value := 1047552
;
when 17272 =>
table_value := 1047536
;
when 17273 =>
table_value := 1047520
;
when 17274 =>
table_value := 1047504
;
when 17275 =>
table_value := 1047488
;
when 17276 =>
table_value := 1047472
;
when 17277 =>
table_value := 1047472
;
when 17278 =>
table_value := 1047440
;
when 17279 =>
table_value := 1047424
;
when 17280 =>
table_value := 1047424
;
when 17281 =>
table_value := 1047408
;
when 17282 =>
table_value := 1047408
;
when 17283 =>
table_value := 1047392
;
when 17284 =>
table_value := 1047376
;
when 17285 =>
table_value := 1047376
;
when 17286 =>
table_value := 1047360
;
when 17287 =>
table_value := 1047360
;
when 17288 =>
table_value := 1047344
;
when 17289 =>
table_value := 1047344
;
when 17290 =>
table_value := 1047344
;
when 17291 =>
table_value := 1047328
;
when 17292 =>
table_value := 1047328
;
when 17293 =>
table_value := 1047328
;
when 17294 =>
table_value := 1047328
;
when 17295 =>
table_value := 1047328
;
when 17296 =>
table_value := 1047328
;
when 17297 =>
table_value := 1047328
;
when 17298 =>
table_value := 1047328
;
when 17299 =>
table_value := 1047328
;
when 17300 =>
table_value := 1047344
;
when 17301 =>
table_value := 1047344
;
when 17302 =>
table_value := 1047344
;
when 17303 =>
table_value := 1047344
;
when 17304 =>
table_value := 1047344
;
when 17305 =>
table_value := 1047360
;
when 17306 =>
table_value := 1047360
;
when 17307 =>
table_value := 1047360
;
when 17308 =>
table_value := 1047360
;
when 17309 =>
table_value := 1047376
;
when 17310 =>
table_value := 1047376
;
when 17311 =>
table_value := 1047376
;
when 17312 =>
table_value := 1047392
;
when 17313 =>
table_value := 1047408
;
when 17314 =>
table_value := 1047408
;
when 17315 =>
table_value := 1047424
;
when 17316 =>
table_value := 1047424
;
when 17317 =>
table_value := 1047424
;
when 17318 =>
table_value := 1047424
;
when 17319 =>
table_value := 1047424
;
when 17320 =>
table_value := 1047424
;
when 17321 =>
table_value := 1047440
;
when 17322 =>
table_value := 1047440
;
when 17323 =>
table_value := 1047440
;
when 17324 =>
table_value := 1047472
;
when 17325 =>
table_value := 1047456
;
when 17326 =>
table_value := 1047472
;
when 17327 =>
table_value := 1047472
;
when 17328 =>
table_value := 1047488
;
when 17329 =>
table_value := 1047488
;
when 17330 =>
table_value := 1047488
;
when 17331 =>
table_value := 1047488
;
when 17332 =>
table_value := 1047488
;
when 17333 =>
table_value := 1047504
;
when 17334 =>
table_value := 1047504
;
when 17335 =>
table_value := 1047488
;
when 17336 =>
table_value := 1047488
;
when 17337 =>
table_value := 1047504
;
when 17338 =>
table_value := 1047504
;
when 17339 =>
table_value := 1047504
;
when 17340 =>
table_value := 1047504
;
when 17341 =>
table_value := 1047504
;
when 17342 =>
table_value := 1047488
;
when 17343 =>
table_value := 1047488
;
when 17344 =>
table_value := 1047488
;
when 17345 =>
table_value := 1047504
;
when 17346 =>
table_value := 1047472
;
when 17347 =>
table_value := 1047488
;
when 17348 =>
table_value := 1047488
;
when 17349 =>
table_value := 1047472
;
when 17350 =>
table_value := 1047472
;
when 17351 =>
table_value := 1047456
;
when 17352 =>
table_value := 1047440
;
when 17353 =>
table_value := 1047456
;
when 17354 =>
table_value := 1047440
;
when 17355 =>
table_value := 1047440
;
when 17356 =>
table_value := 1047440
;
when 17357 =>
table_value := 1047440
;
when 17358 =>
table_value := 1047424
;
when 17359 =>
table_value := 1047440
;
when 17360 =>
table_value := 1047424
;
when 17361 =>
table_value := 1047424
;
when 17362 =>
table_value := 1047424
;
when 17363 =>
table_value := 1047408
;
when 17364 =>
table_value := 1047408
;
when 17365 =>
table_value := 1047424
;
when 17366 =>
table_value := 1047424
;
when 17367 =>
table_value := 1047408
;
when 17368 =>
table_value := 1047424
;
when 17369 =>
table_value := 1047424
;
when 17370 =>
table_value := 1047424
;
when 17371 =>
table_value := 1047408
;
when 17372 =>
table_value := 1047424
;
when 17373 =>
table_value := 1047424
;
when 17374 =>
table_value := 1047440
;
when 17375 =>
table_value := 1047424
;
when 17376 =>
table_value := 1047440
;
when 17377 =>
table_value := 1047456
;
when 17378 =>
table_value := 1047456
;
when 17379 =>
table_value := 1047472
;
when 17380 =>
table_value := 1047472
;
when 17381 =>
table_value := 1047504
;
when 17382 =>
table_value := 1047504
;
when 17383 =>
table_value := 1047520
;
when 17384 =>
table_value := 1047536
;
when 17385 =>
table_value := 1047552
;
when 17386 =>
table_value := 1047584
;
when 17387 =>
table_value := 1047584
;
when 17388 =>
table_value := 1047600
;
when 17389 =>
table_value := 1047616
;
when 17390 =>
table_value := 1047632
;
when 17391 =>
table_value := 1047648
;
when 17392 =>
table_value := 1047648
;
when 17393 =>
table_value := 1047680
;
when 17394 =>
table_value := 1047696
;
when 17395 =>
table_value := 1047728
;
when 17396 =>
table_value := 1047728
;
when 17397 =>
table_value := 1047776
;
when 17398 =>
table_value := 1047792
;
when 17399 =>
table_value := 1047808
;
when 17400 =>
table_value := 1047824
;
when 17401 =>
table_value := 1047856
;
when 17402 =>
table_value := 1047872
;
when 17403 =>
table_value := 1047904
;
when 17404 =>
table_value := 1047936
;
when 17405 =>
table_value := 1047968
;
when 17406 =>
table_value := 1047984
;
when 17407 =>
table_value := 1048000
;
when 17408 =>
table_value := 1048032
;
when 17409 =>
table_value := 1048048
;
when 17410 =>
table_value := 1048080
;
when 17411 =>
table_value := 1048112
;
when 17412 =>
table_value := 1048128
;
when 17413 =>
table_value := 1048144
;
when 17414 =>
table_value := 1048176
;
when 17415 =>
table_value := 1048192
;
when 17416 =>
table_value := 1048224
;
when 17417 =>
table_value := 1048272
;
when 17418 =>
table_value := 1048288
;
when 17419 =>
table_value := 1048304
;
when 17420 =>
table_value := 1048336
;
when 17421 =>
table_value := 1048368
;
when 17422 =>
table_value := 1048400
;
when 17423 =>
table_value := 1048400
;
when 17424 =>
table_value := 1048448
;
when 17425 =>
table_value := 1048448
;
when 17426 =>
table_value := 1048480
;
when 17427 =>
table_value := 1048496
;
when 17428 =>
table_value := 1048528
;
when 17429 =>
table_value := 1048560
;
when 17430 =>
table_value := 0
;
when 17431 =>
table_value := 0
;
when 17432 =>
table_value := 16
;
when 17433 =>
table_value := 64
;
when 17434 =>
table_value := 64
;
when 17435 =>
table_value := 96
;
when 17436 =>
table_value := 128
;
when 17437 =>
table_value := 144
;
when 17438 =>
table_value := 160
;
when 17439 =>
table_value := 176
;
when 17440 =>
table_value := 208
;
when 17441 =>
table_value := 224
;
when 17442 =>
table_value := 256
;
when 17443 =>
table_value := 272
;
when 17444 =>
table_value := 288
;
when 17445 =>
table_value := 304
;
when 17446 =>
table_value := 336
;
when 17447 =>
table_value := 368
;
when 17448 =>
table_value := 384
;
when 17449 =>
table_value := 400
;
when 17450 =>
table_value := 416
;
when 17451 =>
table_value := 448
;
when 17452 =>
table_value := 480
;
when 17453 =>
table_value := 512
;
when 17454 =>
table_value := 528
;
when 17455 =>
table_value := 560
;
when 17456 =>
table_value := 576
;
when 17457 =>
table_value := 608
;
when 17458 =>
table_value := 640
;
when 17459 =>
table_value := 672
;
when 17460 =>
table_value := 704
;
when 17461 =>
table_value := 752
;
when 17462 =>
table_value := 784
;
when 17463 =>
table_value := 816
;
when 17464 =>
table_value := 864
;
when 17465 =>
table_value := 912
;
when 17466 =>
table_value := 928
;
when 17467 =>
table_value := 992
;
when 17468 =>
table_value := 1008
;
when 17469 =>
table_value := 1056
;
when 17470 =>
table_value := 1088
;
when 17471 =>
table_value := 1152
;
when 17472 =>
table_value := 1184
;
when 17473 =>
table_value := 1232
;
when 17474 =>
table_value := 1280
;
when 17475 =>
table_value := 1328
;
when 17476 =>
table_value := 1376
;
when 17477 =>
table_value := 1424
;
when 17478 =>
table_value := 1472
;
when 17479 =>
table_value := 1520
;
when 17480 =>
table_value := 1568
;
when 17481 =>
table_value := 1632
;
when 17482 =>
table_value := 1680
;
when 17483 =>
table_value := 1728
;
when 17484 =>
table_value := 1776
;
when 17485 =>
table_value := 1840
;
when 17486 =>
table_value := 1888
;
when 17487 =>
table_value := 1920
;
when 17488 =>
table_value := 1984
;
when 17489 =>
table_value := 2016
;
when 17490 =>
table_value := 2080
;
when 17491 =>
table_value := 2112
;
when 17492 =>
table_value := 2160
;
when 17493 =>
table_value := 2224
;
when 17494 =>
table_value := 2256
;
when 17495 =>
table_value := 2304
;
when 17496 =>
table_value := 2352
;
when 17497 =>
table_value := 2384
;
when 17498 =>
table_value := 2432
;
when 17499 =>
table_value := 2480
;
when 17500 =>
table_value := 2512
;
when 17501 =>
table_value := 2560
;
when 17502 =>
table_value := 2592
;
when 17503 =>
table_value := 2624
;
when 17504 =>
table_value := 2656
;
when 17505 =>
table_value := 2688
;
when 17506 =>
table_value := 2720
;
when 17507 =>
table_value := 2752
;
when 17508 =>
table_value := 2784
;
when 17509 =>
table_value := 2800
;
when 17510 =>
table_value := 2832
;
when 17511 =>
table_value := 2848
;
when 17512 =>
table_value := 2864
;
when 17513 =>
table_value := 2880
;
when 17514 =>
table_value := 2896
;
when 17515 =>
table_value := 2928
;
when 17516 =>
table_value := 2928
;
when 17517 =>
table_value := 2928
;
when 17518 =>
table_value := 2944
;
when 17519 =>
table_value := 2944
;
when 17520 =>
table_value := 2944
;
when 17521 =>
table_value := 2928
;
when 17522 =>
table_value := 2928
;
when 17523 =>
table_value := 2912
;
when 17524 =>
table_value := 2912
;
when 17525 =>
table_value := 2912
;
when 17526 =>
table_value := 2896
;
when 17527 =>
table_value := 2880
;
when 17528 =>
table_value := 2864
;
when 17529 =>
table_value := 2848
;
when 17530 =>
table_value := 2832
;
when 17531 =>
table_value := 2816
;
when 17532 =>
table_value := 2800
;
when 17533 =>
table_value := 2768
;
when 17534 =>
table_value := 2752
;
when 17535 =>
table_value := 2752
;
when 17536 =>
table_value := 2720
;
when 17537 =>
table_value := 2688
;
when 17538 =>
table_value := 2656
;
when 17539 =>
table_value := 2640
;
when 17540 =>
table_value := 2624
;
when 17541 =>
table_value := 2592
;
when 17542 =>
table_value := 2560
;
when 17543 =>
table_value := 2528
;
when 17544 =>
table_value := 2512
;
when 17545 =>
table_value := 2480
;
when 17546 =>
table_value := 2448
;
when 17547 =>
table_value := 2416
;
when 17548 =>
table_value := 2384
;
when 17549 =>
table_value := 2352
;
when 17550 =>
table_value := 2320
;
when 17551 =>
table_value := 2288
;
when 17552 =>
table_value := 2256
;
when 17553 =>
table_value := 2224
;
when 17554 =>
table_value := 2208
;
when 17555 =>
table_value := 2160
;
when 17556 =>
table_value := 2144
;
when 17557 =>
table_value := 2096
;
when 17558 =>
table_value := 2064
;
when 17559 =>
table_value := 2032
;
when 17560 =>
table_value := 2000
;
when 17561 =>
table_value := 1952
;
when 17562 =>
table_value := 1920
;
when 17563 =>
table_value := 1904
;
when 17564 =>
table_value := 1872
;
when 17565 =>
table_value := 1840
;
when 17566 =>
table_value := 1776
;
when 17567 =>
table_value := 1760
;
when 17568 =>
table_value := 1712
;
when 17569 =>
table_value := 1680
;
when 17570 =>
table_value := 1632
;
when 17571 =>
table_value := 1600
;
when 17572 =>
table_value := 1568
;
when 17573 =>
table_value := 1536
;
when 17574 =>
table_value := 1488
;
when 17575 =>
table_value := 1440
;
when 17576 =>
table_value := 1424
;
when 17577 =>
table_value := 1376
;
when 17578 =>
table_value := 1344
;
when 17579 =>
table_value := 1296
;
when 17580 =>
table_value := 1248
;
when 17581 =>
table_value := 1232
;
when 17582 =>
table_value := 1200
;
when 17583 =>
table_value := 1152
;
when 17584 =>
table_value := 1104
;
when 17585 =>
table_value := 1072
;
when 17586 =>
table_value := 1040
;
when 17587 =>
table_value := 992
;
when 17588 =>
table_value := 960
;
when 17589 =>
table_value := 912
;
when 17590 =>
table_value := 864
;
when 17591 =>
table_value := 832
;
when 17592 =>
table_value := 784
;
when 17593 =>
table_value := 752
;
when 17594 =>
table_value := 704
;
when 17595 =>
table_value := 688
;
when 17596 =>
table_value := 640
;
when 17597 =>
table_value := 592
;
when 17598 =>
table_value := 560
;
when 17599 =>
table_value := 528
;
when 17600 =>
table_value := 480
;
when 17601 =>
table_value := 464
;
when 17602 =>
table_value := 416
;
when 17603 =>
table_value := 400
;
when 17604 =>
table_value := 368
;
when 17605 =>
table_value := 336
;
when 17606 =>
table_value := 304
;
when 17607 =>
table_value := 272
;
when 17608 =>
table_value := 240
;
when 17609 =>
table_value := 224
;
when 17610 =>
table_value := 192
;
when 17611 =>
table_value := 160
;
when 17612 =>
table_value := 144
;
when 17613 =>
table_value := 128
;
when 17614 =>
table_value := 96
;
when 17615 =>
table_value := 80
;
when 17616 =>
table_value := 64
;
when 17617 =>
table_value := 64
;
when 17618 =>
table_value := 48
;
when 17619 =>
table_value := 32
;
when 17620 =>
table_value := 32
;
when 17621 =>
table_value := 16
;
when 17622 =>
table_value := 0
;
when 17623 =>
table_value := 0
;
when 17624 =>
table_value := 16
;
when 17625 =>
table_value := 0
;
when 17626 =>
table_value := 16
;
when 17627 =>
table_value := 0
;
when 17628 =>
table_value := 0
;
when 17629 =>
table_value := 16
;
when 17630 =>
table_value := 0
;
when 17631 =>
table_value := 16
;
when 17632 =>
table_value := 16
;
when 17633 =>
table_value := 16
;
when 17634 =>
table_value := 48
;
when 17635 =>
table_value := 64
;
when 17636 =>
table_value := 64
;
when 17637 =>
table_value := 64
;
when 17638 =>
table_value := 80
;
when 17639 =>
table_value := 96
;
when 17640 =>
table_value := 128
;
when 17641 =>
table_value := 128
;
when 17642 =>
table_value := 144
;
when 17643 =>
table_value := 176
;
when 17644 =>
table_value := 176
;
when 17645 =>
table_value := 208
;
when 17646 =>
table_value := 240
;
when 17647 =>
table_value := 256
;
when 17648 =>
table_value := 272
;
when 17649 =>
table_value := 304
;
when 17650 =>
table_value := 320
;
when 17651 =>
table_value := 368
;
when 17652 =>
table_value := 384
;
when 17653 =>
table_value := 400
;
when 17654 =>
table_value := 432
;
when 17655 =>
table_value := 448
;
when 17656 =>
table_value := 464
;
when 17657 =>
table_value := 496
;
when 17658 =>
table_value := 528
;
when 17659 =>
table_value := 544
;
when 17660 =>
table_value := 576
;
when 17661 =>
table_value := 608
;
when 17662 =>
table_value := 624
;
when 17663 =>
table_value := 640
;
when 17664 =>
table_value := 672
;
when 17665 =>
table_value := 688
;
when 17666 =>
table_value := 704
;
when 17667 =>
table_value := 736
;
when 17668 =>
table_value := 752
;
when 17669 =>
table_value := 752
;
when 17670 =>
table_value := 784
;
when 17671 =>
table_value := 800
;
when 17672 =>
table_value := 832
;
when 17673 =>
table_value := 848
;
when 17674 =>
table_value := 848
;
when 17675 =>
table_value := 880
;
when 17676 =>
table_value := 896
;
when 17677 =>
table_value := 896
;
when 17678 =>
table_value := 912
;
when 17679 =>
table_value := 912
;
when 17680 =>
table_value := 912
;
when 17681 =>
table_value := 928
;
when 17682 =>
table_value := 944
;
when 17683 =>
table_value := 944
;
when 17684 =>
table_value := 976
;
when 17685 =>
table_value := 976
;
when 17686 =>
table_value := 976
;
when 17687 =>
table_value := 976
;
when 17688 =>
table_value := 976
;
when 17689 =>
table_value := 992
;
when 17690 =>
table_value := 992
;
when 17691 =>
table_value := 992
;
when 17692 =>
table_value := 992
;
when 17693 =>
table_value := 1008
;
when 17694 =>
table_value := 1008
;
when 17695 =>
table_value := 1008
;
when 17696 =>
table_value := 1008
;
when 17697 =>
table_value := 1008
;
when 17698 =>
table_value := 992
;
when 17699 =>
table_value := 992
;
when 17700 =>
table_value := 992
;
when 17701 =>
table_value := 976
;
when 17702 =>
table_value := 960
;
when 17703 =>
table_value := 960
;
when 17704 =>
table_value := 960
;
when 17705 =>
table_value := 928
;
when 17706 =>
table_value := 928
;
when 17707 =>
table_value := 912
;
when 17708 =>
table_value := 896
;
when 17709 =>
table_value := 912
;
when 17710 =>
table_value := 896
;
when 17711 =>
table_value := 880
;
when 17712 =>
table_value := 864
;
when 17713 =>
table_value := 864
;
when 17714 =>
table_value := 832
;
when 17715 =>
table_value := 816
;
when 17716 =>
table_value := 800
;
when 17717 =>
table_value := 784
;
when 17718 =>
table_value := 768
;
when 17719 =>
table_value := 752
;
when 17720 =>
table_value := 736
;
when 17721 =>
table_value := 720
;
when 17722 =>
table_value := 704
;
when 17723 =>
table_value := 672
;
when 17724 =>
table_value := 656
;
when 17725 =>
table_value := 640
;
when 17726 =>
table_value := 624
;
when 17727 =>
table_value := 608
;
when 17728 =>
table_value := 576
;
when 17729 =>
table_value := 544
;
when 17730 =>
table_value := 528
;
when 17731 =>
table_value := 512
;
when 17732 =>
table_value := 480
;
when 17733 =>
table_value := 448
;
when 17734 =>
table_value := 432
;
when 17735 =>
table_value := 400
;
when 17736 =>
table_value := 384
;
when 17737 =>
table_value := 352
;
when 17738 =>
table_value := 352
;
when 17739 =>
table_value := 320
;
when 17740 =>
table_value := 304
;
when 17741 =>
table_value := 272
;
when 17742 =>
table_value := 240
;
when 17743 =>
table_value := 224
;
when 17744 =>
table_value := 192
;
when 17745 =>
table_value := 176
;
when 17746 =>
table_value := 144
;
when 17747 =>
table_value := 128
;
when 17748 =>
table_value := 96
;
when 17749 =>
table_value := 64
;
when 17750 =>
table_value := 48
;
when 17751 =>
table_value := 48
;
when 17752 =>
table_value := 16
;
when 17753 =>
table_value := 0
;
when 17754 =>
table_value := 0
;
when 17755 =>
table_value := 1048544
;
when 17756 =>
table_value := 1048512
;
when 17757 =>
table_value := 1048496
;
when 17758 =>
table_value := 1048480
;
when 17759 =>
table_value := 1048448
;
when 17760 =>
table_value := 1048432
;
when 17761 =>
table_value := 1048416
;
when 17762 =>
table_value := 1048384
;
when 17763 =>
table_value := 1048368
;
when 17764 =>
table_value := 1048352
;
when 17765 =>
table_value := 1048320
;
when 17766 =>
table_value := 1048304
;
when 17767 =>
table_value := 1048272
;
when 17768 =>
table_value := 1048240
;
when 17769 =>
table_value := 1048208
;
when 17770 =>
table_value := 1048208
;
when 17771 =>
table_value := 1048176
;
when 17772 =>
table_value := 1048144
;
when 17773 =>
table_value := 1048128
;
when 17774 =>
table_value := 1048096
;
when 17775 =>
table_value := 1048064
;
when 17776 =>
table_value := 1048048
;
when 17777 =>
table_value := 1048032
;
when 17778 =>
table_value := 1048016
;
when 17779 =>
table_value := 1047984
;
when 17780 =>
table_value := 1047952
;
when 17781 =>
table_value := 1047920
;
when 17782 =>
table_value := 1047888
;
when 17783 =>
table_value := 1047856
;
when 17784 =>
table_value := 1047840
;
when 17785 =>
table_value := 1047808
;
when 17786 =>
table_value := 1047776
;
when 17787 =>
table_value := 1047744
;
when 17788 =>
table_value := 1047728
;
when 17789 =>
table_value := 1047680
;
when 17790 =>
table_value := 1047664
;
when 17791 =>
table_value := 1047632
;
when 17792 =>
table_value := 1047600
;
when 17793 =>
table_value := 1047568
;
when 17794 =>
table_value := 1047520
;
when 17795 =>
table_value := 1047504
;
when 17796 =>
table_value := 1047472
;
when 17797 =>
table_value := 1047440
;
when 17798 =>
table_value := 1047408
;
when 17799 =>
table_value := 1047376
;
when 17800 =>
table_value := 1047344
;
when 17801 =>
table_value := 1047312
;
when 17802 =>
table_value := 1047296
;
when 17803 =>
table_value := 1047264
;
when 17804 =>
table_value := 1047248
;
when 17805 =>
table_value := 1047216
;
when 17806 =>
table_value := 1047200
;
when 17807 =>
table_value := 1047152
;
when 17808 =>
table_value := 1047136
;
when 17809 =>
table_value := 1047104
;
when 17810 =>
table_value := 1047072
;
when 17811 =>
table_value := 1047056
;
when 17812 =>
table_value := 1047040
;
when 17813 =>
table_value := 1047008
;
when 17814 =>
table_value := 1046976
;
when 17815 =>
table_value := 1046960
;
when 17816 =>
table_value := 1046944
;
when 17817 =>
table_value := 1046928
;
when 17818 =>
table_value := 1046912
;
when 17819 =>
table_value := 1046880
;
when 17820 =>
table_value := 1046880
;
when 17821 =>
table_value := 1046880
;
when 17822 =>
table_value := 1046864
;
when 17823 =>
table_value := 1046848
;
when 17824 =>
table_value := 1046848
;
when 17825 =>
table_value := 1046848
;
when 17826 =>
table_value := 1046848
;
when 17827 =>
table_value := 1046832
;
when 17828 =>
table_value := 1046832
;
when 17829 =>
table_value := 1046832
;
when 17830 =>
table_value := 1046832
;
when 17831 =>
table_value := 1046848
;
when 17832 =>
table_value := 1046864
;
when 17833 =>
table_value := 1046848
;
when 17834 =>
table_value := 1046864
;
when 17835 =>
table_value := 1046896
;
when 17836 =>
table_value := 1046896
;
when 17837 =>
table_value := 1046912
;
when 17838 =>
table_value := 1046928
;
when 17839 =>
table_value := 1046944
;
when 17840 =>
table_value := 1046960
;
when 17841 =>
table_value := 1046960
;
when 17842 =>
table_value := 1046992
;
when 17843 =>
table_value := 1047024
;
when 17844 =>
table_value := 1047040
;
when 17845 =>
table_value := 1047056
;
when 17846 =>
table_value := 1047088
;
when 17847 =>
table_value := 1047104
;
when 17848 =>
table_value := 1047136
;
when 17849 =>
table_value := 1047152
;
when 17850 =>
table_value := 1047184
;
when 17851 =>
table_value := 1047216
;
when 17852 =>
table_value := 1047248
;
when 17853 =>
table_value := 1047280
;
when 17854 =>
table_value := 1047296
;
when 17855 =>
table_value := 1047344
;
when 17856 =>
table_value := 1047360
;
when 17857 =>
table_value := 1047408
;
when 17858 =>
table_value := 1047424
;
when 17859 =>
table_value := 1047472
;
when 17860 =>
table_value := 1047504
;
when 17861 =>
table_value := 1047520
;
when 17862 =>
table_value := 1047552
;
when 17863 =>
table_value := 1047584
;
when 17864 =>
table_value := 1047616
;
when 17865 =>
table_value := 1047632
;
when 17866 =>
table_value := 1047648
;
when 17867 =>
table_value := 1047680
;
when 17868 =>
table_value := 1047728
;
when 17869 =>
table_value := 1047744
;
when 17870 =>
table_value := 1047760
;
when 17871 =>
table_value := 1047792
;
when 17872 =>
table_value := 1047808
;
when 17873 =>
table_value := 1047840
;
when 17874 =>
table_value := 1047872
;
when 17875 =>
table_value := 1047888
;
when 17876 =>
table_value := 1047904
;
when 17877 =>
table_value := 1047936
;
when 17878 =>
table_value := 1047952
;
when 17879 =>
table_value := 1047968
;
when 17880 =>
table_value := 1047984
;
when 17881 =>
table_value := 1047984
;
when 17882 =>
table_value := 1048016
;
when 17883 =>
table_value := 1048032
;
when 17884 =>
table_value := 1048032
;
when 17885 =>
table_value := 1048048
;
when 17886 =>
table_value := 1048064
;
when 17887 =>
table_value := 1048080
;
when 17888 =>
table_value := 1048064
;
when 17889 =>
table_value := 1048080
;
when 17890 =>
table_value := 1048096
;
when 17891 =>
table_value := 1048096
;
when 17892 =>
table_value := 1048128
;
when 17893 =>
table_value := 1048128
;
when 17894 =>
table_value := 1048128
;
when 17895 =>
table_value := 1048144
;
when 17896 =>
table_value := 1048160
;
when 17897 =>
table_value := 1048160
;
when 17898 =>
table_value := 1048192
;
when 17899 =>
table_value := 1048192
;
when 17900 =>
table_value := 1048192
;
when 17901 =>
table_value := 1048208
;
when 17902 =>
table_value := 1048208
;
when 17903 =>
table_value := 1048224
;
when 17904 =>
table_value := 1048240
;
when 17905 =>
table_value := 1048240
;
when 17906 =>
table_value := 1048256
;
when 17907 =>
table_value := 1048272
;
when 17908 =>
table_value := 1048272
;
when 17909 =>
table_value := 1048288
;
when 17910 =>
table_value := 1048304
;
when 17911 =>
table_value := 1048320
;
when 17912 =>
table_value := 1048320
;
when 17913 =>
table_value := 1048336
;
when 17914 =>
table_value := 1048352
;
when 17915 =>
table_value := 1048368
;
when 17916 =>
table_value := 1048384
;
when 17917 =>
table_value := 1048400
;
when 17918 =>
table_value := 1048416
;
when 17919 =>
table_value := 1048432
;
when 17920 =>
table_value := 1048432
;
when 17921 =>
table_value := 1048464
;
when 17922 =>
table_value := 1048464
;
when 17923 =>
table_value := 1048480
;
when 17924 =>
table_value := 1048496
;
when 17925 =>
table_value := 1048512
;
when 17926 =>
table_value := 1048512
;
when 17927 =>
table_value := 1048528
;
when 17928 =>
table_value := 1048560
;
when 17929 =>
table_value := 1048560
;
when 17930 =>
table_value := 0
;
when 17931 =>
table_value := 0
;
when 17932 =>
table_value := 0
;
when 17933 =>
table_value := 0
;
when 17934 =>
table_value := 16
;
when 17935 =>
table_value := 32
;
when 17936 =>
table_value := 32
;
when 17937 =>
table_value := 16
;
when 17938 =>
table_value := 48
;
when 17939 =>
table_value := 48
;
when 17940 =>
table_value := 48
;
when 17941 =>
table_value := 48
;
when 17942 =>
table_value := 48
;
when 17943 =>
table_value := 48
;
when 17944 =>
table_value := 32
;
when 17945 =>
table_value := 48
;
when 17946 =>
table_value := 48
;
when 17947 =>
table_value := 32
;
when 17948 =>
table_value := 32
;
when 17949 =>
table_value := 16
;
when 17950 =>
table_value := 0
;
when 17951 =>
table_value := 0
;
when 17952 =>
table_value := 0
;
when 17953 =>
table_value := 0
;
when 17954 =>
table_value := 0
;
when 17955 =>
table_value := 0
;
when 17956 =>
table_value := 1048560
;
when 17957 =>
table_value := 1048544
;
when 17958 =>
table_value := 1048528
;
when 17959 =>
table_value := 1048528
;
when 17960 =>
table_value := 1048512
;
when 17961 =>
table_value := 1048496
;
when 17962 =>
table_value := 1048496
;
when 17963 =>
table_value := 1048480
;
when 17964 =>
table_value := 1048480
;
when 17965 =>
table_value := 1048464
;
when 17966 =>
table_value := 1048448
;
when 17967 =>
table_value := 1048448
;
when 17968 =>
table_value := 1048448
;
when 17969 =>
table_value := 1048432
;
when 17970 =>
table_value := 1048432
;
when 17971 =>
table_value := 1048432
;
when 17972 =>
table_value := 1048416
;
when 17973 =>
table_value := 1048416
;
when 17974 =>
table_value := 1048416
;
when 17975 =>
table_value := 1048416
;
when 17976 =>
table_value := 1048400
;
when 17977 =>
table_value := 1048416
;
when 17978 =>
table_value := 1048416
;
when 17979 =>
table_value := 1048416
;
when 17980 =>
table_value := 1048416
;
when 17981 =>
table_value := 1048416
;
when 17982 =>
table_value := 1048416
;
when 17983 =>
table_value := 1048416
;
when 17984 =>
table_value := 1048432
;
when 17985 =>
table_value := 1048432
;
when 17986 =>
table_value := 1048432
;
when 17987 =>
table_value := 1048448
;
when 17988 =>
table_value := 1048448
;
when 17989 =>
table_value := 1048464
;
when 17990 =>
table_value := 1048480
;
when 17991 =>
table_value := 1048496
;
when 17992 =>
table_value := 1048496
;
when 17993 =>
table_value := 1048512
;
when 17994 =>
table_value := 1048512
;
when 17995 =>
table_value := 1048528
;
when 17996 =>
table_value := 1048528
;
when 17997 =>
table_value := 1048544
;
when 17998 =>
table_value := 1048560
;
when 17999 =>
table_value := 0
;
when 18000 =>
table_value := 1048560
;
when 18001 =>
table_value := 0
;
when 18002 =>
table_value := 0
;
when 18003 =>
table_value := 0
;
when 18004 =>
table_value := 0
;
when 18005 =>
table_value := 0
;
when 18006 =>
table_value := 16
;
when 18007 =>
table_value := 16
;
when 18008 =>
table_value := 0
;
when 18009 =>
table_value := 16
;
when 18010 =>
table_value := 16
;
when 18011 =>
table_value := 16
;
when 18012 =>
table_value := 16
;
when 18013 =>
table_value := 0
;
when 18014 =>
table_value := 0
;
when 18015 =>
table_value := 0
;
when 18016 =>
table_value := 0
;
when 18017 =>
table_value := 0
;
when 18018 =>
table_value := 1048560
;
when 18019 =>
table_value := 1048544
;
when 18020 =>
table_value := 1048544
;
when 18021 =>
table_value := 1048528
;
when 18022 =>
table_value := 1048512
;
when 18023 =>
table_value := 1048496
;
when 18024 =>
table_value := 1048480
;
when 18025 =>
table_value := 1048448
;
when 18026 =>
table_value := 1048448
;
when 18027 =>
table_value := 1048400
;
when 18028 =>
table_value := 1048384
;
when 18029 =>
table_value := 1048352
;
when 18030 =>
table_value := 1048336
;
when 18031 =>
table_value := 1048304
;
when 18032 =>
table_value := 1048288
;
when 18033 =>
table_value := 1048256
;
when 18034 =>
table_value := 1048224
;
when 18035 =>
table_value := 1048176
;
when 18036 =>
table_value := 1048144
;
when 18037 =>
table_value := 1048128
;
when 18038 =>
table_value := 1048080
;
when 18039 =>
table_value := 1048048
;
when 18040 =>
table_value := 1048016
;
when 18041 =>
table_value := 1047984
;
when 18042 =>
table_value := 1047936
;
when 18043 =>
table_value := 1047888
;
when 18044 =>
table_value := 1047856
;
when 18045 =>
table_value := 1047840
;
when 18046 =>
table_value := 1047792
;
when 18047 =>
table_value := 1047760
;
when 18048 =>
table_value := 1047728
;
when 18049 =>
table_value := 1047696
;
when 18050 =>
table_value := 1047664
;
when 18051 =>
table_value := 1047632
;
when 18052 =>
table_value := 1047600
;
when 18053 =>
table_value := 1047568
;
when 18054 =>
table_value := 1047552
;
when 18055 =>
table_value := 1047504
;
when 18056 =>
table_value := 1047488
;
when 18057 =>
table_value := 1047456
;
when 18058 =>
table_value := 1047424
;
when 18059 =>
table_value := 1047392
;
when 18060 =>
table_value := 1047360
;
when 18061 =>
table_value := 1047344
;
when 18062 =>
table_value := 1047312
;
when 18063 =>
table_value := 1047280
;
when 18064 =>
table_value := 1047264
;
when 18065 =>
table_value := 1047248
;
when 18066 =>
table_value := 1047216
;
when 18067 =>
table_value := 1047200
;
when 18068 =>
table_value := 1047184
;
when 18069 =>
table_value := 1047152
;
when 18070 =>
table_value := 1047120
;
when 18071 =>
table_value := 1047104
;
when 18072 =>
table_value := 1047104
;
when 18073 =>
table_value := 1047088
;
when 18074 =>
table_value := 1047072
;
when 18075 =>
table_value := 1047056
;
when 18076 =>
table_value := 1047040
;
when 18077 =>
table_value := 1047040
;
when 18078 =>
table_value := 1047024
;
when 18079 =>
table_value := 1047024
;
when 18080 =>
table_value := 1047024
;
when 18081 =>
table_value := 1047008
;
when 18082 =>
table_value := 1046992
;
when 18083 =>
table_value := 1046992
;
when 18084 =>
table_value := 1046976
;
when 18085 =>
table_value := 1046992
;
when 18086 =>
table_value := 1046992
;
when 18087 =>
table_value := 1046992
;
when 18088 =>
table_value := 1046992
;
when 18089 =>
table_value := 1046992
;
when 18090 =>
table_value := 1047008
;
when 18091 =>
table_value := 1047024
;
when 18092 =>
table_value := 1046992
;
when 18093 =>
table_value := 1047024
;
when 18094 =>
table_value := 1047024
;
when 18095 =>
table_value := 1047024
;
when 18096 =>
table_value := 1047040
;
when 18097 =>
table_value := 1047040
;
when 18098 =>
table_value := 1047056
;
when 18099 =>
table_value := 1047056
;
when 18100 =>
table_value := 1047088
;
when 18101 =>
table_value := 1047088
;
when 18102 =>
table_value := 1047088
;
when 18103 =>
table_value := 1047104
;
when 18104 =>
table_value := 1047136
;
when 18105 =>
table_value := 1047136
;
when 18106 =>
table_value := 1047168
;
when 18107 =>
table_value := 1047168
;
when 18108 =>
table_value := 1047200
;
when 18109 =>
table_value := 1047216
;
when 18110 =>
table_value := 1047248
;
when 18111 =>
table_value := 1047264
;
when 18112 =>
table_value := 1047296
;
when 18113 =>
table_value := 1047296
;
when 18114 =>
table_value := 1047312
;
when 18115 =>
table_value := 1047344
;
when 18116 =>
table_value := 1047376
;
when 18117 =>
table_value := 1047392
;
when 18118 =>
table_value := 1047408
;
when 18119 =>
table_value := 1047440
;
when 18120 =>
table_value := 1047456
;
when 18121 =>
table_value := 1047488
;
when 18122 =>
table_value := 1047504
;
when 18123 =>
table_value := 1047520
;
when 18124 =>
table_value := 1047552
;
when 18125 =>
table_value := 1047584
;
when 18126 =>
table_value := 1047600
;
when 18127 =>
table_value := 1047616
;
when 18128 =>
table_value := 1047648
;
when 18129 =>
table_value := 1047664
;
when 18130 =>
table_value := 1047680
;
when 18131 =>
table_value := 1047712
;
when 18132 =>
table_value := 1047728
;
when 18133 =>
table_value := 1047744
;
when 18134 =>
table_value := 1047776
;
when 18135 =>
table_value := 1047776
;
when 18136 =>
table_value := 1047808
;
when 18137 =>
table_value := 1047824
;
when 18138 =>
table_value := 1047840
;
when 18139 =>
table_value := 1047856
;
when 18140 =>
table_value := 1047888
;
when 18141 =>
table_value := 1047888
;
when 18142 =>
table_value := 1047904
;
when 18143 =>
table_value := 1047936
;
when 18144 =>
table_value := 1047952
;
when 18145 =>
table_value := 1047968
;
when 18146 =>
table_value := 1047968
;
when 18147 =>
table_value := 1047984
;
when 18148 =>
table_value := 1047984
;
when 18149 =>
table_value := 1048016
;
when 18150 =>
table_value := 1048016
;
when 18151 =>
table_value := 1048032
;
when 18152 =>
table_value := 1048032
;
when 18153 =>
table_value := 1048032
;
when 18154 =>
table_value := 1048048
;
when 18155 =>
table_value := 1048048
;
when 18156 =>
table_value := 1048064
;
when 18157 =>
table_value := 1048080
;
when 18158 =>
table_value := 1048064
;
when 18159 =>
table_value := 1048080
;
when 18160 =>
table_value := 1048080
;
when 18161 =>
table_value := 1048080
;
when 18162 =>
table_value := 1048080
;
when 18163 =>
table_value := 1048080
;
when 18164 =>
table_value := 1048096
;
when 18165 =>
table_value := 1048096
;
when 18166 =>
table_value := 1048112
;
when 18167 =>
table_value := 1048112
;
when 18168 =>
table_value := 1048112
;
when 18169 =>
table_value := 1048128
;
when 18170 =>
table_value := 1048144
;
when 18171 =>
table_value := 1048144
;
when 18172 =>
table_value := 1048128
;
when 18173 =>
table_value := 1048144
;
when 18174 =>
table_value := 1048160
;
when 18175 =>
table_value := 1048176
;
when 18176 =>
table_value := 1048176
;
when 18177 =>
table_value := 1048192
;
when 18178 =>
table_value := 1048192
;
when 18179 =>
table_value := 1048208
;
when 18180 =>
table_value := 1048224
;
when 18181 =>
table_value := 1048224
;
when 18182 =>
table_value := 1048224
;
when 18183 =>
table_value := 1048256
;
when 18184 =>
table_value := 1048256
;
when 18185 =>
table_value := 1048288
;
when 18186 =>
table_value := 1048288
;
when 18187 =>
table_value := 1048336
;
when 18188 =>
table_value := 1048320
;
when 18189 =>
table_value := 1048352
;
when 18190 =>
table_value := 1048368
;
when 18191 =>
table_value := 1048384
;
when 18192 =>
table_value := 1048416
;
when 18193 =>
table_value := 1048432
;
when 18194 =>
table_value := 1048448
;
when 18195 =>
table_value := 1048448
;
when 18196 =>
table_value := 1048496
;
when 18197 =>
table_value := 1048512
;
when 18198 =>
table_value := 1048512
;
when 18199 =>
table_value := 1048528
;
when 18200 =>
table_value := 1048560
;
when 18201 =>
table_value := 0
;
when 18202 =>
table_value := 0
;
when 18203 =>
table_value := 0
;
when 18204 =>
table_value := 16
;
when 18205 =>
table_value := 48
;
when 18206 =>
table_value := 64
;
when 18207 =>
table_value := 80
;
when 18208 =>
table_value := 80
;
when 18209 =>
table_value := 80
;
when 18210 =>
table_value := 112
;
when 18211 =>
table_value := 112
;
when 18212 =>
table_value := 128
;
when 18213 =>
table_value := 144
;
when 18214 =>
table_value := 144
;
when 18215 =>
table_value := 160
;
when 18216 =>
table_value := 144
;
when 18217 =>
table_value := 160
;
when 18218 =>
table_value := 160
;
when 18219 =>
table_value := 160
;
when 18220 =>
table_value := 176
;
when 18221 =>
table_value := 160
;
when 18222 =>
table_value := 176
;
when 18223 =>
table_value := 160
;
when 18224 =>
table_value := 160
;
when 18225 =>
table_value := 144
;
when 18226 =>
table_value := 144
;
when 18227 =>
table_value := 144
;
when 18228 =>
table_value := 128
;
when 18229 =>
table_value := 128
;
when 18230 =>
table_value := 112
;
when 18231 =>
table_value := 112
;
when 18232 =>
table_value := 96
;
when 18233 =>
table_value := 80
;
when 18234 =>
table_value := 80
;
when 18235 =>
table_value := 80
;
when 18236 =>
table_value := 80
;
when 18237 =>
table_value := 48
;
when 18238 =>
table_value := 48
;
when 18239 =>
table_value := 32
;
when 18240 =>
table_value := 32
;
when 18241 =>
table_value := 32
;
when 18242 =>
table_value := 16
;
when 18243 =>
table_value := 0
;
when 18244 =>
table_value := 0
;
when 18245 =>
table_value := 0
;
when 18246 =>
table_value := 0
;
when 18247 =>
table_value := 0
;
when 18248 =>
table_value := 1048560
;
when 18249 =>
table_value := 0
;
when 18250 =>
table_value := 0
;
when 18251 =>
table_value := 0
;
when 18252 =>
table_value := 0
;
when 18253 =>
table_value := 0
;
when 18254 =>
table_value := 0
;
when 18255 =>
table_value := 0
;
when 18256 =>
table_value := 0
;
when 18257 =>
table_value := 0
;
when 18258 =>
table_value := 0
;
when 18259 =>
table_value := 0
;
when 18260 =>
table_value := 0
;
when 18261 =>
table_value := 16
;
when 18262 =>
table_value := 32
;
when 18263 =>
table_value := 48
;
when 18264 =>
table_value := 48
;
when 18265 =>
table_value := 64
;
when 18266 =>
table_value := 80
;
when 18267 =>
table_value := 80
;
when 18268 =>
table_value := 112
;
when 18269 =>
table_value := 128
;
when 18270 =>
table_value := 144
;
when 18271 =>
table_value := 160
;
when 18272 =>
table_value := 176
;
when 18273 =>
table_value := 192
;
when 18274 =>
table_value := 224
;
when 18275 =>
table_value := 272
;
when 18276 =>
table_value := 288
;
when 18277 =>
table_value := 304
;
when 18278 =>
table_value := 320
;
when 18279 =>
table_value := 352
;
when 18280 =>
table_value := 384
;
when 18281 =>
table_value := 384
;
when 18282 =>
table_value := 432
;
when 18283 =>
table_value := 432
;
when 18284 =>
table_value := 480
;
when 18285 =>
table_value := 496
;
when 18286 =>
table_value := 512
;
when 18287 =>
table_value := 544
;
when 18288 =>
table_value := 560
;
when 18289 =>
table_value := 608
;
when 18290 =>
table_value := 608
;
when 18291 =>
table_value := 640
;
when 18292 =>
table_value := 672
;
when 18293 =>
table_value := 688
;
when 18294 =>
table_value := 704
;
when 18295 =>
table_value := 736
;
when 18296 =>
table_value := 768
;
when 18297 =>
table_value := 784
;
when 18298 =>
table_value := 800
;
when 18299 =>
table_value := 832
;
when 18300 =>
table_value := 848
;
when 18301 =>
table_value := 864
;
when 18302 =>
table_value := 880
;
when 18303 =>
table_value := 896
;
when 18304 =>
table_value := 912
;
when 18305 =>
table_value := 928
;
when 18306 =>
table_value := 944
;
when 18307 =>
table_value := 944
;
when 18308 =>
table_value := 976
;
when 18309 =>
table_value := 976
;
when 18310 =>
table_value := 992
;
when 18311 =>
table_value := 1008
;
when 18312 =>
table_value := 1024
;
when 18313 =>
table_value := 1040
;
when 18314 =>
table_value := 1056
;
when 18315 =>
table_value := 1072
;
when 18316 =>
table_value := 1088
;
when 18317 =>
table_value := 1072
;
when 18318 =>
table_value := 1088
;
when 18319 =>
table_value := 1088
;
when 18320 =>
table_value := 1120
;
when 18321 =>
table_value := 1120
;
when 18322 =>
table_value := 1136
;
when 18323 =>
table_value := 1136
;
when 18324 =>
table_value := 1136
;
when 18325 =>
table_value := 1152
;
when 18326 =>
table_value := 1152
;
when 18327 =>
table_value := 1152
;
when 18328 =>
table_value := 1168
;
when 18329 =>
table_value := 1200
;
when 18330 =>
table_value := 1200
;
when 18331 =>
table_value := 1200
;
when 18332 =>
table_value := 1232
;
when 18333 =>
table_value := 1232
;
when 18334 =>
table_value := 1248
;
when 18335 =>
table_value := 1264
;
when 18336 =>
table_value := 1280
;
when 18337 =>
table_value := 1296
;
when 18338 =>
table_value := 1296
;
when 18339 =>
table_value := 1312
;
when 18340 =>
table_value := 1312
;
when 18341 =>
table_value := 1328
;
when 18342 =>
table_value := 1344
;
when 18343 =>
table_value := 1344
;
when 18344 =>
table_value := 1376
;
when 18345 =>
table_value := 1376
;
when 18346 =>
table_value := 1392
;
when 18347 =>
table_value := 1392
;
when 18348 =>
table_value := 1424
;
when 18349 =>
table_value := 1440
;
when 18350 =>
table_value := 1456
;
when 18351 =>
table_value := 1472
;
when 18352 =>
table_value := 1488
;
when 18353 =>
table_value := 1504
;
when 18354 =>
table_value := 1520
;
when 18355 =>
table_value := 1520
;
when 18356 =>
table_value := 1536
;
when 18357 =>
table_value := 1552
;
when 18358 =>
table_value := 1568
;
when 18359 =>
table_value := 1584
;
when 18360 =>
table_value := 1616
;
when 18361 =>
table_value := 1600
;
when 18362 =>
table_value := 1632
;
when 18363 =>
table_value := 1664
;
when 18364 =>
table_value := 1648
;
when 18365 =>
table_value := 1680
;
when 18366 =>
table_value := 1680
;
when 18367 =>
table_value := 1696
;
when 18368 =>
table_value := 1712
;
when 18369 =>
table_value := 1712
;
when 18370 =>
table_value := 1744
;
when 18371 =>
table_value := 1760
;
when 18372 =>
table_value := 1760
;
when 18373 =>
table_value := 1776
;
when 18374 =>
table_value := 1792
;
when 18375 =>
table_value := 1792
;
when 18376 =>
table_value := 1792
;
when 18377 =>
table_value := 1808
;
when 18378 =>
table_value := 1824
;
when 18379 =>
table_value := 1824
;
when 18380 =>
table_value := 1840
;
when 18381 =>
table_value := 1824
;
when 18382 =>
table_value := 1840
;
when 18383 =>
table_value := 1840
;
when 18384 =>
table_value := 1840
;
when 18385 =>
table_value := 1840
;
when 18386 =>
table_value := 1840
;
when 18387 =>
table_value := 1824
;
when 18388 =>
table_value := 1840
;
when 18389 =>
table_value := 1824
;
when 18390 =>
table_value := 1808
;
when 18391 =>
table_value := 1792
;
when 18392 =>
table_value := 1808
;
when 18393 =>
table_value := 1792
;
when 18394 =>
table_value := 1776
;
when 18395 =>
table_value := 1776
;
when 18396 =>
table_value := 1760
;
when 18397 =>
table_value := 1760
;
when 18398 =>
table_value := 1744
;
when 18399 =>
table_value := 1744
;
when 18400 =>
table_value := 1728
;
when 18401 =>
table_value := 1712
;
when 18402 =>
table_value := 1696
;
when 18403 =>
table_value := 1680
;
when 18404 =>
table_value := 1680
;
when 18405 =>
table_value := 1648
;
when 18406 =>
table_value := 1632
;
when 18407 =>
table_value := 1632
;
when 18408 =>
table_value := 1616
;
when 18409 =>
table_value := 1600
;
when 18410 =>
table_value := 1600
;
when 18411 =>
table_value := 1552
;
when 18412 =>
table_value := 1568
;
when 18413 =>
table_value := 1536
;
when 18414 =>
table_value := 1520
;
when 18415 =>
table_value := 1504
;
when 18416 =>
table_value := 1488
;
when 18417 =>
table_value := 1472
;
when 18418 =>
table_value := 1472
;
when 18419 =>
table_value := 1440
;
when 18420 =>
table_value := 1440
;
when 18421 =>
table_value := 1424
;
when 18422 =>
table_value := 1408
;
when 18423 =>
table_value := 1376
;
when 18424 =>
table_value := 1360
;
when 18425 =>
table_value := 1360
;
when 18426 =>
table_value := 1344
;
when 18427 =>
table_value := 1328
;
when 18428 =>
table_value := 1312
;
when 18429 =>
table_value := 1296
;
when 18430 =>
table_value := 1280
;
when 18431 =>
table_value := 1248
;
when 18432 =>
table_value := 1232
;
when 18433 =>
table_value := 1232
;
when 18434 =>
table_value := 1216
;
when 18435 =>
table_value := 1184
;
when 18436 =>
table_value := 1168
;
when 18437 =>
table_value := 1152
;
when 18438 =>
table_value := 1136
;
when 18439 =>
table_value := 1104
;
when 18440 =>
table_value := 1088
;
when 18441 =>
table_value := 1072
;
when 18442 =>
table_value := 1056
;
when 18443 =>
table_value := 1024
;
when 18444 =>
table_value := 1008
;
when 18445 =>
table_value := 992
;
when 18446 =>
table_value := 944
;
when 18447 =>
table_value := 928
;
when 18448 =>
table_value := 912
;
when 18449 =>
table_value := 864
;
when 18450 =>
table_value := 864
;
when 18451 =>
table_value := 816
;
when 18452 =>
table_value := 784
;
when 18453 =>
table_value := 752
;
when 18454 =>
table_value := 736
;
when 18455 =>
table_value := 704
;
when 18456 =>
table_value := 688
;
when 18457 =>
table_value := 672
;
when 18458 =>
table_value := 624
;
when 18459 =>
table_value := 608
;
when 18460 =>
table_value := 592
;
when 18461 =>
table_value := 544
;
when 18462 =>
table_value := 496
;
when 18463 =>
table_value := 480
;
when 18464 =>
table_value := 448
;
when 18465 =>
table_value := 416
;
when 18466 =>
table_value := 400
;
when 18467 =>
table_value := 368
;
when 18468 =>
table_value := 352
;
when 18469 =>
table_value := 304
;
when 18470 =>
table_value := 288
;
when 18471 =>
table_value := 256
;
when 18472 =>
table_value := 224
;
when 18473 =>
table_value := 208
;
when 18474 =>
table_value := 176
;
when 18475 =>
table_value := 160
;
when 18476 =>
table_value := 128
;
when 18477 =>
table_value := 128
;
when 18478 =>
table_value := 96
;
when 18479 =>
table_value := 80
;
when 18480 =>
table_value := 48
;
when 18481 =>
table_value := 48
;
when 18482 =>
table_value := 16
;
when 18483 =>
table_value := 0
;
when 18484 =>
table_value := 0
;
when 18485 =>
table_value := 0
;
when 18486 =>
table_value := 0
;
when 18487 =>
table_value := 1048560
;
when 18488 =>
table_value := 1048544
;
when 18489 =>
table_value := 1048528
;
when 18490 =>
table_value := 1048528
;
when 18491 =>
table_value := 1048528
;
when 18492 =>
table_value := 1048512
;
when 18493 =>
table_value := 1048512
;
when 18494 =>
table_value := 1048512
;
when 18495 =>
table_value := 1048512
;
when 18496 =>
table_value := 1048512
;
when 18497 =>
table_value := 1048496
;
when 18498 =>
table_value := 1048496
;
when 18499 =>
table_value := 1048512
;
when 18500 =>
table_value := 1048496
;
when 18501 =>
table_value := 1048496
;
when 18502 =>
table_value := 1048512
;
when 18503 =>
table_value := 1048496
;
when 18504 =>
table_value := 1048496
;
when 18505 =>
table_value := 1048496
;
when 18506 =>
table_value := 1048496
;
when 18507 =>
table_value := 1048496
;
when 18508 =>
table_value := 1048496
;
when 18509 =>
table_value := 1048496
;
when 18510 =>
table_value := 1048480
;
when 18511 =>
table_value := 1048480
;
when 18512 =>
table_value := 1048480
;
when 18513 =>
table_value := 1048496
;
when 18514 =>
table_value := 1048480
;
when 18515 =>
table_value := 1048480
;
when 18516 =>
table_value := 1048464
;
when 18517 =>
table_value := 1048480
;
when 18518 =>
table_value := 1048480
;
when 18519 =>
table_value := 1048480
;
when 18520 =>
table_value := 1048464
;
when 18521 =>
table_value := 1048464
;
when 18522 =>
table_value := 1048464
;
when 18523 =>
table_value := 1048448
;
when 18524 =>
table_value := 1048464
;
when 18525 =>
table_value := 1048464
;
when 18526 =>
table_value := 1048448
;
when 18527 =>
table_value := 1048448
;
when 18528 =>
table_value := 1048432
;
when 18529 =>
table_value := 1048432
;
when 18530 =>
table_value := 1048432
;
when 18531 =>
table_value := 1048416
;
when 18532 =>
table_value := 1048416
;
when 18533 =>
table_value := 1048416
;
when 18534 =>
table_value := 1048416
;
when 18535 =>
table_value := 1048400
;
when 18536 =>
table_value := 1048400
;
when 18537 =>
table_value := 1048384
;
when 18538 =>
table_value := 1048368
;
when 18539 =>
table_value := 1048368
;
when 18540 =>
table_value := 1048352
;
when 18541 =>
table_value := 1048352
;
when 18542 =>
table_value := 1048336
;
when 18543 =>
table_value := 1048320
;
when 18544 =>
table_value := 1048320
;
when 18545 =>
table_value := 1048320
;
when 18546 =>
table_value := 1048304
;
when 18547 =>
table_value := 1048288
;
when 18548 =>
table_value := 1048304
;
when 18549 =>
table_value := 1048272
;
when 18550 =>
table_value := 1048256
;
when 18551 =>
table_value := 1048256
;
when 18552 =>
table_value := 1048224
;
when 18553 =>
table_value := 1048224
;
when 18554 =>
table_value := 1048224
;
when 18555 =>
table_value := 1048208
;
when 18556 =>
table_value := 1048192
;
when 18557 =>
table_value := 1048176
;
when 18558 =>
table_value := 1048160
;
when 18559 =>
table_value := 1048160
;
when 18560 =>
table_value := 1048160
;
when 18561 =>
table_value := 1048144
;
when 18562 =>
table_value := 1048128
;
when 18563 =>
table_value := 1048112
;
when 18564 =>
table_value := 1048096
;
when 18565 =>
table_value := 1048080
;
when 18566 =>
table_value := 1048080
;
when 18567 =>
table_value := 1048064
;
when 18568 =>
table_value := 1048064
;
when 18569 =>
table_value := 1048048
;
when 18570 =>
table_value := 1048032
;
when 18571 =>
table_value := 1048016
;
when 18572 =>
table_value := 1048016
;
when 18573 =>
table_value := 1047984
;
when 18574 =>
table_value := 1047984
;
when 18575 =>
table_value := 1047968
;
when 18576 =>
table_value := 1047968
;
when 18577 =>
table_value := 1047952
;
when 18578 =>
table_value := 1047936
;
when 18579 =>
table_value := 1047920
;
when 18580 =>
table_value := 1047920
;
when 18581 =>
table_value := 1047920
;
when 18582 =>
table_value := 1047888
;
when 18583 =>
table_value := 1047904
;
when 18584 =>
table_value := 1047888
;
when 18585 =>
table_value := 1047888
;
when 18586 =>
table_value := 1047888
;
when 18587 =>
table_value := 1047872
;
when 18588 =>
table_value := 1047872
;
when 18589 =>
table_value := 1047888
;
when 18590 =>
table_value := 1047872
;
when 18591 =>
table_value := 1047872
;
when 18592 =>
table_value := 1047888
;
when 18593 =>
table_value := 1047872
;
when 18594 =>
table_value := 1047888
;
when 18595 =>
table_value := 1047872
;
when 18596 =>
table_value := 1047872
;
when 18597 =>
table_value := 1047888
;
when 18598 =>
table_value := 1047888
;
when 18599 =>
table_value := 1047904
;
when 18600 =>
table_value := 1047920
;
when 18601 =>
table_value := 1047920
;
when 18602 =>
table_value := 1047936
;
when 18603 =>
table_value := 1047952
;
when 18604 =>
table_value := 1047952
;
when 18605 =>
table_value := 1047968
;
when 18606 =>
table_value := 1047968
;
when 18607 =>
table_value := 1048016
;
when 18608 =>
table_value := 1048032
;
when 18609 =>
table_value := 1048048
;
when 18610 =>
table_value := 1048064
;
when 18611 =>
table_value := 1048080
;
when 18612 =>
table_value := 1048112
;
when 18613 =>
table_value := 1048128
;
when 18614 =>
table_value := 1048144
;
when 18615 =>
table_value := 1048176
;
when 18616 =>
table_value := 1048192
;
when 18617 =>
table_value := 1048224
;
when 18618 =>
table_value := 1048224
;
when 18619 =>
table_value := 1048256
;
when 18620 =>
table_value := 1048272
;
when 18621 =>
table_value := 1048304
;
when 18622 =>
table_value := 1048336
;
when 18623 =>
table_value := 1048352
;
when 18624 =>
table_value := 1048368
;
when 18625 =>
table_value := 1048416
;
when 18626 =>
table_value := 1048432
;
when 18627 =>
table_value := 1048448
;
when 18628 =>
table_value := 1048480
;
when 18629 =>
table_value := 1048512
;
when 18630 =>
table_value := 1048544
;
when 18631 =>
table_value := 1048560
;
when 18632 =>
table_value := 0
;
when 18633 =>
table_value := 0
;
when 18634 =>
table_value := 16
;
when 18635 =>
table_value := 48
;
when 18636 =>
table_value := 80
;
when 18637 =>
table_value := 96
;
when 18638 =>
table_value := 112
;
when 18639 =>
table_value := 144
;
when 18640 =>
table_value := 144
;
when 18641 =>
table_value := 176
;
when 18642 =>
table_value := 192
;
when 18643 =>
table_value := 224
;
when 18644 =>
table_value := 240
;
when 18645 =>
table_value := 224
;
when 18646 =>
table_value := 256
;
when 18647 =>
table_value := 256
;
when 18648 =>
table_value := 288
;
when 18649 =>
table_value := 288
;
when 18650 =>
table_value := 288
;
when 18651 =>
table_value := 288
;
when 18652 =>
table_value := 304
;
when 18653 =>
table_value := 304
;
when 18654 =>
table_value := 320
;
when 18655 =>
table_value := 320
;
when 18656 =>
table_value := 336
;
when 18657 =>
table_value := 352
;
when 18658 =>
table_value := 352
;
when 18659 =>
table_value := 352
;
when 18660 =>
table_value := 352
;
when 18661 =>
table_value := 352
;
when 18662 =>
table_value := 352
;
when 18663 =>
table_value := 352
;
when 18664 =>
table_value := 336
;
when 18665 =>
table_value := 336
;
when 18666 =>
table_value := 336
;
when 18667 =>
table_value := 336
;
when 18668 =>
table_value := 336
;
when 18669 =>
table_value := 320
;
when 18670 =>
table_value := 304
;
when 18671 =>
table_value := 304
;
when 18672 =>
table_value := 304
;
when 18673 =>
table_value := 272
;
when 18674 =>
table_value := 288
;
when 18675 =>
table_value := 272
;
when 18676 =>
table_value := 256
;
when 18677 =>
table_value := 256
;
when 18678 =>
table_value := 240
;
when 18679 =>
table_value := 224
;
when 18680 =>
table_value := 224
;
when 18681 =>
table_value := 224
;
when 18682 =>
table_value := 208
;
when 18683 =>
table_value := 192
;
when 18684 =>
table_value := 176
;
when 18685 =>
table_value := 176
;
when 18686 =>
table_value := 160
;
when 18687 =>
table_value := 144
;
when 18688 =>
table_value := 144
;
when 18689 =>
table_value := 112
;
when 18690 =>
table_value := 112
;
when 18691 =>
table_value := 96
;
when 18692 =>
table_value := 96
;
when 18693 =>
table_value := 80
;
when 18694 =>
table_value := 64
;
when 18695 =>
table_value := 48
;
when 18696 =>
table_value := 48
;
when 18697 =>
table_value := 16
;
when 18698 =>
table_value := 16
;
when 18699 =>
table_value := 0
;
when 18700 =>
table_value := 0
;
when 18701 =>
table_value := 0
;
when 18702 =>
table_value := 1048560
;
when 18703 =>
table_value := 1048560
;
when 18704 =>
table_value := 1048560
;
when 18705 =>
table_value := 1048528
;
when 18706 =>
table_value := 1048528
;
when 18707 =>
table_value := 1048512
;
when 18708 =>
table_value := 1048496
;
when 18709 =>
table_value := 1048496
;
when 18710 =>
table_value := 1048496
;
when 18711 =>
table_value := 1048480
;
when 18712 =>
table_value := 1048464
;
when 18713 =>
table_value := 1048480
;
when 18714 =>
table_value := 1048464
;
when 18715 =>
table_value := 1048464
;
when 18716 =>
table_value := 1048448
;
when 18717 =>
table_value := 1048432
;
when 18718 =>
table_value := 1048432
;
when 18719 =>
table_value := 1048432
;
when 18720 =>
table_value := 1048432
;
when 18721 =>
table_value := 1048416
;
when 18722 =>
table_value := 1048432
;
when 18723 =>
table_value := 1048416
;
when 18724 =>
table_value := 1048416
;
when 18725 =>
table_value := 1048416
;
when 18726 =>
table_value := 1048400
;
when 18727 =>
table_value := 1048400
;
when 18728 =>
table_value := 1048384
;
when 18729 =>
table_value := 1048384
;
when 18730 =>
table_value := 1048384
;
when 18731 =>
table_value := 1048368
;
when 18732 =>
table_value := 1048352
;
when 18733 =>
table_value := 1048352
;
when 18734 =>
table_value := 1048352
;
when 18735 =>
table_value := 1048336
;
when 18736 =>
table_value := 1048336
;
when 18737 =>
table_value := 1048304
;
when 18738 =>
table_value := 1048320
;
when 18739 =>
table_value := 1048304
;
when 18740 =>
table_value := 1048304
;
when 18741 =>
table_value := 1048304
;
when 18742 =>
table_value := 1048288
;
when 18743 =>
table_value := 1048272
;
when 18744 =>
table_value := 1048272
;
when 18745 =>
table_value := 1048272
;
when 18746 =>
table_value := 1048256
;
when 18747 =>
table_value := 1048256
;
when 18748 =>
table_value := 1048240
;
when 18749 =>
table_value := 1048224
;
when 18750 =>
table_value := 1048224
;
when 18751 =>
table_value := 1048208
;
when 18752 =>
table_value := 1048208
;
when 18753 =>
table_value := 1048192
;
when 18754 =>
table_value := 1048192
;
when 18755 =>
table_value := 1048176
;
when 18756 =>
table_value := 1048176
;
when 18757 =>
table_value := 1048144
;
when 18758 =>
table_value := 1048144
;
when 18759 =>
table_value := 1048144
;
when 18760 =>
table_value := 1048128
;
when 18761 =>
table_value := 1048128
;
when 18762 =>
table_value := 1048112
;
when 18763 =>
table_value := 1048112
;
when 18764 =>
table_value := 1048112
;
when 18765 =>
table_value := 1048096
;
when 18766 =>
table_value := 1048096
;
when 18767 =>
table_value := 1048096
;
when 18768 =>
table_value := 1048080
;
when 18769 =>
table_value := 1048080
;
when 18770 =>
table_value := 1048064
;
when 18771 =>
table_value := 1048080
;
when 18772 =>
table_value := 1048080
;
when 18773 =>
table_value := 1048064
;
when 18774 =>
table_value := 1048064
;
when 18775 =>
table_value := 1048080
;
when 18776 =>
table_value := 1048064
;
when 18777 =>
table_value := 1048064
;
when 18778 =>
table_value := 1048064
;
when 18779 =>
table_value := 1048064
;
when 18780 =>
table_value := 1048080
;
when 18781 =>
table_value := 1048064
;
when 18782 =>
table_value := 1048064
;
when 18783 =>
table_value := 1048080
;
when 18784 =>
table_value := 1048064
;
when 18785 =>
table_value := 1048080
;
when 18786 =>
table_value := 1048080
;
when 18787 =>
table_value := 1048096
;
when 18788 =>
table_value := 1048096
;
when 18789 =>
table_value := 1048096
;
when 18790 =>
table_value := 1048112
;
when 18791 =>
table_value := 1048112
;
when 18792 =>
table_value := 1048112
;
when 18793 =>
table_value := 1048128
;
when 18794 =>
table_value := 1048128
;
when 18795 =>
table_value := 1048128
;
when 18796 =>
table_value := 1048128
;
when 18797 =>
table_value := 1048144
;
when 18798 =>
table_value := 1048144
;
when 18799 =>
table_value := 1048144
;
when 18800 =>
table_value := 1048144
;
when 18801 =>
table_value := 1048144
;
when 18802 =>
table_value := 1048160
;
when 18803 =>
table_value := 1048160
;
when 18804 =>
table_value := 1048160
;
when 18805 =>
table_value := 1048160
;
when 18806 =>
table_value := 1048160
;
when 18807 =>
table_value := 1048160
;
when 18808 =>
table_value := 1048160
;
when 18809 =>
table_value := 1048160
;
when 18810 =>
table_value := 1048144
;
when 18811 =>
table_value := 1048160
;
when 18812 =>
table_value := 1048144
;
when 18813 =>
table_value := 1048144
;
when 18814 =>
table_value := 1048128
;
when 18815 =>
table_value := 1048112
;
when 18816 =>
table_value := 1048112
;
when 18817 =>
table_value := 1048096
;
when 18818 =>
table_value := 1048096
;
when 18819 =>
table_value := 1048080
;
when 18820 =>
table_value := 1048064
;
when 18821 =>
table_value := 1048048
;
when 18822 =>
table_value := 1048048
;
when 18823 =>
table_value := 1048032
;
when 18824 =>
table_value := 1048000
;
when 18825 =>
table_value := 1047984
;
when 18826 =>
table_value := 1047984
;
when 18827 =>
table_value := 1047968
;
when 18828 =>
table_value := 1047936
;
when 18829 =>
table_value := 1047904
;
when 18830 =>
table_value := 1047888
;
when 18831 =>
table_value := 1047872
;
when 18832 =>
table_value := 1047872
;
when 18833 =>
table_value := 1047840
;
when 18834 =>
table_value := 1047808
;
when 18835 =>
table_value := 1047792
;
when 18836 =>
table_value := 1047760
;
when 18837 =>
table_value := 1047728
;
when 18838 =>
table_value := 1047728
;
when 18839 =>
table_value := 1047696
;
when 18840 =>
table_value := 1047664
;
when 18841 =>
table_value := 1047632
;
when 18842 =>
table_value := 1047616
;
when 18843 =>
table_value := 1047584
;
when 18844 =>
table_value := 1047568
;
when 18845 =>
table_value := 1047552
;
when 18846 =>
table_value := 1047504
;
when 18847 =>
table_value := 1047488
;
when 18848 =>
table_value := 1047456
;
when 18849 =>
table_value := 1047440
;
when 18850 =>
table_value := 1047408
;
when 18851 =>
table_value := 1047392
;
when 18852 =>
table_value := 1047376
;
when 18853 =>
table_value := 1047344
;
when 18854 =>
table_value := 1047312
;
when 18855 =>
table_value := 1047296
;
when 18856 =>
table_value := 1047296
;
when 18857 =>
table_value := 1047264
;
when 18858 =>
table_value := 1047248
;
when 18859 =>
table_value := 1047216
;
when 18860 =>
table_value := 1047200
;
when 18861 =>
table_value := 1047200
;
when 18862 =>
table_value := 1047184
;
when 18863 =>
table_value := 1047168
;
when 18864 =>
table_value := 1047152
;
when 18865 =>
table_value := 1047152
;
when 18866 =>
table_value := 1047136
;
when 18867 =>
table_value := 1047120
;
when 18868 =>
table_value := 1047120
;
when 18869 =>
table_value := 1047120
;
when 18870 =>
table_value := 1047120
;
when 18871 =>
table_value := 1047104
;
when 18872 =>
table_value := 1047088
;
when 18873 =>
table_value := 1047104
;
when 18874 =>
table_value := 1047104
;
when 18875 =>
table_value := 1047088
;
when 18876 =>
table_value := 1047088
;
when 18877 =>
table_value := 1047104
;
when 18878 =>
table_value := 1047104
;
when 18879 =>
table_value := 1047120
;
when 18880 =>
table_value := 1047104
;
when 18881 =>
table_value := 1047120
;
when 18882 =>
table_value := 1047120
;
when 18883 =>
table_value := 1047136
;
when 18884 =>
table_value := 1047136
;
when 18885 =>
table_value := 1047152
;
when 18886 =>
table_value := 1047136
;
when 18887 =>
table_value := 1047168
;
when 18888 =>
table_value := 1047168
;
when 18889 =>
table_value := 1047184
;
when 18890 =>
table_value := 1047200
;
when 18891 =>
table_value := 1047200
;
when 18892 =>
table_value := 1047200
;
when 18893 =>
table_value := 1047216
;
when 18894 =>
table_value := 1047216
;
when 18895 =>
table_value := 1047232
;
when 18896 =>
table_value := 1047248
;
when 18897 =>
table_value := 1047264
;
when 18898 =>
table_value := 1047264
;
when 18899 =>
table_value := 1047280
;
when 18900 =>
table_value := 1047296
;
when 18901 =>
table_value := 1047296
;
when 18902 =>
table_value := 1047328
;
when 18903 =>
table_value := 1047328
;
when 18904 =>
table_value := 1047344
;
when 18905 =>
table_value := 1047344
;
when 18906 =>
table_value := 1047360
;
when 18907 =>
table_value := 1047360
;
when 18908 =>
table_value := 1047376
;
when 18909 =>
table_value := 1047376
;
when 18910 =>
table_value := 1047392
;
when 18911 =>
table_value := 1047408
;
when 18912 =>
table_value := 1047424
;
when 18913 =>
table_value := 1047424
;
when 18914 =>
table_value := 1047456
;
when 18915 =>
table_value := 1047456
;
when 18916 =>
table_value := 1047456
;
when 18917 =>
table_value := 1047488
;
when 18918 =>
table_value := 1047488
;
when 18919 =>
table_value := 1047504
;
when 18920 =>
table_value := 1047520
;
when 18921 =>
table_value := 1047520
;
when 18922 =>
table_value := 1047536
;
when 18923 =>
table_value := 1047536
;
when 18924 =>
table_value := 1047552
;
when 18925 =>
table_value := 1047568
;
when 18926 =>
table_value := 1047568
;
when 18927 =>
table_value := 1047568
;
when 18928 =>
table_value := 1047584
;
when 18929 =>
table_value := 1047584
;
when 18930 =>
table_value := 1047584
;
when 18931 =>
table_value := 1047600
;
when 18932 =>
table_value := 1047584
;
when 18933 =>
table_value := 1047584
;
when 18934 =>
table_value := 1047600
;
when 18935 =>
table_value := 1047600
;
when 18936 =>
table_value := 1047600
;
when 18937 =>
table_value := 1047616
;
when 18938 =>
table_value := 1047632
;
when 18939 =>
table_value := 1047648
;
when 18940 =>
table_value := 1047648
;
when 18941 =>
table_value := 1047664
;
when 18942 =>
table_value := 1047664
;
when 18943 =>
table_value := 1047664
;
when 18944 =>
table_value := 1047664
;
when 18945 =>
table_value := 1047664
;
when 18946 =>
table_value := 1047664
;
when 18947 =>
table_value := 1047680
;
when 18948 =>
table_value := 1047664
;
when 18949 =>
table_value := 1047664
;
when 18950 =>
table_value := 1047680
;
when 18951 =>
table_value := 1047664
;
when 18952 =>
table_value := 1047664
;
when 18953 =>
table_value := 1047664
;
when 18954 =>
table_value := 1047664
;
when 18955 =>
table_value := 1047680
;
when 18956 =>
table_value := 1047680
;
when 18957 =>
table_value := 1047680
;
when 18958 =>
table_value := 1047664
;
when 18959 =>
table_value := 1047664
;
when 18960 =>
table_value := 1047664
;
when 18961 =>
table_value := 1047680
;
when 18962 =>
table_value := 1047680
;
when 18963 =>
table_value := 1047680
;
when 18964 =>
table_value := 1047664
;
when 18965 =>
table_value := 1047664
;
when 18966 =>
table_value := 1047664
;
when 18967 =>
table_value := 1047664
;
when 18968 =>
table_value := 1047664
;
when 18969 =>
table_value := 1047664
;
when 18970 =>
table_value := 1047664
;
when 18971 =>
table_value := 1047664
;
when 18972 =>
table_value := 1047664
;
when 18973 =>
table_value := 1047648
;
when 18974 =>
table_value := 1047664
;
when 18975 =>
table_value := 1047680
;
when 18976 =>
table_value := 1047664
;
when 18977 =>
table_value := 1047664
;
when 18978 =>
table_value := 1047696
;
when 18979 =>
table_value := 1047680
;
when 18980 =>
table_value := 1047696
;
when 18981 =>
table_value := 1047712
;
when 18982 =>
table_value := 1047712
;
when 18983 =>
table_value := 1047728
;
when 18984 =>
table_value := 1047728
;
when 18985 =>
table_value := 1047728
;
when 18986 =>
table_value := 1047728
;
when 18987 =>
table_value := 1047744
;
when 18988 =>
table_value := 1047760
;
when 18989 =>
table_value := 1047760
;
when 18990 =>
table_value := 1047776
;
when 18991 =>
table_value := 1047792
;
when 18992 =>
table_value := 1047808
;
when 18993 =>
table_value := 1047808
;
when 18994 =>
table_value := 1047824
;
when 18995 =>
table_value := 1047840
;
when 18996 =>
table_value := 1047856
;
when 18997 =>
table_value := 1047872
;
when 18998 =>
table_value := 1047888
;
when 18999 =>
table_value := 1047888
;
when 19000 =>
table_value := 1047904
;
when 19001 =>
table_value := 1047920
;
when 19002 =>
table_value := 1047952
;
when 19003 =>
table_value := 1047968
;
when 19004 =>
table_value := 1047968
;
when 19005 =>
table_value := 1047984
;
when 19006 =>
table_value := 1048000
;
when 19007 =>
table_value := 1048016
;
when 19008 =>
table_value := 1048048
;
when 19009 =>
table_value := 1048048
;
when 19010 =>
table_value := 1048048
;
when 19011 =>
table_value := 1048064
;
when 19012 =>
table_value := 1048080
;
when 19013 =>
table_value := 1048080
;
when 19014 =>
table_value := 1048096
;
when 19015 =>
table_value := 1048112
;
when 19016 =>
table_value := 1048128
;
when 19017 =>
table_value := 1048144
;
when 19018 =>
table_value := 1048128
;
when 19019 =>
table_value := 1048144
;
when 19020 =>
table_value := 1048160
;
when 19021 =>
table_value := 1048160
;
when 19022 =>
table_value := 1048176
;
when 19023 =>
table_value := 1048192
;
when 19024 =>
table_value := 1048192
;
when 19025 =>
table_value := 1048208
;
when 19026 =>
table_value := 1048224
;
when 19027 =>
table_value := 1048240
;
when 19028 =>
table_value := 1048256
;
when 19029 =>
table_value := 1048256
;
when 19030 =>
table_value := 1048272
;
when 19031 =>
table_value := 1048272
;
when 19032 =>
table_value := 1048288
;
when 19033 =>
table_value := 1048288
;
when 19034 =>
table_value := 1048304
;
when 19035 =>
table_value := 1048304
;
when 19036 =>
table_value := 1048320
;
when 19037 =>
table_value := 1048336
;
when 19038 =>
table_value := 1048336
;
when 19039 =>
table_value := 1048368
;
when 19040 =>
table_value := 1048368
;
when 19041 =>
table_value := 1048400
;
when 19042 =>
table_value := 1048400
;
when 19043 =>
table_value := 1048400
;
when 19044 =>
table_value := 1048432
;
when 19045 =>
table_value := 1048448
;
when 19046 =>
table_value := 1048464
;
when 19047 =>
table_value := 1048496
;
when 19048 =>
table_value := 1048512
;
when 19049 =>
table_value := 1048528
;
when 19050 =>
table_value := 1048560
;
when 19051 =>
table_value := 0
;
when 19052 =>
table_value := 0
;
when 19053 =>
table_value := 48
;
when 19054 =>
table_value := 64
;
when 19055 =>
table_value := 80
;
when 19056 =>
table_value := 112
;
when 19057 =>
table_value := 144
;
when 19058 =>
table_value := 176
;
when 19059 =>
table_value := 208
;
when 19060 =>
table_value := 240
;
when 19061 =>
table_value := 272
;
when 19062 =>
table_value := 304
;
when 19063 =>
table_value := 352
;
when 19064 =>
table_value := 384
;
when 19065 =>
table_value := 432
;
when 19066 =>
table_value := 464
;
when 19067 =>
table_value := 496
;
when 19068 =>
table_value := 544
;
when 19069 =>
table_value := 592
;
when 19070 =>
table_value := 624
;
when 19071 =>
table_value := 672
;
when 19072 =>
table_value := 704
;
when 19073 =>
table_value := 752
;
when 19074 =>
table_value := 784
;
when 19075 =>
table_value := 848
;
when 19076 =>
table_value := 880
;
when 19077 =>
table_value := 912
;
when 19078 =>
table_value := 976
;
when 19079 =>
table_value := 992
;
when 19080 =>
table_value := 1040
;
when 19081 =>
table_value := 1072
;
when 19082 =>
table_value := 1136
;
when 19083 =>
table_value := 1168
;
when 19084 =>
table_value := 1216
;
when 19085 =>
table_value := 1248
;
when 19086 =>
table_value := 1296
;
when 19087 =>
table_value := 1328
;
when 19088 =>
table_value := 1376
;
when 19089 =>
table_value := 1392
;
when 19090 =>
table_value := 1424
;
when 19091 =>
table_value := 1472
;
when 19092 =>
table_value := 1520
;
when 19093 =>
table_value := 1536
;
when 19094 =>
table_value := 1568
;
when 19095 =>
table_value := 1616
;
when 19096 =>
table_value := 1632
;
when 19097 =>
table_value := 1664
;
when 19098 =>
table_value := 1696
;
when 19099 =>
table_value := 1728
;
when 19100 =>
table_value := 1744
;
when 19101 =>
table_value := 1760
;
when 19102 =>
table_value := 1792
;
when 19103 =>
table_value := 1824
;
when 19104 =>
table_value := 1856
;
when 19105 =>
table_value := 1872
;
when 19106 =>
table_value := 1904
;
when 19107 =>
table_value := 1904
;
when 19108 =>
table_value := 1936
;
when 19109 =>
table_value := 1936
;
when 19110 =>
table_value := 1952
;
when 19111 =>
table_value := 1968
;
when 19112 =>
table_value := 1984
;
when 19113 =>
table_value := 2000
;
when 19114 =>
table_value := 2000
;
when 19115 =>
table_value := 2016
;
when 19116 =>
table_value := 2032
;
when 19117 =>
table_value := 2032
;
when 19118 =>
table_value := 2048
;
when 19119 =>
table_value := 2064
;
when 19120 =>
table_value := 2064
;
when 19121 =>
table_value := 2064
;
when 19122 =>
table_value := 2064
;
when 19123 =>
table_value := 2064
;
when 19124 =>
table_value := 2080
;
when 19125 =>
table_value := 2080
;
when 19126 =>
table_value := 2096
;
when 19127 =>
table_value := 2096
;
when 19128 =>
table_value := 2096
;
when 19129 =>
table_value := 2096
;
when 19130 =>
table_value := 2096
;
when 19131 =>
table_value := 2096
;
when 19132 =>
table_value := 2096
;
when 19133 =>
table_value := 2112
;
when 19134 =>
table_value := 2112
;
when 19135 =>
table_value := 2112
;
when 19136 =>
table_value := 2128
;
when 19137 =>
table_value := 2128
;
when 19138 =>
table_value := 2128
;
when 19139 =>
table_value := 2144
;
when 19140 =>
table_value := 2128
;
when 19141 =>
table_value := 2128
;
when 19142 =>
table_value := 2128
;
when 19143 =>
table_value := 2144
;
when 19144 =>
table_value := 2128
;
when 19145 =>
table_value := 2128
;
when 19146 =>
table_value := 2128
;
when 19147 =>
table_value := 2112
;
when 19148 =>
table_value := 2112
;
when 19149 =>
table_value := 2112
;
when 19150 =>
table_value := 2096
;
when 19151 =>
table_value := 2096
;
when 19152 =>
table_value := 2096
;
when 19153 =>
table_value := 2080
;
when 19154 =>
table_value := 2064
;
when 19155 =>
table_value := 2064
;
when 19156 =>
table_value := 2048
;
when 19157 =>
table_value := 2016
;
when 19158 =>
table_value := 2016
;
when 19159 =>
table_value := 2000
;
when 19160 =>
table_value := 1984
;
when 19161 =>
table_value := 1968
;
when 19162 =>
table_value := 1936
;
when 19163 =>
table_value := 1920
;
when 19164 =>
table_value := 1904
;
when 19165 =>
table_value := 1872
;
when 19166 =>
table_value := 1856
;
when 19167 =>
table_value := 1824
;
when 19168 =>
table_value := 1792
;
when 19169 =>
table_value := 1776
;
when 19170 =>
table_value := 1744
;
when 19171 =>
table_value := 1696
;
when 19172 =>
table_value := 1680
;
when 19173 =>
table_value := 1632
;
when 19174 =>
table_value := 1600
;
when 19175 =>
table_value := 1568
;
when 19176 =>
table_value := 1536
;
when 19177 =>
table_value := 1488
;
when 19178 =>
table_value := 1456
;
when 19179 =>
table_value := 1408
;
when 19180 =>
table_value := 1376
;
when 19181 =>
table_value := 1328
;
when 19182 =>
table_value := 1280
;
when 19183 =>
table_value := 1232
;
when 19184 =>
table_value := 1184
;
when 19185 =>
table_value := 1152
;
when 19186 =>
table_value := 1088
;
when 19187 =>
table_value := 1024
;
when 19188 =>
table_value := 1008
;
when 19189 =>
table_value := 944
;
when 19190 =>
table_value := 896
;
when 19191 =>
table_value := 848
;
when 19192 =>
table_value := 800
;
when 19193 =>
table_value := 752
;
when 19194 =>
table_value := 704
;
when 19195 =>
table_value := 672
;
when 19196 =>
table_value := 608
;
when 19197 =>
table_value := 560
;
when 19198 =>
table_value := 528
;
when 19199 =>
table_value := 480
;
when 19200 =>
table_value := 448
;
when 19201 =>
table_value := 400
;
when 19202 =>
table_value := 368
;
when 19203 =>
table_value := 320
;
when 19204 =>
table_value := 288
;
when 19205 =>
table_value := 240
;
when 19206 =>
table_value := 208
;
when 19207 =>
table_value := 176
;
when 19208 =>
table_value := 144
;
when 19209 =>
table_value := 128
;
when 19210 =>
table_value := 80
;
when 19211 =>
table_value := 48
;
when 19212 =>
table_value := 32
;
when 19213 =>
table_value := 16
;
when 19214 =>
table_value := 0
;
when 19215 =>
table_value := 1048560
;
when 19216 =>
table_value := 1048528
;
when 19217 =>
table_value := 1048512
;
when 19218 =>
table_value := 1048496
;
when 19219 =>
table_value := 1048464
;
when 19220 =>
table_value := 1048448
;
when 19221 =>
table_value := 1048432
;
when 19222 =>
table_value := 1048416
;
when 19223 =>
table_value := 1048416
;
when 19224 =>
table_value := 1048416
;
when 19225 =>
table_value := 1048416
;
when 19226 =>
table_value := 1048384
;
when 19227 =>
table_value := 1048384
;
when 19228 =>
table_value := 1048384
;
when 19229 =>
table_value := 1048384
;
when 19230 =>
table_value := 1048384
;
when 19231 =>
table_value := 1048368
;
when 19232 =>
table_value := 1048352
;
when 19233 =>
table_value := 1048368
;
when 19234 =>
table_value := 1048368
;
when 19235 =>
table_value := 1048384
;
when 19236 =>
table_value := 1048384
;
when 19237 =>
table_value := 1048384
;
when 19238 =>
table_value := 1048400
;
when 19239 =>
table_value := 1048400
;
when 19240 =>
table_value := 1048416
;
when 19241 =>
table_value := 1048416
;
when 19242 =>
table_value := 1048400
;
when 19243 =>
table_value := 1048416
;
when 19244 =>
table_value := 1048416
;
when 19245 =>
table_value := 1048432
;
when 19246 =>
table_value := 1048432
;
when 19247 =>
table_value := 1048432
;
when 19248 =>
table_value := 1048432
;
when 19249 =>
table_value := 1048432
;
when 19250 =>
table_value := 1048432
;
when 19251 =>
table_value := 1048432
;
when 19252 =>
table_value := 1048448
;
when 19253 =>
table_value := 1048432
;
when 19254 =>
table_value := 1048464
;
when 19255 =>
table_value := 1048448
;
when 19256 =>
table_value := 1048464
;
when 19257 =>
table_value := 1048464
;
when 19258 =>
table_value := 1048448
;
when 19259 =>
table_value := 1048464
;
when 19260 =>
table_value := 1048480
;
when 19261 =>
table_value := 1048480
;
when 19262 =>
table_value := 1048480
;
when 19263 =>
table_value := 1048496
;
when 19264 =>
table_value := 1048496
;
when 19265 =>
table_value := 1048496
;
when 19266 =>
table_value := 1048496
;
when 19267 =>
table_value := 1048512
;
when 19268 =>
table_value := 1048528
;
when 19269 =>
table_value := 1048512
;
when 19270 =>
table_value := 1048528
;
when 19271 =>
table_value := 1048528
;
when 19272 =>
table_value := 1048544
;
when 19273 =>
table_value := 1048544
;
when 19274 =>
table_value := 1048560
;
when 19275 =>
table_value := 0
;
when 19276 =>
table_value := 0
;
when 19277 =>
table_value := 0
;
when 19278 =>
table_value := 0
;
when 19279 =>
table_value := 16
;
when 19280 =>
table_value := 32
;
when 19281 =>
table_value := 48
;
when 19282 =>
table_value := 48
;
when 19283 =>
table_value := 64
;
when 19284 =>
table_value := 96
;
when 19285 =>
table_value := 112
;
when 19286 =>
table_value := 128
;
when 19287 =>
table_value := 144
;
when 19288 =>
table_value := 160
;
when 19289 =>
table_value := 176
;
when 19290 =>
table_value := 208
;
when 19291 =>
table_value := 224
;
when 19292 =>
table_value := 240
;
when 19293 =>
table_value := 256
;
when 19294 =>
table_value := 272
;
when 19295 =>
table_value := 304
;
when 19296 =>
table_value := 336
;
when 19297 =>
table_value := 336
;
when 19298 =>
table_value := 368
;
when 19299 =>
table_value := 384
;
when 19300 =>
table_value := 416
;
when 19301 =>
table_value := 432
;
when 19302 =>
table_value := 448
;
when 19303 =>
table_value := 480
;
when 19304 =>
table_value := 496
;
when 19305 =>
table_value := 528
;
when 19306 =>
table_value := 544
;
when 19307 =>
table_value := 576
;
when 19308 =>
table_value := 592
;
when 19309 =>
table_value := 608
;
when 19310 =>
table_value := 640
;
when 19311 =>
table_value := 656
;
when 19312 =>
table_value := 672
;
when 19313 =>
table_value := 688
;
when 19314 =>
table_value := 688
;
when 19315 =>
table_value := 720
;
when 19316 =>
table_value := 736
;
when 19317 =>
table_value := 752
;
when 19318 =>
table_value := 768
;
when 19319 =>
table_value := 768
;
when 19320 =>
table_value := 800
;
when 19321 =>
table_value := 784
;
when 19322 =>
table_value := 816
;
when 19323 =>
table_value := 816
;
when 19324 =>
table_value := 832
;
when 19325 =>
table_value := 832
;
when 19326 =>
table_value := 848
;
when 19327 =>
table_value := 848
;
when 19328 =>
table_value := 864
;
when 19329 =>
table_value := 864
;
when 19330 =>
table_value := 864
;
when 19331 =>
table_value := 864
;
when 19332 =>
table_value := 864
;
when 19333 =>
table_value := 880
;
when 19334 =>
table_value := 864
;
when 19335 =>
table_value := 864
;
when 19336 =>
table_value := 864
;
when 19337 =>
table_value := 848
;
when 19338 =>
table_value := 864
;
when 19339 =>
table_value := 848
;
when 19340 =>
table_value := 848
;
when 19341 =>
table_value := 848
;
when 19342 =>
table_value := 816
;
when 19343 =>
table_value := 816
;
when 19344 =>
table_value := 816
;
when 19345 =>
table_value := 800
;
when 19346 =>
table_value := 784
;
when 19347 =>
table_value := 768
;
when 19348 =>
table_value := 768
;
when 19349 =>
table_value := 768
;
when 19350 =>
table_value := 736
;
when 19351 =>
table_value := 720
;
when 19352 =>
table_value := 704
;
when 19353 =>
table_value := 704
;
when 19354 =>
table_value := 688
;
when 19355 =>
table_value := 672
;
when 19356 =>
table_value := 672
;
when 19357 =>
table_value := 640
;
when 19358 =>
table_value := 640
;
when 19359 =>
table_value := 624
;
when 19360 =>
table_value := 608
;
when 19361 =>
table_value := 608
;
when 19362 =>
table_value := 592
;
when 19363 =>
table_value := 560
;
when 19364 =>
table_value := 560
;
when 19365 =>
table_value := 560
;
when 19366 =>
table_value := 528
;
when 19367 =>
table_value := 528
;
when 19368 =>
table_value := 528
;
when 19369 =>
table_value := 512
;
when 19370 =>
table_value := 480
;
when 19371 =>
table_value := 480
;
when 19372 =>
table_value := 480
;
when 19373 =>
table_value := 448
;
when 19374 =>
table_value := 448
;
when 19375 =>
table_value := 432
;
when 19376 =>
table_value := 432
;
when 19377 =>
table_value := 416
;
when 19378 =>
table_value := 416
;
when 19379 =>
table_value := 384
;
when 19380 =>
table_value := 384
;
when 19381 =>
table_value := 384
;
when 19382 =>
table_value := 368
;
when 19383 =>
table_value := 352
;
when 19384 =>
table_value := 352
;
when 19385 =>
table_value := 320
;
when 19386 =>
table_value := 304
;
when 19387 =>
table_value := 304
;
when 19388 =>
table_value := 272
;
when 19389 =>
table_value := 256
;
when 19390 =>
table_value := 224
;
when 19391 =>
table_value := 224
;
when 19392 =>
table_value := 192
;
when 19393 =>
table_value := 192
;
when 19394 =>
table_value := 160
;
when 19395 =>
table_value := 144
;
when 19396 =>
table_value := 128
;
when 19397 =>
table_value := 96
;
when 19398 =>
table_value := 80
;
when 19399 =>
table_value := 64
;
when 19400 =>
table_value := 16
;
when 19401 =>
table_value := 16
;
when 19402 =>
table_value := 0
;
when 19403 =>
table_value := 1048560
;
when 19404 =>
table_value := 1048544
;
when 19405 =>
table_value := 1048512
;
when 19406 =>
table_value := 1048496
;
when 19407 =>
table_value := 1048464
;
when 19408 =>
table_value := 1048448
;
when 19409 =>
table_value := 1048432
;
when 19410 =>
table_value := 1048400
;
when 19411 =>
table_value := 1048368
;
when 19412 =>
table_value := 1048352
;
when 19413 =>
table_value := 1048320
;
when 19414 =>
table_value := 1048304
;
when 19415 =>
table_value := 1048288
;
when 19416 =>
table_value := 1048256
;
when 19417 =>
table_value := 1048240
;
when 19418 =>
table_value := 1048224
;
when 19419 =>
table_value := 1048192
;
when 19420 =>
table_value := 1048192
;
when 19421 =>
table_value := 1048176
;
when 19422 =>
table_value := 1048144
;
when 19423 =>
table_value := 1048128
;
when 19424 =>
table_value := 1048128
;
when 19425 =>
table_value := 1048096
;
when 19426 =>
table_value := 1048080
;
when 19427 =>
table_value := 1048080
;
when 19428 =>
table_value := 1048064
;
when 19429 =>
table_value := 1048048
;
when 19430 =>
table_value := 1048048
;
when 19431 =>
table_value := 1048032
;
when 19432 =>
table_value := 1048032
;
when 19433 =>
table_value := 1048032
;
when 19434 =>
table_value := 1048016
;
when 19435 =>
table_value := 1048016
;
when 19436 =>
table_value := 1048000
;
when 19437 =>
table_value := 1048016
;
when 19438 =>
table_value := 1048000
;
when 19439 =>
table_value := 1048016
;
when 19440 =>
table_value := 1048000
;
when 19441 =>
table_value := 1048016
;
when 19442 =>
table_value := 1048016
;
when 19443 =>
table_value := 1048016
;
when 19444 =>
table_value := 1048016
;
when 19445 =>
table_value := 1048032
;
when 19446 =>
table_value := 1048032
;
when 19447 =>
table_value := 1048048
;
when 19448 =>
table_value := 1048048
;
when 19449 =>
table_value := 1048048
;
when 19450 =>
table_value := 1048048
;
when 19451 =>
table_value := 1048080
;
when 19452 =>
table_value := 1048064
;
when 19453 =>
table_value := 1048080
;
when 19454 =>
table_value := 1048080
;
when 19455 =>
table_value := 1048112
;
when 19456 =>
table_value := 1048112
;
when 19457 =>
table_value := 1048112
;
when 19458 =>
table_value := 1048096
;
when 19459 =>
table_value := 1048128
;
when 19460 =>
table_value := 1048144
;
when 19461 =>
table_value := 1048144
;
when 19462 =>
table_value := 1048144
;
when 19463 =>
table_value := 1048160
;
when 19464 =>
table_value := 1048176
;
when 19465 =>
table_value := 1048192
;
when 19466 =>
table_value := 1048192
;
when 19467 =>
table_value := 1048192
;
when 19468 =>
table_value := 1048208
;
when 19469 =>
table_value := 1048208
;
when 19470 =>
table_value := 1048224
;
when 19471 =>
table_value := 1048224
;
when 19472 =>
table_value := 1048240
;
when 19473 =>
table_value := 1048256
;
when 19474 =>
table_value := 1048256
;
when 19475 =>
table_value := 1048256
;
when 19476 =>
table_value := 1048288
;
when 19477 =>
table_value := 1048272
;
when 19478 =>
table_value := 1048272
;
when 19479 =>
table_value := 1048288
;
when 19480 =>
table_value := 1048304
;
when 19481 =>
table_value := 1048304
;
when 19482 =>
table_value := 1048304
;
when 19483 =>
table_value := 1048304
;
when 19484 =>
table_value := 1048304
;
when 19485 =>
table_value := 1048320
;
when 19486 =>
table_value := 1048304
;
when 19487 =>
table_value := 1048336
;
when 19488 =>
table_value := 1048336
;
when 19489 =>
table_value := 1048336
;
when 19490 =>
table_value := 1048352
;
when 19491 =>
table_value := 1048352
;
when 19492 =>
table_value := 1048352
;
when 19493 =>
table_value := 1048352
;
when 19494 =>
table_value := 1048352
;
when 19495 =>
table_value := 1048368
;
when 19496 =>
table_value := 1048352
;
when 19497 =>
table_value := 1048352
;
when 19498 =>
table_value := 1048368
;
when 19499 =>
table_value := 1048368
;
when 19500 =>
table_value := 1048368
;
when 19501 =>
table_value := 1048368
;
when 19502 =>
table_value := 1048352
;
when 19503 =>
table_value := 1048368
;
when 19504 =>
table_value := 1048352
;
when 19505 =>
table_value := 1048352
;
when 19506 =>
table_value := 1048352
;
when 19507 =>
table_value := 1048352
;
when 19508 =>
table_value := 1048352
;
when 19509 =>
table_value := 1048368
;
when 19510 =>
table_value := 1048352
;
when 19511 =>
table_value := 1048352
;
when 19512 =>
table_value := 1048352
;
when 19513 =>
table_value := 1048352
;
when 19514 =>
table_value := 1048336
;
when 19515 =>
table_value := 1048352
;
when 19516 =>
table_value := 1048336
;
when 19517 =>
table_value := 1048352
;
when 19518 =>
table_value := 1048352
;
when 19519 =>
table_value := 1048352
;
when 19520 =>
table_value := 1048352
;
when 19521 =>
table_value := 1048336
;
when 19522 =>
table_value := 1048352
;
when 19523 =>
table_value := 1048336
;
when 19524 =>
table_value := 1048336
;
when 19525 =>
table_value := 1048336
;
when 19526 =>
table_value := 1048336
;
when 19527 =>
table_value := 1048336
;
when 19528 =>
table_value := 1048336
;
when 19529 =>
table_value := 1048336
;
when 19530 =>
table_value := 1048336
;
when 19531 =>
table_value := 1048336
;
when 19532 =>
table_value := 1048352
;
when 19533 =>
table_value := 1048352
;
when 19534 =>
table_value := 1048352
;
when 19535 =>
table_value := 1048352
;
when 19536 =>
table_value := 1048352
;
when 19537 =>
table_value := 1048368
;
when 19538 =>
table_value := 1048368
;
when 19539 =>
table_value := 1048368
;
when 19540 =>
table_value := 1048384
;
when 19541 =>
table_value := 1048400
;
when 19542 =>
table_value := 1048400
;
when 19543 =>
table_value := 1048400
;
when 19544 =>
table_value := 1048416
;
when 19545 =>
table_value := 1048416
;
when 19546 =>
table_value := 1048432
;
when 19547 =>
table_value := 1048432
;
when 19548 =>
table_value := 1048432
;
when 19549 =>
table_value := 1048432
;
when 19550 =>
table_value := 1048432
;
when 19551 =>
table_value := 1048448
;
when 19552 =>
table_value := 1048448
;
when 19553 =>
table_value := 1048464
;
when 19554 =>
table_value := 1048480
;
when 19555 =>
table_value := 1048496
;
when 19556 =>
table_value := 1048496
;
when 19557 =>
table_value := 1048512
;
when 19558 =>
table_value := 1048512
;
when 19559 =>
table_value := 1048512
;
when 19560 =>
table_value := 1048528
;
when 19561 =>
table_value := 1048528
;
when 19562 =>
table_value := 1048528
;
when 19563 =>
table_value := 1048544
;
when 19564 =>
table_value := 1048544
;
when 19565 =>
table_value := 1048544
;
when 19566 =>
table_value := 1048544
;
when 19567 =>
table_value := 1048560
;
when 19568 =>
table_value := 1048560
;
when 19569 =>
table_value := 1048560
;
when 19570 =>
table_value := 1048560
;
when 19571 =>
table_value := 1048560
;
when 19572 =>
table_value := 1048560
;
when 19573 =>
table_value := 1048544
;
when 19574 =>
table_value := 1048544
;
when 19575 =>
table_value := 1048528
;
when 19576 =>
table_value := 1048528
;
when 19577 =>
table_value := 1048528
;
when 19578 =>
table_value := 1048512
;
when 19579 =>
table_value := 1048512
;
when 19580 =>
table_value := 1048496
;
when 19581 =>
table_value := 1048496
;
when 19582 =>
table_value := 1048480
;
when 19583 =>
table_value := 1048480
;
when 19584 =>
table_value := 1048480
;
when 19585 =>
table_value := 1048464
;
when 19586 =>
table_value := 1048448
;
when 19587 =>
table_value := 1048432
;
when 19588 =>
table_value := 1048416
;
when 19589 =>
table_value := 1048416
;
when 19590 =>
table_value := 1048400
;
when 19591 =>
table_value := 1048368
;
when 19592 =>
table_value := 1048352
;
when 19593 =>
table_value := 1048336
;
when 19594 =>
table_value := 1048320
;
when 19595 =>
table_value := 1048304
;
when 19596 =>
table_value := 1048288
;
when 19597 =>
table_value := 1048272
;
when 19598 =>
table_value := 1048256
;
when 19599 =>
table_value := 1048240
;
when 19600 =>
table_value := 1048224
;
when 19601 =>
table_value := 1048224
;
when 19602 =>
table_value := 1048224
;
when 19603 =>
table_value := 1048208
;
when 19604 =>
table_value := 1048176
;
when 19605 =>
table_value := 1048160
;
when 19606 =>
table_value := 1048144
;
when 19607 =>
table_value := 1048128
;
when 19608 =>
table_value := 1048096
;
when 19609 =>
table_value := 1048080
;
when 19610 =>
table_value := 1048080
;
when 19611 =>
table_value := 1048048
;
when 19612 =>
table_value := 1048032
;
when 19613 =>
table_value := 1048016
;
when 19614 =>
table_value := 1048000
;
when 19615 =>
table_value := 1047968
;
when 19616 =>
table_value := 1047968
;
when 19617 =>
table_value := 1047936
;
when 19618 =>
table_value := 1047936
;
when 19619 =>
table_value := 1047904
;
when 19620 =>
table_value := 1047888
;
when 19621 =>
table_value := 1047872
;
when 19622 =>
table_value := 1047872
;
when 19623 =>
table_value := 1047840
;
when 19624 =>
table_value := 1047824
;
when 19625 =>
table_value := 1047824
;
when 19626 =>
table_value := 1047808
;
when 19627 =>
table_value := 1047792
;
when 19628 =>
table_value := 1047760
;
when 19629 =>
table_value := 1047744
;
when 19630 =>
table_value := 1047744
;
when 19631 =>
table_value := 1047728
;
when 19632 =>
table_value := 1047728
;
when 19633 =>
table_value := 1047712
;
when 19634 =>
table_value := 1047696
;
when 19635 =>
table_value := 1047696
;
when 19636 =>
table_value := 1047680
;
when 19637 =>
table_value := 1047664
;
when 19638 =>
table_value := 1047648
;
when 19639 =>
table_value := 1047632
;
when 19640 =>
table_value := 1047632
;
when 19641 =>
table_value := 1047632
;
when 19642 =>
table_value := 1047616
;
when 19643 =>
table_value := 1047600
;
when 19644 =>
table_value := 1047584
;
when 19645 =>
table_value := 1047584
;
when 19646 =>
table_value := 1047584
;
when 19647 =>
table_value := 1047568
;
when 19648 =>
table_value := 1047552
;
when 19649 =>
table_value := 1047568
;
when 19650 =>
table_value := 1047552
;
when 19651 =>
table_value := 1047536
;
when 19652 =>
table_value := 1047536
;
when 19653 =>
table_value := 1047520
;
when 19654 =>
table_value := 1047520
;
when 19655 =>
table_value := 1047520
;
when 19656 =>
table_value := 1047520
;
when 19657 =>
table_value := 1047504
;
when 19658 =>
table_value := 1047504
;
when 19659 =>
table_value := 1047504
;
when 19660 =>
table_value := 1047504
;
when 19661 =>
table_value := 1047504
;
when 19662 =>
table_value := 1047504
;
when 19663 =>
table_value := 1047504
;
when 19664 =>
table_value := 1047504
;
when 19665 =>
table_value := 1047504
;
when 19666 =>
table_value := 1047504
;
when 19667 =>
table_value := 1047488
;
when 19668 =>
table_value := 1047488
;
when 19669 =>
table_value := 1047488
;
when 19670 =>
table_value := 1047488
;
when 19671 =>
table_value := 1047488
;
when 19672 =>
table_value := 1047472
;
when 19673 =>
table_value := 1047504
;
when 19674 =>
table_value := 1047488
;
when 19675 =>
table_value := 1047488
;
when 19676 =>
table_value := 1047488
;
when 19677 =>
table_value := 1047472
;
when 19678 =>
table_value := 1047488
;
when 19679 =>
table_value := 1047488
;
when 19680 =>
table_value := 1047488
;
when 19681 =>
table_value := 1047472
;
when 19682 =>
table_value := 1047472
;
when 19683 =>
table_value := 1047488
;
when 19684 =>
table_value := 1047472
;
when 19685 =>
table_value := 1047472
;
when 19686 =>
table_value := 1047472
;
when 19687 =>
table_value := 1047472
;
when 19688 =>
table_value := 1047488
;
when 19689 =>
table_value := 1047472
;
when 19690 =>
table_value := 1047472
;
when 19691 =>
table_value := 1047472
;
when 19692 =>
table_value := 1047488
;
when 19693 =>
table_value := 1047488
;
when 19694 =>
table_value := 1047488
;
when 19695 =>
table_value := 1047488
;
when 19696 =>
table_value := 1047504
;
when 19697 =>
table_value := 1047504
;
when 19698 =>
table_value := 1047504
;
when 19699 =>
table_value := 1047504
;
when 19700 =>
table_value := 1047504
;
when 19701 =>
table_value := 1047504
;
when 19702 =>
table_value := 1047520
;
when 19703 =>
table_value := 1047520
;
when 19704 =>
table_value := 1047520
;
when 19705 =>
table_value := 1047536
;
when 19706 =>
table_value := 1047552
;
when 19707 =>
table_value := 1047552
;
when 19708 =>
table_value := 1047552
;
when 19709 =>
table_value := 1047568
;
when 19710 =>
table_value := 1047568
;
when 19711 =>
table_value := 1047584
;
when 19712 =>
table_value := 1047584
;
when 19713 =>
table_value := 1047584
;
when 19714 =>
table_value := 1047584
;
when 19715 =>
table_value := 1047600
;
when 19716 =>
table_value := 1047616
;
when 19717 =>
table_value := 1047616
;
when 19718 =>
table_value := 1047616
;
when 19719 =>
table_value := 1047632
;
when 19720 =>
table_value := 1047632
;
when 19721 =>
table_value := 1047632
;
when 19722 =>
table_value := 1047648
;
when 19723 =>
table_value := 1047648
;
when 19724 =>
table_value := 1047664
;
when 19725 =>
table_value := 1047664
;
when 19726 =>
table_value := 1047664
;
when 19727 =>
table_value := 1047664
;
when 19728 =>
table_value := 1047664
;
when 19729 =>
table_value := 1047680
;
when 19730 =>
table_value := 1047680
;
when 19731 =>
table_value := 1047664
;
when 19732 =>
table_value := 1047680
;
when 19733 =>
table_value := 1047680
;
when 19734 =>
table_value := 1047680
;
when 19735 =>
table_value := 1047680
;
when 19736 =>
table_value := 1047680
;
when 19737 =>
table_value := 1047680
;
when 19738 =>
table_value := 1047696
;
when 19739 =>
table_value := 1047712
;
when 19740 =>
table_value := 1047712
;
when 19741 =>
table_value := 1047696
;
when 19742 =>
table_value := 1047696
;
when 19743 =>
table_value := 1047712
;
when 19744 =>
table_value := 1047712
;
when 19745 =>
table_value := 1047712
;
when 19746 =>
table_value := 1047728
;
when 19747 =>
table_value := 1047712
;
when 19748 =>
table_value := 1047712
;
when 19749 =>
table_value := 1047712
;
when 19750 =>
table_value := 1047728
;
when 19751 =>
table_value := 1047728
;
when 19752 =>
table_value := 1047728
;
when 19753 =>
table_value := 1047728
;
when 19754 =>
table_value := 1047728
;
when 19755 =>
table_value := 1047728
;
when 19756 =>
table_value := 1047728
;
when 19757 =>
table_value := 1047728
;
when 19758 =>
table_value := 1047744
;
when 19759 =>
table_value := 1047744
;
when 19760 =>
table_value := 1047760
;
when 19761 =>
table_value := 1047744
;
when 19762 =>
table_value := 1047776
;
when 19763 =>
table_value := 1047792
;
when 19764 =>
table_value := 1047792
;
when 19765 =>
table_value := 1047792
;
when 19766 =>
table_value := 1047792
;
when 19767 =>
table_value := 1047808
;
when 19768 =>
table_value := 1047824
;
when 19769 =>
table_value := 1047824
;
when 19770 =>
table_value := 1047840
;
when 19771 =>
table_value := 1047856
;
when 19772 =>
table_value := 1047856
;
when 19773 =>
table_value := 1047872
;
when 19774 =>
table_value := 1047888
;
when 19775 =>
table_value := 1047888
;
when 19776 =>
table_value := 1047904
;
when 19777 =>
table_value := 1047920
;
when 19778 =>
table_value := 1047936
;
when 19779 =>
table_value := 1047952
;
when 19780 =>
table_value := 1047968
;
when 19781 =>
table_value := 1047968
;
when 19782 =>
table_value := 1047984
;
when 19783 =>
table_value := 1048000
;
when 19784 =>
table_value := 1048016
;
when 19785 =>
table_value := 1048016
;
when 19786 =>
table_value := 1048032
;
when 19787 =>
table_value := 1048048
;
when 19788 =>
table_value := 1048048
;
when 19789 =>
table_value := 1048064
;
when 19790 =>
table_value := 1048080
;
when 19791 =>
table_value := 1048096
;
when 19792 =>
table_value := 1048096
;
when 19793 =>
table_value := 1048128
;
when 19794 =>
table_value := 1048144
;
when 19795 =>
table_value := 1048144
;
when 19796 =>
table_value := 1048160
;
when 19797 =>
table_value := 1048160
;
when 19798 =>
table_value := 1048192
;
when 19799 =>
table_value := 1048192
;
when 19800 =>
table_value := 1048208
;
when 19801 =>
table_value := 1048240
;
when 19802 =>
table_value := 1048240
;
when 19803 =>
table_value := 1048256
;
when 19804 =>
table_value := 1048272
;
when 19805 =>
table_value := 1048272
;
when 19806 =>
table_value := 1048288
;
when 19807 =>
table_value := 1048304
;
when 19808 =>
table_value := 1048320
;
when 19809 =>
table_value := 1048320
;
when 19810 =>
table_value := 1048352
;
when 19811 =>
table_value := 1048352
;
when 19812 =>
table_value := 1048368
;
when 19813 =>
table_value := 1048384
;
when 19814 =>
table_value := 1048384
;
when 19815 =>
table_value := 1048400
;
when 19816 =>
table_value := 1048400
;
when 19817 =>
table_value := 1048416
;
when 19818 =>
table_value := 1048432
;
when 19819 =>
table_value := 1048448
;
when 19820 =>
table_value := 1048448
;
when 19821 =>
table_value := 1048448
;
when 19822 =>
table_value := 1048448
;
when 19823 =>
table_value := 1048480
;
when 19824 =>
table_value := 1048480
;
when 19825 =>
table_value := 1048480
;
when 19826 =>
table_value := 1048496
;
when 19827 =>
table_value := 1048496
;
when 19828 =>
table_value := 1048496
;
when 19829 =>
table_value := 1048512
;
when 19830 =>
table_value := 1048528
;
when 19831 =>
table_value := 1048528
;
when 19832 =>
table_value := 1048544
;
when 19833 =>
table_value := 1048544
;
when 19834 =>
table_value := 1048544
;
when 19835 =>
table_value := 1048560
;
when 19836 =>
table_value := 1048560
;
when 19837 =>
table_value := 0
;
when 19838 =>
table_value := 0
;
when 19839 =>
table_value := 0
;
when 19840 =>
table_value := 0
;
when 19841 =>
table_value := 0
;
when 19842 =>
table_value := 0
;
when 19843 =>
table_value := 0
;
when 19844 =>
table_value := 0
;
when 19845 =>
table_value := 0
;
when 19846 =>
table_value := 0
;
when 19847 =>
table_value := 0
;
when 19848 =>
table_value := 0
;
when 19849 =>
table_value := 0
;
when 19850 =>
table_value := 0
;
when 19851 =>
table_value := 0
;
when 19852 =>
table_value := 0
;
when 19853 =>
table_value := 0
;
when 19854 =>
table_value := 0
;
when 19855 =>
table_value := 0
;
when 19856 =>
table_value := 0
;
when 19857 =>
table_value := 0
;
when 19858 =>
table_value := 0
;
when 19859 =>
table_value := 0
;
when 19860 =>
table_value := 0
;
when 19861 =>
table_value := 0
;
when 19862 =>
table_value := 0
;
when 19863 =>
table_value := 1048560
;
when 19864 =>
table_value := 1048560
;
when 19865 =>
table_value := 1048560
;
when 19866 =>
table_value := 1048560
;
when 19867 =>
table_value := 1048560
;
when 19868 =>
table_value := 1048560
;
when 19869 =>
table_value := 1048560
;
when 19870 =>
table_value := 1048560
;
when 19871 =>
table_value := 1048560
;
when 19872 =>
table_value := 1048560
;
when 19873 =>
table_value := 1048560
;
when 19874 =>
table_value := 0
;
when 19875 =>
table_value := 1048560
;
when 19876 =>
table_value := 0
;
when 19877 =>
table_value := 1048560
;
when 19878 =>
table_value := 0
;
when 19879 =>
table_value := 0
;
when 19880 =>
table_value := 0
;
when 19881 =>
table_value := 0
;
when 19882 =>
table_value := 0
;
when 19883 =>
table_value := 0
;
when 19884 =>
table_value := 0
;
when 19885 =>
table_value := 16
;
when 19886 =>
table_value := 48
;
when 19887 =>
table_value := 48
;
when 19888 =>
table_value := 48
;
when 19889 =>
table_value := 64
;
when 19890 =>
table_value := 64
;
when 19891 =>
table_value := 80
;
when 19892 =>
table_value := 80
;
when 19893 =>
table_value := 80
;
when 19894 =>
table_value := 112
;
when 19895 =>
table_value := 112
;
when 19896 =>
table_value := 128
;
when 19897 =>
table_value := 144
;
when 19898 =>
table_value := 144
;
when 19899 =>
table_value := 176
;
when 19900 =>
table_value := 176
;
when 19901 =>
table_value := 176
;
when 19902 =>
table_value := 192
;
when 19903 =>
table_value := 208
;
when 19904 =>
table_value := 224
;
when 19905 =>
table_value := 240
;
when 19906 =>
table_value := 256
;
when 19907 =>
table_value := 272
;
when 19908 =>
table_value := 288
;
when 19909 =>
table_value := 304
;
when 19910 =>
table_value := 320
;
when 19911 =>
table_value := 320
;
when 19912 =>
table_value := 352
;
when 19913 =>
table_value := 368
;
when 19914 =>
table_value := 368
;
when 19915 =>
table_value := 384
;
when 19916 =>
table_value := 400
;
when 19917 =>
table_value := 416
;
when 19918 =>
table_value := 448
;
when 19919 =>
table_value := 448
;
when 19920 =>
table_value := 464
;
when 19921 =>
table_value := 480
;
when 19922 =>
table_value := 496
;
when 19923 =>
table_value := 496
;
when 19924 =>
table_value := 512
;
when 19925 =>
table_value := 528
;
when 19926 =>
table_value := 528
;
when 19927 =>
table_value := 544
;
when 19928 =>
table_value := 544
;
when 19929 =>
table_value := 560
;
when 19930 =>
table_value := 560
;
when 19931 =>
table_value := 592
;
when 19932 =>
table_value := 608
;
when 19933 =>
table_value := 608
;
when 19934 =>
table_value := 608
;
when 19935 =>
table_value := 624
;
when 19936 =>
table_value := 624
;
when 19937 =>
table_value := 640
;
when 19938 =>
table_value := 640
;
when 19939 =>
table_value := 656
;
when 19940 =>
table_value := 672
;
when 19941 =>
table_value := 672
;
when 19942 =>
table_value := 672
;
when 19943 =>
table_value := 688
;
when 19944 =>
table_value := 688
;
when 19945 =>
table_value := 704
;
when 19946 =>
table_value := 704
;
when 19947 =>
table_value := 720
;
when 19948 =>
table_value := 736
;
when 19949 =>
table_value := 736
;
when 19950 =>
table_value := 752
;
when 19951 =>
table_value := 752
;
when 19952 =>
table_value := 784
;
when 19953 =>
table_value := 768
;
when 19954 =>
table_value := 800
;
when 19955 =>
table_value := 816
;
when 19956 =>
table_value := 816
;
when 19957 =>
table_value := 832
;
when 19958 =>
table_value := 832
;
when 19959 =>
table_value := 848
;
when 19960 =>
table_value := 864
;
when 19961 =>
table_value := 880
;
when 19962 =>
table_value := 896
;
when 19963 =>
table_value := 912
;
when 19964 =>
table_value := 928
;
when 19965 =>
table_value := 928
;
when 19966 =>
table_value := 944
;
when 19967 =>
table_value := 944
;
when 19968 =>
table_value := 976
;
when 19969 =>
table_value := 976
;
when 19970 =>
table_value := 992
;
when 19971 =>
table_value := 992
;
when 19972 =>
table_value := 1008
;
when 19973 =>
table_value := 1024
;
when 19974 =>
table_value := 1024
;
when 19975 =>
table_value := 1056
;
when 19976 =>
table_value := 1056
;
when 19977 =>
table_value := 1056
;
when 19978 =>
table_value := 1056
;
when 19979 =>
table_value := 1072
;
when 19980 =>
table_value := 1072
;
when 19981 =>
table_value := 1088
;
when 19982 =>
table_value := 1088
;
when 19983 =>
table_value := 1088
;
when 19984 =>
table_value := 1104
;
when 19985 =>
table_value := 1120
;
when 19986 =>
table_value := 1104
;
when 19987 =>
table_value := 1136
;
when 19988 =>
table_value := 1136
;
when 19989 =>
table_value := 1152
;
when 19990 =>
table_value := 1136
;
when 19991 =>
table_value := 1136
;
when 19992 =>
table_value := 1152
;
when 19993 =>
table_value := 1152
;
when 19994 =>
table_value := 1152
;
when 19995 =>
table_value := 1152
;
when 19996 =>
table_value := 1152
;
when 19997 =>
table_value := 1152
;
when 19998 =>
table_value := 1152
;
when 19999 =>
table_value := 1152
;
when 20000 =>
table_value := 1136
;
when 20001 =>
table_value := 1136
;
when 20002 =>
table_value := 1120
;
when 20003 =>
table_value := 1136
;
when 20004 =>
table_value := 1120
;
when 20005 =>
table_value := 1104
;
when 20006 =>
table_value := 1104
;
when 20007 =>
table_value := 1072
;
when 20008 =>
table_value := 1072
;
when 20009 =>
table_value := 1056
;
when 20010 =>
table_value := 1056
;
when 20011 =>
table_value := 1040
;
when 20012 =>
table_value := 1024
;
when 20013 =>
table_value := 1040
;
when 20014 =>
table_value := 1008
;
when 20015 =>
table_value := 1008
;
when 20016 =>
table_value := 992
;
when 20017 =>
table_value := 976
;
when 20018 =>
table_value := 960
;
when 20019 =>
table_value := 944
;
when 20020 =>
table_value := 928
;
when 20021 =>
table_value := 928
;
when 20022 =>
table_value := 928
;
when 20023 =>
table_value := 912
;
when 20024 =>
table_value := 896
;
when 20025 =>
table_value := 896
;
when 20026 =>
table_value := 880
;
when 20027 =>
table_value := 864
;
when 20028 =>
table_value := 864
;
when 20029 =>
table_value := 864
;
when 20030 =>
table_value := 848
;
when 20031 =>
table_value := 832
;
when 20032 =>
table_value := 816
;
when 20033 =>
table_value := 816
;
when 20034 =>
table_value := 816
;
when 20035 =>
table_value := 800
;
when 20036 =>
table_value := 784
;
when 20037 =>
table_value := 784
;
when 20038 =>
table_value := 784
;
when 20039 =>
table_value := 768
;
when 20040 =>
table_value := 784
;
when 20041 =>
table_value := 768
;
when 20042 =>
table_value := 784
;
when 20043 =>
table_value := 768
;
when 20044 =>
table_value := 752
;
when 20045 =>
table_value := 768
;
when 20046 =>
table_value := 768
;
when 20047 =>
table_value := 752
;
when 20048 =>
table_value := 752
;
when 20049 =>
table_value := 736
;
when 20050 =>
table_value := 752
;
when 20051 =>
table_value := 736
;
when 20052 =>
table_value := 736
;
when 20053 =>
table_value := 736
;
when 20054 =>
table_value := 736
;
when 20055 =>
table_value := 736
;
when 20056 =>
table_value := 720
;
when 20057 =>
table_value := 704
;
when 20058 =>
table_value := 704
;
when 20059 =>
table_value := 704
;
when 20060 =>
table_value := 704
;
when 20061 =>
table_value := 688
;
when 20062 =>
table_value := 688
;
when 20063 =>
table_value := 672
;
when 20064 =>
table_value := 656
;
when 20065 =>
table_value := 672
;
when 20066 =>
table_value := 640
;
when 20067 =>
table_value := 640
;
when 20068 =>
table_value := 640
;
when 20069 =>
table_value := 624
;
when 20070 =>
table_value := 624
;
when 20071 =>
table_value := 608
;
when 20072 =>
table_value := 592
;
when 20073 =>
table_value := 592
;
when 20074 =>
table_value := 592
;
when 20075 =>
table_value := 576
;
when 20076 =>
table_value := 560
;
when 20077 =>
table_value := 544
;
when 20078 =>
table_value := 528
;
when 20079 =>
table_value := 528
;
when 20080 =>
table_value := 512
;
when 20081 =>
table_value := 496
;
when 20082 =>
table_value := 480
;
when 20083 =>
table_value := 480
;
when 20084 =>
table_value := 464
;
when 20085 =>
table_value := 464
;
when 20086 =>
table_value := 448
;
when 20087 =>
table_value := 432
;
when 20088 =>
table_value := 432
;
when 20089 =>
table_value := 432
;
when 20090 =>
table_value := 416
;
when 20091 =>
table_value := 416
;
when 20092 =>
table_value := 400
;
when 20093 =>
table_value := 400
;
when 20094 =>
table_value := 400
;
when 20095 =>
table_value := 400
;
when 20096 =>
table_value := 384
;
when 20097 =>
table_value := 384
;
when 20098 =>
table_value := 400
;
when 20099 =>
table_value := 400
;
when 20100 =>
table_value := 400
;
when 20101 =>
table_value := 416
;
when 20102 =>
table_value := 432
;
when 20103 =>
table_value := 432
;
when 20104 =>
table_value := 432
;
when 20105 =>
table_value := 464
;
when 20106 =>
table_value := 464
;
when 20107 =>
table_value := 480
;
when 20108 =>
table_value := 480
;
when 20109 =>
table_value := 496
;
when 20110 =>
table_value := 528
;
when 20111 =>
table_value := 528
;
when 20112 =>
table_value := 544
;
when 20113 =>
table_value := 560
;
when 20114 =>
table_value := 592
;
when 20115 =>
table_value := 608
;
when 20116 =>
table_value := 624
;
when 20117 =>
table_value := 640
;
when 20118 =>
table_value := 672
;
when 20119 =>
table_value := 672
;
when 20120 =>
table_value := 704
;
when 20121 =>
table_value := 720
;
when 20122 =>
table_value := 736
;
when 20123 =>
table_value := 752
;
when 20124 =>
table_value := 768
;
when 20125 =>
table_value := 800
;
when 20126 =>
table_value := 816
;
when 20127 =>
table_value := 832
;
when 20128 =>
table_value := 848
;
when 20129 =>
table_value := 880
;
when 20130 =>
table_value := 896
;
when 20131 =>
table_value := 912
;
when 20132 =>
table_value := 928
;
when 20133 =>
table_value := 944
;
when 20134 =>
table_value := 960
;
when 20135 =>
table_value := 976
;
when 20136 =>
table_value := 992
;
when 20137 =>
table_value := 1008
;
when 20138 =>
table_value := 1008
;
when 20139 =>
table_value := 1040
;
when 20140 =>
table_value := 1040
;
when 20141 =>
table_value := 1056
;
when 20142 =>
table_value := 1072
;
when 20143 =>
table_value := 1088
;
when 20144 =>
table_value := 1104
;
when 20145 =>
table_value := 1104
;
when 20146 =>
table_value := 1136
;
when 20147 =>
table_value := 1136
;
when 20148 =>
table_value := 1152
;
when 20149 =>
table_value := 1168
;
when 20150 =>
table_value := 1184
;
when 20151 =>
table_value := 1200
;
when 20152 =>
table_value := 1216
;
when 20153 =>
table_value := 1232
;
when 20154 =>
table_value := 1232
;
when 20155 =>
table_value := 1232
;
when 20156 =>
table_value := 1248
;
when 20157 =>
table_value := 1280
;
when 20158 =>
table_value := 1296
;
when 20159 =>
table_value := 1296
;
when 20160 =>
table_value := 1312
;
when 20161 =>
table_value := 1312
;
when 20162 =>
table_value := 1312
;
when 20163 =>
table_value := 1328
;
when 20164 =>
table_value := 1328
;
when 20165 =>
table_value := 1360
;
when 20166 =>
table_value := 1360
;
when 20167 =>
table_value := 1360
;
when 20168 =>
table_value := 1360
;
when 20169 =>
table_value := 1376
;
when 20170 =>
table_value := 1360
;
when 20171 =>
table_value := 1360
;
when 20172 =>
table_value := 1376
;
when 20173 =>
table_value := 1376
;
when 20174 =>
table_value := 1360
;
when 20175 =>
table_value := 1360
;
when 20176 =>
table_value := 1360
;
when 20177 =>
table_value := 1344
;
when 20178 =>
table_value := 1344
;
when 20179 =>
table_value := 1344
;
when 20180 =>
table_value := 1328
;
when 20181 =>
table_value := 1312
;
when 20182 =>
table_value := 1312
;
when 20183 =>
table_value := 1296
;
when 20184 =>
table_value := 1296
;
when 20185 =>
table_value := 1264
;
when 20186 =>
table_value := 1248
;
when 20187 =>
table_value := 1216
;
when 20188 =>
table_value := 1232
;
when 20189 =>
table_value := 1184
;
when 20190 =>
table_value := 1184
;
when 20191 =>
table_value := 1152
;
when 20192 =>
table_value := 1136
;
when 20193 =>
table_value := 1104
;
when 20194 =>
table_value := 1088
;
when 20195 =>
table_value := 1056
;
when 20196 =>
table_value := 1008
;
when 20197 =>
table_value := 992
;
when 20198 =>
table_value := 944
;
when 20199 =>
table_value := 912
;
when 20200 =>
table_value := 896
;
when 20201 =>
table_value := 864
;
when 20202 =>
table_value := 832
;
when 20203 =>
table_value := 784
;
when 20204 =>
table_value := 768
;
when 20205 =>
table_value := 736
;
when 20206 =>
table_value := 688
;
when 20207 =>
table_value := 656
;
when 20208 =>
table_value := 624
;
when 20209 =>
table_value := 560
;
when 20210 =>
table_value := 528
;
when 20211 =>
table_value := 480
;
when 20212 =>
table_value := 448
;
when 20213 =>
table_value := 384
;
when 20214 =>
table_value := 336
;
when 20215 =>
table_value := 304
;
when 20216 =>
table_value := 272
;
when 20217 =>
table_value := 224
;
when 20218 =>
table_value := 192
;
when 20219 =>
table_value := 144
;
when 20220 =>
table_value := 112
;
when 20221 =>
table_value := 80
;
when 20222 =>
table_value := 32
;
when 20223 =>
table_value := 0
;
when 20224 =>
table_value := 0
;
when 20225 =>
table_value := 1048512
;
when 20226 =>
table_value := 1048480
;
when 20227 =>
table_value := 1048448
;
when 20228 =>
table_value := 1048416
;
when 20229 =>
table_value := 1048384
;
when 20230 =>
table_value := 1048368
;
when 20231 =>
table_value := 1048320
;
when 20232 =>
table_value := 1048304
;
when 20233 =>
table_value := 1048272
;
when 20234 =>
table_value := 1048224
;
when 20235 =>
table_value := 1048208
;
when 20236 =>
table_value := 1048176
;
when 20237 =>
table_value := 1048160
;
when 20238 =>
table_value := 1048128
;
when 20239 =>
table_value := 1048112
;
when 20240 =>
table_value := 1048080
;
when 20241 =>
table_value := 1048064
;
when 20242 =>
table_value := 1048032
;
when 20243 =>
table_value := 1048016
;
when 20244 =>
table_value := 1047984
;
when 20245 =>
table_value := 1047968
;
when 20246 =>
table_value := 1047952
;
when 20247 =>
table_value := 1047920
;
when 20248 =>
table_value := 1047904
;
when 20249 =>
table_value := 1047888
;
when 20250 =>
table_value := 1047872
;
when 20251 =>
table_value := 1047856
;
when 20252 =>
table_value := 1047824
;
when 20253 =>
table_value := 1047824
;
when 20254 =>
table_value := 1047808
;
when 20255 =>
table_value := 1047792
;
when 20256 =>
table_value := 1047776
;
when 20257 =>
table_value := 1047760
;
when 20258 =>
table_value := 1047760
;
when 20259 =>
table_value := 1047728
;
when 20260 =>
table_value := 1047744
;
when 20261 =>
table_value := 1047712
;
when 20262 =>
table_value := 1047728
;
when 20263 =>
table_value := 1047696
;
when 20264 =>
table_value := 1047696
;
when 20265 =>
table_value := 1047696
;
when 20266 =>
table_value := 1047680
;
when 20267 =>
table_value := 1047680
;
when 20268 =>
table_value := 1047664
;
when 20269 =>
table_value := 1047664
;
when 20270 =>
table_value := 1047664
;
when 20271 =>
table_value := 1047664
;
when 20272 =>
table_value := 1047664
;
when 20273 =>
table_value := 1047664
;
when 20274 =>
table_value := 1047648
;
when 20275 =>
table_value := 1047664
;
when 20276 =>
table_value := 1047648
;
when 20277 =>
table_value := 1047664
;
when 20278 =>
table_value := 1047648
;
when 20279 =>
table_value := 1047664
;
when 20280 =>
table_value := 1047664
;
when 20281 =>
table_value := 1047664
;
when 20282 =>
table_value := 1047680
;
when 20283 =>
table_value := 1047664
;
when 20284 =>
table_value := 1047680
;
when 20285 =>
table_value := 1047680
;
when 20286 =>
table_value := 1047696
;
when 20287 =>
table_value := 1047712
;
when 20288 =>
table_value := 1047712
;
when 20289 =>
table_value := 1047728
;
when 20290 =>
table_value := 1047728
;
when 20291 =>
table_value := 1047744
;
when 20292 =>
table_value := 1047744
;
when 20293 =>
table_value := 1047760
;
when 20294 =>
table_value := 1047760
;
when 20295 =>
table_value := 1047792
;
when 20296 =>
table_value := 1047808
;
when 20297 =>
table_value := 1047824
;
when 20298 =>
table_value := 1047824
;
when 20299 =>
table_value := 1047840
;
when 20300 =>
table_value := 1047872
;
when 20301 =>
table_value := 1047872
;
when 20302 =>
table_value := 1047888
;
when 20303 =>
table_value := 1047904
;
when 20304 =>
table_value := 1047920
;
when 20305 =>
table_value := 1047936
;
when 20306 =>
table_value := 1047952
;
when 20307 =>
table_value := 1047968
;
when 20308 =>
table_value := 1047984
;
when 20309 =>
table_value := 1048016
;
when 20310 =>
table_value := 1048032
;
when 20311 =>
table_value := 1048048
;
when 20312 =>
table_value := 1048080
;
when 20313 =>
table_value := 1048096
;
when 20314 =>
table_value := 1048112
;
when 20315 =>
table_value := 1048128
;
when 20316 =>
table_value := 1048144
;
when 20317 =>
table_value := 1048160
;
when 20318 =>
table_value := 1048192
;
when 20319 =>
table_value := 1048208
;
when 20320 =>
table_value := 1048224
;
when 20321 =>
table_value := 1048240
;
when 20322 =>
table_value := 1048272
;
when 20323 =>
table_value := 1048288
;
when 20324 =>
table_value := 1048304
;
when 20325 =>
table_value := 1048336
;
when 20326 =>
table_value := 1048336
;
when 20327 =>
table_value := 1048368
;
when 20328 =>
table_value := 1048384
;
when 20329 =>
table_value := 1048400
;
when 20330 =>
table_value := 1048400
;
when 20331 =>
table_value := 1048432
;
when 20332 =>
table_value := 1048432
;
when 20333 =>
table_value := 1048448
;
when 20334 =>
table_value := 1048464
;
when 20335 =>
table_value := 1048480
;
when 20336 =>
table_value := 1048480
;
when 20337 =>
table_value := 1048512
;
when 20338 =>
table_value := 1048528
;
when 20339 =>
table_value := 1048544
;
when 20340 =>
table_value := 1048560
;
when 20341 =>
table_value := 1048560
;
when 20342 =>
table_value := 0
;
when 20343 =>
table_value := 0
;
when 20344 =>
table_value := 0
;
when 20345 =>
table_value := 0
;
when 20346 =>
table_value := 32
;
when 20347 =>
table_value := 32
;
when 20348 =>
table_value := 48
;
when 20349 =>
table_value := 64
;
when 20350 =>
table_value := 64
;
when 20351 =>
table_value := 80
;
when 20352 =>
table_value := 80
;
when 20353 =>
table_value := 80
;
when 20354 =>
table_value := 80
;
when 20355 =>
table_value := 80
;
when 20356 =>
table_value := 112
;
when 20357 =>
table_value := 96
;
when 20358 =>
table_value := 112
;
when 20359 =>
table_value := 112
;
when 20360 =>
table_value := 96
;
when 20361 =>
table_value := 112
;
when 20362 =>
table_value := 96
;
when 20363 =>
table_value := 96
;
when 20364 =>
table_value := 96
;
when 20365 =>
table_value := 80
;
when 20366 =>
table_value := 80
;
when 20367 =>
table_value := 64
;
when 20368 =>
table_value := 64
;
when 20369 =>
table_value := 64
;
when 20370 =>
table_value := 64
;
when 20371 =>
table_value := 64
;
when 20372 =>
table_value := 48
;
when 20373 =>
table_value := 48
;
when 20374 =>
table_value := 32
;
when 20375 =>
table_value := 32
;
when 20376 =>
table_value := 16
;
when 20377 =>
table_value := 0
;
when 20378 =>
table_value := 0
;
when 20379 =>
table_value := 0
;
when 20380 =>
table_value := 0
;
when 20381 =>
table_value := 1048560
;
when 20382 =>
table_value := 1048544
;
when 20383 =>
table_value := 1048528
;
when 20384 =>
table_value := 1048512
;
when 20385 =>
table_value := 1048512
;
when 20386 =>
table_value := 1048496
;
when 20387 =>
table_value := 1048480
;
when 20388 =>
table_value := 1048480
;
when 20389 =>
table_value := 1048448
;
when 20390 =>
table_value := 1048432
;
when 20391 =>
table_value := 1048416
;
when 20392 =>
table_value := 1048416
;
when 20393 =>
table_value := 1048400
;
when 20394 =>
table_value := 1048368
;
when 20395 =>
table_value := 1048368
;
when 20396 =>
table_value := 1048336
;
when 20397 =>
table_value := 1048320
;
when 20398 =>
table_value := 1048288
;
when 20399 =>
table_value := 1048288
;
when 20400 =>
table_value := 1048256
;
when 20401 =>
table_value := 1048240
;
when 20402 =>
table_value := 1048208
;
when 20403 =>
table_value := 1048192
;
when 20404 =>
table_value := 1048176
;
when 20405 =>
table_value := 1048144
;
when 20406 =>
table_value := 1048128
;
when 20407 =>
table_value := 1048096
;
when 20408 =>
table_value := 1048080
;
when 20409 =>
table_value := 1048048
;
when 20410 =>
table_value := 1048016
;
when 20411 =>
table_value := 1047984
;
when 20412 =>
table_value := 1047968
;
when 20413 =>
table_value := 1047952
;
when 20414 =>
table_value := 1047936
;
when 20415 =>
table_value := 1047904
;
when 20416 =>
table_value := 1047888
;
when 20417 =>
table_value := 1047856
;
when 20418 =>
table_value := 1047824
;
when 20419 =>
table_value := 1047808
;
when 20420 =>
table_value := 1047776
;
when 20421 =>
table_value := 1047760
;
when 20422 =>
table_value := 1047744
;
when 20423 =>
table_value := 1047712
;
when 20424 =>
table_value := 1047680
;
when 20425 =>
table_value := 1047664
;
when 20426 =>
table_value := 1047632
;
when 20427 =>
table_value := 1047616
;
when 20428 =>
table_value := 1047584
;
when 20429 =>
table_value := 1047568
;
when 20430 =>
table_value := 1047552
;
when 20431 =>
table_value := 1047520
;
when 20432 =>
table_value := 1047520
;
when 20433 =>
table_value := 1047504
;
when 20434 =>
table_value := 1047488
;
when 20435 =>
table_value := 1047472
;
when 20436 =>
table_value := 1047456
;
when 20437 =>
table_value := 1047424
;
when 20438 =>
table_value := 1047408
;
when 20439 =>
table_value := 1047392
;
when 20440 =>
table_value := 1047392
;
when 20441 =>
table_value := 1047392
;
when 20442 =>
table_value := 1047360
;
when 20443 =>
table_value := 1047344
;
when 20444 =>
table_value := 1047344
;
when 20445 =>
table_value := 1047344
;
when 20446 =>
table_value := 1047344
;
when 20447 =>
table_value := 1047344
;
when 20448 =>
table_value := 1047344
;
when 20449 =>
table_value := 1047344
;
when 20450 =>
table_value := 1047344
;
when 20451 =>
table_value := 1047344
;
when 20452 =>
table_value := 1047344
;
when 20453 =>
table_value := 1047344
;
when 20454 =>
table_value := 1047344
;
when 20455 =>
table_value := 1047344
;
when 20456 =>
table_value := 1047360
;
when 20457 =>
table_value := 1047360
;
when 20458 =>
table_value := 1047360
;
when 20459 =>
table_value := 1047376
;
when 20460 =>
table_value := 1047376
;
when 20461 =>
table_value := 1047376
;
when 20462 =>
table_value := 1047376
;
when 20463 =>
table_value := 1047392
;
when 20464 =>
table_value := 1047408
;
when 20465 =>
table_value := 1047424
;
when 20466 =>
table_value := 1047424
;
when 20467 =>
table_value := 1047424
;
when 20468 =>
table_value := 1047440
;
when 20469 =>
table_value := 1047440
;
when 20470 =>
table_value := 1047440
;
when 20471 =>
table_value := 1047456
;
when 20472 =>
table_value := 1047472
;
when 20473 =>
table_value := 1047472
;
when 20474 =>
table_value := 1047488
;
when 20475 =>
table_value := 1047488
;
when 20476 =>
table_value := 1047488
;
when 20477 =>
table_value := 1047504
;
when 20478 =>
table_value := 1047504
;
when 20479 =>
table_value := 1047504
;
when 20480 =>
table_value := 1047504
;
when 20481 =>
table_value := 1047520
;
when 20482 =>
table_value := 1047504
;
when 20483 =>
table_value := 1047520
;
when 20484 =>
table_value := 1047520
;
when 20485 =>
table_value := 1047552
;
when 20486 =>
table_value := 1047568
;
when 20487 =>
table_value := 1047552
;
when 20488 =>
table_value := 1047568
;
when 20489 =>
table_value := 1047568
;
when 20490 =>
table_value := 1047584
;
when 20491 =>
table_value := 1047568
;
when 20492 =>
table_value := 1047568
;
when 20493 =>
table_value := 1047584
;
when 20494 =>
table_value := 1047584
;
when 20495 =>
table_value := 1047584
;
when 20496 =>
table_value := 1047584
;
when 20497 =>
table_value := 1047600
;
when 20498 =>
table_value := 1047616
;
when 20499 =>
table_value := 1047600
;
when 20500 =>
table_value := 1047600
;
when 20501 =>
table_value := 1047600
;
when 20502 =>
table_value := 1047632
;
when 20503 =>
table_value := 1047632
;
when 20504 =>
table_value := 1047648
;
when 20505 =>
table_value := 1047648
;
when 20506 =>
table_value := 1047664
;
when 20507 =>
table_value := 1047648
;
when 20508 =>
table_value := 1047680
;
when 20509 =>
table_value := 1047680
;
when 20510 =>
table_value := 1047680
;
when 20511 =>
table_value := 1047696
;
when 20512 =>
table_value := 1047696
;
when 20513 =>
table_value := 1047712
;
when 20514 =>
table_value := 1047728
;
when 20515 =>
table_value := 1047744
;
when 20516 =>
table_value := 1047744
;
when 20517 =>
table_value := 1047760
;
when 20518 =>
table_value := 1047760
;
when 20519 =>
table_value := 1047776
;
when 20520 =>
table_value := 1047792
;
when 20521 =>
table_value := 1047808
;
when 20522 =>
table_value := 1047824
;
when 20523 =>
table_value := 1047824
;
when 20524 =>
table_value := 1047824
;
when 20525 =>
table_value := 1047840
;
when 20526 =>
table_value := 1047856
;
when 20527 =>
table_value := 1047872
;
when 20528 =>
table_value := 1047888
;
when 20529 =>
table_value := 1047888
;
when 20530 =>
table_value := 1047904
;
when 20531 =>
table_value := 1047920
;
when 20532 =>
table_value := 1047936
;
when 20533 =>
table_value := 1047952
;
when 20534 =>
table_value := 1047952
;
when 20535 =>
table_value := 1047968
;
when 20536 =>
table_value := 1047968
;
when 20537 =>
table_value := 1047968
;
when 20538 =>
table_value := 1047984
;
when 20539 =>
table_value := 1048000
;
when 20540 =>
table_value := 1048000
;
when 20541 =>
table_value := 1048016
;
when 20542 =>
table_value := 1048016
;
when 20543 =>
table_value := 1048016
;
when 20544 =>
table_value := 1048016
;
when 20545 =>
table_value := 1048032
;
when 20546 =>
table_value := 1048016
;
when 20547 =>
table_value := 1048016
;
when 20548 =>
table_value := 1048032
;
when 20549 =>
table_value := 1048016
;
when 20550 =>
table_value := 1048016
;
when 20551 =>
table_value := 1048000
;
when 20552 =>
table_value := 1047984
;
when 20553 =>
table_value := 1047984
;
when 20554 =>
table_value := 1047968
;
when 20555 =>
table_value := 1047968
;
when 20556 =>
table_value := 1047968
;
when 20557 =>
table_value := 1047952
;
when 20558 =>
table_value := 1047936
;
when 20559 =>
table_value := 1047904
;
when 20560 =>
table_value := 1047904
;
when 20561 =>
table_value := 1047904
;
when 20562 =>
table_value := 1047888
;
when 20563 =>
table_value := 1047872
;
when 20564 =>
table_value := 1047856
;
when 20565 =>
table_value := 1047840
;
when 20566 =>
table_value := 1047824
;
when 20567 =>
table_value := 1047824
;
when 20568 =>
table_value := 1047808
;
when 20569 =>
table_value := 1047776
;
when 20570 =>
table_value := 1047760
;
when 20571 =>
table_value := 1047760
;
when 20572 =>
table_value := 1047744
;
when 20573 =>
table_value := 1047728
;
when 20574 =>
table_value := 1047712
;
when 20575 =>
table_value := 1047712
;
when 20576 =>
table_value := 1047680
;
when 20577 =>
table_value := 1047664
;
when 20578 =>
table_value := 1047664
;
when 20579 =>
table_value := 1047664
;
when 20580 =>
table_value := 1047648
;
when 20581 =>
table_value := 1047648
;
when 20582 =>
table_value := 1047648
;
when 20583 =>
table_value := 1047632
;
when 20584 =>
table_value := 1047632
;
when 20585 =>
table_value := 1047632
;
when 20586 =>
table_value := 1047616
;
when 20587 =>
table_value := 1047616
;
when 20588 =>
table_value := 1047600
;
when 20589 =>
table_value := 1047600
;
when 20590 =>
table_value := 1047600
;
when 20591 =>
table_value := 1047600
;
when 20592 =>
table_value := 1047600
;
when 20593 =>
table_value := 1047600
;
when 20594 =>
table_value := 1047600
;
when 20595 =>
table_value := 1047616
;
when 20596 =>
table_value := 1047632
;
when 20597 =>
table_value := 1047632
;
when 20598 =>
table_value := 1047648
;
when 20599 =>
table_value := 1047664
;
when 20600 =>
table_value := 1047648
;
when 20601 =>
table_value := 1047680
;
when 20602 =>
table_value := 1047680
;
when 20603 =>
table_value := 1047696
;
when 20604 =>
table_value := 1047728
;
when 20605 =>
table_value := 1047744
;
when 20606 =>
table_value := 1047744
;
when 20607 =>
table_value := 1047776
;
when 20608 =>
table_value := 1047792
;
when 20609 =>
table_value := 1047808
;
when 20610 =>
table_value := 1047824
;
when 20611 =>
table_value := 1047840
;
when 20612 =>
table_value := 1047872
;
when 20613 =>
table_value := 1047888
;
when 20614 =>
table_value := 1047920
;
when 20615 =>
table_value := 1047952
;
when 20616 =>
table_value := 1047968
;
when 20617 =>
table_value := 1047984
;
when 20618 =>
table_value := 1048016
;
when 20619 =>
table_value := 1048048
;
when 20620 =>
table_value := 1048064
;
when 20621 =>
table_value := 1048096
;
when 20622 =>
table_value := 1048128
;
when 20623 =>
table_value := 1048144
;
when 20624 =>
table_value := 1048176
;
when 20625 =>
table_value := 1048208
;
when 20626 =>
table_value := 1048224
;
when 20627 =>
table_value := 1048256
;
when 20628 =>
table_value := 1048288
;
when 20629 =>
table_value := 1048320
;
when 20630 =>
table_value := 1048336
;
when 20631 =>
table_value := 1048352
;
when 20632 =>
table_value := 1048368
;
when 20633 =>
table_value := 1048400
;
when 20634 =>
table_value := 1048416
;
when 20635 =>
table_value := 1048448
;
when 20636 =>
table_value := 1048464
;
when 20637 =>
table_value := 1048480
;
when 20638 =>
table_value := 1048496
;
when 20639 =>
table_value := 1048512
;
when 20640 =>
table_value := 1048528
;
when 20641 =>
table_value := 1048528
;
when 20642 =>
table_value := 0
;
when 20643 =>
table_value := 0
;
when 20644 =>
table_value := 16
;
when 20645 =>
table_value := 16
;
when 20646 =>
table_value := 32
;
when 20647 =>
table_value := 48
;
when 20648 =>
table_value := 32
;
when 20649 =>
table_value := 64
;
when 20650 =>
table_value := 80
;
when 20651 =>
table_value := 80
;
when 20652 =>
table_value := 96
;
when 20653 =>
table_value := 96
;
when 20654 =>
table_value := 112
;
when 20655 =>
table_value := 128
;
when 20656 =>
table_value := 144
;
when 20657 =>
table_value := 144
;
when 20658 =>
table_value := 144
;
when 20659 =>
table_value := 144
;
when 20660 =>
table_value := 144
;
when 20661 =>
table_value := 160
;
when 20662 =>
table_value := 160
;
when 20663 =>
table_value := 160
;
when 20664 =>
table_value := 176
;
when 20665 =>
table_value := 160
;
when 20666 =>
table_value := 160
;
when 20667 =>
table_value := 176
;
when 20668 =>
table_value := 160
;
when 20669 =>
table_value := 176
;
when 20670 =>
table_value := 160
;
when 20671 =>
table_value := 176
;
when 20672 =>
table_value := 176
;
when 20673 =>
table_value := 176
;
when 20674 =>
table_value := 176
;
when 20675 =>
table_value := 176
;
when 20676 =>
table_value := 176
;
when 20677 =>
table_value := 176
;
when 20678 =>
table_value := 160
;
when 20679 =>
table_value := 176
;
when 20680 =>
table_value := 128
;
when 20681 =>
table_value := 128
;
when 20682 =>
table_value := 128
;
when 20683 =>
table_value := 128
;
when 20684 =>
table_value := 128
;
when 20685 =>
table_value := 144
;
when 20686 =>
table_value := 144
;
when 20687 =>
table_value := 144
;
when 20688 =>
table_value := 128
;
when 20689 =>
table_value := 128
;
when 20690 =>
table_value := 128
;
when 20691 =>
table_value := 112
;
when 20692 =>
table_value := 96
;
when 20693 =>
table_value := 96
;
when 20694 =>
table_value := 112
;
when 20695 =>
table_value := 112
;
when 20696 =>
table_value := 112
;
when 20697 =>
table_value := 112
;
when 20698 =>
table_value := 96
;
when 20699 =>
table_value := 112
;
when 20700 =>
table_value := 112
;
when 20701 =>
table_value := 112
;
when 20702 =>
table_value := 112
;
when 20703 =>
table_value := 112
;
when 20704 =>
table_value := 112
;
when 20705 =>
table_value := 96
;
when 20706 =>
table_value := 112
;
when 20707 =>
table_value := 112
;
when 20708 =>
table_value := 112
;
when 20709 =>
table_value := 112
;
when 20710 =>
table_value := 128
;
when 20711 =>
table_value := 128
;
when 20712 =>
table_value := 128
;
when 20713 =>
table_value := 128
;
when 20714 =>
table_value := 128
;
when 20715 =>
table_value := 128
;
when 20716 =>
table_value := 144
;
when 20717 =>
table_value := 144
;
when 20718 =>
table_value := 144
;
when 20719 =>
table_value := 144
;
when 20720 =>
table_value := 144
;
when 20721 =>
table_value := 144
;
when 20722 =>
table_value := 160
;
when 20723 =>
table_value := 160
;
when 20724 =>
table_value := 160
;
when 20725 =>
table_value := 160
;
when 20726 =>
table_value := 160
;
when 20727 =>
table_value := 160
;
when 20728 =>
table_value := 160
;
when 20729 =>
table_value := 160
;
when 20730 =>
table_value := 160
;
when 20731 =>
table_value := 160
;
when 20732 =>
table_value := 160
;
when 20733 =>
table_value := 160
;
when 20734 =>
table_value := 176
;
when 20735 =>
table_value := 176
;
when 20736 =>
table_value := 176
;
when 20737 =>
table_value := 192
;
when 20738 =>
table_value := 176
;
when 20739 =>
table_value := 192
;
when 20740 =>
table_value := 192
;
when 20741 =>
table_value := 192
;
when 20742 =>
table_value := 192
;
when 20743 =>
table_value := 208
;
when 20744 =>
table_value := 208
;
when 20745 =>
table_value := 208
;
when 20746 =>
table_value := 224
;
when 20747 =>
table_value := 224
;
when 20748 =>
table_value := 224
;
when 20749 =>
table_value := 224
;
when 20750 =>
table_value := 224
;
when 20751 =>
table_value := 224
;
when 20752 =>
table_value := 224
;
when 20753 =>
table_value := 224
;
when 20754 =>
table_value := 240
;
when 20755 =>
table_value := 224
;
when 20756 =>
table_value := 256
;
when 20757 =>
table_value := 256
;
when 20758 =>
table_value := 272
;
when 20759 =>
table_value := 272
;
when 20760 =>
table_value := 288
;
when 20761 =>
table_value := 304
;
when 20762 =>
table_value := 304
;
when 20763 =>
table_value := 320
;
when 20764 =>
table_value := 336
;
when 20765 =>
table_value := 352
;
when 20766 =>
table_value := 352
;
when 20767 =>
table_value := 384
;
when 20768 =>
table_value := 400
;
when 20769 =>
table_value := 416
;
when 20770 =>
table_value := 432
;
when 20771 =>
table_value := 448
;
when 20772 =>
table_value := 464
;
when 20773 =>
table_value := 480
;
when 20774 =>
table_value := 496
;
when 20775 =>
table_value := 528
;
when 20776 =>
table_value := 560
;
when 20777 =>
table_value := 592
;
when 20778 =>
table_value := 608
;
when 20779 =>
table_value := 640
;
when 20780 =>
table_value := 656
;
when 20781 =>
table_value := 672
;
when 20782 =>
table_value := 704
;
when 20783 =>
table_value := 736
;
when 20784 =>
table_value := 768
;
when 20785 =>
table_value := 784
;
when 20786 =>
table_value := 816
;
when 20787 =>
table_value := 832
;
when 20788 =>
table_value := 864
;
when 20789 =>
table_value := 896
;
when 20790 =>
table_value := 912
;
when 20791 =>
table_value := 944
;
when 20792 =>
table_value := 976
;
when 20793 =>
table_value := 992
;
when 20794 =>
table_value := 1024
;
when 20795 =>
table_value := 1040
;
when 20796 =>
table_value := 1072
;
when 20797 =>
table_value := 1088
;
when 20798 =>
table_value := 1104
;
when 20799 =>
table_value := 1152
;
when 20800 =>
table_value := 1152
;
when 20801 =>
table_value := 1168
;
when 20802 =>
table_value := 1200
;
when 20803 =>
table_value := 1216
;
when 20804 =>
table_value := 1232
;
when 20805 =>
table_value := 1248
;
when 20806 =>
table_value := 1264
;
when 20807 =>
table_value := 1296
;
when 20808 =>
table_value := 1296
;
when 20809 =>
table_value := 1312
;
when 20810 =>
table_value := 1328
;
when 20811 =>
table_value := 1344
;
when 20812 =>
table_value := 1360
;
when 20813 =>
table_value := 1360
;
when 20814 =>
table_value := 1376
;
when 20815 =>
table_value := 1376
;
when 20816 =>
table_value := 1376
;
when 20817 =>
table_value := 1376
;
when 20818 =>
table_value := 1376
;
when 20819 =>
table_value := 1376
;
when 20820 =>
table_value := 1376
;
when 20821 =>
table_value := 1376
;
when 20822 =>
table_value := 1360
;
when 20823 =>
table_value := 1376
;
when 20824 =>
table_value := 1360
;
when 20825 =>
table_value := 1328
;
when 20826 =>
table_value := 1328
;
when 20827 =>
table_value := 1328
;
when 20828 =>
table_value := 1312
;
when 20829 =>
table_value := 1296
;
when 20830 =>
table_value := 1280
;
when 20831 =>
table_value := 1264
;
when 20832 =>
table_value := 1264
;
when 20833 =>
table_value := 1232
;
when 20834 =>
table_value := 1232
;
when 20835 =>
table_value := 1216
;
when 20836 =>
table_value := 1184
;
when 20837 =>
table_value := 1168
;
when 20838 =>
table_value := 1152
;
when 20839 =>
table_value := 1104
;
when 20840 =>
table_value := 1088
;
when 20841 =>
table_value := 1072
;
when 20842 =>
table_value := 1040
;
when 20843 =>
table_value := 1008
;
when 20844 =>
table_value := 976
;
when 20845 =>
table_value := 976
;
when 20846 =>
table_value := 928
;
when 20847 =>
table_value := 912
;
when 20848 =>
table_value := 880
;
when 20849 =>
table_value := 848
;
when 20850 =>
table_value := 816
;
when 20851 =>
table_value := 784
;
when 20852 =>
table_value := 768
;
when 20853 =>
table_value := 736
;
when 20854 =>
table_value := 720
;
when 20855 =>
table_value := 688
;
when 20856 =>
table_value := 656
;
when 20857 =>
table_value := 624
;
when 20858 =>
table_value := 592
;
when 20859 =>
table_value := 576
;
when 20860 =>
table_value := 544
;
when 20861 =>
table_value := 528
;
when 20862 =>
table_value := 512
;
when 20863 =>
table_value := 464
;
when 20864 =>
table_value := 448
;
when 20865 =>
table_value := 432
;
when 20866 =>
table_value := 400
;
when 20867 =>
table_value := 384
;
when 20868 =>
table_value := 368
;
when 20869 =>
table_value := 336
;
when 20870 =>
table_value := 320
;
when 20871 =>
table_value := 304
;
when 20872 =>
table_value := 288
;
when 20873 =>
table_value := 272
;
when 20874 =>
table_value := 256
;
when 20875 =>
table_value := 240
;
when 20876 =>
table_value := 224
;
when 20877 =>
table_value := 224
;
when 20878 =>
table_value := 176
;
when 20879 =>
table_value := 176
;
when 20880 =>
table_value := 160
;
when 20881 =>
table_value := 144
;
when 20882 =>
table_value := 128
;
when 20883 =>
table_value := 112
;
when 20884 =>
table_value := 112
;
when 20885 =>
table_value := 96
;
when 20886 =>
table_value := 96
;
when 20887 =>
table_value := 80
;
when 20888 =>
table_value := 80
;
when 20889 =>
table_value := 64
;
when 20890 =>
table_value := 64
;
when 20891 =>
table_value := 64
;
when 20892 =>
table_value := 64
;
when 20893 =>
table_value := 64
;
when 20894 =>
table_value := 64
;
when 20895 =>
table_value := 64
;
when 20896 =>
table_value := 48
;
when 20897 =>
table_value := 64
;
when 20898 =>
table_value := 64
;
when 20899 =>
table_value := 64
;
when 20900 =>
table_value := 64
;
when 20901 =>
table_value := 64
;
when 20902 =>
table_value := 64
;
when 20903 =>
table_value := 64
;
when 20904 =>
table_value := 80
;
when 20905 =>
table_value := 80
;
when 20906 =>
table_value := 96
;
when 20907 =>
table_value := 96
;
when 20908 =>
table_value := 96
;
when 20909 =>
table_value := 112
;
when 20910 =>
table_value := 112
;
when 20911 =>
table_value := 128
;
when 20912 =>
table_value := 128
;
when 20913 =>
table_value := 128
;
when 20914 =>
table_value := 144
;
when 20915 =>
table_value := 144
;
when 20916 =>
table_value := 160
;
when 20917 =>
table_value := 160
;
when 20918 =>
table_value := 176
;
when 20919 =>
table_value := 176
;
when 20920 =>
table_value := 208
;
when 20921 =>
table_value := 208
;
when 20922 =>
table_value := 224
;
when 20923 =>
table_value := 224
;
when 20924 =>
table_value := 224
;
when 20925 =>
table_value := 240
;
when 20926 =>
table_value := 256
;
when 20927 =>
table_value := 272
;
when 20928 =>
table_value := 288
;
when 20929 =>
table_value := 304
;
when 20930 =>
table_value := 304
;
when 20931 =>
table_value := 336
;
when 20932 =>
table_value := 336
;
when 20933 =>
table_value := 352
;
when 20934 =>
table_value := 368
;
when 20935 =>
table_value := 384
;
when 20936 =>
table_value := 400
;
when 20937 =>
table_value := 416
;
when 20938 =>
table_value := 432
;
when 20939 =>
table_value := 448
;
when 20940 =>
table_value := 464
;
when 20941 =>
table_value := 480
;
when 20942 =>
table_value := 512
;
when 20943 =>
table_value := 528
;
when 20944 =>
table_value := 528
;
when 20945 =>
table_value := 560
;
when 20946 =>
table_value := 576
;
when 20947 =>
table_value := 608
;
when 20948 =>
table_value := 608
;
when 20949 =>
table_value := 624
;
when 20950 =>
table_value := 640
;
when 20951 =>
table_value := 656
;
when 20952 =>
table_value := 688
;
when 20953 =>
table_value := 704
;
when 20954 =>
table_value := 736
;
when 20955 =>
table_value := 752
;
when 20956 =>
table_value := 768
;
when 20957 =>
table_value := 784
;
when 20958 =>
table_value := 800
;
when 20959 =>
table_value := 816
;
when 20960 =>
table_value := 848
;
when 20961 =>
table_value := 864
;
when 20962 =>
table_value := 880
;
when 20963 =>
table_value := 896
;
when 20964 =>
table_value := 912
;
when 20965 =>
table_value := 912
;
when 20966 =>
table_value := 944
;
when 20967 =>
table_value := 960
;
when 20968 =>
table_value := 976
;
when 20969 =>
table_value := 976
;
when 20970 =>
table_value := 992
;
when 20971 =>
table_value := 1008
;
when 20972 =>
table_value := 1024
;
when 20973 =>
table_value := 1040
;
when 20974 =>
table_value := 1056
;
when 20975 =>
table_value := 1072
;
when 20976 =>
table_value := 1072
;
when 20977 =>
table_value := 1088
;
when 20978 =>
table_value := 1104
;
when 20979 =>
table_value := 1104
;
when 20980 =>
table_value := 1104
;
when 20981 =>
table_value := 1120
;
when 20982 =>
table_value := 1136
;
when 20983 =>
table_value := 1136
;
when 20984 =>
table_value := 1136
;
when 20985 =>
table_value := 1136
;
when 20986 =>
table_value := 1152
;
when 20987 =>
table_value := 1152
;
when 20988 =>
table_value := 1152
;
when 20989 =>
table_value := 1152
;
when 20990 =>
table_value := 1152
;
when 20991 =>
table_value := 1152
;
when 20992 =>
table_value := 1152
;
when 20993 =>
table_value := 1152
;
when 20994 =>
table_value := 1152
;
when 20995 =>
table_value := 1168
;
when 20996 =>
table_value := 1168
;
when 20997 =>
table_value := 1152
;
when 20998 =>
table_value := 1152
;
when 20999 =>
table_value := 1152
;
when 21000 =>
table_value := 1152
;
when 21001 =>
table_value := 1152
;
when 21002 =>
table_value := 1152
;
when 21003 =>
table_value := 1152
;
when 21004 =>
table_value := 1152
;
when 21005 =>
table_value := 1136
;
when 21006 =>
table_value := 1136
;
when 21007 =>
table_value := 1136
;
when 21008 =>
table_value := 1120
;
when 21009 =>
table_value := 1104
;
when 21010 =>
table_value := 1104
;
when 21011 =>
table_value := 1104
;
when 21012 =>
table_value := 1088
;
when 21013 =>
table_value := 1072
;
when 21014 =>
table_value := 1056
;
when 21015 =>
table_value := 1056
;
when 21016 =>
table_value := 1040
;
when 21017 =>
table_value := 1040
;
when 21018 =>
table_value := 1008
;
when 21019 =>
table_value := 1008
;
when 21020 =>
table_value := 992
;
when 21021 =>
table_value := 976
;
when 21022 =>
table_value := 960
;
when 21023 =>
table_value := 944
;
when 21024 =>
table_value := 928
;
when 21025 =>
table_value := 896
;
when 21026 =>
table_value := 896
;
when 21027 =>
table_value := 864
;
when 21028 =>
table_value := 848
;
when 21029 =>
table_value := 832
;
when 21030 =>
table_value := 816
;
when 21031 =>
table_value := 784
;
when 21032 =>
table_value := 752
;
when 21033 =>
table_value := 720
;
when 21034 =>
table_value := 704
;
when 21035 =>
table_value := 672
;
when 21036 =>
table_value := 640
;
when 21037 =>
table_value := 608
;
when 21038 =>
table_value := 592
;
when 21039 =>
table_value := 560
;
when 21040 =>
table_value := 512
;
when 21041 =>
table_value := 496
;
when 21042 =>
table_value := 448
;
when 21043 =>
table_value := 400
;
when 21044 =>
table_value := 368
;
when 21045 =>
table_value := 336
;
when 21046 =>
table_value := 304
;
when 21047 =>
table_value := 272
;
when 21048 =>
table_value := 224
;
when 21049 =>
table_value := 192
;
when 21050 =>
table_value := 144
;
when 21051 =>
table_value := 128
;
when 21052 =>
table_value := 80
;
when 21053 =>
table_value := 32
;
when 21054 =>
table_value := 0
;
when 21055 =>
table_value := 1048560
;
when 21056 =>
table_value := 1048512
;
when 21057 =>
table_value := 1048496
;
when 21058 =>
table_value := 1048432
;
when 21059 =>
table_value := 1048416
;
when 21060 =>
table_value := 1048352
;
when 21061 =>
table_value := 1048336
;
when 21062 =>
table_value := 1048288
;
when 21063 =>
table_value := 1048256
;
when 21064 =>
table_value := 1048208
;
when 21065 =>
table_value := 1048160
;
when 21066 =>
table_value := 1048160
;
when 21067 =>
table_value := 1048112
;
when 21068 =>
table_value := 1048064
;
when 21069 =>
table_value := 1048032
;
when 21070 =>
table_value := 1048000
;
when 21071 =>
table_value := 1047968
;
when 21072 =>
table_value := 1047936
;
when 21073 =>
table_value := 1047904
;
when 21074 =>
table_value := 1047888
;
when 21075 =>
table_value := 1047840
;
when 21076 =>
table_value := 1047824
;
when 21077 =>
table_value := 1047792
;
when 21078 =>
table_value := 1047776
;
when 21079 =>
table_value := 1047744
;
when 21080 =>
table_value := 1047712
;
when 21081 =>
table_value := 1047680
;
when 21082 =>
table_value := 1047664
;
when 21083 =>
table_value := 1047664
;
when 21084 =>
table_value := 1047632
;
when 21085 =>
table_value := 1047632
;
when 21086 =>
table_value := 1047600
;
when 21087 =>
table_value := 1047584
;
when 21088 =>
table_value := 1047584
;
when 21089 =>
table_value := 1047568
;
when 21090 =>
table_value := 1047552
;
when 21091 =>
table_value := 1047536
;
when 21092 =>
table_value := 1047520
;
when 21093 =>
table_value := 1047520
;
when 21094 =>
table_value := 1047504
;
when 21095 =>
table_value := 1047504
;
when 21096 =>
table_value := 1047488
;
when 21097 =>
table_value := 1047488
;
when 21098 =>
table_value := 1047488
;
when 21099 =>
table_value := 1047488
;
when 21100 =>
table_value := 1047488
;
when 21101 =>
table_value := 1047488
;
when 21102 =>
table_value := 1047504
;
when 21103 =>
table_value := 1047488
;
when 21104 =>
table_value := 1047488
;
when 21105 =>
table_value := 1047504
;
when 21106 =>
table_value := 1047504
;
when 21107 =>
table_value := 1047504
;
when 21108 =>
table_value := 1047488
;
when 21109 =>
table_value := 1047504
;
when 21110 =>
table_value := 1047520
;
when 21111 =>
table_value := 1047536
;
when 21112 =>
table_value := 1047552
;
when 21113 =>
table_value := 1047552
;
when 21114 =>
table_value := 1047568
;
when 21115 =>
table_value := 1047584
;
when 21116 =>
table_value := 1047584
;
when 21117 =>
table_value := 1047616
;
when 21118 =>
table_value := 1047616
;
when 21119 =>
table_value := 1047648
;
when 21120 =>
table_value := 1047664
;
when 21121 =>
table_value := 1047664
;
when 21122 =>
table_value := 1047680
;
when 21123 =>
table_value := 1047712
;
when 21124 =>
table_value := 1047744
;
when 21125 =>
table_value := 1047744
;
when 21126 =>
table_value := 1047776
;
when 21127 =>
table_value := 1047792
;
when 21128 =>
table_value := 1047808
;
when 21129 =>
table_value := 1047840
;
when 21130 =>
table_value := 1047872
;
when 21131 =>
table_value := 1047888
;
when 21132 =>
table_value := 1047920
;
when 21133 =>
table_value := 1047936
;
when 21134 =>
table_value := 1047968
;
when 21135 =>
table_value := 1047984
;
when 21136 =>
table_value := 1048016
;
when 21137 =>
table_value := 1048032
;
when 21138 =>
table_value := 1048080
;
when 21139 =>
table_value := 1048112
;
when 21140 =>
table_value := 1048128
;
when 21141 =>
table_value := 1048144
;
when 21142 =>
table_value := 1048192
;
when 21143 =>
table_value := 1048208
;
when 21144 =>
table_value := 1048240
;
when 21145 =>
table_value := 1048256
;
when 21146 =>
table_value := 1048288
;
when 21147 =>
table_value := 1048320
;
when 21148 =>
table_value := 1048352
;
when 21149 =>
table_value := 1048368
;
when 21150 =>
table_value := 1048400
;
when 21151 =>
table_value := 1048432
;
when 21152 =>
table_value := 1048464
;
when 21153 =>
table_value := 1048480
;
when 21154 =>
table_value := 1048512
;
when 21155 =>
table_value := 1048528
;
when 21156 =>
table_value := 1048560
;
when 21157 =>
table_value := 0
;
when 21158 =>
table_value := 0
;
when 21159 =>
table_value := 32
;
when 21160 =>
table_value := 48
;
when 21161 =>
table_value := 64
;
when 21162 =>
table_value := 96
;
when 21163 =>
table_value := 128
;
when 21164 =>
table_value := 128
;
when 21165 =>
table_value := 144
;
when 21166 =>
table_value := 160
;
when 21167 =>
table_value := 208
;
when 21168 =>
table_value := 208
;
when 21169 =>
table_value := 224
;
when 21170 =>
table_value := 224
;
when 21171 =>
table_value := 272
;
when 21172 =>
table_value := 288
;
when 21173 =>
table_value := 304
;
when 21174 =>
table_value := 320
;
when 21175 =>
table_value := 320
;
when 21176 =>
table_value := 320
;
when 21177 =>
table_value := 352
;
when 21178 =>
table_value := 352
;
when 21179 =>
table_value := 368
;
when 21180 =>
table_value := 384
;
when 21181 =>
table_value := 384
;
when 21182 =>
table_value := 400
;
when 21183 =>
table_value := 400
;
when 21184 =>
table_value := 416
;
when 21185 =>
table_value := 432
;
when 21186 =>
table_value := 448
;
when 21187 =>
table_value := 448
;
when 21188 =>
table_value := 448
;
when 21189 =>
table_value := 448
;
when 21190 =>
table_value := 464
;
when 21191 =>
table_value := 464
;
when 21192 =>
table_value := 464
;
when 21193 =>
table_value := 464
;
when 21194 =>
table_value := 464
;
when 21195 =>
table_value := 464
;
when 21196 =>
table_value := 448
;
when 21197 =>
table_value := 464
;
when 21198 =>
table_value := 464
;
when 21199 =>
table_value := 464
;
when 21200 =>
table_value := 464
;
when 21201 =>
table_value := 448
;
when 21202 =>
table_value := 464
;
when 21203 =>
table_value := 432
;
when 21204 =>
table_value := 432
;
when 21205 =>
table_value := 400
;
when 21206 =>
table_value := 400
;
when 21207 =>
table_value := 400
;
when 21208 =>
table_value := 384
;
when 21209 =>
table_value := 384
;
when 21210 =>
table_value := 352
;
when 21211 =>
table_value := 336
;
when 21212 =>
table_value := 304
;
when 21213 =>
table_value := 304
;
when 21214 =>
table_value := 288
;
when 21215 =>
table_value := 240
;
when 21216 =>
table_value := 224
;
when 21217 =>
table_value := 192
;
when 21218 =>
table_value := 160
;
when 21219 =>
table_value := 144
;
when 21220 =>
table_value := 128
;
when 21221 =>
table_value := 80
;
when 21222 =>
table_value := 64
;
when 21223 =>
table_value := 16
;
when 21224 =>
table_value := 0
;
when 21225 =>
table_value := 1048560
;
when 21226 =>
table_value := 1048512
;
when 21227 =>
table_value := 1048464
;
when 21228 =>
table_value := 1048448
;
when 21229 =>
table_value := 1048400
;
when 21230 =>
table_value := 1048368
;
when 21231 =>
table_value := 1048352
;
when 21232 =>
table_value := 1048304
;
when 21233 =>
table_value := 1048272
;
when 21234 =>
table_value := 1048224
;
when 21235 =>
table_value := 1048192
;
when 21236 =>
table_value := 1048144
;
when 21237 =>
table_value := 1048112
;
when 21238 =>
table_value := 1048080
;
when 21239 =>
table_value := 1048048
;
when 21240 =>
table_value := 1048016
;
when 21241 =>
table_value := 1047968
;
when 21242 =>
table_value := 1047936
;
when 21243 =>
table_value := 1047904
;
when 21244 =>
table_value := 1047872
;
when 21245 =>
table_value := 1047840
;
when 21246 =>
table_value := 1047808
;
when 21247 =>
table_value := 1047776
;
when 21248 =>
table_value := 1047728
;
when 21249 =>
table_value := 1047712
;
when 21250 =>
table_value := 1047680
;
when 21251 =>
table_value := 1047664
;
when 21252 =>
table_value := 1047632
;
when 21253 =>
table_value := 1047600
;
when 21254 =>
table_value := 1047584
;
when 21255 =>
table_value := 1047568
;
when 21256 =>
table_value := 1047552
;
when 21257 =>
table_value := 1047520
;
when 21258 =>
table_value := 1047504
;
when 21259 =>
table_value := 1047488
;
when 21260 =>
table_value := 1047472
;
when 21261 =>
table_value := 1047456
;
when 21262 =>
table_value := 1047424
;
when 21263 =>
table_value := 1047424
;
when 21264 =>
table_value := 1047408
;
when 21265 =>
table_value := 1047408
;
when 21266 =>
table_value := 1047408
;
when 21267 =>
table_value := 1047392
;
when 21268 =>
table_value := 1047392
;
when 21269 =>
table_value := 1047392
;
when 21270 =>
table_value := 1047376
;
when 21271 =>
table_value := 1047376
;
when 21272 =>
table_value := 1047360
;
when 21273 =>
table_value := 1047376
;
when 21274 =>
table_value := 1047360
;
when 21275 =>
table_value := 1047376
;
when 21276 =>
table_value := 1047376
;
when 21277 =>
table_value := 1047376
;
when 21278 =>
table_value := 1047376
;
when 21279 =>
table_value := 1047376
;
when 21280 =>
table_value := 1047376
;
when 21281 =>
table_value := 1047392
;
when 21282 =>
table_value := 1047392
;
when 21283 =>
table_value := 1047408
;
when 21284 =>
table_value := 1047424
;
when 21285 =>
table_value := 1047424
;
when 21286 =>
table_value := 1047408
;
when 21287 =>
table_value := 1047424
;
when 21288 =>
table_value := 1047424
;
when 21289 =>
table_value := 1047424
;
when 21290 =>
table_value := 1047424
;
when 21291 =>
table_value := 1047440
;
when 21292 =>
table_value := 1047440
;
when 21293 =>
table_value := 1047472
;
when 21294 =>
table_value := 1047472
;
when 21295 =>
table_value := 1047472
;
when 21296 =>
table_value := 1047456
;
when 21297 =>
table_value := 1047472
;
when 21298 =>
table_value := 1047472
;
when 21299 =>
table_value := 1047488
;
when 21300 =>
table_value := 1047488
;
when 21301 =>
table_value := 1047472
;
when 21302 =>
table_value := 1047488
;
when 21303 =>
table_value := 1047488
;
when 21304 =>
table_value := 1047504
;
when 21305 =>
table_value := 1047504
;
when 21306 =>
table_value := 1047504
;
when 21307 =>
table_value := 1047520
;
when 21308 =>
table_value := 1047520
;
when 21309 =>
table_value := 1047520
;
when 21310 =>
table_value := 1047520
;
when 21311 =>
table_value := 1047520
;
when 21312 =>
table_value := 1047536
;
when 21313 =>
table_value := 1047552
;
when 21314 =>
table_value := 1047536
;
when 21315 =>
table_value := 1047552
;
when 21316 =>
table_value := 1047568
;
when 21317 =>
table_value := 1047568
;
when 21318 =>
table_value := 1047568
;
when 21319 =>
table_value := 1047568
;
when 21320 =>
table_value := 1047568
;
when 21321 =>
table_value := 1047584
;
when 21322 =>
table_value := 1047584
;
when 21323 =>
table_value := 1047600
;
when 21324 =>
table_value := 1047632
;
when 21325 =>
table_value := 1047616
;
when 21326 =>
table_value := 1047648
;
when 21327 =>
table_value := 1047648
;
when 21328 =>
table_value := 1047648
;
when 21329 =>
table_value := 1047664
;
when 21330 =>
table_value := 1047680
;
when 21331 =>
table_value := 1047680
;
when 21332 =>
table_value := 1047696
;
when 21333 =>
table_value := 1047712
;
when 21334 =>
table_value := 1047728
;
when 21335 =>
table_value := 1047744
;
when 21336 =>
table_value := 1047744
;
when 21337 =>
table_value := 1047760
;
when 21338 =>
table_value := 1047776
;
when 21339 =>
table_value := 1047792
;
when 21340 =>
table_value := 1047808
;
when 21341 =>
table_value := 1047824
;
when 21342 =>
table_value := 1047824
;
when 21343 =>
table_value := 1047856
;
when 21344 =>
table_value := 1047872
;
when 21345 =>
table_value := 1047888
;
when 21346 =>
table_value := 1047904
;
when 21347 =>
table_value := 1047920
;
when 21348 =>
table_value := 1047952
;
when 21349 =>
table_value := 1047968
;
when 21350 =>
table_value := 1047984
;
when 21351 =>
table_value := 1048000
;
when 21352 =>
table_value := 1048016
;
when 21353 =>
table_value := 1048032
;
when 21354 =>
table_value := 1048048
;
when 21355 =>
table_value := 1048064
;
when 21356 =>
table_value := 1048080
;
when 21357 =>
table_value := 1048096
;
when 21358 =>
table_value := 1048112
;
when 21359 =>
table_value := 1048128
;
when 21360 =>
table_value := 1048128
;
when 21361 =>
table_value := 1048144
;
when 21362 =>
table_value := 1048160
;
when 21363 =>
table_value := 1048176
;
when 21364 =>
table_value := 1048192
;
when 21365 =>
table_value := 1048192
;
when 21366 =>
table_value := 1048192
;
when 21367 =>
table_value := 1048224
;
when 21368 =>
table_value := 1048224
;
when 21369 =>
table_value := 1048256
;
when 21370 =>
table_value := 1048272
;
when 21371 =>
table_value := 1048272
;
when 21372 =>
table_value := 1048272
;
when 21373 =>
table_value := 1048288
;
when 21374 =>
table_value := 1048288
;
when 21375 =>
table_value := 1048288
;
when 21376 =>
table_value := 1048304
;
when 21377 =>
table_value := 1048336
;
when 21378 =>
table_value := 1048320
;
when 21379 =>
table_value := 1048336
;
when 21380 =>
table_value := 1048336
;
when 21381 =>
table_value := 1048352
;
when 21382 =>
table_value := 1048352
;
when 21383 =>
table_value := 1048368
;
when 21384 =>
table_value := 1048384
;
when 21385 =>
table_value := 1048384
;
when 21386 =>
table_value := 1048400
;
when 21387 =>
table_value := 1048400
;
when 21388 =>
table_value := 1048400
;
when 21389 =>
table_value := 1048416
;
when 21390 =>
table_value := 1048416
;
when 21391 =>
table_value := 1048416
;
when 21392 =>
table_value := 1048432
;
when 21393 =>
table_value := 1048432
;
when 21394 =>
table_value := 1048464
;
when 21395 =>
table_value := 1048448
;
when 21396 =>
table_value := 1048480
;
when 21397 =>
table_value := 1048480
;
when 21398 =>
table_value := 1048496
;
when 21399 =>
table_value := 1048512
;
when 21400 =>
table_value := 1048512
;
when 21401 =>
table_value := 1048512
;
when 21402 =>
table_value := 1048528
;
when 21403 =>
table_value := 1048528
;
when 21404 =>
table_value := 1048544
;
when 21405 =>
table_value := 1048560
;
when 21406 =>
table_value := 1048560
;
when 21407 =>
table_value := 0
;
when 21408 =>
table_value := 0
;
when 21409 =>
table_value := 0
;
when 21410 =>
table_value := 0
;
when 21411 =>
table_value := 32
;
when 21412 =>
table_value := 48
;
when 21413 =>
table_value := 48
;
when 21414 =>
table_value := 64
;
when 21415 =>
table_value := 64
;
when 21416 =>
table_value := 64
;
when 21417 =>
table_value := 80
;
when 21418 =>
table_value := 80
;
when 21419 =>
table_value := 96
;
when 21420 =>
table_value := 128
;
when 21421 =>
table_value := 112
;
when 21422 =>
table_value := 128
;
when 21423 =>
table_value := 128
;
when 21424 =>
table_value := 144
;
when 21425 =>
table_value := 144
;
when 21426 =>
table_value := 160
;
when 21427 =>
table_value := 160
;
when 21428 =>
table_value := 160
;
when 21429 =>
table_value := 176
;
when 21430 =>
table_value := 176
;
when 21431 =>
table_value := 176
;
when 21432 =>
table_value := 176
;
when 21433 =>
table_value := 176
;
when 21434 =>
table_value := 208
;
when 21435 =>
table_value := 192
;
when 21436 =>
table_value := 192
;
when 21437 =>
table_value := 192
;
when 21438 =>
table_value := 192
;
when 21439 =>
table_value := 208
;
when 21440 =>
table_value := 192
;
when 21441 =>
table_value := 208
;
when 21442 =>
table_value := 224
;
when 21443 =>
table_value := 208
;
when 21444 =>
table_value := 192
;
when 21445 =>
table_value := 208
;
when 21446 =>
table_value := 208
;
when 21447 =>
table_value := 208
;
when 21448 =>
table_value := 208
;
when 21449 =>
table_value := 208
;
when 21450 =>
table_value := 208
;
when 21451 =>
table_value := 208
;
when 21452 =>
table_value := 208
;
when 21453 =>
table_value := 208
;
when 21454 =>
table_value := 208
;
when 21455 =>
table_value := 208
;
when 21456 =>
table_value := 208
;
when 21457 =>
table_value := 208
;
when 21458 =>
table_value := 208
;
when 21459 =>
table_value := 208
;
when 21460 =>
table_value := 208
;
when 21461 =>
table_value := 208
;
when 21462 =>
table_value := 208
;
when 21463 =>
table_value := 208
;
when 21464 =>
table_value := 192
;
when 21465 =>
table_value := 208
;
when 21466 =>
table_value := 208
;
when 21467 =>
table_value := 208
;
when 21468 =>
table_value := 208
;
when 21469 =>
table_value := 192
;
when 21470 =>
table_value := 208
;
when 21471 =>
table_value := 192
;
when 21472 =>
table_value := 208
;
when 21473 =>
table_value := 208
;
when 21474 =>
table_value := 208
;
when 21475 =>
table_value := 224
;
when 21476 =>
table_value := 224
;
when 21477 =>
table_value := 208
;
when 21478 =>
table_value := 224
;
when 21479 =>
table_value := 208
;
when 21480 =>
table_value := 208
;
when 21481 =>
table_value := 224
;
when 21482 =>
table_value := 208
;
when 21483 =>
table_value := 208
;
when 21484 =>
table_value := 224
;
when 21485 =>
table_value := 208
;
when 21486 =>
table_value := 208
;
when 21487 =>
table_value := 208
;
when 21488 =>
table_value := 192
;
when 21489 =>
table_value := 208
;
when 21490 =>
table_value := 176
;
when 21491 =>
table_value := 176
;
when 21492 =>
table_value := 176
;
when 21493 =>
table_value := 176
;
when 21494 =>
table_value := 160
;
when 21495 =>
table_value := 160
;
when 21496 =>
table_value := 160
;
when 21497 =>
table_value := 144
;
when 21498 =>
table_value := 144
;
when 21499 =>
table_value := 144
;
when 21500 =>
table_value := 128
;
when 21501 =>
table_value := 128
;
when 21502 =>
table_value := 112
;
when 21503 =>
table_value := 112
;
when 21504 =>
table_value := 96
;
when 21505 =>
table_value := 80
;
when 21506 =>
table_value := 64
;
when 21507 =>
table_value := 64
;
when 21508 =>
table_value := 48
;
when 21509 =>
table_value := 32
;
when 21510 =>
table_value := 16
;
when 21511 =>
table_value := 0
;
when 21512 =>
table_value := 0
;
when 21513 =>
table_value := 0
;
when 21514 =>
table_value := 1048560
;
when 21515 =>
table_value := 1048560
;
when 21516 =>
table_value := 1048544
;
when 21517 =>
table_value := 1048528
;
when 21518 =>
table_value := 1048512
;
when 21519 =>
table_value := 1048512
;
when 21520 =>
table_value := 1048512
;
when 21521 =>
table_value := 1048496
;
when 21522 =>
table_value := 1048480
;
when 21523 =>
table_value := 1048480
;
when 21524 =>
table_value := 1048448
;
when 21525 =>
table_value := 1048448
;
when 21526 =>
table_value := 1048432
;
when 21527 =>
table_value := 1048432
;
when 21528 =>
table_value := 1048400
;
when 21529 =>
table_value := 1048400
;
when 21530 =>
table_value := 1048384
;
when 21531 =>
table_value := 1048400
;
when 21532 =>
table_value := 1048368
;
when 21533 =>
table_value := 1048368
;
when 21534 =>
table_value := 1048352
;
when 21535 =>
table_value := 1048352
;
when 21536 =>
table_value := 1048336
;
when 21537 =>
table_value := 1048352
;
when 21538 =>
table_value := 1048336
;
when 21539 =>
table_value := 1048336
;
when 21540 =>
table_value := 1048352
;
when 21541 =>
table_value := 1048336
;
when 21542 =>
table_value := 1048336
;
when 21543 =>
table_value := 1048336
;
when 21544 =>
table_value := 1048320
;
when 21545 =>
table_value := 1048320
;
when 21546 =>
table_value := 1048336
;
when 21547 =>
table_value := 1048336
;
when 21548 =>
table_value := 1048336
;
when 21549 =>
table_value := 1048352
;
when 21550 =>
table_value := 1048352
;
when 21551 =>
table_value := 1048352
;
when 21552 =>
table_value := 1048352
;
when 21553 =>
table_value := 1048352
;
when 21554 =>
table_value := 1048352
;
when 21555 =>
table_value := 1048352
;
when 21556 =>
table_value := 1048368
;
when 21557 =>
table_value := 1048368
;
when 21558 =>
table_value := 1048368
;
when 21559 =>
table_value := 1048384
;
when 21560 =>
table_value := 1048368
;
when 21561 =>
table_value := 1048400
;
when 21562 =>
table_value := 1048400
;
when 21563 =>
table_value := 1048400
;
when 21564 =>
table_value := 1048400
;
when 21565 =>
table_value := 1048416
;
when 21566 =>
table_value := 1048400
;
when 21567 =>
table_value := 1048400
;
when 21568 =>
table_value := 1048400
;
when 21569 =>
table_value := 1048416
;
when 21570 =>
table_value := 1048432
;
when 21571 =>
table_value := 1048432
;
when 21572 =>
table_value := 1048448
;
when 21573 =>
table_value := 1048432
;
when 21574 =>
table_value := 1048448
;
when 21575 =>
table_value := 1048448
;
when 21576 =>
table_value := 1048448
;
when 21577 =>
table_value := 1048464
;
when 21578 =>
table_value := 1048464
;
when 21579 =>
table_value := 1048464
;
when 21580 =>
table_value := 1048480
;
when 21581 =>
table_value := 1048480
;
when 21582 =>
table_value := 1048480
;
when 21583 =>
table_value := 1048480
;
when 21584 =>
table_value := 1048496
;
when 21585 =>
table_value := 1048496
;
when 21586 =>
table_value := 1048496
;
when 21587 =>
table_value := 1048496
;
when 21588 =>
table_value := 1048496
;
when 21589 =>
table_value := 1048496
;
when 21590 =>
table_value := 1048512
;
when 21591 =>
table_value := 1048512
;
when 21592 =>
table_value := 1048512
;
when 21593 =>
table_value := 1048512
;
when 21594 =>
table_value := 1048528
;
when 21595 =>
table_value := 1048512
;
when 21596 =>
table_value := 1048528
;
when 21597 =>
table_value := 1048528
;
when 21598 =>
table_value := 1048528
;
when 21599 =>
table_value := 1048528
;
when 21600 =>
table_value := 1048544
;
when 21601 =>
table_value := 1048560
;
when 21602 =>
table_value := 1048560
;
when 21603 =>
table_value := 1048560
;
when 21604 =>
table_value := 0
;
when 21605 =>
table_value := 0
;
when 21606 =>
table_value := 0
;
when 21607 =>
table_value := 0
;
when 21608 =>
table_value := 0
;
when 21609 =>
table_value := 0
;
when 21610 =>
table_value := 16
;
when 21611 =>
table_value := 32
;
when 21612 =>
table_value := 64
;
when 21613 =>
table_value := 64
;
when 21614 =>
table_value := 80
;
when 21615 =>
table_value := 96
;
when 21616 =>
table_value := 96
;
when 21617 =>
table_value := 128
;
when 21618 =>
table_value := 144
;
when 21619 =>
table_value := 176
;
when 21620 =>
table_value := 208
;
when 21621 =>
table_value := 208
;
when 21622 =>
table_value := 224
;
when 21623 =>
table_value := 240
;
when 21624 =>
table_value := 288
;
when 21625 =>
table_value := 304
;
when 21626 =>
table_value := 320
;
when 21627 =>
table_value := 352
;
when 21628 =>
table_value := 368
;
when 21629 =>
table_value := 400
;
when 21630 =>
table_value := 416
;
when 21631 =>
table_value := 448
;
when 21632 =>
table_value := 448
;
when 21633 =>
table_value := 480
;
when 21634 =>
table_value := 528
;
when 21635 =>
table_value := 544
;
when 21636 =>
table_value := 560
;
when 21637 =>
table_value := 608
;
when 21638 =>
table_value := 624
;
when 21639 =>
table_value := 640
;
when 21640 =>
table_value := 688
;
when 21641 =>
table_value := 704
;
when 21642 =>
table_value := 736
;
when 21643 =>
table_value := 768
;
when 21644 =>
table_value := 784
;
when 21645 =>
table_value := 816
;
when 21646 =>
table_value := 848
;
when 21647 =>
table_value := 864
;
when 21648 =>
table_value := 896
;
when 21649 =>
table_value := 912
;
when 21650 =>
table_value := 944
;
when 21651 =>
table_value := 960
;
when 21652 =>
table_value := 992
;
when 21653 =>
table_value := 1008
;
when 21654 =>
table_value := 1040
;
when 21655 =>
table_value := 1056
;
when 21656 =>
table_value := 1088
;
when 21657 =>
table_value := 1104
;
when 21658 =>
table_value := 1120
;
when 21659 =>
table_value := 1152
;
when 21660 =>
table_value := 1168
;
when 21661 =>
table_value := 1184
;
when 21662 =>
table_value := 1200
;
when 21663 =>
table_value := 1216
;
when 21664 =>
table_value := 1248
;
when 21665 =>
table_value := 1280
;
when 21666 =>
table_value := 1280
;
when 21667 =>
table_value := 1312
;
when 21668 =>
table_value := 1328
;
when 21669 =>
table_value := 1328
;
when 21670 =>
table_value := 1360
;
when 21671 =>
table_value := 1360
;
when 21672 =>
table_value := 1376
;
when 21673 =>
table_value := 1392
;
when 21674 =>
table_value := 1408
;
when 21675 =>
table_value := 1408
;
when 21676 =>
table_value := 1408
;
when 21677 =>
table_value := 1424
;
when 21678 =>
table_value := 1440
;
when 21679 =>
table_value := 1440
;
when 21680 =>
table_value := 1456
;
when 21681 =>
table_value := 1456
;
when 21682 =>
table_value := 1456
;
when 21683 =>
table_value := 1456
;
when 21684 =>
table_value := 1456
;
when 21685 =>
table_value := 1456
;
when 21686 =>
table_value := 1456
;
when 21687 =>
table_value := 1456
;
when 21688 =>
table_value := 1456
;
when 21689 =>
table_value := 1456
;
when 21690 =>
table_value := 1440
;
when 21691 =>
table_value := 1440
;
when 21692 =>
table_value := 1440
;
when 21693 =>
table_value := 1440
;
when 21694 =>
table_value := 1440
;
when 21695 =>
table_value := 1424
;
when 21696 =>
table_value := 1408
;
when 21697 =>
table_value := 1392
;
when 21698 =>
table_value := 1376
;
when 21699 =>
table_value := 1376
;
when 21700 =>
table_value := 1376
;
when 21701 =>
table_value := 1360
;
when 21702 =>
table_value := 1344
;
when 21703 =>
table_value := 1328
;
when 21704 =>
table_value := 1312
;
when 21705 =>
table_value := 1312
;
when 21706 =>
table_value := 1280
;
when 21707 =>
table_value := 1264
;
when 21708 =>
table_value := 1248
;
when 21709 =>
table_value := 1248
;
when 21710 =>
table_value := 1232
;
when 21711 =>
table_value := 1216
;
when 21712 =>
table_value := 1200
;
when 21713 =>
table_value := 1184
;
when 21714 =>
table_value := 1152
;
when 21715 =>
table_value := 1152
;
when 21716 =>
table_value := 1136
;
when 21717 =>
table_value := 1136
;
when 21718 =>
table_value := 1104
;
when 21719 =>
table_value := 1104
;
when 21720 =>
table_value := 1072
;
when 21721 =>
table_value := 1088
;
when 21722 =>
table_value := 1072
;
when 21723 =>
table_value := 1056
;
when 21724 =>
table_value := 1056
;
when 21725 =>
table_value := 1024
;
when 21726 =>
table_value := 1008
;
when 21727 =>
table_value := 992
;
when 21728 =>
table_value := 992
;
when 21729 =>
table_value := 976
;
when 21730 =>
table_value := 976
;
when 21731 =>
table_value := 960
;
when 21732 =>
table_value := 944
;
when 21733 =>
table_value := 944
;
when 21734 =>
table_value := 928
;
when 21735 =>
table_value := 912
;
when 21736 =>
table_value := 912
;
when 21737 =>
table_value := 896
;
when 21738 =>
table_value := 880
;
when 21739 =>
table_value := 880
;
when 21740 =>
table_value := 880
;
when 21741 =>
table_value := 864
;
when 21742 =>
table_value := 864
;
when 21743 =>
table_value := 848
;
when 21744 =>
table_value := 848
;
when 21745 =>
table_value := 832
;
when 21746 =>
table_value := 832
;
when 21747 =>
table_value := 832
;
when 21748 =>
table_value := 816
;
when 21749 =>
table_value := 800
;
when 21750 =>
table_value := 784
;
when 21751 =>
table_value := 768
;
when 21752 =>
table_value := 768
;
when 21753 =>
table_value := 768
;
when 21754 =>
table_value := 752
;
when 21755 =>
table_value := 752
;
when 21756 =>
table_value := 736
;
when 21757 =>
table_value := 704
;
when 21758 =>
table_value := 688
;
when 21759 =>
table_value := 688
;
when 21760 =>
table_value := 672
;
when 21761 =>
table_value := 672
;
when 21762 =>
table_value := 656
;
when 21763 =>
table_value := 624
;
when 21764 =>
table_value := 608
;
when 21765 =>
table_value := 592
;
when 21766 =>
table_value := 576
;
when 21767 =>
table_value := 544
;
when 21768 =>
table_value := 544
;
when 21769 =>
table_value := 528
;
when 21770 =>
table_value := 496
;
when 21771 =>
table_value := 480
;
when 21772 =>
table_value := 448
;
when 21773 =>
table_value := 448
;
when 21774 =>
table_value := 432
;
when 21775 =>
table_value := 400
;
when 21776 =>
table_value := 384
;
when 21777 =>
table_value := 368
;
when 21778 =>
table_value := 352
;
when 21779 =>
table_value := 336
;
when 21780 =>
table_value := 304
;
when 21781 =>
table_value := 272
;
when 21782 =>
table_value := 256
;
when 21783 =>
table_value := 224
;
when 21784 =>
table_value := 224
;
when 21785 =>
table_value := 192
;
when 21786 =>
table_value := 176
;
when 21787 =>
table_value := 144
;
when 21788 =>
table_value := 144
;
when 21789 =>
table_value := 112
;
when 21790 =>
table_value := 96
;
when 21791 =>
table_value := 80
;
when 21792 =>
table_value := 64
;
when 21793 =>
table_value := 64
;
when 21794 =>
table_value := 32
;
when 21795 =>
table_value := 0
;
when 21796 =>
table_value := 0
;
when 21797 =>
table_value := 0
;
when 21798 =>
table_value := 0
;
when 21799 =>
table_value := 0
;
when 21800 =>
table_value := 1048544
;
when 21801 =>
table_value := 1048544
;
when 21802 =>
table_value := 1048528
;
when 21803 =>
table_value := 1048512
;
when 21804 =>
table_value := 1048512
;
when 21805 =>
table_value := 1048496
;
when 21806 =>
table_value := 1048496
;
when 21807 =>
table_value := 1048496
;
when 21808 =>
table_value := 1048496
;
when 21809 =>
table_value := 1048496
;
when 21810 =>
table_value := 1048480
;
when 21811 =>
table_value := 1048496
;
when 21812 =>
table_value := 1048480
;
when 21813 =>
table_value := 1048480
;
when 21814 =>
table_value := 1048480
;
when 21815 =>
table_value := 1048480
;
when 21816 =>
table_value := 1048496
;
when 21817 =>
table_value := 1048512
;
when 21818 =>
table_value := 1048496
;
when 21819 =>
table_value := 1048512
;
when 21820 =>
table_value := 1048512
;
when 21821 =>
table_value := 1048528
;
when 21822 =>
table_value := 1048544
;
when 21823 =>
table_value := 1048560
;
when 21824 =>
table_value := 1048560
;
when 21825 =>
table_value := 1048560
;
when 21826 =>
table_value := 0
;
when 21827 =>
table_value := 0
;
when 21828 =>
table_value := 0
;
when 21829 =>
table_value := 0
;
when 21830 =>
table_value := 16
;
when 21831 =>
table_value := 32
;
when 21832 =>
table_value := 48
;
when 21833 =>
table_value := 48
;
when 21834 =>
table_value := 64
;
when 21835 =>
table_value := 64
;
when 21836 =>
table_value := 80
;
when 21837 =>
table_value := 80
;
when 21838 =>
table_value := 96
;
when 21839 =>
table_value := 112
;
when 21840 =>
table_value := 128
;
when 21841 =>
table_value := 112
;
when 21842 =>
table_value := 144
;
when 21843 =>
table_value := 144
;
when 21844 =>
table_value := 144
;
when 21845 =>
table_value := 160
;
when 21846 =>
table_value := 160
;
when 21847 =>
table_value := 160
;
when 21848 =>
table_value := 160
;
when 21849 =>
table_value := 176
;
when 21850 =>
table_value := 176
;
when 21851 =>
table_value := 176
;
when 21852 =>
table_value := 176
;
when 21853 =>
table_value := 176
;
when 21854 =>
table_value := 176
;
when 21855 =>
table_value := 176
;
when 21856 =>
table_value := 192
;
when 21857 =>
table_value := 192
;
when 21858 =>
table_value := 176
;
when 21859 =>
table_value := 160
;
when 21860 =>
table_value := 176
;
when 21861 =>
table_value := 176
;
when 21862 =>
table_value := 160
;
when 21863 =>
table_value := 160
;
when 21864 =>
table_value := 144
;
when 21865 =>
table_value := 144
;
when 21866 =>
table_value := 128
;
when 21867 =>
table_value := 128
;
when 21868 =>
table_value := 128
;
when 21869 =>
table_value := 128
;
when 21870 =>
table_value := 112
;
when 21871 =>
table_value := 96
;
when 21872 =>
table_value := 80
;
when 21873 =>
table_value := 64
;
when 21874 =>
table_value := 64
;
when 21875 =>
table_value := 48
;
when 21876 =>
table_value := 32
;
when 21877 =>
table_value := 32
;
when 21878 =>
table_value := 0
;
when 21879 =>
table_value := 0
;
when 21880 =>
table_value := 0
;
when 21881 =>
table_value := 0
;
when 21882 =>
table_value := 1048544
;
when 21883 =>
table_value := 1048544
;
when 21884 =>
table_value := 1048528
;
when 21885 =>
table_value := 1048512
;
when 21886 =>
table_value := 1048496
;
when 21887 =>
table_value := 1048480
;
when 21888 =>
table_value := 1048480
;
when 21889 =>
table_value := 1048464
;
when 21890 =>
table_value := 1048448
;
when 21891 =>
table_value := 1048416
;
when 21892 =>
table_value := 1048416
;
when 21893 =>
table_value := 1048400
;
when 21894 =>
table_value := 1048368
;
when 21895 =>
table_value := 1048368
;
when 21896 =>
table_value := 1048336
;
when 21897 =>
table_value := 1048304
;
when 21898 =>
table_value := 1048304
;
when 21899 =>
table_value := 1048272
;
when 21900 =>
table_value := 1048272
;
when 21901 =>
table_value := 1048256
;
when 21902 =>
table_value := 1048224
;
when 21903 =>
table_value := 1048224
;
when 21904 =>
table_value := 1048208
;
when 21905 =>
table_value := 1048192
;
when 21906 =>
table_value := 1048176
;
when 21907 =>
table_value := 1048144
;
when 21908 =>
table_value := 1048128
;
when 21909 =>
table_value := 1048112
;
when 21910 =>
table_value := 1048096
;
when 21911 =>
table_value := 1048096
;
when 21912 =>
table_value := 1048080
;
when 21913 =>
table_value := 1048048
;
when 21914 =>
table_value := 1048032
;
when 21915 =>
table_value := 1048016
;
when 21916 =>
table_value := 1048016
;
when 21917 =>
table_value := 1047984
;
when 21918 =>
table_value := 1047968
;
when 21919 =>
table_value := 1047968
;
when 21920 =>
table_value := 1047952
;
when 21921 =>
table_value := 1047936
;
when 21922 =>
table_value := 1047920
;
when 21923 =>
table_value := 1047904
;
when 21924 =>
table_value := 1047888
;
when 21925 =>
table_value := 1047872
;
when 21926 =>
table_value := 1047872
;
when 21927 =>
table_value := 1047840
;
when 21928 =>
table_value := 1047840
;
when 21929 =>
table_value := 1047824
;
when 21930 =>
table_value := 1047808
;
when 21931 =>
table_value := 1047808
;
when 21932 =>
table_value := 1047808
;
when 21933 =>
table_value := 1047792
;
when 21934 =>
table_value := 1047776
;
when 21935 =>
table_value := 1047744
;
when 21936 =>
table_value := 1047760
;
when 21937 =>
table_value := 1047728
;
when 21938 =>
table_value := 1047728
;
when 21939 =>
table_value := 1047712
;
when 21940 =>
table_value := 1047712
;
when 21941 =>
table_value := 1047712
;
when 21942 =>
table_value := 1047696
;
when 21943 =>
table_value := 1047680
;
when 21944 =>
table_value := 1047680
;
when 21945 =>
table_value := 1047680
;
when 21946 =>
table_value := 1047664
;
when 21947 =>
table_value := 1047648
;
when 21948 =>
table_value := 1047648
;
when 21949 =>
table_value := 1047648
;
when 21950 =>
table_value := 1047664
;
when 21951 =>
table_value := 1047648
;
when 21952 =>
table_value := 1047664
;
when 21953 =>
table_value := 1047664
;
when 21954 =>
table_value := 1047664
;
when 21955 =>
table_value := 1047664
;
when 21956 =>
table_value := 1047664
;
when 21957 =>
table_value := 1047664
;
when 21958 =>
table_value := 1047664
;
when 21959 =>
table_value := 1047664
;
when 21960 =>
table_value := 1047664
;
when 21961 =>
table_value := 1047680
;
when 21962 =>
table_value := 1047680
;
when 21963 =>
table_value := 1047680
;
when 21964 =>
table_value := 1047680
;
when 21965 =>
table_value := 1047696
;
when 21966 =>
table_value := 1047712
;
when 21967 =>
table_value := 1047696
;
when 21968 =>
table_value := 1047712
;
when 21969 =>
table_value := 1047712
;
when 21970 =>
table_value := 1047728
;
when 21971 =>
table_value := 1047728
;
when 21972 =>
table_value := 1047728
;
when 21973 =>
table_value := 1047728
;
when 21974 =>
table_value := 1047728
;
when 21975 =>
table_value := 1047744
;
when 21976 =>
table_value := 1047760
;
when 21977 =>
table_value := 1047760
;
when 21978 =>
table_value := 1047776
;
when 21979 =>
table_value := 1047792
;
when 21980 =>
table_value := 1047792
;
when 21981 =>
table_value := 1047792
;
when 21982 =>
table_value := 1047808
;
when 21983 =>
table_value := 1047808
;
when 21984 =>
table_value := 1047808
;
when 21985 =>
table_value := 1047824
;
when 21986 =>
table_value := 1047840
;
when 21987 =>
table_value := 1047840
;
when 21988 =>
table_value := 1047856
;
when 21989 =>
table_value := 1047856
;
when 21990 =>
table_value := 1047872
;
when 21991 =>
table_value := 1047872
;
when 21992 =>
table_value := 1047872
;
when 21993 =>
table_value := 1047888
;
when 21994 =>
table_value := 1047872
;
when 21995 =>
table_value := 1047888
;
when 21996 =>
table_value := 1047888
;
when 21997 =>
table_value := 1047888
;
when 21998 =>
table_value := 1047904
;
when 21999 =>
table_value := 1047904
;
when 22000 =>
table_value := 1047904
;
when 22001 =>
table_value := 1047904
;
when 22002 =>
table_value := 1047920
;
when 22003 =>
table_value := 1047904
;
when 22004 =>
table_value := 1047904
;
when 22005 =>
table_value := 1047904
;
when 22006 =>
table_value := 1047936
;
when 22007 =>
table_value := 1047920
;
when 22008 =>
table_value := 1047936
;
when 22009 =>
table_value := 1047936
;
when 22010 =>
table_value := 1047952
;
when 22011 =>
table_value := 1047936
;
when 22012 =>
table_value := 1047952
;
when 22013 =>
table_value := 1047952
;
when 22014 =>
table_value := 1047968
;
when 22015 =>
table_value := 1047968
;
when 22016 =>
table_value := 1047968
;
when 22017 =>
table_value := 1047968
;
when 22018 =>
table_value := 1047984
;
when 22019 =>
table_value := 1047968
;
when 22020 =>
table_value := 1047984
;
when 22021 =>
table_value := 1047984
;
when 22022 =>
table_value := 1048000
;
when 22023 =>
table_value := 1048000
;
when 22024 =>
table_value := 1048016
;
when 22025 =>
table_value := 1048016
;
when 22026 =>
table_value := 1048016
;
when 22027 =>
table_value := 1048016
;
when 22028 =>
table_value := 1048032
;
when 22029 =>
table_value := 1048048
;
when 22030 =>
table_value := 1048048
;
when 22031 =>
table_value := 1048032
;
when 22032 =>
table_value := 1048048
;
when 22033 =>
table_value := 1048064
;
when 22034 =>
table_value := 1048048
;
when 22035 =>
table_value := 1048080
;
when 22036 =>
table_value := 1048080
;
when 22037 =>
table_value := 1048080
;
when 22038 =>
table_value := 1048112
;
when 22039 =>
table_value := 1048112
;
when 22040 =>
table_value := 1048112
;
when 22041 =>
table_value := 1048112
;
when 22042 =>
table_value := 1048128
;
when 22043 =>
table_value := 1048128
;
when 22044 =>
table_value := 1048144
;
when 22045 =>
table_value := 1048144
;
when 22046 =>
table_value := 1048144
;
when 22047 =>
table_value := 1048160
;
when 22048 =>
table_value := 1048160
;
when 22049 =>
table_value := 1048160
;
when 22050 =>
table_value := 1048176
;
when 22051 =>
table_value := 1048176
;
when 22052 =>
table_value := 1048176
;
when 22053 =>
table_value := 1048176
;
when 22054 =>
table_value := 1048176
;
when 22055 =>
table_value := 1048176
;
when 22056 =>
table_value := 1048192
;
when 22057 =>
table_value := 1048192
;
when 22058 =>
table_value := 1048192
;
when 22059 =>
table_value := 1048192
;
when 22060 =>
table_value := 1048192
;
when 22061 =>
table_value := 1048192
;
when 22062 =>
table_value := 1048192
;
when 22063 =>
table_value := 1048192
;
when 22064 =>
table_value := 1048192
;
when 22065 =>
table_value := 1048192
;
when 22066 =>
table_value := 1048192
;
when 22067 =>
table_value := 1048192
;
when 22068 =>
table_value := 1048176
;
when 22069 =>
table_value := 1048176
;
when 22070 =>
table_value := 1048176
;
when 22071 =>
table_value := 1048160
;
when 22072 =>
table_value := 1048160
;
when 22073 =>
table_value := 1048144
;
when 22074 =>
table_value := 1048144
;
when 22075 =>
table_value := 1048128
;
when 22076 =>
table_value := 1048128
;
when 22077 =>
table_value := 1048128
;
when 22078 =>
table_value := 1048128
;
when 22079 =>
table_value := 1048112
;
when 22080 =>
table_value := 1048096
;
when 22081 =>
table_value := 1048096
;
when 22082 =>
table_value := 1048064
;
when 22083 =>
table_value := 1048064
;
when 22084 =>
table_value := 1048064
;
when 22085 =>
table_value := 1048048
;
when 22086 =>
table_value := 1048048
;
when 22087 =>
table_value := 1048032
;
when 22088 =>
table_value := 1048032
;
when 22089 =>
table_value := 1048016
;
when 22090 =>
table_value := 1048016
;
when 22091 =>
table_value := 1048000
;
when 22092 =>
table_value := 1047984
;
when 22093 =>
table_value := 1047968
;
when 22094 =>
table_value := 1047984
;
when 22095 =>
table_value := 1047984
;
when 22096 =>
table_value := 1047968
;
when 22097 =>
table_value := 1047952
;
when 22098 =>
table_value := 1047968
;
when 22099 =>
table_value := 1047936
;
when 22100 =>
table_value := 1047952
;
when 22101 =>
table_value := 1047936
;
when 22102 =>
table_value := 1047936
;
when 22103 =>
table_value := 1047936
;
when 22104 =>
table_value := 1047936
;
when 22105 =>
table_value := 1047936
;
when 22106 =>
table_value := 1047952
;
when 22107 =>
table_value := 1047952
;
when 22108 =>
table_value := 1047936
;
when 22109 =>
table_value := 1047952
;
when 22110 =>
table_value := 1047952
;
when 22111 =>
table_value := 1047968
;
when 22112 =>
table_value := 1047968
;
when 22113 =>
table_value := 1047968
;
when 22114 =>
table_value := 1047984
;
when 22115 =>
table_value := 1048016
;
when 22116 =>
table_value := 1048016
;
when 22117 =>
table_value := 1048032
;
when 22118 =>
table_value := 1048032
;
when 22119 =>
table_value := 1048048
;
when 22120 =>
table_value := 1048048
;
when 22121 =>
table_value := 1048048
;
when 22122 =>
table_value := 1048080
;
when 22123 =>
table_value := 1048080
;
when 22124 =>
table_value := 1048112
;
when 22125 =>
table_value := 1048128
;
when 22126 =>
table_value := 1048128
;
when 22127 =>
table_value := 1048144
;
when 22128 =>
table_value := 1048176
;
when 22129 =>
table_value := 1048176
;
when 22130 =>
table_value := 1048192
;
when 22131 =>
table_value := 1048208
;
when 22132 =>
table_value := 1048224
;
when 22133 =>
table_value := 1048240
;
when 22134 =>
table_value := 1048256
;
when 22135 =>
table_value := 1048272
;
when 22136 =>
table_value := 1048288
;
when 22137 =>
table_value := 1048304
;
when 22138 =>
table_value := 1048320
;
when 22139 =>
table_value := 1048352
;
when 22140 =>
table_value := 1048352
;
when 22141 =>
table_value := 1048384
;
when 22142 =>
table_value := 1048384
;
when 22143 =>
table_value := 1048400
;
when 22144 =>
table_value := 1048416
;
when 22145 =>
table_value := 1048416
;
when 22146 =>
table_value := 1048448
;
when 22147 =>
table_value := 1048464
;
when 22148 =>
table_value := 1048480
;
when 22149 =>
table_value := 1048496
;
when 22150 =>
table_value := 1048496
;
when 22151 =>
table_value := 1048512
;
when 22152 =>
table_value := 1048528
;
when 22153 =>
table_value := 1048544
;
when 22154 =>
table_value := 1048560
;
when 22155 =>
table_value := 1048560
;
when 22156 =>
table_value := 0
;
when 22157 =>
table_value := 0
;
when 22158 =>
table_value := 0
;
when 22159 =>
table_value := 16
;
when 22160 =>
table_value := 32
;
when 22161 =>
table_value := 48
;
when 22162 =>
table_value := 64
;
when 22163 =>
table_value := 80
;
when 22164 =>
table_value := 80
;
when 22165 =>
table_value := 80
;
when 22166 =>
table_value := 96
;
when 22167 =>
table_value := 96
;
when 22168 =>
table_value := 112
;
when 22169 =>
table_value := 128
;
when 22170 =>
table_value := 128
;
when 22171 =>
table_value := 144
;
when 22172 =>
table_value := 160
;
when 22173 =>
table_value := 160
;
when 22174 =>
table_value := 176
;
when 22175 =>
table_value := 192
;
when 22176 =>
table_value := 192
;
when 22177 =>
table_value := 208
;
when 22178 =>
table_value := 224
;
when 22179 =>
table_value := 224
;
when 22180 =>
table_value := 240
;
when 22181 =>
table_value := 240
;
when 22182 =>
table_value := 240
;
when 22183 =>
table_value := 256
;
when 22184 =>
table_value := 256
;
when 22185 =>
table_value := 272
;
when 22186 =>
table_value := 272
;
when 22187 =>
table_value := 288
;
when 22188 =>
table_value := 288
;
when 22189 =>
table_value := 288
;
when 22190 =>
table_value := 304
;
when 22191 =>
table_value := 304
;
when 22192 =>
table_value := 304
;
when 22193 =>
table_value := 304
;
when 22194 =>
table_value := 304
;
when 22195 =>
table_value := 288
;
when 22196 =>
table_value := 288
;
when 22197 =>
table_value := 288
;
when 22198 =>
table_value := 288
;
when 22199 =>
table_value := 288
;
when 22200 =>
table_value := 288
;
when 22201 =>
table_value := 272
;
when 22202 =>
table_value := 256
;
when 22203 =>
table_value := 240
;
when 22204 =>
table_value := 240
;
when 22205 =>
table_value := 224
;
when 22206 =>
table_value := 208
;
when 22207 =>
table_value := 192
;
when 22208 =>
table_value := 192
;
when 22209 =>
table_value := 160
;
when 22210 =>
table_value := 144
;
when 22211 =>
table_value := 128
;
when 22212 =>
table_value := 112
;
when 22213 =>
table_value := 96
;
when 22214 =>
table_value := 64
;
when 22215 =>
table_value := 48
;
when 22216 =>
table_value := 48
;
when 22217 =>
table_value := 16
;
when 22218 =>
table_value := 0
;
when 22219 =>
table_value := 1048560
;
when 22220 =>
table_value := 1048528
;
when 22221 =>
table_value := 1048512
;
when 22222 =>
table_value := 1048496
;
when 22223 =>
table_value := 1048464
;
when 22224 =>
table_value := 1048448
;
when 22225 =>
table_value := 1048432
;
when 22226 =>
table_value := 1048416
;
when 22227 =>
table_value := 1048384
;
when 22228 =>
table_value := 1048368
;
when 22229 =>
table_value := 1048336
;
when 22230 =>
table_value := 1048304
;
when 22231 =>
table_value := 1048288
;
when 22232 =>
table_value := 1048272
;
when 22233 =>
table_value := 1048256
;
when 22234 =>
table_value := 1048240
;
when 22235 =>
table_value := 1048192
;
when 22236 =>
table_value := 1048192
;
when 22237 =>
table_value := 1048176
;
when 22238 =>
table_value := 1048144
;
when 22239 =>
table_value := 1048128
;
when 22240 =>
table_value := 1048112
;
when 22241 =>
table_value := 1048096
;
when 22242 =>
table_value := 1048064
;
when 22243 =>
table_value := 1048048
;
when 22244 =>
table_value := 1048032
;
when 22245 =>
table_value := 1048016
;
when 22246 =>
table_value := 1047984
;
when 22247 =>
table_value := 1047968
;
when 22248 =>
table_value := 1047968
;
when 22249 =>
table_value := 1047952
;
when 22250 =>
table_value := 1047920
;
when 22251 =>
table_value := 1047904
;
when 22252 =>
table_value := 1047888
;
when 22253 =>
table_value := 1047872
;
when 22254 =>
table_value := 1047872
;
when 22255 =>
table_value := 1047856
;
when 22256 =>
table_value := 1047824
;
when 22257 =>
table_value := 1047808
;
when 22258 =>
table_value := 1047808
;
when 22259 =>
table_value := 1047792
;
when 22260 =>
table_value := 1047760
;
when 22261 =>
table_value := 1047760
;
when 22262 =>
table_value := 1047728
;
when 22263 =>
table_value := 1047712
;
when 22264 =>
table_value := 1047712
;
when 22265 =>
table_value := 1047696
;
when 22266 =>
table_value := 1047680
;
when 22267 =>
table_value := 1047664
;
when 22268 =>
table_value := 1047664
;
when 22269 =>
table_value := 1047648
;
when 22270 =>
table_value := 1047632
;
when 22271 =>
table_value := 1047616
;
when 22272 =>
table_value := 1047616
;
when 22273 =>
table_value := 1047584
;
when 22274 =>
table_value := 1047584
;
when 22275 =>
table_value := 1047584
;
when 22276 =>
table_value := 1047552
;
when 22277 =>
table_value := 1047552
;
when 22278 =>
table_value := 1047536
;
when 22279 =>
table_value := 1047552
;
when 22280 =>
table_value := 1047520
;
when 22281 =>
table_value := 1047520
;
when 22282 =>
table_value := 1047520
;
when 22283 =>
table_value := 1047504
;
when 22284 =>
table_value := 1047504
;
when 22285 =>
table_value := 1047488
;
when 22286 =>
table_value := 1047504
;
when 22287 =>
table_value := 1047488
;
when 22288 =>
table_value := 1047488
;
when 22289 =>
table_value := 1047488
;
when 22290 =>
table_value := 1047488
;
when 22291 =>
table_value := 1047488
;
when 22292 =>
table_value := 1047504
;
when 22293 =>
table_value := 1047504
;
when 22294 =>
table_value := 1047504
;
when 22295 =>
table_value := 1047520
;
when 22296 =>
table_value := 1047520
;
when 22297 =>
table_value := 1047520
;
when 22298 =>
table_value := 1047536
;
when 22299 =>
table_value := 1047520
;
when 22300 =>
table_value := 1047552
;
when 22301 =>
table_value := 1047568
;
when 22302 =>
table_value := 1047584
;
when 22303 =>
table_value := 1047584
;
when 22304 =>
table_value := 1047600
;
when 22305 =>
table_value := 1047632
;
when 22306 =>
table_value := 1047632
;
when 22307 =>
table_value := 1047648
;
when 22308 =>
table_value := 1047664
;
when 22309 =>
table_value := 1047696
;
when 22310 =>
table_value := 1047712
;
when 22311 =>
table_value := 1047744
;
when 22312 =>
table_value := 1047776
;
when 22313 =>
table_value := 1047792
;
when 22314 =>
table_value := 1047824
;
when 22315 =>
table_value := 1047840
;
when 22316 =>
table_value := 1047872
;
when 22317 =>
table_value := 1047904
;
when 22318 =>
table_value := 1047920
;
when 22319 =>
table_value := 1047952
;
when 22320 =>
table_value := 1047968
;
when 22321 =>
table_value := 1048016
;
when 22322 =>
table_value := 1048032
;
when 22323 =>
table_value := 1048064
;
when 22324 =>
table_value := 1048080
;
when 22325 =>
table_value := 1048112
;
when 22326 =>
table_value := 1048128
;
when 22327 =>
table_value := 1048176
;
when 22328 =>
table_value := 1048208
;
when 22329 =>
table_value := 1048224
;
when 22330 =>
table_value := 1048256
;
when 22331 =>
table_value := 1048272
;
when 22332 =>
table_value := 1048304
;
when 22333 =>
table_value := 1048352
;
when 22334 =>
table_value := 1048368
;
when 22335 =>
table_value := 1048400
;
when 22336 =>
table_value := 1048432
;
when 22337 =>
table_value := 1048448
;
when 22338 =>
table_value := 1048480
;
when 22339 =>
table_value := 1048512
;
when 22340 =>
table_value := 1048528
;
when 22341 =>
table_value := 1048560
;
when 22342 =>
table_value := 0
;
when 22343 =>
table_value := 16
;
when 22344 =>
table_value := 32
;
when 22345 =>
table_value := 64
;
when 22346 =>
table_value := 96
;
when 22347 =>
table_value := 128
;
when 22348 =>
table_value := 144
;
when 22349 =>
table_value := 160
;
when 22350 =>
table_value := 176
;
when 22351 =>
table_value := 208
;
when 22352 =>
table_value := 224
;
when 22353 =>
table_value := 240
;
when 22354 =>
table_value := 272
;
when 22355 =>
table_value := 272
;
when 22356 =>
table_value := 304
;
when 22357 =>
table_value := 320
;
when 22358 =>
table_value := 336
;
when 22359 =>
table_value := 352
;
when 22360 =>
table_value := 368
;
when 22361 =>
table_value := 384
;
when 22362 =>
table_value := 384
;
when 22363 =>
table_value := 416
;
when 22364 =>
table_value := 448
;
when 22365 =>
table_value := 448
;
when 22366 =>
table_value := 448
;
when 22367 =>
table_value := 480
;
when 22368 =>
table_value := 480
;
when 22369 =>
table_value := 512
;
when 22370 =>
table_value := 496
;
when 22371 =>
table_value := 528
;
when 22372 =>
table_value := 528
;
when 22373 =>
table_value := 528
;
when 22374 =>
table_value := 544
;
when 22375 =>
table_value := 544
;
when 22376 =>
table_value := 576
;
when 22377 =>
table_value := 592
;
when 22378 =>
table_value := 592
;
when 22379 =>
table_value := 592
;
when 22380 =>
table_value := 608
;
when 22381 =>
table_value := 608
;
when 22382 =>
table_value := 624
;
when 22383 =>
table_value := 608
;
when 22384 =>
table_value := 624
;
when 22385 =>
table_value := 624
;
when 22386 =>
table_value := 624
;
when 22387 =>
table_value := 656
;
when 22388 =>
table_value := 656
;
when 22389 =>
table_value := 640
;
when 22390 =>
table_value := 656
;
when 22391 =>
table_value := 656
;
when 22392 =>
table_value := 672
;
when 22393 =>
table_value := 672
;
when 22394 =>
table_value := 656
;
when 22395 =>
table_value := 656
;
when 22396 =>
table_value := 672
;
when 22397 =>
table_value := 656
;
when 22398 =>
table_value := 688
;
when 22399 =>
table_value := 688
;
when 22400 =>
table_value := 688
;
when 22401 =>
table_value := 688
;
when 22402 =>
table_value := 688
;
when 22403 =>
table_value := 688
;
when 22404 =>
table_value := 704
;
when 22405 =>
table_value := 672
;
when 22406 =>
table_value := 688
;
when 22407 =>
table_value := 688
;
when 22408 =>
table_value := 704
;
when 22409 =>
table_value := 688
;
when 22410 =>
table_value := 688
;
when 22411 =>
table_value := 688
;
when 22412 =>
table_value := 688
;
when 22413 =>
table_value := 688
;
when 22414 =>
table_value := 704
;
when 22415 =>
table_value := 704
;
when 22416 =>
table_value := 704
;
when 22417 =>
table_value := 704
;
when 22418 =>
table_value := 720
;
when 22419 =>
table_value := 720
;
when 22420 =>
table_value := 704
;
when 22421 =>
table_value := 720
;
when 22422 =>
table_value := 704
;
when 22423 =>
table_value := 720
;
when 22424 =>
table_value := 720
;
when 22425 =>
table_value := 720
;
when 22426 =>
table_value := 704
;
when 22427 =>
table_value := 720
;
when 22428 =>
table_value := 720
;
when 22429 =>
table_value := 704
;
when 22430 =>
table_value := 704
;
when 22431 =>
table_value := 704
;
when 22432 =>
table_value := 720
;
when 22433 =>
table_value := 704
;
when 22434 =>
table_value := 720
;
when 22435 =>
table_value := 720
;
when 22436 =>
table_value := 704
;
when 22437 =>
table_value := 704
;
when 22438 =>
table_value := 720
;
when 22439 =>
table_value := 720
;
when 22440 =>
table_value := 704
;
when 22441 =>
table_value := 720
;
when 22442 =>
table_value := 720
;
when 22443 =>
table_value := 720
;
when 22444 =>
table_value := 720
;
when 22445 =>
table_value := 704
;
when 22446 =>
table_value := 704
;
when 22447 =>
table_value := 720
;
when 22448 =>
table_value := 704
;
when 22449 =>
table_value := 704
;
when 22450 =>
table_value := 704
;
when 22451 =>
table_value := 688
;
when 22452 =>
table_value := 704
;
when 22453 =>
table_value := 704
;
when 22454 =>
table_value := 704
;
when 22455 =>
table_value := 704
;
when 22456 =>
table_value := 704
;
when 22457 =>
table_value := 688
;
when 22458 =>
table_value := 688
;
when 22459 =>
table_value := 688
;
when 22460 =>
table_value := 688
;
when 22461 =>
table_value := 688
;
when 22462 =>
table_value := 704
;
when 22463 =>
table_value := 704
;
when 22464 =>
table_value := 688
;
when 22465 =>
table_value := 688
;
when 22466 =>
table_value := 704
;
when 22467 =>
table_value := 704
;
when 22468 =>
table_value := 704
;
when 22469 =>
table_value := 704
;
when 22470 =>
table_value := 704
;
when 22471 =>
table_value := 704
;
when 22472 =>
table_value := 704
;
when 22473 =>
table_value := 720
;
when 22474 =>
table_value := 720
;
when 22475 =>
table_value := 736
;
when 22476 =>
table_value := 720
;
when 22477 =>
table_value := 752
;
when 22478 =>
table_value := 736
;
when 22479 =>
table_value := 736
;
when 22480 =>
table_value := 736
;
when 22481 =>
table_value := 752
;
when 22482 =>
table_value := 736
;
when 22483 =>
table_value := 736
;
when 22484 =>
table_value := 768
;
when 22485 =>
table_value := 768
;
when 22486 =>
table_value := 752
;
when 22487 =>
table_value := 768
;
when 22488 =>
table_value := 768
;
when 22489 =>
table_value := 768
;
when 22490 =>
table_value := 768
;
when 22491 =>
table_value := 768
;
when 22492 =>
table_value := 768
;
when 22493 =>
table_value := 784
;
when 22494 =>
table_value := 768
;
when 22495 =>
table_value := 784
;
when 22496 =>
table_value := 784
;
when 22497 =>
table_value := 800
;
when 22498 =>
table_value := 816
;
when 22499 =>
table_value := 816
;
when 22500 =>
table_value := 832
;
when 22501 =>
table_value := 832
;
when 22502 =>
table_value := 848
;
when 22503 =>
table_value := 848
;
when 22504 =>
table_value := 848
;
when 22505 =>
table_value := 848
;
when 22506 =>
table_value := 864
;
when 22507 =>
table_value := 880
;
when 22508 =>
table_value := 896
;
when 22509 =>
table_value := 896
;
when 22510 =>
table_value := 912
;
when 22511 =>
table_value := 912
;
when 22512 =>
table_value := 928
;
when 22513 =>
table_value := 944
;
when 22514 =>
table_value := 944
;
when 22515 =>
table_value := 960
;
when 22516 =>
table_value := 976
;
when 22517 =>
table_value := 992
;
when 22518 =>
table_value := 992
;
when 22519 =>
table_value := 1008
;
when 22520 =>
table_value := 1024
;
when 22521 =>
table_value := 1040
;
when 22522 =>
table_value := 1056
;
when 22523 =>
table_value := 1072
;
when 22524 =>
table_value := 1072
;
when 22525 =>
table_value := 1088
;
when 22526 =>
table_value := 1104
;
when 22527 =>
table_value := 1120
;
when 22528 =>
table_value := 1136
;
when 22529 =>
table_value := 1152
;
when 22530 =>
table_value := 1168
;
when 22531 =>
table_value := 1184
;
when 22532 =>
table_value := 1184
;
when 22533 =>
table_value := 1200
;
when 22534 =>
table_value := 1216
;
when 22535 =>
table_value := 1232
;
when 22536 =>
table_value := 1248
;
when 22537 =>
table_value := 1248
;
when 22538 =>
table_value := 1264
;
when 22539 =>
table_value := 1248
;
when 22540 =>
table_value := 1264
;
when 22541 =>
table_value := 1280
;
when 22542 =>
table_value := 1280
;
when 22543 =>
table_value := 1296
;
when 22544 =>
table_value := 1312
;
when 22545 =>
table_value := 1312
;
when 22546 =>
table_value := 1312
;
when 22547 =>
table_value := 1312
;
when 22548 =>
table_value := 1312
;
when 22549 =>
table_value := 1328
;
when 22550 =>
table_value := 1312
;
when 22551 =>
table_value := 1328
;
when 22552 =>
table_value := 1328
;
when 22553 =>
table_value := 1328
;
when 22554 =>
table_value := 1328
;
when 22555 =>
table_value := 1328
;
when 22556 =>
table_value := 1328
;
when 22557 =>
table_value := 1312
;
when 22558 =>
table_value := 1312
;
when 22559 =>
table_value := 1312
;
when 22560 =>
table_value := 1312
;
when 22561 =>
table_value := 1312
;
when 22562 =>
table_value := 1296
;
when 22563 =>
table_value := 1280
;
when 22564 =>
table_value := 1280
;
when 22565 =>
table_value := 1264
;
when 22566 =>
table_value := 1248
;
when 22567 =>
table_value := 1232
;
when 22568 =>
table_value := 1232
;
when 22569 =>
table_value := 1232
;
when 22570 =>
table_value := 1216
;
when 22571 =>
table_value := 1184
;
when 22572 =>
table_value := 1168
;
when 22573 =>
table_value := 1168
;
when 22574 =>
table_value := 1152
;
when 22575 =>
table_value := 1136
;
when 22576 =>
table_value := 1104
;
when 22577 =>
table_value := 1088
;
when 22578 =>
table_value := 1072
;
when 22579 =>
table_value := 1056
;
when 22580 =>
table_value := 1040
;
when 22581 =>
table_value := 1024
;
when 22582 =>
table_value := 1008
;
when 22583 =>
table_value := 992
;
when 22584 =>
table_value := 960
;
when 22585 =>
table_value := 944
;
when 22586 =>
table_value := 944
;
when 22587 =>
table_value := 912
;
when 22588 =>
table_value := 912
;
when 22589 =>
table_value := 896
;
when 22590 =>
table_value := 864
;
when 22591 =>
table_value := 848
;
when 22592 =>
table_value := 832
;
when 22593 =>
table_value := 832
;
when 22594 =>
table_value := 816
;
when 22595 =>
table_value := 800
;
when 22596 =>
table_value := 784
;
when 22597 =>
table_value := 768
;
when 22598 =>
table_value := 768
;
when 22599 =>
table_value := 736
;
when 22600 =>
table_value := 736
;
when 22601 =>
table_value := 736
;
when 22602 =>
table_value := 720
;
when 22603 =>
table_value := 688
;
when 22604 =>
table_value := 688
;
when 22605 =>
table_value := 672
;
when 22606 =>
table_value := 640
;
when 22607 =>
table_value := 640
;
when 22608 =>
table_value := 640
;
when 22609 =>
table_value := 624
;
when 22610 =>
table_value := 624
;
when 22611 =>
table_value := 608
;
when 22612 =>
table_value := 592
;
when 22613 =>
table_value := 592
;
when 22614 =>
table_value := 576
;
when 22615 =>
table_value := 576
;
when 22616 =>
table_value := 560
;
when 22617 =>
table_value := 544
;
when 22618 =>
table_value := 528
;
when 22619 =>
table_value := 528
;
when 22620 =>
table_value := 512
;
when 22621 =>
table_value := 512
;
when 22622 =>
table_value := 512
;
when 22623 =>
table_value := 480
;
when 22624 =>
table_value := 480
;
when 22625 =>
table_value := 464
;
when 22626 =>
table_value := 448
;
when 22627 =>
table_value := 432
;
when 22628 =>
table_value := 416
;
when 22629 =>
table_value := 416
;
when 22630 =>
table_value := 400
;
when 22631 =>
table_value := 416
;
when 22632 =>
table_value := 384
;
when 22633 =>
table_value := 384
;
when 22634 =>
table_value := 384
;
when 22635 =>
table_value := 352
;
when 22636 =>
table_value := 352
;
when 22637 =>
table_value := 352
;
when 22638 =>
table_value := 336
;
when 22639 =>
table_value := 304
;
when 22640 =>
table_value := 304
;
when 22641 =>
table_value := 304
;
when 22642 =>
table_value := 304
;
when 22643 =>
table_value := 288
;
when 22644 =>
table_value := 272
;
when 22645 =>
table_value := 272
;
when 22646 =>
table_value := 256
;
when 22647 =>
table_value := 240
;
when 22648 =>
table_value := 240
;
when 22649 =>
table_value := 224
;
when 22650 =>
table_value := 224
;
when 22651 =>
table_value := 192
;
when 22652 =>
table_value := 192
;
when 22653 =>
table_value := 176
;
when 22654 =>
table_value := 160
;
when 22655 =>
table_value := 160
;
when 22656 =>
table_value := 160
;
when 22657 =>
table_value := 144
;
when 22658 =>
table_value := 144
;
when 22659 =>
table_value := 128
;
when 22660 =>
table_value := 128
;
when 22661 =>
table_value := 96
;
when 22662 =>
table_value := 96
;
when 22663 =>
table_value := 80
;
when 22664 =>
table_value := 80
;
when 22665 =>
table_value := 64
;
when 22666 =>
table_value := 64
;
when 22667 =>
table_value := 64
;
when 22668 =>
table_value := 48
;
when 22669 =>
table_value := 48
;
when 22670 =>
table_value := 48
;
when 22671 =>
table_value := 32
;
when 22672 =>
table_value := 16
;
when 22673 =>
table_value := 0
;
when 22674 =>
table_value := 0
;
when 22675 =>
table_value := 0
;
when 22676 =>
table_value := 0
;
when 22677 =>
table_value := 0
;
when 22678 =>
table_value := 1048560
;
when 22679 =>
table_value := 1048560
;
when 22680 =>
table_value := 1048560
;
when 22681 =>
table_value := 1048560
;
when 22682 =>
table_value := 1048528
;
when 22683 =>
table_value := 1048512
;
when 22684 =>
table_value := 1048512
;
when 22685 =>
table_value := 1048512
;
when 22686 =>
table_value := 1048512
;
when 22687 =>
table_value := 1048496
;
when 22688 =>
table_value := 1048496
;
when 22689 =>
table_value := 1048496
;
when 22690 =>
table_value := 1048480
;
when 22691 =>
table_value := 1048480
;
when 22692 =>
table_value := 1048464
;
when 22693 =>
table_value := 1048464
;
when 22694 =>
table_value := 1048464
;
when 22695 =>
table_value := 1048448
;
when 22696 =>
table_value := 1048448
;
when 22697 =>
table_value := 1048432
;
when 22698 =>
table_value := 1048432
;
when 22699 =>
table_value := 1048416
;
when 22700 =>
table_value := 1048416
;
when 22701 =>
table_value := 1048416
;
when 22702 =>
table_value := 1048400
;
when 22703 =>
table_value := 1048400
;
when 22704 =>
table_value := 1048384
;
when 22705 =>
table_value := 1048368
;
when 22706 =>
table_value := 1048352
;
when 22707 =>
table_value := 1048352
;
when 22708 =>
table_value := 1048352
;
when 22709 =>
table_value := 1048352
;
when 22710 =>
table_value := 1048336
;
when 22711 =>
table_value := 1048304
;
when 22712 =>
table_value := 1048304
;
when 22713 =>
table_value := 1048288
;
when 22714 =>
table_value := 1048272
;
when 22715 =>
table_value := 1048272
;
when 22716 =>
table_value := 1048256
;
when 22717 =>
table_value := 1048240
;
when 22718 =>
table_value := 1048256
;
when 22719 =>
table_value := 1048208
;
when 22720 =>
table_value := 1048208
;
when 22721 =>
table_value := 1048208
;
when 22722 =>
table_value := 1048192
;
when 22723 =>
table_value := 1048160
;
when 22724 =>
table_value := 1048160
;
when 22725 =>
table_value := 1048128
;
when 22726 =>
table_value := 1048128
;
when 22727 =>
table_value := 1048112
;
when 22728 =>
table_value := 1048096
;
when 22729 =>
table_value := 1048080
;
when 22730 =>
table_value := 1048064
;
when 22731 =>
table_value := 1048048
;
when 22732 =>
table_value := 1048032
;
when 22733 =>
table_value := 1048016
;
when 22734 =>
table_value := 1048016
;
when 22735 =>
table_value := 1047984
;
when 22736 =>
table_value := 1047968
;
when 22737 =>
table_value := 1047968
;
when 22738 =>
table_value := 1047936
;
when 22739 =>
table_value := 1047920
;
when 22740 =>
table_value := 1047904
;
when 22741 =>
table_value := 1047888
;
when 22742 =>
table_value := 1047872
;
when 22743 =>
table_value := 1047856
;
when 22744 =>
table_value := 1047840
;
when 22745 =>
table_value := 1047824
;
when 22746 =>
table_value := 1047808
;
when 22747 =>
table_value := 1047808
;
when 22748 =>
table_value := 1047792
;
when 22749 =>
table_value := 1047776
;
when 22750 =>
table_value := 1047760
;
when 22751 =>
table_value := 1047744
;
when 22752 =>
table_value := 1047744
;
when 22753 =>
table_value := 1047728
;
when 22754 =>
table_value := 1047728
;
when 22755 =>
table_value := 1047712
;
when 22756 =>
table_value := 1047712
;
when 22757 =>
table_value := 1047680
;
when 22758 =>
table_value := 1047680
;
when 22759 =>
table_value := 1047664
;
when 22760 =>
table_value := 1047664
;
when 22761 =>
table_value := 1047648
;
when 22762 =>
table_value := 1047648
;
when 22763 =>
table_value := 1047648
;
when 22764 =>
table_value := 1047648
;
when 22765 =>
table_value := 1047632
;
when 22766 =>
table_value := 1047648
;
when 22767 =>
table_value := 1047632
;
when 22768 =>
table_value := 1047632
;
when 22769 =>
table_value := 1047632
;
when 22770 =>
table_value := 1047632
;
when 22771 =>
table_value := 1047616
;
when 22772 =>
table_value := 1047616
;
when 22773 =>
table_value := 1047632
;
when 22774 =>
table_value := 1047632
;
when 22775 =>
table_value := 1047632
;
when 22776 =>
table_value := 1047632
;
when 22777 =>
table_value := 1047648
;
when 22778 =>
table_value := 1047648
;
when 22779 =>
table_value := 1047648
;
when 22780 =>
table_value := 1047648
;
when 22781 =>
table_value := 1047664
;
when 22782 =>
table_value := 1047664
;
when 22783 =>
table_value := 1047664
;
when 22784 =>
table_value := 1047680
;
when 22785 =>
table_value := 1047696
;
when 22786 =>
table_value := 1047696
;
when 22787 =>
table_value := 1047712
;
when 22788 =>
table_value := 1047728
;
when 22789 =>
table_value := 1047728
;
when 22790 =>
table_value := 1047728
;
when 22791 =>
table_value := 1047744
;
when 22792 =>
table_value := 1047744
;
when 22793 =>
table_value := 1047760
;
when 22794 =>
table_value := 1047776
;
when 22795 =>
table_value := 1047792
;
when 22796 =>
table_value := 1047808
;
when 22797 =>
table_value := 1047824
;
when 22798 =>
table_value := 1047824
;
when 22799 =>
table_value := 1047840
;
when 22800 =>
table_value := 1047856
;
when 22801 =>
table_value := 1047872
;
when 22802 =>
table_value := 1047888
;
when 22803 =>
table_value := 1047888
;
when 22804 =>
table_value := 1047904
;
when 22805 =>
table_value := 1047920
;
when 22806 =>
table_value := 1047936
;
when 22807 =>
table_value := 1047952
;
when 22808 =>
table_value := 1047968
;
when 22809 =>
table_value := 1047968
;
when 22810 =>
table_value := 1047968
;
when 22811 =>
table_value := 1048000
;
when 22812 =>
table_value := 1048016
;
when 22813 =>
table_value := 1048032
;
when 22814 =>
table_value := 1048048
;
when 22815 =>
table_value := 1048064
;
when 22816 =>
table_value := 1048080
;
when 22817 =>
table_value := 1048096
;
when 22818 =>
table_value := 1048112
;
when 22819 =>
table_value := 1048112
;
when 22820 =>
table_value := 1048128
;
when 22821 =>
table_value := 1048144
;
when 22822 =>
table_value := 1048160
;
when 22823 =>
table_value := 1048176
;
when 22824 =>
table_value := 1048192
;
when 22825 =>
table_value := 1048208
;
when 22826 =>
table_value := 1048208
;
when 22827 =>
table_value := 1048240
;
when 22828 =>
table_value := 1048256
;
when 22829 =>
table_value := 1048272
;
when 22830 =>
table_value := 1048288
;
when 22831 =>
table_value := 1048304
;
when 22832 =>
table_value := 1048320
;
when 22833 =>
table_value := 1048336
;
when 22834 =>
table_value := 1048352
;
when 22835 =>
table_value := 1048352
;
when 22836 =>
table_value := 1048384
;
when 22837 =>
table_value := 1048400
;
when 22838 =>
table_value := 1048416
;
when 22839 =>
table_value := 1048432
;
when 22840 =>
table_value := 1048448
;
when 22841 =>
table_value := 1048480
;
when 22842 =>
table_value := 1048480
;
when 22843 =>
table_value := 1048496
;
when 22844 =>
table_value := 1048528
;
when 22845 =>
table_value := 1048528
;
when 22846 =>
table_value := 1048560
;
when 22847 =>
table_value := 1048560
;
when 22848 =>
table_value := 0
;
when 22849 =>
table_value := 0
;
when 22850 =>
table_value := 0
;
when 22851 =>
table_value := 16
;
when 22852 =>
table_value := 32
;
when 22853 =>
table_value := 48
;
when 22854 =>
table_value := 64
;
when 22855 =>
table_value := 64
;
when 22856 =>
table_value := 64
;
when 22857 =>
table_value := 96
;
when 22858 =>
table_value := 80
;
when 22859 =>
table_value := 96
;
when 22860 =>
table_value := 112
;
when 22861 =>
table_value := 112
;
when 22862 =>
table_value := 96
;
when 22863 =>
table_value := 128
;
when 22864 =>
table_value := 128
;
when 22865 =>
table_value := 128
;
when 22866 =>
table_value := 128
;
when 22867 =>
table_value := 128
;
when 22868 =>
table_value := 128
;
when 22869 =>
table_value := 128
;
when 22870 =>
table_value := 128
;
when 22871 =>
table_value := 128
;
when 22872 =>
table_value := 112
;
when 22873 =>
table_value := 112
;
when 22874 =>
table_value := 112
;
when 22875 =>
table_value := 96
;
when 22876 =>
table_value := 96
;
when 22877 =>
table_value := 80
;
when 22878 =>
table_value := 80
;
when 22879 =>
table_value := 64
;
when 22880 =>
table_value := 64
;
when 22881 =>
table_value := 32
;
when 22882 =>
table_value := 32
;
when 22883 =>
table_value := 16
;
when 22884 =>
table_value := 0
;
when 22885 =>
table_value := 0
;
when 22886 =>
table_value := 0
;
when 22887 =>
table_value := 1048560
;
when 22888 =>
table_value := 1048528
;
when 22889 =>
table_value := 1048512
;
when 22890 =>
table_value := 1048496
;
when 22891 =>
table_value := 1048480
;
when 22892 =>
table_value := 1048448
;
when 22893 =>
table_value := 1048432
;
when 22894 =>
table_value := 1048416
;
when 22895 =>
table_value := 1048400
;
when 22896 =>
table_value := 1048368
;
when 22897 =>
table_value := 1048352
;
when 22898 =>
table_value := 1048336
;
when 22899 =>
table_value := 1048304
;
when 22900 =>
table_value := 1048304
;
when 22901 =>
table_value := 1048288
;
when 22902 =>
table_value := 1048272
;
when 22903 =>
table_value := 1048240
;
when 22904 =>
table_value := 1048224
;
when 22905 =>
table_value := 1048208
;
when 22906 =>
table_value := 1048192
;
when 22907 =>
table_value := 1048176
;
when 22908 =>
table_value := 1048160
;
when 22909 =>
table_value := 1048128
;
when 22910 =>
table_value := 1048128
;
when 22911 =>
table_value := 1048128
;
when 22912 =>
table_value := 1048128
;
when 22913 =>
table_value := 1048112
;
when 22914 =>
table_value := 1048096
;
when 22915 =>
table_value := 1048064
;
when 22916 =>
table_value := 1048048
;
when 22917 =>
table_value := 1048048
;
when 22918 =>
table_value := 1048032
;
when 22919 =>
table_value := 1048032
;
when 22920 =>
table_value := 1048032
;
when 22921 =>
table_value := 1048016
;
when 22922 =>
table_value := 1048016
;
when 22923 =>
table_value := 1048000
;
when 22924 =>
table_value := 1048000
;
when 22925 =>
table_value := 1047984
;
when 22926 =>
table_value := 1047984
;
when 22927 =>
table_value := 1047984
;
when 22928 =>
table_value := 1047968
;
when 22929 =>
table_value := 1047984
;
when 22930 =>
table_value := 1047968
;
when 22931 =>
table_value := 1047968
;
when 22932 =>
table_value := 1047984
;
when 22933 =>
table_value := 1047968
;
when 22934 =>
table_value := 1047968
;
when 22935 =>
table_value := 1047968
;
when 22936 =>
table_value := 1047952
;
when 22937 =>
table_value := 1047968
;
when 22938 =>
table_value := 1047968
;
when 22939 =>
table_value := 1047968
;
when 22940 =>
table_value := 1047968
;
when 22941 =>
table_value := 1047968
;
when 22942 =>
table_value := 1047968
;
when 22943 =>
table_value := 1047968
;
when 22944 =>
table_value := 1047968
;
when 22945 =>
table_value := 1047968
;
when 22946 =>
table_value := 1047952
;
when 22947 =>
table_value := 1047968
;
when 22948 =>
table_value := 1047968
;
when 22949 =>
table_value := 1047968
;
when 22950 =>
table_value := 1047952
;
when 22951 =>
table_value := 1047968
;
when 22952 =>
table_value := 1047968
;
when 22953 =>
table_value := 1047968
;
when 22954 =>
table_value := 1047952
;
when 22955 =>
table_value := 1047968
;
when 22956 =>
table_value := 1047968
;
when 22957 =>
table_value := 1047968
;
when 22958 =>
table_value := 1047952
;
when 22959 =>
table_value := 1047968
;
when 22960 =>
table_value := 1047968
;
when 22961 =>
table_value := 1047968
;
when 22962 =>
table_value := 1047968
;
when 22963 =>
table_value := 1047968
;
when 22964 =>
table_value := 1047968
;
when 22965 =>
table_value := 1047968
;
when 22966 =>
table_value := 1047968
;
when 22967 =>
table_value := 1047968
;
when 22968 =>
table_value := 1047968
;
when 22969 =>
table_value := 1047968
;
when 22970 =>
table_value := 1047968
;
when 22971 =>
table_value := 1047968
;
when 22972 =>
table_value := 1047984
;
when 22973 =>
table_value := 1047984
;
when 22974 =>
table_value := 1048000
;
when 22975 =>
table_value := 1047984
;
when 22976 =>
table_value := 1048000
;
when 22977 =>
table_value := 1048016
;
when 22978 =>
table_value := 1048016
;
when 22979 =>
table_value := 1048016
;
when 22980 =>
table_value := 1048016
;
when 22981 =>
table_value := 1048032
;
when 22982 =>
table_value := 1048048
;
when 22983 =>
table_value := 1048048
;
when 22984 =>
table_value := 1048048
;
when 22985 =>
table_value := 1048048
;
when 22986 =>
table_value := 1048064
;
when 22987 =>
table_value := 1048064
;
when 22988 =>
table_value := 1048080
;
when 22989 =>
table_value := 1048080
;
when 22990 =>
table_value := 1048096
;
when 22991 =>
table_value := 1048112
;
when 22992 =>
table_value := 1048128
;
when 22993 =>
table_value := 1048128
;
when 22994 =>
table_value := 1048144
;
when 22995 =>
table_value := 1048160
;
when 22996 =>
table_value := 1048160
;
when 22997 =>
table_value := 1048176
;
when 22998 =>
table_value := 1048176
;
when 22999 =>
table_value := 1048208
;
when 23000 =>
table_value := 1048208
;
when 23001 =>
table_value := 1048224
;
when 23002 =>
table_value := 1048224
;
when 23003 =>
table_value := 1048240
;
when 23004 =>
table_value := 1048240
;
when 23005 =>
table_value := 1048256
;
when 23006 =>
table_value := 1048272
;
when 23007 =>
table_value := 1048272
;
when 23008 =>
table_value := 1048288
;
when 23009 =>
table_value := 1048288
;
when 23010 =>
table_value := 1048320
;
when 23011 =>
table_value := 1048320
;
when 23012 =>
table_value := 1048336
;
when 23013 =>
table_value := 1048352
;
when 23014 =>
table_value := 1048352
;
when 23015 =>
table_value := 1048352
;
when 23016 =>
table_value := 1048368
;
when 23017 =>
table_value := 1048384
;
when 23018 =>
table_value := 1048400
;
when 23019 =>
table_value := 1048400
;
when 23020 =>
table_value := 1048416
;
when 23021 =>
table_value := 1048416
;
when 23022 =>
table_value := 1048416
;
when 23023 =>
table_value := 1048416
;
when 23024 =>
table_value := 1048432
;
when 23025 =>
table_value := 1048448
;
when 23026 =>
table_value := 1048464
;
when 23027 =>
table_value := 1048464
;
when 23028 =>
table_value := 1048480
;
when 23029 =>
table_value := 1048480
;
when 23030 =>
table_value := 1048480
;
when 23031 =>
table_value := 1048512
;
when 23032 =>
table_value := 1048512
;
when 23033 =>
table_value := 1048512
;
when 23034 =>
table_value := 1048512
;
when 23035 =>
table_value := 1048528
;
when 23036 =>
table_value := 1048528
;
when 23037 =>
table_value := 1048528
;
when 23038 =>
table_value := 1048528
;
when 23039 =>
table_value := 1048528
;
when 23040 =>
table_value := 1048544
;
when 23041 =>
table_value := 1048560
;
when 23042 =>
table_value := 1048560
;
when 23043 =>
table_value := 1048560
;
when 23044 =>
table_value := 1048560
;
when 23045 =>
table_value := 0
;
when 23046 =>
table_value := 0
;
when 23047 =>
table_value := 0
;
when 23048 =>
table_value := 0
;
when 23049 =>
table_value := 0
;
when 23050 =>
table_value := 0
;
when 23051 =>
table_value := 0
;
when 23052 =>
table_value := 0
;
when 23053 =>
table_value := 0
;
when 23054 =>
table_value := 0
;
when 23055 =>
table_value := 0
;
when 23056 =>
table_value := 0
;
when 23057 =>
table_value := 0
;
when 23058 =>
table_value := 0
;
when 23059 =>
table_value := 0
;
when 23060 =>
table_value := 0
;
when 23061 =>
table_value := 0
;
when 23062 =>
table_value := 0
;
when 23063 =>
table_value := 0
;
when 23064 =>
table_value := 0
;
when 23065 =>
table_value := 1048560
;
when 23066 =>
table_value := 1048560
;
when 23067 =>
table_value := 1048560
;
when 23068 =>
table_value := 1048560
;
when 23069 =>
table_value := 1048560
;
when 23070 =>
table_value := 1048560
;
when 23071 =>
table_value := 1048560
;
when 23072 =>
table_value := 1048560
;
when 23073 =>
table_value := 1048560
;
when 23074 =>
table_value := 1048544
;
when 23075 =>
table_value := 1048544
;
when 23076 =>
table_value := 1048544
;
when 23077 =>
table_value := 1048544
;
when 23078 =>
table_value := 1048528
;
when 23079 =>
table_value := 1048528
;
when 23080 =>
table_value := 1048528
;
when 23081 =>
table_value := 1048528
;
when 23082 =>
table_value := 1048528
;
when 23083 =>
table_value := 1048528
;
when 23084 =>
table_value := 1048512
;
when 23085 =>
table_value := 1048512
;
when 23086 =>
table_value := 1048512
;
when 23087 =>
table_value := 1048496
;
when 23088 =>
table_value := 1048496
;
when 23089 =>
table_value := 1048512
;
when 23090 =>
table_value := 1048496
;
when 23091 =>
table_value := 1048496
;
when 23092 =>
table_value := 1048496
;
when 23093 =>
table_value := 1048480
;
when 23094 =>
table_value := 1048464
;
when 23095 =>
table_value := 1048480
;
when 23096 =>
table_value := 1048464
;
when 23097 =>
table_value := 1048464
;
when 23098 =>
table_value := 1048448
;
when 23099 =>
table_value := 1048432
;
when 23100 =>
table_value := 1048432
;
when 23101 =>
table_value := 1048432
;
when 23102 =>
table_value := 1048432
;
when 23103 =>
table_value := 1048432
;
when 23104 =>
table_value := 1048416
;
when 23105 =>
table_value := 1048432
;
when 23106 =>
table_value := 1048416
;
when 23107 =>
table_value := 1048416
;
when 23108 =>
table_value := 1048400
;
when 23109 =>
table_value := 1048400
;
when 23110 =>
table_value := 1048384
;
when 23111 =>
table_value := 1048384
;
when 23112 =>
table_value := 1048384
;
when 23113 =>
table_value := 1048368
;
when 23114 =>
table_value := 1048352
;
when 23115 =>
table_value := 1048368
;
when 23116 =>
table_value := 1048352
;
when 23117 =>
table_value := 1048352
;
when 23118 =>
table_value := 1048368
;
when 23119 =>
table_value := 1048352
;
when 23120 =>
table_value := 1048336
;
when 23121 =>
table_value := 1048336
;
when 23122 =>
table_value := 1048320
;
when 23123 =>
table_value := 1048320
;
when 23124 =>
table_value := 1048320
;
when 23125 =>
table_value := 1048320
;
when 23126 =>
table_value := 1048320
;
when 23127 =>
table_value := 1048320
;
when 23128 =>
table_value := 1048304
;
when 23129 =>
table_value := 1048304
;
when 23130 =>
table_value := 1048320
;
when 23131 =>
table_value := 1048304
;
when 23132 =>
table_value := 1048320
;
when 23133 =>
table_value := 1048304
;
when 23134 =>
table_value := 1048304
;
when 23135 =>
table_value := 1048304
;
when 23136 =>
table_value := 1048304
;
when 23137 =>
table_value := 1048304
;
when 23138 =>
table_value := 1048320
;
when 23139 =>
table_value := 1048320
;
when 23140 =>
table_value := 1048320
;
when 23141 =>
table_value := 1048320
;
when 23142 =>
table_value := 1048304
;
when 23143 =>
table_value := 1048336
;
when 23144 =>
table_value := 1048320
;
when 23145 =>
table_value := 1048320
;
when 23146 =>
table_value := 1048320
;
when 23147 =>
table_value := 1048320
;
when 23148 =>
table_value := 1048336
;
when 23149 =>
table_value := 1048336
;
when 23150 =>
table_value := 1048336
;
when 23151 =>
table_value := 1048336
;
when 23152 =>
table_value := 1048336
;
when 23153 =>
table_value := 1048336
;
when 23154 =>
table_value := 1048352
;
when 23155 =>
table_value := 1048352
;
when 23156 =>
table_value := 1048352
;
when 23157 =>
table_value := 1048352
;
when 23158 =>
table_value := 1048352
;
when 23159 =>
table_value := 1048352
;
when 23160 =>
table_value := 1048352
;
when 23161 =>
table_value := 1048352
;
when 23162 =>
table_value := 1048368
;
when 23163 =>
table_value := 1048352
;
when 23164 =>
table_value := 1048368
;
when 23165 =>
table_value := 1048368
;
when 23166 =>
table_value := 1048368
;
when 23167 =>
table_value := 1048368
;
when 23168 =>
table_value := 1048384
;
when 23169 =>
table_value := 1048368
;
when 23170 =>
table_value := 1048384
;
when 23171 =>
table_value := 1048384
;
when 23172 =>
table_value := 1048400
;
when 23173 =>
table_value := 1048384
;
when 23174 =>
table_value := 1048416
;
when 23175 =>
table_value := 1048416
;
when 23176 =>
table_value := 1048432
;
when 23177 =>
table_value := 1048432
;
when 23178 =>
table_value := 1048432
;
when 23179 =>
table_value := 1048432
;
when 23180 =>
table_value := 1048448
;
when 23181 =>
table_value := 1048448
;
when 23182 =>
table_value := 1048448
;
when 23183 =>
table_value := 1048448
;
when 23184 =>
table_value := 1048464
;
when 23185 =>
table_value := 1048480
;
when 23186 =>
table_value := 1048480
;
when 23187 =>
table_value := 1048480
;
when 23188 =>
table_value := 1048496
;
when 23189 =>
table_value := 1048496
;
when 23190 =>
table_value := 1048512
;
when 23191 =>
table_value := 1048512
;
when 23192 =>
table_value := 1048528
;
when 23193 =>
table_value := 1048528
;
when 23194 =>
table_value := 1048560
;
when 23195 =>
table_value := 1048560
;
when 23196 =>
table_value := 0
;
when 23197 =>
table_value := 0
;
when 23198 =>
table_value := 0
;
when 23199 =>
table_value := 0
;
when 23200 =>
table_value := 16
;
when 23201 =>
table_value := 16
;
when 23202 =>
table_value := 16
;
when 23203 =>
table_value := 32
;
when 23204 =>
table_value := 32
;
when 23205 =>
table_value := 48
;
when 23206 =>
table_value := 48
;
when 23207 =>
table_value := 48
;
when 23208 =>
table_value := 80
;
when 23209 =>
table_value := 64
;
when 23210 =>
table_value := 64
;
when 23211 =>
table_value := 80
;
when 23212 =>
table_value := 80
;
when 23213 =>
table_value := 80
;
when 23214 =>
table_value := 96
;
when 23215 =>
table_value := 96
;
when 23216 =>
table_value := 80
;
when 23217 =>
table_value := 96
;
when 23218 =>
table_value := 112
;
when 23219 =>
table_value := 112
;
when 23220 =>
table_value := 112
;
when 23221 =>
table_value := 112
;
when 23222 =>
table_value := 112
;
when 23223 =>
table_value := 112
;
when 23224 =>
table_value := 112
;
when 23225 =>
table_value := 96
;
when 23226 =>
table_value := 112
;
when 23227 =>
table_value := 96
;
when 23228 =>
table_value := 96
;
when 23229 =>
table_value := 80
;
when 23230 =>
table_value := 80
;
when 23231 =>
table_value := 80
;
when 23232 =>
table_value := 64
;
when 23233 =>
table_value := 80
;
when 23234 =>
table_value := 64
;
when 23235 =>
table_value := 64
;
when 23236 =>
table_value := 64
;
when 23237 =>
table_value := 64
;
when 23238 =>
table_value := 64
;
when 23239 =>
table_value := 48
;
when 23240 =>
table_value := 48
;
when 23241 =>
table_value := 48
;
when 23242 =>
table_value := 32
;
when 23243 =>
table_value := 48
;
when 23244 =>
table_value := 32
;
when 23245 =>
table_value := 32
;
when 23246 =>
table_value := 32
;
when 23247 =>
table_value := 16
;
when 23248 =>
table_value := 16
;
when 23249 =>
table_value := 16
;
when 23250 =>
table_value := 0
;
when 23251 =>
table_value := 0
;
when 23252 =>
table_value := 16
;
when 23253 =>
table_value := 16
;
when 23254 =>
table_value := 0
;
when 23255 =>
table_value := 0
;
when 23256 =>
table_value := 0
;
when 23257 =>
table_value := 16
;
when 23258 =>
table_value := 0
;
when 23259 =>
table_value := 16
;
when 23260 =>
table_value := 32
;
when 23261 =>
table_value := 16
;
when 23262 =>
table_value := 32
;
when 23263 =>
table_value := 32
;
when 23264 =>
table_value := 48
;
when 23265 =>
table_value := 48
;
when 23266 =>
table_value := 64
;
when 23267 =>
table_value := 64
;
when 23268 =>
table_value := 80
;
when 23269 =>
table_value := 80
;
when 23270 =>
table_value := 96
;
when 23271 =>
table_value := 96
;
when 23272 =>
table_value := 112
;
when 23273 =>
table_value := 128
;
when 23274 =>
table_value := 128
;
when 23275 =>
table_value := 144
;
when 23276 =>
table_value := 144
;
when 23277 =>
table_value := 160
;
when 23278 =>
table_value := 176
;
when 23279 =>
table_value := 192
;
when 23280 =>
table_value := 208
;
when 23281 =>
table_value := 224
;
when 23282 =>
table_value := 224
;
when 23283 =>
table_value := 256
;
when 23284 =>
table_value := 256
;
when 23285 =>
table_value := 288
;
when 23286 =>
table_value := 304
;
when 23287 =>
table_value := 320
;
when 23288 =>
table_value := 336
;
when 23289 =>
table_value := 352
;
when 23290 =>
table_value := 368
;
when 23291 =>
table_value := 384
;
when 23292 =>
table_value := 400
;
when 23293 =>
table_value := 416
;
when 23294 =>
table_value := 432
;
when 23295 =>
table_value := 448
;
when 23296 =>
table_value := 480
;
when 23297 =>
table_value := 496
;
when 23298 =>
table_value := 480
;
when 23299 =>
table_value := 512
;
when 23300 =>
table_value := 528
;
when 23301 =>
table_value := 544
;
when 23302 =>
table_value := 560
;
when 23303 =>
table_value := 592
;
when 23304 =>
table_value := 608
;
when 23305 =>
table_value := 624
;
when 23306 =>
table_value := 624
;
when 23307 =>
table_value := 656
;
when 23308 =>
table_value := 672
;
when 23309 =>
table_value := 688
;
when 23310 =>
table_value := 688
;
when 23311 =>
table_value := 720
;
when 23312 =>
table_value := 720
;
when 23313 =>
table_value := 736
;
when 23314 =>
table_value := 752
;
when 23315 =>
table_value := 784
;
when 23316 =>
table_value := 784
;
when 23317 =>
table_value := 784
;
when 23318 =>
table_value := 832
;
when 23319 =>
table_value := 832
;
when 23320 =>
table_value := 848
;
when 23321 =>
table_value := 848
;
when 23322 =>
table_value := 864
;
when 23323 =>
table_value := 880
;
when 23324 =>
table_value := 896
;
when 23325 =>
table_value := 912
;
when 23326 =>
table_value := 912
;
when 23327 =>
table_value := 928
;
when 23328 =>
table_value := 944
;
when 23329 =>
table_value := 944
;
when 23330 =>
table_value := 960
;
when 23331 =>
table_value := 976
;
when 23332 =>
table_value := 992
;
when 23333 =>
table_value := 1008
;
when 23334 =>
table_value := 1024
;
when 23335 =>
table_value := 1024
;
when 23336 =>
table_value := 1056
;
when 23337 =>
table_value := 1072
;
when 23338 =>
table_value := 1072
;
when 23339 =>
table_value := 1088
;
when 23340 =>
table_value := 1104
;
when 23341 =>
table_value := 1104
;
when 23342 =>
table_value := 1104
;
when 23343 =>
table_value := 1136
;
when 23344 =>
table_value := 1136
;
when 23345 =>
table_value := 1136
;
when 23346 =>
table_value := 1152
;
when 23347 =>
table_value := 1168
;
when 23348 =>
table_value := 1184
;
when 23349 =>
table_value := 1184
;
when 23350 =>
table_value := 1200
;
when 23351 =>
table_value := 1216
;
when 23352 =>
table_value := 1216
;
when 23353 =>
table_value := 1232
;
when 23354 =>
table_value := 1232
;
when 23355 =>
table_value := 1232
;
when 23356 =>
table_value := 1248
;
when 23357 =>
table_value := 1232
;
when 23358 =>
table_value := 1248
;
when 23359 =>
table_value := 1248
;
when 23360 =>
table_value := 1264
;
when 23361 =>
table_value := 1264
;
when 23362 =>
table_value := 1248
;
when 23363 =>
table_value := 1264
;
when 23364 =>
table_value := 1264
;
when 23365 =>
table_value := 1264
;
when 23366 =>
table_value := 1280
;
when 23367 =>
table_value := 1264
;
when 23368 =>
table_value := 1264
;
when 23369 =>
table_value := 1280
;
when 23370 =>
table_value := 1280
;
when 23371 =>
table_value := 1280
;
when 23372 =>
table_value := 1280
;
when 23373 =>
table_value := 1264
;
when 23374 =>
table_value := 1264
;
when 23375 =>
table_value := 1264
;
when 23376 =>
table_value := 1248
;
when 23377 =>
table_value := 1248
;
when 23378 =>
table_value := 1232
;
when 23379 =>
table_value := 1232
;
when 23380 =>
table_value := 1232
;
when 23381 =>
table_value := 1232
;
when 23382 =>
table_value := 1232
;
when 23383 =>
table_value := 1216
;
when 23384 =>
table_value := 1200
;
when 23385 =>
table_value := 1200
;
when 23386 =>
table_value := 1168
;
when 23387 =>
table_value := 1168
;
when 23388 =>
table_value := 1152
;
when 23389 =>
table_value := 1136
;
when 23390 =>
table_value := 1136
;
when 23391 =>
table_value := 1120
;
when 23392 =>
table_value := 1120
;
when 23393 =>
table_value := 1088
;
when 23394 =>
table_value := 1072
;
when 23395 =>
table_value := 1072
;
when 23396 =>
table_value := 1072
;
when 23397 =>
table_value := 1040
;
when 23398 =>
table_value := 1024
;
when 23399 =>
table_value := 1008
;
when 23400 =>
table_value := 992
;
when 23401 =>
table_value := 976
;
when 23402 =>
table_value := 976
;
when 23403 =>
table_value := 960
;
when 23404 =>
table_value := 944
;
when 23405 =>
table_value := 928
;
when 23406 =>
table_value := 912
;
when 23407 =>
table_value := 896
;
when 23408 =>
table_value := 864
;
when 23409 =>
table_value := 864
;
when 23410 =>
table_value := 848
;
when 23411 =>
table_value := 832
;
when 23412 =>
table_value := 816
;
when 23413 =>
table_value := 784
;
when 23414 =>
table_value := 768
;
when 23415 =>
table_value := 752
;
when 23416 =>
table_value := 736
;
when 23417 =>
table_value := 704
;
when 23418 =>
table_value := 688
;
when 23419 =>
table_value := 672
;
when 23420 =>
table_value := 640
;
when 23421 =>
table_value := 624
;
when 23422 =>
table_value := 592
;
when 23423 =>
table_value := 592
;
when 23424 =>
table_value := 560
;
when 23425 =>
table_value := 544
;
when 23426 =>
table_value := 512
;
when 23427 =>
table_value := 496
;
when 23428 =>
table_value := 464
;
when 23429 =>
table_value := 448
;
when 23430 =>
table_value := 432
;
when 23431 =>
table_value := 400
;
when 23432 =>
table_value := 384
;
when 23433 =>
table_value := 368
;
when 23434 =>
table_value := 336
;
when 23435 =>
table_value := 320
;
when 23436 =>
table_value := 304
;
when 23437 =>
table_value := 288
;
when 23438 =>
table_value := 272
;
when 23439 =>
table_value := 256
;
when 23440 =>
table_value := 224
;
when 23441 =>
table_value := 224
;
when 23442 =>
table_value := 176
;
when 23443 =>
table_value := 176
;
when 23444 =>
table_value := 144
;
when 23445 =>
table_value := 144
;
when 23446 =>
table_value := 112
;
when 23447 =>
table_value := 80
;
when 23448 =>
table_value := 80
;
when 23449 =>
table_value := 64
;
when 23450 =>
table_value := 48
;
when 23451 =>
table_value := 48
;
when 23452 =>
table_value := 16
;
when 23453 =>
table_value := 0
;
when 23454 =>
table_value := 0
;
when 23455 =>
table_value := 0
;
when 23456 =>
table_value := 1048544
;
when 23457 =>
table_value := 1048528
;
when 23458 =>
table_value := 1048512
;
when 23459 =>
table_value := 1048512
;
when 23460 =>
table_value := 1048496
;
when 23461 =>
table_value := 1048480
;
when 23462 =>
table_value := 1048464
;
when 23463 =>
table_value := 1048464
;
when 23464 =>
table_value := 1048448
;
when 23465 =>
table_value := 1048432
;
when 23466 =>
table_value := 1048416
;
when 23467 =>
table_value := 1048416
;
when 23468 =>
table_value := 1048400
;
when 23469 =>
table_value := 1048384
;
when 23470 =>
table_value := 1048368
;
when 23471 =>
table_value := 1048368
;
when 23472 =>
table_value := 1048352
;
when 23473 =>
table_value := 1048352
;
when 23474 =>
table_value := 1048320
;
when 23475 =>
table_value := 1048336
;
when 23476 =>
table_value := 1048320
;
when 23477 =>
table_value := 1048304
;
when 23478 =>
table_value := 1048304
;
when 23479 =>
table_value := 1048304
;
when 23480 =>
table_value := 1048288
;
when 23481 =>
table_value := 1048288
;
when 23482 =>
table_value := 1048272
;
when 23483 =>
table_value := 1048272
;
when 23484 =>
table_value := 1048272
;
when 23485 =>
table_value := 1048256
;
when 23486 =>
table_value := 1048256
;
when 23487 =>
table_value := 1048256
;
when 23488 =>
table_value := 1048224
;
when 23489 =>
table_value := 1048224
;
when 23490 =>
table_value := 1048224
;
when 23491 =>
table_value := 1048208
;
when 23492 =>
table_value := 1048208
;
when 23493 =>
table_value := 1048192
;
when 23494 =>
table_value := 1048192
;
when 23495 =>
table_value := 1048176
;
when 23496 =>
table_value := 1048176
;
when 23497 =>
table_value := 1048176
;
when 23498 =>
table_value := 1048176
;
when 23499 =>
table_value := 1048160
;
when 23500 =>
table_value := 1048144
;
when 23501 =>
table_value := 1048160
;
when 23502 =>
table_value := 1048160
;
when 23503 =>
table_value := 1048144
;
when 23504 =>
table_value := 1048144
;
when 23505 =>
table_value := 1048144
;
when 23506 =>
table_value := 1048128
;
when 23507 =>
table_value := 1048128
;
when 23508 =>
table_value := 1048112
;
when 23509 =>
table_value := 1048128
;
when 23510 =>
table_value := 1048128
;
when 23511 =>
table_value := 1048128
;
when 23512 =>
table_value := 1048128
;
when 23513 =>
table_value := 1048128
;
when 23514 =>
table_value := 1048112
;
when 23515 =>
table_value := 1048128
;
when 23516 =>
table_value := 1048128
;
when 23517 =>
table_value := 1048144
;
when 23518 =>
table_value := 1048128
;
when 23519 =>
table_value := 1048128
;
when 23520 =>
table_value := 1048144
;
when 23521 =>
table_value := 1048128
;
when 23522 =>
table_value := 1048144
;
when 23523 =>
table_value := 1048128
;
when 23524 =>
table_value := 1048144
;
when 23525 =>
table_value := 1048160
;
when 23526 =>
table_value := 1048160
;
when 23527 =>
table_value := 1048160
;
when 23528 =>
table_value := 1048176
;
when 23529 =>
table_value := 1048160
;
when 23530 =>
table_value := 1048192
;
when 23531 =>
table_value := 1048176
;
when 23532 =>
table_value := 1048176
;
when 23533 =>
table_value := 1048192
;
when 23534 =>
table_value := 1048192
;
when 23535 =>
table_value := 1048192
;
when 23536 =>
table_value := 1048208
;
when 23537 =>
table_value := 1048224
;
when 23538 =>
table_value := 1048224
;
when 23539 =>
table_value := 1048240
;
when 23540 =>
table_value := 1048240
;
when 23541 =>
table_value := 1048256
;
when 23542 =>
table_value := 1048256
;
when 23543 =>
table_value := 1048256
;
when 23544 =>
table_value := 1048272
;
when 23545 =>
table_value := 1048272
;
when 23546 =>
table_value := 1048304
;
when 23547 =>
table_value := 1048304
;
when 23548 =>
table_value := 1048304
;
when 23549 =>
table_value := 1048304
;
when 23550 =>
table_value := 1048336
;
when 23551 =>
table_value := 1048336
;
when 23552 =>
table_value := 1048336
;
when 23553 =>
table_value := 1048352
;
when 23554 =>
table_value := 1048352
;
when 23555 =>
table_value := 1048368
;
when 23556 =>
table_value := 1048368
;
when 23557 =>
table_value := 1048384
;
when 23558 =>
table_value := 1048400
;
when 23559 =>
table_value := 1048416
;
when 23560 =>
table_value := 1048416
;
when 23561 =>
table_value := 1048432
;
when 23562 =>
table_value := 1048432
;
when 23563 =>
table_value := 1048432
;
when 23564 =>
table_value := 1048448
;
when 23565 =>
table_value := 1048464
;
when 23566 =>
table_value := 1048464
;
when 23567 =>
table_value := 1048480
;
when 23568 =>
table_value := 1048480
;
when 23569 =>
table_value := 1048496
;
when 23570 =>
table_value := 1048496
;
when 23571 =>
table_value := 1048512
;
when 23572 =>
table_value := 1048512
;
when 23573 =>
table_value := 1048528
;
when 23574 =>
table_value := 1048560
;
when 23575 =>
table_value := 1048544
;
when 23576 =>
table_value := 1048560
;
when 23577 =>
table_value := 1048560
;
when 23578 =>
table_value := 1048560
;
when 23579 =>
table_value := 0
;
when 23580 =>
table_value := 0
;
when 23581 =>
table_value := 0
;
when 23582 =>
table_value := 0
;
when 23583 =>
table_value := 16
;
when 23584 =>
table_value := 16
;
when 23585 =>
table_value := 16
;
when 23586 =>
table_value := 32
;
when 23587 =>
table_value := 32
;
when 23588 =>
table_value := 32
;
when 23589 =>
table_value := 48
;
when 23590 =>
table_value := 64
;
when 23591 =>
table_value := 64
;
when 23592 =>
table_value := 64
;
when 23593 =>
table_value := 80
;
when 23594 =>
table_value := 80
;
when 23595 =>
table_value := 80
;
when 23596 =>
table_value := 96
;
when 23597 =>
table_value := 80
;
when 23598 =>
table_value := 96
;
when 23599 =>
table_value := 96
;
when 23600 =>
table_value := 112
;
when 23601 =>
table_value := 112
;
when 23602 =>
table_value := 112
;
when 23603 =>
table_value := 112
;
when 23604 =>
table_value := 112
;
when 23605 =>
table_value := 112
;
when 23606 =>
table_value := 112
;
when 23607 =>
table_value := 144
;
when 23608 =>
table_value := 144
;
when 23609 =>
table_value := 128
;
when 23610 =>
table_value := 144
;
when 23611 =>
table_value := 128
;
when 23612 =>
table_value := 144
;
when 23613 =>
table_value := 128
;
when 23614 =>
table_value := 144
;
when 23615 =>
table_value := 144
;
when 23616 =>
table_value := 128
;
when 23617 =>
table_value := 144
;
when 23618 =>
table_value := 144
;
when 23619 =>
table_value := 144
;
when 23620 =>
table_value := 160
;
when 23621 =>
table_value := 160
;
when 23622 =>
table_value := 160
;
when 23623 =>
table_value := 144
;
when 23624 =>
table_value := 144
;
when 23625 =>
table_value := 144
;
when 23626 =>
table_value := 144
;
when 23627 =>
table_value := 144
;
when 23628 =>
table_value := 144
;
when 23629 =>
table_value := 144
;
when 23630 =>
table_value := 144
;
when 23631 =>
table_value := 144
;
when 23632 =>
table_value := 128
;
when 23633 =>
table_value := 112
;
when 23634 =>
table_value := 128
;
when 23635 =>
table_value := 112
;
when 23636 =>
table_value := 112
;
when 23637 =>
table_value := 112
;
when 23638 =>
table_value := 112
;
when 23639 =>
table_value := 96
;
when 23640 =>
table_value := 96
;
when 23641 =>
table_value := 96
;
when 23642 =>
table_value := 96
;
when 23643 =>
table_value := 80
;
when 23644 =>
table_value := 80
;
when 23645 =>
table_value := 80
;
when 23646 =>
table_value := 64
;
when 23647 =>
table_value := 64
;
when 23648 =>
table_value := 48
;
when 23649 =>
table_value := 48
;
when 23650 =>
table_value := 48
;
when 23651 =>
table_value := 32
;
when 23652 =>
table_value := 16
;
when 23653 =>
table_value := 16
;
when 23654 =>
table_value := 0
;
when 23655 =>
table_value := 0
;
when 23656 =>
table_value := 0
;
when 23657 =>
table_value := 1048560
;
when 23658 =>
table_value := 1048544
;
when 23659 =>
table_value := 1048544
;
when 23660 =>
table_value := 1048512
;
when 23661 =>
table_value := 1048512
;
when 23662 =>
table_value := 1048496
;
when 23663 =>
table_value := 1048496
;
when 23664 =>
table_value := 1048480
;
when 23665 =>
table_value := 1048464
;
when 23666 =>
table_value := 1048448
;
when 23667 =>
table_value := 1048432
;
when 23668 =>
table_value := 1048432
;
when 23669 =>
table_value := 1048416
;
when 23670 =>
table_value := 1048416
;
when 23671 =>
table_value := 1048384
;
when 23672 =>
table_value := 1048352
;
when 23673 =>
table_value := 1048368
;
when 23674 =>
table_value := 1048352
;
when 23675 =>
table_value := 1048336
;
when 23676 =>
table_value := 1048304
;
when 23677 =>
table_value := 1048304
;
when 23678 =>
table_value := 1048288
;
when 23679 =>
table_value := 1048288
;
when 23680 =>
table_value := 1048256
;
when 23681 =>
table_value := 1048256
;
when 23682 =>
table_value := 1048240
;
when 23683 =>
table_value := 1048208
;
when 23684 =>
table_value := 1048208
;
when 23685 =>
table_value := 1048192
;
when 23686 =>
table_value := 1048192
;
when 23687 =>
table_value := 1048176
;
when 23688 =>
table_value := 1048160
;
when 23689 =>
table_value := 1048160
;
when 23690 =>
table_value := 1048144
;
when 23691 =>
table_value := 1048128
;
when 23692 =>
table_value := 1048112
;
when 23693 =>
table_value := 1048112
;
when 23694 =>
table_value := 1048112
;
when 23695 =>
table_value := 1048080
;
when 23696 =>
table_value := 1048096
;
when 23697 =>
table_value := 1048064
;
when 23698 =>
table_value := 1048064
;
when 23699 =>
table_value := 1048048
;
when 23700 =>
table_value := 1048032
;
when 23701 =>
table_value := 1048016
;
when 23702 =>
table_value := 1048000
;
when 23703 =>
table_value := 1048000
;
when 23704 =>
table_value := 1047984
;
when 23705 =>
table_value := 1047968
;
when 23706 =>
table_value := 1047952
;
when 23707 =>
table_value := 1047952
;
when 23708 =>
table_value := 1047920
;
when 23709 =>
table_value := 1047904
;
when 23710 =>
table_value := 1047888
;
when 23711 =>
table_value := 1047888
;
when 23712 =>
table_value := 1047872
;
when 23713 =>
table_value := 1047840
;
when 23714 =>
table_value := 1047824
;
when 23715 =>
table_value := 1047808
;
when 23716 =>
table_value := 1047808
;
when 23717 =>
table_value := 1047808
;
when 23718 =>
table_value := 1047792
;
when 23719 =>
table_value := 1047792
;
when 23720 =>
table_value := 1047760
;
when 23721 =>
table_value := 1047760
;
when 23722 =>
table_value := 1047744
;
when 23723 =>
table_value := 1047728
;
when 23724 =>
table_value := 1047728
;
when 23725 =>
table_value := 1047728
;
when 23726 =>
table_value := 1047728
;
when 23727 =>
table_value := 1047712
;
when 23728 =>
table_value := 1047712
;
when 23729 =>
table_value := 1047712
;
when 23730 =>
table_value := 1047680
;
when 23731 =>
table_value := 1047680
;
when 23732 =>
table_value := 1047680
;
when 23733 =>
table_value := 1047664
;
when 23734 =>
table_value := 1047664
;
when 23735 =>
table_value := 1047648
;
when 23736 =>
table_value := 1047632
;
when 23737 =>
table_value := 1047632
;
when 23738 =>
table_value := 1047632
;
when 23739 =>
table_value := 1047632
;
when 23740 =>
table_value := 1047632
;
when 23741 =>
table_value := 1047616
;
when 23742 =>
table_value := 1047600
;
when 23743 =>
table_value := 1047616
;
when 23744 =>
table_value := 1047616
;
when 23745 =>
table_value := 1047616
;
when 23746 =>
table_value := 1047632
;
when 23747 =>
table_value := 1047616
;
when 23748 =>
table_value := 1047632
;
when 23749 =>
table_value := 1047632
;
when 23750 =>
table_value := 1047632
;
when 23751 =>
table_value := 1047632
;
when 23752 =>
table_value := 1047648
;
when 23753 =>
table_value := 1047648
;
when 23754 =>
table_value := 1047648
;
when 23755 =>
table_value := 1047680
;
when 23756 =>
table_value := 1047696
;
when 23757 =>
table_value := 1047712
;
when 23758 =>
table_value := 1047712
;
when 23759 =>
table_value := 1047728
;
when 23760 =>
table_value := 1047744
;
when 23761 =>
table_value := 1047744
;
when 23762 =>
table_value := 1047776
;
when 23763 =>
table_value := 1047792
;
when 23764 =>
table_value := 1047808
;
when 23765 =>
table_value := 1047808
;
when 23766 =>
table_value := 1047824
;
when 23767 =>
table_value := 1047840
;
when 23768 =>
table_value := 1047856
;
when 23769 =>
table_value := 1047872
;
when 23770 =>
table_value := 1047888
;
when 23771 =>
table_value := 1047920
;
when 23772 =>
table_value := 1047920
;
when 23773 =>
table_value := 1047952
;
when 23774 =>
table_value := 1047968
;
when 23775 =>
table_value := 1047984
;
when 23776 =>
table_value := 1048000
;
when 23777 =>
table_value := 1048032
;
when 23778 =>
table_value := 1048048
;
when 23779 =>
table_value := 1048064
;
when 23780 =>
table_value := 1048080
;
when 23781 =>
table_value := 1048096
;
when 23782 =>
table_value := 1048128
;
when 23783 =>
table_value := 1048160
;
when 23784 =>
table_value := 1048176
;
when 23785 =>
table_value := 1048192
;
when 23786 =>
table_value := 1048208
;
when 23787 =>
table_value := 1048224
;
when 23788 =>
table_value := 1048256
;
when 23789 =>
table_value := 1048272
;
when 23790 =>
table_value := 1048304
;
when 23791 =>
table_value := 1048320
;
when 23792 =>
table_value := 1048336
;
when 23793 =>
table_value := 1048368
;
when 23794 =>
table_value := 1048384
;
when 23795 =>
table_value := 1048400
;
when 23796 =>
table_value := 1048432
;
when 23797 =>
table_value := 1048448
;
when 23798 =>
table_value := 1048480
;
when 23799 =>
table_value := 1048480
;
when 23800 =>
table_value := 1048496
;
when 23801 =>
table_value := 1048512
;
when 23802 =>
table_value := 1048528
;
when 23803 =>
table_value := 1048560
;
when 23804 =>
table_value := 0
;
when 23805 =>
table_value := 0
;
when 23806 =>
table_value := 32
;
when 23807 =>
table_value := 48
;
when 23808 =>
table_value := 64
;
when 23809 =>
table_value := 80
;
when 23810 =>
table_value := 80
;
when 23811 =>
table_value := 112
;
when 23812 =>
table_value := 128
;
when 23813 =>
table_value := 144
;
when 23814 =>
table_value := 160
;
when 23815 =>
table_value := 176
;
when 23816 =>
table_value := 176
;
when 23817 =>
table_value := 176
;
when 23818 =>
table_value := 208
;
when 23819 =>
table_value := 224
;
when 23820 =>
table_value := 240
;
when 23821 =>
table_value := 240
;
when 23822 =>
table_value := 272
;
when 23823 =>
table_value := 288
;
when 23824 =>
table_value := 288
;
when 23825 =>
table_value := 288
;
when 23826 =>
table_value := 304
;
when 23827 =>
table_value := 304
;
when 23828 =>
table_value := 320
;
when 23829 =>
table_value := 336
;
when 23830 =>
table_value := 336
;
when 23831 =>
table_value := 352
;
when 23832 =>
table_value := 352
;
when 23833 =>
table_value := 352
;
when 23834 =>
table_value := 368
;
when 23835 =>
table_value := 368
;
when 23836 =>
table_value := 368
;
when 23837 =>
table_value := 384
;
when 23838 =>
table_value := 368
;
when 23839 =>
table_value := 384
;
when 23840 =>
table_value := 384
;
when 23841 =>
table_value := 384
;
when 23842 =>
table_value := 384
;
when 23843 =>
table_value := 368
;
when 23844 =>
table_value := 384
;
when 23845 =>
table_value := 368
;
when 23846 =>
table_value := 384
;
when 23847 =>
table_value := 368
;
when 23848 =>
table_value := 368
;
when 23849 =>
table_value := 368
;
when 23850 =>
table_value := 368
;
when 23851 =>
table_value := 352
;
when 23852 =>
table_value := 336
;
when 23853 =>
table_value := 336
;
when 23854 =>
table_value := 336
;
when 23855 =>
table_value := 336
;
when 23856 =>
table_value := 320
;
when 23857 =>
table_value := 304
;
when 23858 =>
table_value := 304
;
when 23859 =>
table_value := 304
;
when 23860 =>
table_value := 272
;
when 23861 =>
table_value := 272
;
when 23862 =>
table_value := 256
;
when 23863 =>
table_value := 240
;
when 23864 =>
table_value := 224
;
when 23865 =>
table_value := 208
;
when 23866 =>
table_value := 208
;
when 23867 =>
table_value := 192
;
when 23868 =>
table_value := 160
;
when 23869 =>
table_value := 160
;
when 23870 =>
table_value := 160
;
when 23871 =>
table_value := 144
;
when 23872 =>
table_value := 128
;
when 23873 =>
table_value := 96
;
when 23874 =>
table_value := 80
;
when 23875 =>
table_value := 64
;
when 23876 =>
table_value := 48
;
when 23877 =>
table_value := 16
;
when 23878 =>
table_value := 0
;
when 23879 =>
table_value := 0
;
when 23880 =>
table_value := 0
;
when 23881 =>
table_value := 1048544
;
when 23882 =>
table_value := 1048512
;
when 23883 =>
table_value := 1048512
;
when 23884 =>
table_value := 1048480
;
when 23885 =>
table_value := 1048448
;
when 23886 =>
table_value := 1048432
;
when 23887 =>
table_value := 1048400
;
when 23888 =>
table_value := 1048368
;
when 23889 =>
table_value := 1048352
;
when 23890 =>
table_value := 1048320
;
when 23891 =>
table_value := 1048304
;
when 23892 =>
table_value := 1048272
;
when 23893 =>
table_value := 1048256
;
when 23894 =>
table_value := 1048224
;
when 23895 =>
table_value := 1048192
;
when 23896 =>
table_value := 1048160
;
when 23897 =>
table_value := 1048128
;
when 23898 =>
table_value := 1048112
;
when 23899 =>
table_value := 1048096
;
when 23900 =>
table_value := 1048064
;
when 23901 =>
table_value := 1048032
;
when 23902 =>
table_value := 1048000
;
when 23903 =>
table_value := 1047968
;
when 23904 =>
table_value := 1047952
;
when 23905 =>
table_value := 1047936
;
when 23906 =>
table_value := 1047904
;
when 23907 =>
table_value := 1047888
;
when 23908 =>
table_value := 1047840
;
when 23909 =>
table_value := 1047808
;
when 23910 =>
table_value := 1047808
;
when 23911 =>
table_value := 1047776
;
when 23912 =>
table_value := 1047744
;
when 23913 =>
table_value := 1047728
;
when 23914 =>
table_value := 1047712
;
when 23915 =>
table_value := 1047680
;
when 23916 =>
table_value := 1047664
;
when 23917 =>
table_value := 1047648
;
when 23918 =>
table_value := 1047632
;
when 23919 =>
table_value := 1047616
;
when 23920 =>
table_value := 1047616
;
when 23921 =>
table_value := 1047568
;
when 23922 =>
table_value := 1047584
;
when 23923 =>
table_value := 1047568
;
when 23924 =>
table_value := 1047552
;
when 23925 =>
table_value := 1047536
;
when 23926 =>
table_value := 1047520
;
when 23927 =>
table_value := 1047520
;
when 23928 =>
table_value := 1047504
;
when 23929 =>
table_value := 1047504
;
when 23930 =>
table_value := 1047504
;
when 23931 =>
table_value := 1047488
;
when 23932 =>
table_value := 1047472
;
when 23933 =>
table_value := 1047488
;
when 23934 =>
table_value := 1047472
;
when 23935 =>
table_value := 1047488
;
when 23936 =>
table_value := 1047472
;
when 23937 =>
table_value := 1047472
;
when 23938 =>
table_value := 1047472
;
when 23939 =>
table_value := 1047488
;
when 23940 =>
table_value := 1047488
;
when 23941 =>
table_value := 1047472
;
when 23942 =>
table_value := 1047488
;
when 23943 =>
table_value := 1047504
;
when 23944 =>
table_value := 1047504
;
when 23945 =>
table_value := 1047504
;
when 23946 =>
table_value := 1047504
;
when 23947 =>
table_value := 1047536
;
when 23948 =>
table_value := 1047520
;
when 23949 =>
table_value := 1047552
;
when 23950 =>
table_value := 1047568
;
when 23951 =>
table_value := 1047568
;
when 23952 =>
table_value := 1047584
;
when 23953 =>
table_value := 1047600
;
when 23954 =>
table_value := 1047600
;
when 23955 =>
table_value := 1047616
;
when 23956 =>
table_value := 1047632
;
when 23957 =>
table_value := 1047632
;
when 23958 =>
table_value := 1047664
;
when 23959 =>
table_value := 1047664
;
when 23960 =>
table_value := 1047680
;
when 23961 =>
table_value := 1047712
;
when 23962 =>
table_value := 1047728
;
when 23963 =>
table_value := 1047728
;
when 23964 =>
table_value := 1047744
;
when 23965 =>
table_value := 1047744
;
when 23966 =>
table_value := 1047776
;
when 23967 =>
table_value := 1047808
;
when 23968 =>
table_value := 1047808
;
when 23969 =>
table_value := 1047824
;
when 23970 =>
table_value := 1047840
;
when 23971 =>
table_value := 1047856
;
when 23972 =>
table_value := 1047872
;
when 23973 =>
table_value := 1047872
;
when 23974 =>
table_value := 1047888
;
when 23975 =>
table_value := 1047920
;
when 23976 =>
table_value := 1047920
;
when 23977 =>
table_value := 1047936
;
when 23978 =>
table_value := 1047952
;
when 23979 =>
table_value := 1047968
;
when 23980 =>
table_value := 1047968
;
when 23981 =>
table_value := 1047984
;
when 23982 =>
table_value := 1047984
;
when 23983 =>
table_value := 1048016
;
when 23984 =>
table_value := 1048016
;
when 23985 =>
table_value := 1048032
;
when 23986 =>
table_value := 1048048
;
when 23987 =>
table_value := 1048064
;
when 23988 =>
table_value := 1048080
;
when 23989 =>
table_value := 1048112
;
when 23990 =>
table_value := 1048128
;
when 23991 =>
table_value := 1048128
;
when 23992 =>
table_value := 1048144
;
when 23993 =>
table_value := 1048144
;
when 23994 =>
table_value := 1048176
;
when 23995 =>
table_value := 1048192
;
when 23996 =>
table_value := 1048208
;
when 23997 =>
table_value := 1048224
;
when 23998 =>
table_value := 1048240
;
when 23999 =>
table_value := 1048256
;
when 24000 =>
table_value := 1048272
;
when 24001 =>
table_value := 1048288
;
when 24002 =>
table_value := 1048288
;
when 24003 =>
table_value := 1048304
;
when 24004 =>
table_value := 1048336
;
when 24005 =>
table_value := 1048352
;
when 24006 =>
table_value := 1048368
;
when 24007 =>
table_value := 1048384
;
when 24008 =>
table_value := 1048400
;
when 24009 =>
table_value := 1048416
;
when 24010 =>
table_value := 1048448
;
when 24011 =>
table_value := 1048464
;
when 24012 =>
table_value := 1048496
;
when 24013 =>
table_value := 1048496
;
when 24014 =>
table_value := 1048528
;
when 24015 =>
table_value := 1048560
;
when 24016 =>
table_value := 1048560
;
when 24017 =>
table_value := 0
;
when 24018 =>
table_value := 16
;
when 24019 =>
table_value := 32
;
when 24020 =>
table_value := 64
;
when 24021 =>
table_value := 80
;
when 24022 =>
table_value := 96
;
when 24023 =>
table_value := 128
;
when 24024 =>
table_value := 144
;
when 24025 =>
table_value := 176
;
when 24026 =>
table_value := 176
;
when 24027 =>
table_value := 224
;
when 24028 =>
table_value := 240
;
when 24029 =>
table_value := 272
;
when 24030 =>
table_value := 288
;
when 24031 =>
table_value := 304
;
when 24032 =>
table_value := 320
;
when 24033 =>
table_value := 352
;
when 24034 =>
table_value := 384
;
when 24035 =>
table_value := 384
;
when 24036 =>
table_value := 432
;
when 24037 =>
table_value := 448
;
when 24038 =>
table_value := 464
;
when 24039 =>
table_value := 496
;
when 24040 =>
table_value := 512
;
when 24041 =>
table_value := 528
;
when 24042 =>
table_value := 544
;
when 24043 =>
table_value := 560
;
when 24044 =>
table_value := 576
;
when 24045 =>
table_value := 608
;
when 24046 =>
table_value := 608
;
when 24047 =>
table_value := 624
;
when 24048 =>
table_value := 656
;
when 24049 =>
table_value := 656
;
when 24050 =>
table_value := 672
;
when 24051 =>
table_value := 688
;
when 24052 =>
table_value := 704
;
when 24053 =>
table_value := 720
;
when 24054 =>
table_value := 736
;
when 24055 =>
table_value := 752
;
when 24056 =>
table_value := 752
;
when 24057 =>
table_value := 768
;
when 24058 =>
table_value := 784
;
when 24059 =>
table_value := 784
;
when 24060 =>
table_value := 816
;
when 24061 =>
table_value := 816
;
when 24062 =>
table_value := 832
;
when 24063 =>
table_value := 848
;
when 24064 =>
table_value := 864
;
when 24065 =>
table_value := 864
;
when 24066 =>
table_value := 864
;
when 24067 =>
table_value := 864
;
when 24068 =>
table_value := 880
;
when 24069 =>
table_value := 896
;
when 24070 =>
table_value := 896
;
when 24071 =>
table_value := 896
;
when 24072 =>
table_value := 912
;
when 24073 =>
table_value := 912
;
when 24074 =>
table_value := 912
;
when 24075 =>
table_value := 928
;
when 24076 =>
table_value := 928
;
when 24077 =>
table_value := 928
;
when 24078 =>
table_value := 928
;
when 24079 =>
table_value := 928
;
when 24080 =>
table_value := 912
;
when 24081 =>
table_value := 928
;
when 24082 =>
table_value := 912
;
when 24083 =>
table_value := 944
;
when 24084 =>
table_value := 944
;
when 24085 =>
table_value := 944
;
when 24086 =>
table_value := 944
;
when 24087 =>
table_value := 944
;
when 24088 =>
table_value := 944
;
when 24089 =>
table_value := 944
;
when 24090 =>
table_value := 944
;
when 24091 =>
table_value := 944
;
when 24092 =>
table_value := 928
;
when 24093 =>
table_value := 944
;
when 24094 =>
table_value := 944
;
when 24095 =>
table_value := 928
;
when 24096 =>
table_value := 912
;
when 24097 =>
table_value := 912
;
when 24098 =>
table_value := 912
;
when 24099 =>
table_value := 912
;
when 24100 =>
table_value := 896
;
when 24101 =>
table_value := 896
;
when 24102 =>
table_value := 912
;
when 24103 =>
table_value := 896
;
when 24104 =>
table_value := 896
;
when 24105 =>
table_value := 880
;
when 24106 =>
table_value := 864
;
when 24107 =>
table_value := 864
;
when 24108 =>
table_value := 864
;
when 24109 =>
table_value := 864
;
when 24110 =>
table_value := 864
;
when 24111 =>
table_value := 848
;
when 24112 =>
table_value := 848
;
when 24113 =>
table_value := 848
;
when 24114 =>
table_value := 832
;
when 24115 =>
table_value := 816
;
when 24116 =>
table_value := 816
;
when 24117 =>
table_value := 816
;
when 24118 =>
table_value := 816
;
when 24119 =>
table_value := 784
;
when 24120 =>
table_value := 784
;
when 24121 =>
table_value := 768
;
when 24122 =>
table_value := 784
;
when 24123 =>
table_value := 768
;
when 24124 =>
table_value := 768
;
when 24125 =>
table_value := 752
;
when 24126 =>
table_value := 752
;
when 24127 =>
table_value := 752
;
when 24128 =>
table_value := 736
;
when 24129 =>
table_value := 736
;
when 24130 =>
table_value := 720
;
when 24131 =>
table_value := 736
;
when 24132 =>
table_value := 736
;
when 24133 =>
table_value := 704
;
when 24134 =>
table_value := 704
;
when 24135 =>
table_value := 704
;
when 24136 =>
table_value := 704
;
when 24137 =>
table_value := 688
;
when 24138 =>
table_value := 688
;
when 24139 =>
table_value := 688
;
when 24140 =>
table_value := 688
;
when 24141 =>
table_value := 688
;
when 24142 =>
table_value := 688
;
when 24143 =>
table_value := 688
;
when 24144 =>
table_value := 688
;
when 24145 =>
table_value := 688
;
when 24146 =>
table_value := 672
;
when 24147 =>
table_value := 672
;
when 24148 =>
table_value := 672
;
when 24149 =>
table_value := 688
;
when 24150 =>
table_value := 688
;
when 24151 =>
table_value := 672
;
when 24152 =>
table_value := 672
;
when 24153 =>
table_value := 688
;
when 24154 =>
table_value := 688
;
when 24155 =>
table_value := 672
;
when 24156 =>
table_value := 688
;
when 24157 =>
table_value := 688
;
when 24158 =>
table_value := 688
;
when 24159 =>
table_value := 688
;
when 24160 =>
table_value := 688
;
when 24161 =>
table_value := 688
;
when 24162 =>
table_value := 672
;
when 24163 =>
table_value := 688
;
when 24164 =>
table_value := 688
;
when 24165 =>
table_value := 688
;
when 24166 =>
table_value := 688
;
when 24167 =>
table_value := 688
;
when 24168 =>
table_value := 688
;
when 24169 =>
table_value := 688
;
when 24170 =>
table_value := 688
;
when 24171 =>
table_value := 688
;
when 24172 =>
table_value := 688
;
when 24173 =>
table_value := 704
;
when 24174 =>
table_value := 704
;
when 24175 =>
table_value := 688
;
when 24176 =>
table_value := 704
;
when 24177 =>
table_value := 720
;
when 24178 =>
table_value := 720
;
when 24179 =>
table_value := 736
;
when 24180 =>
table_value := 736
;
when 24181 =>
table_value := 752
;
when 24182 =>
table_value := 752
;
when 24183 =>
table_value := 752
;
when 24184 =>
table_value := 752
;
when 24185 =>
table_value := 752
;
when 24186 =>
table_value := 768
;
when 24187 =>
table_value := 784
;
when 24188 =>
table_value := 768
;
when 24189 =>
table_value := 784
;
when 24190 =>
table_value := 784
;
when 24191 =>
table_value := 784
;
when 24192 =>
table_value := 800
;
when 24193 =>
table_value := 816
;
when 24194 =>
table_value := 816
;
when 24195 =>
table_value := 816
;
when 24196 =>
table_value := 848
;
when 24197 =>
table_value := 848
;
when 24198 =>
table_value := 848
;
when 24199 =>
table_value := 864
;
when 24200 =>
table_value := 880
;
when 24201 =>
table_value := 880
;
when 24202 =>
table_value := 896
;
when 24203 =>
table_value := 896
;
when 24204 =>
table_value := 912
;
when 24205 =>
table_value := 912
;
when 24206 =>
table_value := 912
;
when 24207 =>
table_value := 928
;
when 24208 =>
table_value := 912
;
when 24209 =>
table_value := 928
;
when 24210 =>
table_value := 928
;
when 24211 =>
table_value := 944
;
when 24212 =>
table_value := 944
;
when 24213 =>
table_value := 960
;
when 24214 =>
table_value := 976
;
when 24215 =>
table_value := 976
;
when 24216 =>
table_value := 992
;
when 24217 =>
table_value := 992
;
when 24218 =>
table_value := 992
;
when 24219 =>
table_value := 992
;
when 24220 =>
table_value := 992
;
when 24221 =>
table_value := 1008
;
when 24222 =>
table_value := 992
;
when 24223 =>
table_value := 1008
;
when 24224 =>
table_value := 1008
;
when 24225 =>
table_value := 992
;
when 24226 =>
table_value := 1008
;
when 24227 =>
table_value := 992
;
when 24228 =>
table_value := 992
;
when 24229 =>
table_value := 992
;
when 24230 =>
table_value := 992
;
when 24231 =>
table_value := 976
;
when 24232 =>
table_value := 976
;
when 24233 =>
table_value := 976
;
when 24234 =>
table_value := 960
;
when 24235 =>
table_value := 944
;
when 24236 =>
table_value := 944
;
when 24237 =>
table_value := 944
;
when 24238 =>
table_value := 928
;
when 24239 =>
table_value := 912
;
when 24240 =>
table_value := 912
;
when 24241 =>
table_value := 912
;
when 24242 =>
table_value := 896
;
when 24243 =>
table_value := 896
;
when 24244 =>
table_value := 864
;
when 24245 =>
table_value := 864
;
when 24246 =>
table_value := 848
;
when 24247 =>
table_value := 848
;
when 24248 =>
table_value := 816
;
when 24249 =>
table_value := 816
;
when 24250 =>
table_value := 816
;
when 24251 =>
table_value := 784
;
when 24252 =>
table_value := 768
;
when 24253 =>
table_value := 768
;
when 24254 =>
table_value := 736
;
when 24255 =>
table_value := 736
;
when 24256 =>
table_value := 704
;
when 24257 =>
table_value := 704
;
when 24258 =>
table_value := 672
;
when 24259 =>
table_value := 656
;
when 24260 =>
table_value := 640
;
when 24261 =>
table_value := 624
;
when 24262 =>
table_value := 608
;
when 24263 =>
table_value := 592
;
when 24264 =>
table_value := 576
;
when 24265 =>
table_value := 560
;
when 24266 =>
table_value := 560
;
when 24267 =>
table_value := 528
;
when 24268 =>
table_value := 528
;
when 24269 =>
table_value := 496
;
when 24270 =>
table_value := 480
;
when 24271 =>
table_value := 464
;
when 24272 =>
table_value := 448
;
when 24273 =>
table_value := 432
;
when 24274 =>
table_value := 416
;
when 24275 =>
table_value := 416
;
when 24276 =>
table_value := 384
;
when 24277 =>
table_value := 368
;
when 24278 =>
table_value := 368
;
when 24279 =>
table_value := 352
;
when 24280 =>
table_value := 336
;
when 24281 =>
table_value := 304
;
when 24282 =>
table_value := 304
;
when 24283 =>
table_value := 288
;
when 24284 =>
table_value := 272
;
when 24285 =>
table_value := 240
;
when 24286 =>
table_value := 224
;
when 24287 =>
table_value := 224
;
when 24288 =>
table_value := 208
;
when 24289 =>
table_value := 208
;
when 24290 =>
table_value := 192
;
when 24291 =>
table_value := 160
;
when 24292 =>
table_value := 160
;
when 24293 =>
table_value := 144
;
when 24294 =>
table_value := 144
;
when 24295 =>
table_value := 144
;
when 24296 =>
table_value := 128
;
when 24297 =>
table_value := 80
;
when 24298 =>
table_value := 80
;
when 24299 =>
table_value := 64
;
when 24300 =>
table_value := 48
;
when 24301 =>
table_value := 48
;
when 24302 =>
table_value := 32
;
when 24303 =>
table_value := 16
;
when 24304 =>
table_value := 0
;
when 24305 =>
table_value := 0
;
when 24306 =>
table_value := 0
;
when 24307 =>
table_value := 1048560
;
when 24308 =>
table_value := 1048544
;
when 24309 =>
table_value := 1048528
;
when 24310 =>
table_value := 1048512
;
when 24311 =>
table_value := 1048512
;
when 24312 =>
table_value := 1048496
;
when 24313 =>
table_value := 1048480
;
when 24314 =>
table_value := 1048464
;
when 24315 =>
table_value := 1048448
;
when 24316 =>
table_value := 1048448
;
when 24317 =>
table_value := 1048432
;
when 24318 =>
table_value := 1048400
;
when 24319 =>
table_value := 1048400
;
when 24320 =>
table_value := 1048368
;
when 24321 =>
table_value := 1048368
;
when 24322 =>
table_value := 1048336
;
when 24323 =>
table_value := 1048336
;
when 24324 =>
table_value := 1048320
;
when 24325 =>
table_value := 1048304
;
when 24326 =>
table_value := 1048288
;
when 24327 =>
table_value := 1048256
;
when 24328 =>
table_value := 1048256
;
when 24329 =>
table_value := 1048224
;
when 24330 =>
table_value := 1048208
;
when 24331 =>
table_value := 1048192
;
when 24332 =>
table_value := 1048192
;
when 24333 =>
table_value := 1048160
;
when 24334 =>
table_value := 1048144
;
when 24335 =>
table_value := 1048144
;
when 24336 =>
table_value := 1048128
;
when 24337 =>
table_value := 1048112
;
when 24338 =>
table_value := 1048096
;
when 24339 =>
table_value := 1048080
;
when 24340 =>
table_value := 1048064
;
when 24341 =>
table_value := 1048048
;
when 24342 =>
table_value := 1048048
;
when 24343 =>
table_value := 1048032
;
when 24344 =>
table_value := 1048016
;
when 24345 =>
table_value := 1047984
;
when 24346 =>
table_value := 1047984
;
when 24347 =>
table_value := 1047984
;
when 24348 =>
table_value := 1047968
;
when 24349 =>
table_value := 1047968
;
when 24350 =>
table_value := 1047968
;
when 24351 =>
table_value := 1047952
;
when 24352 =>
table_value := 1047936
;
when 24353 =>
table_value := 1047920
;
when 24354 =>
table_value := 1047904
;
when 24355 =>
table_value := 1047904
;
when 24356 =>
table_value := 1047888
;
when 24357 =>
table_value := 1047888
;
when 24358 =>
table_value := 1047888
;
when 24359 =>
table_value := 1047888
;
when 24360 =>
table_value := 1047888
;
when 24361 =>
table_value := 1047872
;
when 24362 =>
table_value := 1047872
;
when 24363 =>
table_value := 1047872
;
when 24364 =>
table_value := 1047856
;
when 24365 =>
table_value := 1047872
;
when 24366 =>
table_value := 1047856
;
when 24367 =>
table_value := 1047856
;
when 24368 =>
table_value := 1047856
;
when 24369 =>
table_value := 1047856
;
when 24370 =>
table_value := 1047856
;
when 24371 =>
table_value := 1047872
;
when 24372 =>
table_value := 1047872
;
when 24373 =>
table_value := 1047856
;
when 24374 =>
table_value := 1047872
;
when 24375 =>
table_value := 1047872
;
when 24376 =>
table_value := 1047888
;
when 24377 =>
table_value := 1047888
;
when 24378 =>
table_value := 1047888
;
when 24379 =>
table_value := 1047888
;
when 24380 =>
table_value := 1047904
;
when 24381 =>
table_value := 1047888
;
when 24382 =>
table_value := 1047920
;
when 24383 =>
table_value := 1047920
;
when 24384 =>
table_value := 1047936
;
when 24385 =>
table_value := 1047936
;
when 24386 =>
table_value := 1047936
;
when 24387 =>
table_value := 1047936
;
when 24388 =>
table_value := 1047952
;
when 24389 =>
table_value := 1047936
;
when 24390 =>
table_value := 1047968
;
when 24391 =>
table_value := 1047952
;
when 24392 =>
table_value := 1047968
;
when 24393 =>
table_value := 1047968
;
when 24394 =>
table_value := 1047968
;
when 24395 =>
table_value := 1047984
;
when 24396 =>
table_value := 1048000
;
when 24397 =>
table_value := 1048000
;
when 24398 =>
table_value := 1048000
;
when 24399 =>
table_value := 1048016
;
when 24400 =>
table_value := 1048016
;
when 24401 =>
table_value := 1048032
;
when 24402 =>
table_value := 1048032
;
when 24403 =>
table_value := 1048048
;
when 24404 =>
table_value := 1048048
;
when 24405 =>
table_value := 1048064
;
when 24406 =>
table_value := 1048064
;
when 24407 =>
table_value := 1048080
;
when 24408 =>
table_value := 1048096
;
when 24409 =>
table_value := 1048096
;
when 24410 =>
table_value := 1048112
;
when 24411 =>
table_value := 1048128
;
when 24412 =>
table_value := 1048128
;
when 24413 =>
table_value := 1048160
;
when 24414 =>
table_value := 1048160
;
when 24415 =>
table_value := 1048176
;
when 24416 =>
table_value := 1048176
;
when 24417 =>
table_value := 1048192
;
when 24418 =>
table_value := 1048208
;
when 24419 =>
table_value := 1048224
;
when 24420 =>
table_value := 1048224
;
when 24421 =>
table_value := 1048256
;
when 24422 =>
table_value := 1048272
;
when 24423 =>
table_value := 1048272
;
when 24424 =>
table_value := 1048304
;
when 24425 =>
table_value := 1048320
;
when 24426 =>
table_value := 1048336
;
when 24427 =>
table_value := 1048336
;
when 24428 =>
table_value := 1048352
;
when 24429 =>
table_value := 1048384
;
when 24430 =>
table_value := 1048384
;
when 24431 =>
table_value := 1048400
;
when 24432 =>
table_value := 1048416
;
when 24433 =>
table_value := 1048432
;
when 24434 =>
table_value := 1048432
;
when 24435 =>
table_value := 1048448
;
when 24436 =>
table_value := 1048464
;
when 24437 =>
table_value := 1048480
;
when 24438 =>
table_value := 1048480
;
when 24439 =>
table_value := 1048496
;
when 24440 =>
table_value := 1048512
;
when 24441 =>
table_value := 1048528
;
when 24442 =>
table_value := 1048544
;
when 24443 =>
table_value := 1048560
;
when 24444 =>
table_value := 1048560
;
when 24445 =>
table_value := 0
;
when 24446 =>
table_value := 0
;
when 24447 =>
table_value := 0
;
when 24448 =>
table_value := 0
;
when 24449 =>
table_value := 0
;
when 24450 =>
table_value := 0
;
when 24451 =>
table_value := 0
;
when 24452 =>
table_value := 0
;
when 24453 =>
table_value := 0
;
when 24454 =>
table_value := 0
;
when 24455 =>
table_value := 16
;
when 24456 =>
table_value := 16
;
when 24457 =>
table_value := 16
;
when 24458 =>
table_value := 16
;
when 24459 =>
table_value := 16
;
when 24460 =>
table_value := 16
;
when 24461 =>
table_value := 16
;
when 24462 =>
table_value := 16
;
when 24463 =>
table_value := 16
;
when 24464 =>
table_value := 16
;
when 24465 =>
table_value := 16
;
when 24466 =>
table_value := 0
;
when 24467 =>
table_value := 0
;
when 24468 =>
table_value := 0
;
when 24469 =>
table_value := 0
;
when 24470 =>
table_value := 0
;
when 24471 =>
table_value := 0
;
when 24472 =>
table_value := 0
;
when 24473 =>
table_value := 0
;
when 24474 =>
table_value := 1048560
;
when 24475 =>
table_value := 1048544
;
when 24476 =>
table_value := 1048528
;
when 24477 =>
table_value := 1048528
;
when 24478 =>
table_value := 1048528
;
when 24479 =>
table_value := 1048512
;
when 24480 =>
table_value := 1048512
;
when 24481 =>
table_value := 1048512
;
when 24482 =>
table_value := 1048496
;
when 24483 =>
table_value := 1048496
;
when 24484 =>
table_value := 1048480
;
when 24485 =>
table_value := 1048480
;
when 24486 =>
table_value := 1048464
;
when 24487 =>
table_value := 1048464
;
when 24488 =>
table_value := 1048448
;
when 24489 =>
table_value := 1048432
;
when 24490 =>
table_value := 1048432
;
when 24491 =>
table_value := 1048448
;
when 24492 =>
table_value := 1048416
;
when 24493 =>
table_value := 1048432
;
when 24494 =>
table_value := 1048416
;
when 24495 =>
table_value := 1048400
;
when 24496 =>
table_value := 1048400
;
when 24497 =>
table_value := 1048384
;
when 24498 =>
table_value := 1048384
;
when 24499 =>
table_value := 1048384
;
when 24500 =>
table_value := 1048368
;
when 24501 =>
table_value := 1048368
;
when 24502 =>
table_value := 1048352
;
when 24503 =>
table_value := 1048336
;
when 24504 =>
table_value := 1048336
;
when 24505 =>
table_value := 1048336
;
when 24506 =>
table_value := 1048304
;
when 24507 =>
table_value := 1048304
;
when 24508 =>
table_value := 1048304
;
when 24509 =>
table_value := 1048288
;
when 24510 =>
table_value := 1048272
;
when 24511 =>
table_value := 1048272
;
when 24512 =>
table_value := 1048272
;
when 24513 =>
table_value := 1048256
;
when 24514 =>
table_value := 1048256
;
when 24515 =>
table_value := 1048256
;
when 24516 =>
table_value := 1048224
;
when 24517 =>
table_value := 1048224
;
when 24518 =>
table_value := 1048208
;
when 24519 =>
table_value := 1048208
;
when 24520 =>
table_value := 1048192
;
when 24521 =>
table_value := 1048192
;
when 24522 =>
table_value := 1048192
;
when others => 
table_value := 0;
		
  
    end case;
    return table_value;
  end;

end;