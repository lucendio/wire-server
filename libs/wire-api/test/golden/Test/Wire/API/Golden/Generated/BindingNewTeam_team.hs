-- This file is part of the Wire Server implementation.
--
-- Copyright (C) 2022 Wire Swiss GmbH <opensource@wire.com>
--
-- This program is free software: you can redistribute it and/or modify it under
-- the terms of the GNU Affero General Public License as published by the Free
-- Software Foundation, either version 3 of the License, or (at your option) any
-- later version.
--
-- This program is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
-- details.
--
-- You should have received a copy of the GNU Affero General Public License along
-- with this program. If not, see <https://www.gnu.org/licenses/>.

module Test.Wire.API.Golden.Generated.BindingNewTeam_team where

import Data.Id (Id (Id))
import Data.Range (unsafeRange)
import qualified Data.UUID as UUID (fromString)
import Imports (Maybe (Just, Nothing), fromJust)
import Wire.API.Asset (AssetKey (..), AssetRetention (..))
import Wire.API.Team
  ( BindingNewTeam (..),
    Icon (..),
    NewTeam
      ( NewTeam,
        _newTeamIcon,
        _newTeamIconKey,
        _newTeamMembers,
        _newTeamName
      ),
  )

testObject_BindingNewTeam_team_1 :: BindingNewTeam
testObject_BindingNewTeam_team_1 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "UivH&\54922\98185p\USz\11724\r$\DC4j9P\r\"\1070851\3254\986624aF>E\1078807\139041B\EM&\1088459\DC4\174923+'\1103890R;!\GS\1017122\SIvv|\rmbGHz\1005234\95057\&3h\120904\\U|'\ETX;^&G\CAN\f\41076\&42\teq\1049559\SOV1}\RSaT\1014212aO7<;o\179606\f\1111896m)$PC\ESC7;f{\STXt\9533>\EOTX@4|/\tH\ENQ/D\144082\EM\121436C\99696Q\ENQT\1096609?d\ACK\1073806#H\127523\139127*\166004jo<s\1047780\DC13/q\tY\1078813\1097937u\42817s\b^l\144197\v\57720\1048295!\134764Q\136598\US\986855\&5\ENQ\"15}?|\994677^&\173438\SUB8eAu\2626qU\STXf\137077\ETB\DLE\FS\SO(\39077\27348&,\SYNaxe\178595\NAK\5153[Ay#x@\1086949~\DC1\ETXWu\SI~\DC2|.",
          _newTeamIcon = DefaultIcon,
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\1029773W.\RS\53973E\vS_6ZzJ{'\f&M\1028711\998591\150788\21762\1018849t;C\1027146'a\169935[(X\SI:\1014512\SI\US`\1075490zK[\16921\1074455a\v"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_2 :: BindingNewTeam
testObject_BindingNewTeam_team_2 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName = unsafeRange ";\185306@m\bZ\1021211\&1}\r9\RS)<Qi",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "b5995f2c-7841-4421-a836-6a543a78c326"))) AssetVolatile),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "3~X\DC1\DC2`\SI\STX` \1049374{Jj\167161d!\NUL\1080972&\1084405-%\DC4(^ZL\154655v\CAN8d\54336~1n\1004652O\1061375O\1075436 \1082183\SO)h:%\985030Z}\1013147[c#\1020756~K\1002901G\DEL\2133\DC2\ETB\985562\RS\FS\SIb{_fBZ\128582m\1106827;n]\ESCJ|vd)\SI\SYNY\25315\&5P\DC4\1108270|r(\997751r\SUB?#\1049388\32549\162881\DC4\991416\125075\&9\996811J |o\DLE>4wa\95243leQ*\1000542\1034344>@,\1045947\190894RF4QcNY96\168531\1051528G\1069460&J\\TzHUiG.C\SUB&\FSx\52616\167921\&3\1105098A\1054008B)\29142\31346r\1004296\ENQ&VCPa{\SOH\EMW\DEL\43500\97305\DLE/\1078579\SIc:b\SOH\132266)\35144\1100498\37490@5\983688I02g%%1bJl} :\1021555\SYN\64090\158870\143049"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_3 :: BindingNewTeam
testObject_BindingNewTeam_team_3 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\SUB_F\n\65091\140672\DC2>\1079041\74636t\n)1/% hL\DC2Ad\SOHXq6\DC1)\NUL\f6\fV\DC4r\1097128\DC1n\1107359,@\171217\118996\n\SUB%N\176824\ACK\33856Xv)\SYNz?\DC4\EMY\162050\&2\95792um8}\51420\DC2yW\NULHQ\ENQD[Fe\nk\999106\EM\25079Yk@##u}j\169850\153342\STXq\ESCir7) \27756%\1016104~\993971\&8\1085984je\1099724\&0*Gi3\120829je\CANQr>\1033571k1\63774c\1031586L\1015084\93833t\EOTW\999363\SUBo\fgh\ACK\172057C2\38697c\SUB)uW\r\fB\1042942Sf\SUB\SOH*5l\38586\SI\25991\EMB(\ENQ\133758/)!{\1006380\&9\STXA\DEL\16077fx&\180089T&\187029\DC4\52222[\r\v\n\1071241j2\166180/\1086576\ENQQo\fj\134496\129296\nb6\CAN3\RS9\EM\1000086ub\ETB3CY\GSsIz",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "3d4b563b-016c-49da-bad2-876ad0a5ecd2"))) AssetExpiring),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\FS\RSP\988567Gt\SYN-\47148nJ\1010840g^\n\r\177791\GSR\1010061<q\DLEcN{#\1079710[ZK\DC4\144071\1035452b\NAK\1024894G\NUL\1074049_1\STXWvY"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_4 :: BindingNewTeam
testObject_BindingNewTeam_team_4 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName = unsafeRange "\ETX\1006830k;",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "18fef3b3-323c-4c27-bb62-6026d62f77c3"))) AssetExpiring),
          _newTeamIconKey = Nothing,
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_5 :: BindingNewTeam
testObject_BindingNewTeam_team_5 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\SIB\63473\70352\&3\158300\\#\1061243I\USK\1023384h\DLE\DC3\RS\134858*\998726L\STXw1p\"4\EOT\188995#u\144798\SYN\FS\37122\41625$\376wu\174004\45347\1008628\SUB\a)\DC2?T \49542\&8\39359.\t\NAK1\f\EOTY\128585%\1929\64376\15282 &Z4\1085196\NUL@\SOH\EM\154601\1078303\1098851xtj\182717`\SOH\59489r\r\94098\EOT0\EM\NULLyc D\FS\1085075\1054974)\SUB-\SO\1085196\vl\984336\59601\1114081\CAN\61540\186940f\SIrb/[F\NUL\1099974<1\1027888P\GSxl\"!11E\ESC0\ESC\f$u\1093437N\GSV^\1017313q\170667\n`\1047440\163252:iLXn\CAN\988958\26427O}8!Y\NAK,^X\63902<w\1061946]\15558L\1018747\11542\DEL(e\64005U2\1039884\&9\ACK`'iOp\CAN\1074814O6]\984717\ETX`\46769yv<\1106183AQ\917542Z\ETB\GSR\993395\1070055x%\NAK\1058637Vy\1006815*iR\1007808Sd\173961wp8hn:Y\US",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "s\137014:\USdm\13467\NAKI\11784Y\1069836\182024\1096352>q\988754\nQ\RS\1054014\GS#w\147936\171735\1064959\136621B\DC4\SUBLv\"S>\121093!]sB+6\DC1oc\ETB7\34513lR\95866\EMr%E\1077999B\98708A\1067109N\ETB?{\1065508/|cU\60733\141259]\92896\1102284\DLE\147332\1075446+\991438\t$F\96714he4\166964|k/!5Z~\83246\ETB\1017589\SOH\ENQ\1056989\&3E!{^\33558\&4fh\1029576N\1111705v\f\GS\998029mde!5\1027807y&\1062155xo,\STXrk\1071672\ENQ\SOHJoS\986695X\18929\994879a\991047\RS\1046020\EM\SOH3j\3901Z4\DC4\1068579l\52972n\ESC@ve#\SYN\GS\183587P4\1077298\ESC\170211:\157706z1*\USs\vd`\1059621/\39172\165682"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_6 :: BindingNewTeam
testObject_BindingNewTeam_team_6 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "v\188076hEWefuu\1006804jPx\158137k#\SOH\986725\STX\ETX^\ESC\n\CAN\8325p1D|S1\1064991\1102106\29079\SYN`\t0g\1034469,t\FSw\fDT\RS#H\SOH\145176\US{\1091499\1025650\984364lW\a,uil\SIN`5e:\SYN Y!\SYN\1025115tb\1085213",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "d7a467c6-8cd4-40cb-9e30-99b64bb11307"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "+&heN\1091941K\f_k\DLE(\33970\DC3\9833M\f\1029853\1098178\SI^s\1101855Ga,$\38078\SIb\DC3\f\"s{\ACK5\1025293\5649\US\DLE\SUB\1085641\70123\CAN,\1036517\158007\DC4 \1109215P\95245|f.>hEa\DLE^\ENQ\b]`\1112948<\GSZG\1004098\SOH\190360\24273*8p\FSF@OLpnXTmW\96553f\68110\1076109\25954Ze1 \SYNEm\27765f\ACK\987143"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_7 :: BindingNewTeam
testObject_BindingNewTeam_team_7 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\145552\1042892iz\1057971FT\14964;\1108369}\188917\1113471\&9\SO\991633\&7>hAC\NULH2O\177259m\187711\&2R(?W,=,\990725M\992456\aM\194790\SUB\47600q\SOlj\EOTj^.s~\rY%5lM,\26492=\ACK\1016899\188843>{\CAN\DLE\15878f=X9\SYN9\51145\159419TI4\17599\v\NAK6\1014936/\DLE\NAK\ACK\23564H<\ENQ\1029703e\ENQz\1017528:\6137\"rS\a\167660\FS\ETX\1059289\1031786\49012\DC4\DC4Q\"\1065200\&1:\1097556\UST.;\1042663\18380}",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "b199431c-e2ee-48c6-8f1b-56726626b493"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "D\RS<?\9485\&64=\DEL\151048^\9693\1068715*Y\SYNZ8F\n\60211\59725\&5\NUL%G4G\ACK\1063511\165604ke\"#k8\v\nasEo\DC4\f:%\DC4\52619-\DC1\146860e\CAN\155483\134976\\e\19692\bd\\\1017083\DELZ\f'\1033335+c\152979\&1\16864\131337\n\r\1045441\190333+\NUL\DELWcB8t\SYNP\DC2\ESC-;\1041736/ODl[\EM\142432wJ'8q@[9\1097038\1068956\1056160m\DC4*\SOH\r\STX+\999615p\CANb\SUBvrF\SUBRb\1012646\1099971\DC2}\a/\SO=qd9v\1031104\GSf\DEL \1015917\26193\&8\\\NUL\68644Js\DC2\1037001\&2\186399\r>\168552\SOH\1033444\128689Ll\GS\tW\1056953o\CAN\47716b\ETX|\US*=\1011088\1066392\988391\&6\999812"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_8 :: BindingNewTeam
testObject_BindingNewTeam_team_8 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "YwD\1023517r\NAK}\1083947\ACK\1047823\29742\EOT\1071030iI5g\1012255\t\"r\150087O\DC4?\53005\1100290\1108960\NUL\1060304qgg\DC1X)\NULL\1054528\CAN{\v4\NUL\93999\bvD#\1035811$aYFk\b\1102040\1089491\1042733\47133:1\179810S7\66745V)\1072087\v\96989\&3#\b\1104899c\27119Q/jPy\1015620P@Df\997914\51756H\1113361Xr\SO\ETB3%\1108760aF@3A\SI\ETB\STX mj9T=\DC3'XI\DC2?0\1093231\156858VHp?\1066163YU\42092\33083\72810,)\1113424\ETX96\153338z\42445/4T\136162\ESC\60427\1086321&\ETBS\1098748\14578z[\54638Z\DC2\"e\SUB\173931&rQ\fJG\100066\180037\155435s$\SUB$\50544S\162554E\ETX*\t+\63443WU*\144654\1042128\&8\NAK\999184a\t\EM\1097907_\DELOD\1006385/\23998\1100140SmfX",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "v\70188\46459h\SOH_\991979\DC3\ACKi\1000164\DC1\ETXW\72785\35679\DC2\23266\1026390\EOT\f%_\1064553\GS\SYN\ETB N\NULF\1005467\ENQLUua3\1089232M\8605\"\94879\SOH\RS\n-='\DC1B#\FS\136881>\DC3\132340\SI\GS\1088106G7v6w Z\4678\1051054\182628\170805\ESCP>\131111\1051383\1076729\v}?\5316Jg\SOH\SUB^pl\1101671\&2.\SOV\57380\DC3\22371\64509\ENQB\1045499\1076733\139492<\f\DEL2\19252Tz@6\DC3\71851x?\150161\36913\b\DLE\CANp\1081584\SYN\ETXN\1099776C\SI\SUB\DC1l]R\NULvL\1027446Nz\f-bf}f>\STXH\EM\136484+Zo<ju\DC4}\NUL9\n\155628mUHuar(Z\1104541\1030860\1012453\160011\f0X\101105\5373o\1083716/S\153155}-E^\NUL/\ACK6\1016793\33279w\vi^47\RSd&n\187446oD\1067146\FSye/s"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_9 :: BindingNewTeam
testObject_BindingNewTeam_team_9 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\SOLN\GSr\144312\1070871k\181829#\153181lTD[Jh\SOH\1029451\34144\&6<l+\146707&!/1\1082065\FST\35267@F&\1047546\v\v)\34696#yX \b-\SOH\n\1098781\9478\1055208\EOT\t\1097784\179162{q\1104072C\RS\78505\FS*6\1066588m.\145705#?Si*\14062\SUB\1110961;g4ww#\128939\"o\\D\ENQ\ETX\DELt1\1016562\1059723EZq\DC3X\1098796\SOH\34060K)}\1091287\&4K\180853\1039980\SO\1003483\&3\48072\EMtt>\1034706\1062880\NAK}\adb\171356-\\-1\DC42\1046344\DC2\78894\&1/\33084b:\ENQ\1038950;Mw\FS\183866\1113547ITuy\1050264`SP\SOH\SO\GS\NAK\a\r7M\1069326\1064150\18615\n\SYN3V\ETXR\n1$e.\1096261B~yd_z\1047817\rV\1091351\RS\SYN\165050l\DC3\47200u\1058674u\"\aTc|sEw\1011190wTC|F\4735B\t\DC4&\bUEN(+M\SOF;\1099746\134573\EM20\nrPW\1017058$\1064809",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "X\1019453;\ENQW\ACKLk\996110\144662\ETB\n]\58553[~\10280&U\20125v`I\ETB\USl\983659\t\1090302?\17227KM3c\1067581\1030643= \ETBt5vKOg\NAK/NC2~i'\1062772Ojb\b\ETX\62742\1090035\DC1\SOH\NULFWc\1014613sU>P\SOH~\EMwUHU\SO#\55006\1081711!Nwn\1005601e\SOH\SUB\f\ETX\ETBT\DELl\110629BYU;a\1012448K7?,m\154276Xpa\48825\138301\EM ,M!~^g6}(\60133\36369\RS\8075gX}\161019)c\n\SOH2E"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_10 :: BindingNewTeam
testObject_BindingNewTeam_team_10 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName = unsafeRange "\b \SOH+\1056054;\t095\42390\n\STX2J\1002251\DC1UzD_\1110746\FS",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\EOT\131569\ETB:\984737HL\SOH^bs\vG\157476{I\1096053]-J\FS\1107927\vs9\DLE\1000765vI`N\48159MZz"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_11 :: BindingNewTeam
testObject_BindingNewTeam_team_11 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\48005H\1082536\132304\157763\&5\RS\986337-\NAK\ESCR\nL\63954&bD\139428\SUBH\US\1040918\f\t;e\1064224\47101\tc\1087740e\1099415\DLE\ETX\DELI\65746\ETB\133884\SUB \SI\43795~FE\CAN6\162836\DEL\46062u\"\135684\1041611\FSFYI\t/{\ENQ\RS]j\1076782\US22\15884l\42366$\ETB\US\180023kL{\STX*\131382RMj\ESC\1091332W3H\1020399\FS\NAK^\"5\29653\32539*\1099111",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\1109507I\ACK.\158786@y0\DLE\1083101n\\#skj\1019405Y_\1037580&x\1007219\GS\SIy\1104457B\SYN0\DC3VP1\1086698q\1024822\1081753\28211R\1100307*+\RS,MP\27076*;\n\NAK\47211\t\160463\nGj.\41290\1104539l\12622\FS\61112~\1076042\NUL.\1083842&\SOH}\SI\1080986\DC1+f^ZC\a'T\SOH\n\1020923\1097319U\1107987`W\r\\fX\n\1095366TF\1108756`h\97424[\46315ERdP5<<\1024109;\r\1095899\NULDy\28422\&5N/^\136134(\DC3\1045067\1061604\&6e\f:\SIB\DLEF-\1110200\17393\1064949Rfb\44582\aDrB\987948\13740\26738\NUL+\60859\&2.\a\a}\NAKpsFw\ETB\DC3 \186007\151693k~"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_12 :: BindingNewTeam
testObject_BindingNewTeam_team_12 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              ";\110872M\EOT\164161P]'\1041089\1094514\4118\1054714iFnRQV\43238@\992926\59902l\1099067\aKZ{\51124S\190890\fg*\n,`!V\STX\991695e'\1039967\SO0\37019p4d\STXs\1020471uK(c'\52929hjB\144953\SOt'h^\SYN\SYN0\1009487_\12064\166805thH\SI\1073479:\1019934l; n4c\1101781D[\1014388\&8Y+\1092407\EOTE\1058506\\0\168273KKTc)P1K\1042475\990753W\ETX<n4\1110612(\993111Hs\\\993822*\DC3,#P\1022035E\1113604`e\1013625^S o;FuV\141388\&0+\FS\DC3g-\1025332\993749|\97304\8454DX.\EMy\64435\USw\997054\68292\168325i\DC3v\1019449w\161231i\ENQ><|\24888\&0|5{Y\986771M\DC4\vK\DLE\1089150\SOH\DC4\1013653.\ETBg\991717\DLE\"W\NUL9&0yYZ\1094524\v\11606\58174",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\"C\ESC\SI0\ETB\69608p\12616|/O]\53852\SO \55172C\SYNN\SUB8\NUL\62584BxtH\SO*\1077819\&3.\1061851(\1100810w\GS\152525R{q\990825\&4\180037\150457:\187092\134288>\ETB\nl\1061158g\"\996841,6K\28384\1054272[\1019005\1016209N\24221eB!\188918C\EOT\STXX#El\ETB`\61337e \1096702\ACK\ETXPB\DELC\1111118fa\178975"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_13 :: BindingNewTeam
testObject_BindingNewTeam_team_13 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "G\DEL\51831\70681rLb<\1056047!\RS|RD\161793\ACK\82958\164863\45602Ag\22680 \vy`\v\1045283K\13763e\18467,\144933DQEO\RS|\SI\1076051\1063435gr\1113276\NUL\n*1\47081R\SO\66829-Y\1037937n\1085668]])\1086075C\DC3\146455\"M@(K\15234\RS1\35575\FS\SUB\1025798T?}\SO=*\184770\n\69897\v_\"7\1064561?Lk\150200x\DC4bu:\146992\14577\1036009<\1015572\&6\SO`\1071314U\51409yp\183322\&7%",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "o\64661\1052808\SI[aoM\GS\1110611}q\36535\&4^\ETB-*%\148361\&8\1067531`\1070936#pH}\DC3?w`A/\94009\1108569\995072 \1104313\nX\40987\997490\DC3u\RS\SOH(\1041586\1006481\&6\STX]t{\DC4\";*\r\12492q\1066003\12213\63338+w&\31533(3#\180761PY]\RSf\\?F4\SUB\UST\1108579Rnfq%\66873p\154120\182326j\127981\&0P\bn\SO\FS\t\19400\nN.aGx"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_14 :: BindingNewTeam
testObject_BindingNewTeam_team_14 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "2#\DC2N\b9&A\1030886ZL{f\1011542M\1101172\23517\a\DELv\164961\32470\ACKT7\DC3\DC4\1009557O\1103393C\152202\t\DC4l\RS\SOH]\ESC\ACK\95718X;\149660* &\97401}\1111236T\ESCCLkx,\DLE\63803\nbT\1049269fWJ\992800\136973a\US`\DC3\139728\28948\&8r2']\NAK\DC2\133094\nl\DC2NXB\ENQia\1068046]B\989632\DLE\ENQdf#\64677\t6g\FS\SOH\1029760Fp(\GSQTZ\1015396\8630\153801dUJt\SI\EM\194705`\\#g0Qed@a${=Q.\1048388Ld`\35027 \173216sV\SUB\SO5\150360\41997\1107813i\EM\DC3\988956\1049486\SOH\1030355>\1044179\DC3w\1001979Y}\21603\&1q\NAKY:\25626q \ETB=*#\74975\EM\61277\\\21887y9Tfc\DC1\49327k\1096646\\Oxxn&6NtaZ?k:5G@\46350\DC3H\1097149hu4\178807\995883\USR\161801\1024517v\26381\23905\72161\12881\ACKD\985152[bb<\1111873",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey = Nothing,
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_15 :: BindingNewTeam
testObject_BindingNewTeam_team_15 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              ":\44335R_.\4189\v;\t\1039296-\5484PN\r[\32934\SUBY\1102645<\60542\1083602\aW\1099269@\183771\162143\172579\biU\1005268b\DLE=\t8+\993285\1090143\1018670\1107684>\ACK1\bZQ7fmQOQ\986711l!\DC3\44018\27476*\43689*1\f\1097293\&8nk|\NAK\1005998~\fO\162989\100863!:3\ETXn{%\6663\182700if/!\29917] <\1056176Y\1078680\b\DC4~\t\EM\SOH<*\NAK\143397bx4 {\96203\CANVs;g\98929\144388\STXqkI!QJ\1072302J\189512\DC4\64545?_\STX\t\1082190iB3YdKA7@>Q\995699\987049]\1094644\133325>D\1026819wD\ESC|\SI'^\136789\120874Q#q,\"",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\SOH]r<G\DC1Y-\SI\GS\145040*\186856}t?\153975\CANhx&|a\141865\DEL\996493r0\8807\1109281L\ETX\158313\96298yi\NUL '0w\DEL4f\ESC\1113266&\1007581rS\38608W\1067805\DC1k "
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_16 :: BindingNewTeam
testObject_BindingNewTeam_team_16 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "r\RS\ETB\46732\142304\&7X \EM\151088J\CAN\23609\1079631/`\998207mg\134510\&2\v/7cI)&\NUL\r\EM=m$\DC3rv\DC2W:\2313\NUL!:\ENQx\1044836\98694iy\74506\SI\ENQ>j\1053405eA\1046358\tbj\EMk\DC1l\n\988481H~]u\42907\1029099!kjVS{42\NULE?\EMh\61474\35112B!:\DLEX\DC1T\DEL3W\avimhK\1078443\DC1to*P*\DC1}\986362\1081249H\r\1034017B",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey = Nothing,
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_17 :: BindingNewTeam
testObject_BindingNewTeam_team_17 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "|\36324P\US\1040589\159812Y\SOHj\RSYrr\49743\&0m\ENQ\1027954*'\72098\1105368P6\SYN\15236\f\DC2\125109e\1031690\RS\1026891\1003083\69946\rA'\GSA\NAK\53778\1067566J\1016490'T\1037603R2? \FS\US\1032454$\NAKGr(\1008673{\ENQ\62451\&0m<T\51809\rs\1107418r$\1073453hR\NAKB\146297\v\ETX \37501\1112298\t\1069597~\1086060\&2\158518\&5J\DEL<\1064738nU\tKNtd",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "1\r4]N!\"\1071529R&\SI1i\SOe\173651ygO\ACK4\vO\ACK~\100186\NUL\78144b1a\97116Q\f\"\1046755\1051848)\1062626*x\29476C_\SOHa[*9\1781\138879N[Y\1107438r\EM\n3\1075801.(|as 6H\ESC\1047413\1022038\1110919\SOH6\NAKBmh/\t\1108437\19252~\1031435\1015575qbRp\142588<\1094011\35767N/\1039205;\DC4l\132866\GS\153026ac\NAKC\SYN\EOTU\NUL\DC3pW[#\60629u\121385\RS\1098859\163915\DC2\GS\SUBr\DC2D#\1051712\1003045\75053(@i\1044217\171993\120151DY\EML1\DC3|q{&\1108266\1025196\&1{'\1065297y\181957E)\DC2\1000760!0kdCOX:E\987429\\\1025817C\RSISa65N\SYN[i\SO\RS\NUL#:q"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_18 :: BindingNewTeam
testObject_BindingNewTeam_team_18 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "nb0\DC1\1009359\98165}M:i2\DC3\1092613mHt\170565D\SOHb\SI\48416!or\189548\DC3\DC3Be\1105016\GSh\1073616\156688\1031490llA<'b\1002166\ESCKzgk#V\34347\989203^uI[/\70001M\50544u\22544ws*\aI\180721}uK\1033441+\n\CAN\STXz\STX8\1066912/\NAK/#\SI>J\SID\STX-\CAN_I\132366\f\147665\FSR\1080205hp\143954B6W2\b\f6\1104867\DC2\180998\b1'7-T-#\3953D\1076345\1082129T]v$Gl\1042148\1032818\&5yg\1025280\nQc.`i\14819\24538}\FS&k4\99627\ACK>#\32013\1036954\EM\131987[vBOPu\1108963@\ACK\NUL\1087882\147841\SO\NAK\98755\31702\EOT\ETX&\1032348?z\989374i\fz\n\1029119\ETB3\a\1108955W\1113557E^\1043345<E]$\1102355mmo\t\ETB\DEL\1077405\170744\57824}\SUBudf\DC1[\1077857R\1019095\13109N^z\SUBq\1105384K\1069057Uti\NAKa\fn7\52396\127105X\77875\DLEP_\989087\94649\ns\EOT\NULj\GS",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\DC1-\v#I5\1051325\21459\EMa\ETX$H\148480\&2\54182K\DLE\1075816\132583\&4\1098840L\ENQ\NAKAC.\DEL\DC1%1\132774<'GE\DLE\37336C\1003224Mn\36876\40869-\ESC\"\NAK\DC2\175688\143532\1031085c\DC4y\1031451RB\26880\&6\DC4fLN\1100850jDktCF\NAK\1022495\\\NAKn&\48819\26056\a\158835\1076617\169376}ou\998895\a\SO\FS\DC1\183162\ESC0b~\1000918R\bQ$\1011905(s\35293\bZ\SO]5\f(\61445\&37\16148\54241"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_19 :: BindingNewTeam
testObject_BindingNewTeam_team_19 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\173085|Z\20933?l\b4D\20059K0#OV>\986117S3'4\ACK\74144*m-\ESC4\USj\ETX__6\1046371\6580M\48069\ESC]\EOTDq\DLEuo\28030$\vUWp1=/o\ETBY\173686\&9\DC2\nQ\177317\1051037)\1102455<h\USg\1069334",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey =
            Just
              ( unsafeRange
                  "\34168\74000\t\ETX/\134746\43082\180115(~\r/\983048;{\1053732Uo\FSBE\nj\178566\65801\1108556rv\nD.zK\GSDYk\b$4\992709~\73110\&95l {\"n^\1051738e\1038399\SYN8{F+zy%+*\154773_\1027040Z\SYN\129524\111155\54325\75022\DC23=\996140c\30926\48975\&7\r\183560}\CAN\159199m\RS\1036451\ENQ\148682$#\CAN\DC1\EOT\1067874<\NAKA5[tx~\1064260C\ENQ\133081E%=kKQs@o\1081749JT\ETB2;\161946\f\SI]\NAK\CAN\STX>\1010761\NAKaR\145135;\52151\SOH\EM\na\nvt\133143\ETXa\140630 J\134658uX\1077113?Wz&<\DC4C\fx`\1038161#\SI\194737\37045\43620\RS\STX#\SYN\DC4-Oj\EOTd\1037772'FoHqexoh\SUBx\1106683\184912\bi\998453yr\SI\1064751w\1104226\n8T\1008339\&2'\1024124\1110758\1103037\RSnxW[\26817\993050\96723\153423i\13589\&4\1008403YHZ\48771VZ\DLE^0\STXC\1057595\1037144"
              ),
          _newTeamMembers = Nothing
        }
    )

testObject_BindingNewTeam_team_20 :: BindingNewTeam
testObject_BindingNewTeam_team_20 =
  BindingNewTeam
    ( NewTeam
        { _newTeamName =
            unsafeRange
              "\SOHW+\a#\151172iN6\GS/#mrj4'\rTV]\ETXg>\"br\SOH\NUL\158808+\47718c^\1003405<`\1111751\149060\STX\986585\ETX\162139D\ENQ\30356nqp\1095539\988368c\RSt\1081319G",
          _newTeamIcon = Icon (AssetKeyV3 (Id (fromJust (UUID.fromString "55b9ad19-315c-4bda-8c0f-5d7b0e143008"))) AssetEternal),
          _newTeamIconKey = Nothing,
          _newTeamMembers = Nothing
        }
    )
