.ifndef INC_ASM03
.equ INC_ASM03, 0

/* Public Symbols */
.global ho_8026554
.global sub_8026840
.global loc_8026A28
.global sub_8027D10
.global sub_802A866
.global loc_802A87C
.global sub_802B2A0
.global sub_802B358
.global sub_802B438
.global sub_802B4D4
.global sub_802B51C
.global sub_802B6EC
.global loc_802B734
.global loc_802BD60
.global sub_802C34E
.global sub_802C8FA
.global sub_802C9B8
.global sub_802C9EA
.global sub_802CA82
.global sub_802CB38
.global loc_802CB78
.global off_802CCB4
.global off_802CD5C
.global sub_802CDD0
.global sub_802CDE6
.global sub_802CDFE
.global sub_802CE10
.global sub_802CE30
.global sub_802CE54
.global sub_802CE60
.global sub_802CE78
.global sub_802CE8A
.global sub_802CEA6
.global sub_802CEC8
.global sub_802CEF4
.global sub_802CFF8
.global sub_802D064
.global sub_802D08C
.global sub_802D158
.global sub_802D15E
.global sub_802D1B4
.global sub_802D1BE
.global sub_802D234
.global sub_802D246
.global sub_802D254
.global sub_802D266
.global sub_802D26A
.global sub_802D27C
.global sub_802D280
.global sub_802D28C
.global sub_802D2AC
.global sub_802D2B2
.global sub_802D310
.global loc_802D322
.global loc_802D4C6
.global sub_802D638
.global sub_802D644
.global sub_802D652
.global sub_802D65E
.global sub_802D6A0
.global sub_802D6C4
.global loc_802D714
.global loc_802D926
.global sub_802DCDE
.global sub_802DCEC
.global sub_802DD2A
.global sub_802DE5C
.global sub_802DFC8
.global sub_802DFFC
.global sub_802E014
.global sub_802E032
.global sub_802E04E
.global sub_802E066
.global sub_802E070
.global sub_802E09A
.global sub_802E112
.global sub_802E156
.global sub_802E1D8
.global sub_802E240
.global sub_802E440
.global sub_802E44A
.global sub_802E454
.global sub_802E45E
.global sub_802E4B8
.global sub_802E4E4
.global sub_802E830
.global sub_802EF5C
.global sub_802F068
.global dword_802F0A8
.global sub_802F0C4
.global sub_802F0D8
.global sub_802F0F4
.global sub_802F110
.global sub_802F114
.global sub_802F12C
.global sub_802F130
.global sub_802F148
.global sub_802F164
.global sub_802F168
.global sub_802F17E
.global loc_802F182
.global sub_802F1A8
.global loc_802F1AC
.global sub_802F1FC
.global loc_802F200
.global sub_802F238
.global sub_802F2C8
.global off_802FD70
.global dword_802FD74
.global sub_802FDB0
.global loc_802FDB4
.global objRender_802FE0C
.global sub_802FE28
.global sub_802FE48
.global sub_802FE6A
.global sub_802FE7A
.global sub_802FF2C
.global sub_802FF4C
.global loc_802FFF4
.global sub_80301B2
.global sub_80301DC
.global sub_80302A8
.global sub_80302B6
.global sub_80302C0
.global loc_8030308
.global sub_803037C
.global sub_80303E8
.global sub_80303F2
.global loc_8030472
.global sub_80304E8
.global sub_8030540
.global sub_8030580
.global sub_80307D8
.global sub_8030808
.global loc_8030A00
.global sub_8030A30
.global sub_8030A60
.global sub_8030AA4
.global sub_8030B6A
.global sub_8031612
.global sub_8031A7A
.global dword_8031CC4
.global off_803385C
.global dword_8033878
.global sub_8033948
.global sub_8033978
.global loc_80339CC
.global sub_8033FC0
.global sub_80341AA
.global off_8034938
.global sub_8034B4C
.global sub_8034BB8
.global sub_8034C36
.global sub_8034FB8
.global sub_803532C
.global sub_803537C
.global sub_8035408
.global sub_8035424
.global sub_80355A8
.global sub_80355EC
.global sub_8035694
.global sub_80356EC
.global sub_8035738
.global sub_803578C
.global sub_8036E44
.global sub_8036E78
.global sub_8036E90
.global sub_8036ED4
.global sub_8036EFE
.global sub_8036F24
.global sub_8036F36
.global sub_8036F40
.global sub_8036F58
.global sub_8036F70
.global sub_8036F98
.global sub_8036FAA
.global sub_80385F0
.global sub_8038A9C
.global sub_803BB2C
.global sub_803C28A
.global sub_803C2A0
.global sub_803C316
.global sub_803C330
.global sub_803C3E0
.global sub_803C514
.global sub_803C59C
.global sub_803C604
.global sub_803C612
.global sub_803C620
.global sub_803C754
.global sub_803CAF8
.global sub_803CB00
.global sub_803CB0C
.global sub_803CB18
.global sub_803CD74
.global sub_803CD98
.global sub_803CDF8
.global sub_803CE08
.global sub_803CE28
.global sub_803CE44
.global sub_803CEB8
.global sub_803CED4
.global sub_803D06C
.global sub_803D080
.global sub_803D0C8
.global sub_803D0F4
.global sub_803D108
.global sub_803D138
.global sub_803D148
.global sub_803D1A8
.global loc_803D1AC
.global sub_803DCD8
.global sub_803DCE8
.global sub_803DD30
.global sub_803DD60
.global sub_803DDA4
.global sub_803DE24
.global sub_803DE5C
.global sub_803DE88
.global sub_803DEAC
.global sub_803DEB4
.global sub_803E8F8
.global sub_803E900
.global sub_803EA2C
.global sub_803EA50
.global sub_803EA58
.global sub_803EA60
.global sub_803EA68
.global sub_803EA70
.global loc_803EA78
.global sub_803EAE4
.global sub_803EBAC
.global sub_803EBB8
.global sub_803EBC8
.global sub_803EBF4
.global sub_803ECFC
.global loc_803ED90
.global sub_803EF60
.global sub_803EF74
.global sub_803EF7C
.global sub_803F030
.global sub_803F05C
.global sub_803F334
.global sub_803F4C8
.global sub_803F4EC
.global sub_803F500
.global sub_803F524
.global sub_803F530
.global sub_803F618
.global sub_803F674
.global sub_803F6B0
.global sub_803F740
.global sub_803F798
.global sub_803F79E
.global sub_803F838
.global sub_803F9E4
.global sub_803FB28
.global sub_803FCF0
.global sub_803FD08
.global chatbox_runScript_202da04
.global sub_803FD78
.global sub_803FD9C
.global loc_803FDA4
.global sub_803FE08
.global sub_803FE10
.global chatbox_onUpdate_803FEB4
.global loc_8040000
.global chatbox_runScript
.global reqBBS_80404C0
.global sub_8040818
.global sub_8040D5C
.global off_8043C8C
.global off_8044470
.global off_80444C4
.global sub_8045EDC
.global sub_8045EFC
.global sub_8045F1C
.global sub_8045F2C
.global sub_8045F3C
.global sub_8045F4C
.global render_graphicalText_8045F8C
.global sub_8045FBC
.global sub_8045FC6
.global sub_804657C
.global sub_80465A0
.global sub_80465BC
.global sub_80465F8
.global sub_8046664
.global sub_8046670
.global sub_804668A
.global sub_8046696
.global sub_80466C4
.global sub_80467D8
.global sub_8046818
.global sub_8046854
.global sub_80468BA
.global sub_80468C6
.global sub_80468E0
.global sub_80468EC
.global sub_804691A
.global sub_8046CC8
.global sub_8047D84
.global sub_8048C68
.global sub_8048C98
.global sub_8048F88
.global sub_8048F9C
.global sub_8048FC4
.global cb_8048FD4
.global sub_8049CF8
.global sub_8049D42
.global sub_8049D7C
.global sub_8049D82
.global sub_8049D98
.global sub_8049DA0
.global sub_8049DC4
.global sub_8049DDC
.global sub_804A17A
.global sub_804A1D0
.global sub_804A24C
.global sub_804A2CC


/* External Symbols */
.include "asm11.inc"
// .global sub_8069038
// .global sub_80690C2
// .global sub_8069140
// .global loc_80691D4
// .global sub_80691FE
// .global off_80692F8
// .global dword_8069304
// .global off_8069310
// .global off_806931C
// .global sub_8069FE8
// .global sub_806A070
// .global sub_806A120
// .global loc_806A1B4
// .global sub_806A1DE
// .global off_806A260
// .global dword_806A26C
// .global off_806A278
// .global off_806A284
// .global sub_806AA00
// .global sub_806AAAA
// .global sub_806AB94
// .global loc_806ACC0
// .global sub_806AD00
// .global off_806AE08
// .global off_806AE1C
// .global off_806AE30
// .global off_806AE44
// .global sub_806C23C
// .global sub_806C2E2
// .global sub_806C35C
// .global loc_806C4B0
// .global sub_806C59C

.include "asm02.inc"
// .global sub_8021AA4
// .global dword_8021AEC
// .global sub_8021B78
// .global sub_8021B92
// .global sub_8021BC0
// .global sub_8021BD8
// .global sub_8021C02
// .global sub_8021D14

.include "asm37.inc"
// .global sub_813B780
// .global sub_813C030
// .global sub_813C3AC
// .global sub_813D5C8
// .global sub_813D60C
// .global sub_813D638
// .global sub_813D648
// .global sub_813D750
// .global sub_813D90C
// .global sub_813D91C
// .global sub_813D934
// .global sub_813D960
// .global sub_813D978
// .global sub_813D9A0
// .global sub_813DA84
// .global loc_813DA94
// .global sub_813DB24
// .global sub_813DBC0
// .global sub_813E5DC
// .global dword_813F380
// .global sub_813F9A0
// .global sub_8140798
// .global sub_81408B4
// .global sub_81421E0
// .global sub_8142868
// .global sub_81440D8
// .global sub_8144240
// .global sub_8144250
// .global sub_81445F8
// .global sub_8144CE0
// .global sub_8144D04
// .global sub_8144D18
// .global sub_8144D24
// .global sub_814656C
// .global sub_8146588
// .global sub_81465BC
// .global sub_814665C
// .global sub_81466E4
// .global sub_8146714
// .global sub_8146728
// .global sub_8146738
// .global sub_814673C
// .global sub_81467A0
// .global sub_8146808
// .global sub_8146888
// .global sub_81468F4
// .global sub_814690C
// .global sub_8146918
// .global sub_8146938
// .global sub_814695C
// .global sub_81469BC
// .global sub_8146BB8
// .global sub_8146BF4
// .global sub_8146C20
// .global sub_8146CFC
// .global sub_8146D20
// .global sub_8146D40
// .global sub_8146D98
// .global sub_8146E5C
// .global sub_8146E78
// .global sub_8147B24
// .global sub_8147B3C
// .global sub_8147F98
// .global sub_8148214
// .global sub_8148224
// .global sub_8148884
// .global sub_8148D24
// .global sub_8148FC0
// .global sub_8149644
// .global sub_814A828
// .global SWI_LZ77UnCompReadNormalWrite8bit
// .global sub_814D8F0
// .global sub_814D954
// .global sub_814D9C4

.include "asm10.inc"
// .global sub_80663D0
// .global sub_8066450
// .global sub_806649C
// .global loc_806651C
// .global sub_8066540
// .global off_80665A4
// .global dword_80665AC
// .global off_80665B4
// .global off_80665BC
// .global sub_8067B5C
// .global sub_8067BE4
// .global sub_8067C88
// .global loc_8067D1C
// .global sub_8067D46
// .global off_8067DC8
// .global dword_8067DD4
// .global off_8067DE0
// .global pt_8067DEC

.include "asm16.inc"
// .global sub_8077D00
// .global sub_8077D8A
// .global sub_8077DE0
// .global loc_8077E60
// .global sub_8077E84

.include "asm17.inc"
// .global sub_807931C
// .global sub_807939A
// .global sub_80793E8
// .global loc_8079468
// .global sub_807948C

.include "asm31.inc"
// .global sub_80B84EC
// .global sub_80B9014
// .global sub_80B921A
// .global sub_80B9432
// .global sub_80B9750
// .global sub_80B999A
// .global sub_80B9B6E
// .global sub_80B9F0E
// .global sub_80BA1B0
// .global sub_80BA660
// .global sub_80BA920
// .global sub_80BAE16
// .global sub_80BB7F6
// .global sub_80BBAC6
// .global sub_80BBDE8
// .global sub_80BC0DA
// .global sub_80BD9A2
// .global sub_80BE3E8
// .global sub_80BF160
// .global sub_80BF6AE
// .global sub_80BFCD0
// .global sub_80C0DD8
// .global loc_80C1008
// .global sub_80C2A4C
// .global sub_80C2F96
// .global sub_80C3B30
// .global sub_80C3E98
// .global sub_80E05F6
// .global sub_80E07E0
// .global sub_80E164A
// .global sub_80E24B8
// .global sub_80E2566
// .global sub_80E2B5A
// .global sub_80E2D76
// .global sub_80E2F24
// .global sub_80E3128
// .global sub_80E3242
// .global sub_80E349E
// .global sub_80E353E
// .global sub_80E3B50
// .global sub_80E4164
// .global sub_80E4288
// .global sub_80E46B6
// .global sub_80E49A2
// .global sub_80E59C6
// .global sub_80E5EA8
// .global sub_80E5F78
// .global sub_80E64E8
// .global sub_80E67E6
// .global sub_80E7008
// .global sub_80E70A6
// .global sub_80E723E
// .global sub_80E7464
// .global sub_80E7486
// .global sub_80E7546
// .global sub_80E7600
// .global sub_80E76D4
// .global sub_80E7CA8
// .global sub_80E7F16
// .global sub_80E7FBA
// .global sub_80E8058
// .global sub_80E81B4
// .global sub_80E8ADC
// .global sub_80E8BC0
// .global sub_80E91B8
// .global sub_80E92EE
// .global sub_80E943E
// .global sub_80E979C
// .global sub_80EA11C
// .global loc_80F0804
// .global sub_81096FA
// .global sub_810971A

.include "asm32.inc"
// .global sub_8116894
// .global sub_8116924
// .global loc_8116ADC
// .global sub_8116CE0
// .global sub_8116E10
// .global sub_8116FDC
// .global sub_8117084
// .global sub_8117110
// .global sub_8117218
// .global sub_81172B0
// .global sub_8117404
// .global sub_81175D0
// .global sub_8117690
// .global loc_8117780
// .global loc_81178D8
// .global sub_81179AE
// .global sub_8117BC8
// .global sub_8117D2C
// .global sub_8117EC8
// .global loc_8118344
// .global loc_81187E8
// .global loc_8118BA4
// .global loc_8118D60
// .global loc_8118E84
// .global sub_8118F24
// .global sub_8119364
// .global sub_811980C
// .global sub_8119854
// .global loc_811997C
// .global sub_8119ACC
// .global sub_8119D54
// .global sub_8119E40
// .global sub_811A338
// .global sub_811A414
// .global sub_811A78C
// .global sub_811A858
// .global sub_811A978
// .global sub_811AB5C
// .global sub_811AD38
// .global sub_811B1EC
// .global loc_811B338
// .global sub_811B3F4
// .global sub_811B4AC
// .global sub_811BC44
// .global sub_811BD64
// .global sub_811D634
// .global sub_811D66C
// .global sub_811D69C
// .global sub_811DBF0
// .global loc_811DF1C
// .global loc_811E024
// .global loc_811E168
// .global loc_811E248
// .global loc_811E360
// .global loc_811E418
// .global loc_811E57C
// .global loc_811E61C
// .global loc_811E6C0
// .global loc_811E7D4
// .global loc_811E858
// .global loc_811E914
// .global loc_811E9A0
// .global sub_811EBE0
// .global sub_811F290
// .global sub_811F728
// .global sub_811F758
// .global sub_811F7EC
// .global sub_811F7F8
// .global sub_811FA22
// .global sub_811FA98
// .global sub_811FAF4
// .global sub_811FB84
// .global sub_811FE7C
// .global sub_811FFC0
// .global loc_8120018
// .global sub_81200EC
// .global sub_81202FC
// .global sub_8120390
// .global sub_81203E4
// .global sub_8120458
// .global sub_81204C4
// .global sub_8120618
// .global sub_81207F8
// .global sub_8120A88
// .global sub_8120AB8
// .global sub_8120B54
// .global sub_8120CC8
// .global sub_8120DF0

.include "asm09.inc"
// .global sub_8062AB0
// .global sub_8062B64
// .global sub_8062BCC

.include "asm33.inc"
// .global sub_8123360
// .global sub_8123408
// .global dword_8129180
// .global sub_81291D8

.include "asm08.inc"
// .global sub_806036C
// .global sub_8060406
// .global sub_806044C

.include "asm04.inc"
// .global sub_804E62C
// .global sub_804E6D0
// .global sub_804E720

.include "asm05.inc"
// .global sub_8052688
// .global sub_8052764
// .global sub_80527F0

.include "asm14.inc"
// .global sub_8071B50
// .global sub_8071BE4
// .global sub_8071C30
// .global loc_8071CC4
// .global sub_8071CEE
// .global off_8071EB0
// .global dword_8071EBC
// .global off_8071EC8
// .global off_8071ED4

.include "asm06.inc"
// .global sub_80595B8
// .global sub_8059664
// .global sub_80596C8

.include "asm15.inc"
// .global sub_807544C
// .global sub_80754E2
// .global sub_8075530
// .global loc_80755C4
// .global sub_80755EE

.include "asm07.inc"
// .global sub_805DF08
// .global sub_805DFA2
// .global sub_805DFF0

.include "asm36.inc"
// .global sub_8132648
// .global sub_8132664
// .global sub_8132A50
// .global sub_8137718

.include "asm00.inc"
// .global sound_play
// .global sub_80005D4
// .global sub_80005F2
// .global sub_8000642
// .global sub_800068A
// .global sub_80006A2
// .global sub_8000784
// .global sub_80008B4
// .global sub_80008C0
// .global CpuSet_ZeroFillWord
// .global sub_8000900
// .global sub_8000920
// .global sub_800092A
// .global sub_800093C
// .global sub_8000950
// .global initMemblockToByte
// .global sub_800096C
// .global sub_800098C
// .global sub_80009AC
// .global loc_8000AC4
// .global loc_8000AC8
// .global sub_8000B30
// .global sub_8000B8E
// .global sub_8000C00
// .global sub_8000C5C
// .global sub_8000C72
// .global sub_8000CDA
// .global sub_8000D12
// .global sub_8000D84
// .global sub_8000EB6
// .global sub_8000EE4
// .global sub_8001040
// .global getPETNaviSelect
// .global sub_80010BE
// .global sub_80010C6
// .global sub_80010D4
// .global sub_80010EC
// .global sub_8001158
// .global sub_8001172
// .global sub_8001514
// .global sub_800151C
// .global sub_8001532
// .global sub_800154C
// .global sub_80015FC
// .global sub_8001778
// .global sub_8001788
// .global sub_80017A0
// .global sub_80017AA
// .global sub_80017E0
// .global sub_800183C
// .global sub_8001850
// .global sub_800187C
// .global sub_8001890
// .global sub_80018C2
// .global sub_80018D0
// .global sub_80018E0
// .global sub_8001930
// .global sub_8001974
// .global sub_8001AFC
// .global sub_8001B1C
// .global sub_8001B6C
// .global sub_8002354
// .global sub_80023A8
// .global sub_8002468
// .global loc_8002484
// .global sub_80024C0
// .global sub_800260C
// .global sub_8002694
// .global sprite_loadAnimationData_80026A4
// .global sub_80026B6
// .global anim_80026C4
// .global sub_80026D6
// .global sub_80026E4
// .global sub_800275A
// .global sub_80027C4
// .global sub_8002818
// .global sub_8002874
// .global sub_80028D4
// .global sub_8002906
// .global sub_8002A64
// .global sub_8002ADE
// .global sprite_makeUnscalable
// .global sprite_setPallete
// .global sprite_setAnimation
// .global sub_8002DB0
// .global sub_8002DEA
// .global sub_8002E3C
// .global sub_8002F5C
// .global sub_8002F90
// .global sub_800307C
// .global loc_8003570
// .global sub_80035A2
// .global sub_8003914
// .global sub_8003940
// .global sub_8003962
// .global sub_800399A
// .global sub_80039CC
// .global sub_8003A64
// .global loc_8003A90
// .global sub_8003AB2
// .global sub_8003AEA
// .global sub_8003B1C
// .global sub_80045C0
// .global sub_8004D48
// .global sub_8004DF0
// .global sub_8005BC8
// .global sub_8005C04
// .global subsystem_launchBBS
// .global subsystem_launchReqBBS
// .global subsystem_launchShop
// .global subsystem_launchChipTrader
// .global sub_8005EA2
// .global subsystem_launchMail
// .global sub_8005F40
// .global sub_8005F6C
// .global sub_8005F84
// .global engine_setScreeneffect
// .global loc_8006274
// .global sub_80062EC
// .global engine_isScreeneffectAnimating
// .global loc_80062FC
// .global dword_80065D0
// .global dword_8006660
// .global sub_80068EC
// .global sub_8006910
// .global sub_8006C22
// .global sub_8006C6C
// .global sub_8006DF6
// .global save_8006E0E
// .global save_8006E26
// .global load_8006E3C
// .global sub_8006E50
// .global sub_8006E70
// .global sub_8006F1E
// .global sub_8006F54
// .global sub_8006F78
// .global sub_8006FAC
// .global sub_8006FD0
// .global sub_80070BC
// .global sub_80071D4
// .global sub_80076A0
// .global loc_8007800
// .global sub_8009FF8
// .global battle_isPaused
// .global battle_isTimeStop
// .global sub_800A0A4
// .global battle_isBattleOver
// .global battle_setFlags
// .global battle_clearFlags
// .global battle_getFlags
// .global sub_800A704
// .global sub_800A70C
// .global getBattleSettingsFromList0
// .global getBattleSettingsFromList1
// .global sub_800A7D0
// .global sub_800A7E2
// .global sub_800A832
// .global sub_800A856
// .global sub_800A8F8
// .global sub_800A908
// .global sub_800A97A
// .global sub_800A9D6
// .global sub_800A9E2
// .global battle_networkInvert
// .global sub_800AABC
// .global sub_800AB2E
// .global sub_800AB3A
// .global sub_800AB46
// .global sub_800AFBA
// .global sub_800B022
// .global sub_800B3A2
// .global sub_800B3D8
// .global sub_800B460
// .global sub_800B46C
// .global sub_800B6B0
// .global sub_800B6CE
// .global sub_800B6D4
// .global sub_800B6DA
// .global sub_800B6E0
// .global sub_800B734
// .global object_getPanelParameters
// .global sub_800C90A
// .global object_isValidPanel
// .global object_checkPanelParameters
// .global sub_800D012
// .global sub_800D086
// .global sub_800E29C
// .global sub_800E2C0
// .global sub_800E2C2
// .global sub_800E2CA
// .global object_addHP
// .global sub_800E456
// .global sub_800E680
// .global sub_800EA0E
// .global object_setInvulnerableTime
// .global sub_800EB08
// .global object_getEnemyByNameRange
// .global sub_800EC3C
// .global sub_800F214
// .global sub_800F2B6
// .global sub_800F2C6
// .global sub_800F378
// .global sub_800F46C
// .global sub_800FB54
// .global sub_800FC9E
// .global sub_800FFE4
// .global sub_800FFEE
// .global sub_800FFFE
// .global sub_8010004
// .global sub_8010018
// .global sub_801002C
// .global sub_8010312
// .global sub_801031C
// .global sub_801032C
// .global sub_80103BC
// .global sub_80103EC
// .global sub_801086C
// .global sub_80108FC
// .global loc_80109A4
// .global sub_8010DD0
// .global sub_8011020
// .global loc_8011268
// .global loc_8011384
// .global sub_8011680
// .global loc_8011694
// .global sub_80116AE
// .global sub_8011714
// .global sub_8012EA8
// .global sub_8013682
// .global sub_80136CC
// .global sub_80136D8
// .global sub_80136E4
// .global sub_80136F0
// .global sub_8013704
// .global sub_8013754
// .global sub_8013764
// .global sub_8013774
// .global sub_8013790
// .global sub_801379E
// .global sub_80137B6
// .global sub_80137E6
// .global sub_80137FE
// .global sub_8013816
// .global sub_801382E
// .global sub_801393A
// .global loc_8013B64
// .global sub_8013D5E
// .global sub_8013FD0
// .global sub_80141AC
// .global loc_8014216
// .global sub_80143A6
// .global loc_80143B4
// .global sub_80144C0
// .global sub_8015940
// .global sub_8015952
// .global sub_8015B54
// .global sub_8015B5C
// .global sub_8015BEC
// .global sub_8015C32
// .global sub_8015CC0
// .global sub_80182B4
// .global sub_801A04C
// .global sub_801A074
// .global sub_801A07C
// .global object_clearFlag
// .global object_getFlag
// .global sub_801A16C
// .global sub_801A176
// .global sub_801A264
// .global sub_801A66C
// .global sub_801BB1C
// .global sub_801BB46
// .global sub_801BCD0
// .global sub_801BEB8
// .global sub_801BEC2
// .global sub_801BECC
// .global sub_801BED6
// .global sub_801DA48
// .global sub_801DACC
// .global sub_801DBD4
// .global sub_801DC7C
// .global sub_801DED0
// .global sub_801DEEE
// .global sub_801DF0C
// .global sub_801DF92
// .global sub_801DFA2
// .global sub_801E0A0
// .global sub_801E0D0
// .global sub_801E2BA
// .global sub_801E408
// .global sub_801E474
// .global sub_801E574
// .global sub_801E660
// .global sub_801E71C
// .global sub_801E754
// .global sub_801E780
// .global loc_801E792
// .global sub_801E914
// .global sub_801EC44

.include "asm19.inc"
// .global sub_807CDEC
// .global sub_807CE90
// .global sub_807CF24
// .global loc_807CFCC
// .global sub_807CFFC

.include "start.inc"
// .global start_
// .global start_8000288

.include "asm18.inc"
// .global sub_807A8E0
// .global sub_807A974
// .global sub_807A9CC
// .global loc_807AAAC
// .global sub_807AAD6

.include "asm20.inc"
// .global sub_807ECD0
// .global sub_807ED6C
// .global sub_807EDD4
// .global loc_807EE68
// .global sub_807EE92

.include "asm29.inc"
// .global sub_80AA5F4
// .global sub_80AA8E0
// .global sub_80AABA4
// .global sub_80AAC8C

.include "asm13.inc"
// .global sub_806FC08
// .global sub_806FCF8
// .global sub_806FD54
// .global loc_806FF08
// .global sub_806FFDA

.include "asm28.inc"
// .global dword_8098DD0
// .global unk_80991F4
// .global dword_8099DC0
// .global dword_8099E04
// .global dword_8099EA0
// .global dword_809A898
// .global dword_809AA24
// .global dword_809AE50
// .global sub_809C968
// .global sub_809CA40
// .global sub_809CA84
// .global unk_809CAD8
// .global sub_809CF2C
// .global sub_809E064
// .global sub_809E0B0
// .global loc_809E0FC
// .global loc_809E114
// .global sub_809E122
// .global sub_809E13C
// .global sub_809E14C
// .global sub_809E228
// .global sub_809E230
// .global sub_809E23C
// .global sub_809E248
// .global sub_809E254
// .global loc_809E260
// .global loc_809E26A
// .global sub_809E276
// .global sub_809E284
// .global sub_809E292
// .global sub_809E2A0
// .global sub_809E2AE
// .global sub_809E2B8
// .global sub_809E312
// .global sub_809E434
// .global sub_809E442
// .global sub_809E452
// .global sub_809E462
// .global sub_809E4A0
// .global sub_809E4AE
// .global sub_809E4BC
// .global sub_809F9DC

.include "asm12.inc"
// .global sub_806D8F8
// .global sub_806D9FC
// .global sub_806DA58
// .global loc_806DC0C
// .global sub_806DCD4


/* Undeclared Symbols */
.equ timer_2000000, 0x2000000
.equ unk_2000070, 0x2000070
.equ unk_20000A0, 0x20000A0
.equ unk_2000260, 0x2000260
.equ unk_2000370, 0x2000370
.equ dword_2000DC0, 0x2000DC0
.equ dword_2000DC4, 0x2000DC4
.equ dword_2000DC4, 0x2000DC4
.equ byte_20010F0, 0x20010F0
.equ dword_2001140, 0x2001140
.equ word_2001800, 0x2001800
.equ byte_2001802, 0x2001802
.equ unk_2001808, 0x2001808
.equ byte_2001818, 0x2001818
.equ unk_2001828, 0x2001828
.equ byte_200183C, 0x200183C
.equ unk_2001850, 0x2001850
.equ byte_2001860, 0x2001860
.equ byte_2001880, 0x2001880
.equ byte_20018A0, 0x20018A0
.equ unk_20018C0, 0x20018C0
.equ unk_20018F0, 0x20018F0
.equ unk_200194C, 0x200194C
.equ unk_20019A8, 0x20019A8
.equ unk_2001A04, 0x2001A04
.equ unk_2001A60, 0x2001A60
.equ unk_2001ABC, 0x2001ABC
.equ sReqBBS_GUI, 0x2005780
.equ byte_2006530, 0x2006530
.equ unk_2006710, 0x2006710
.equ dword_2006714, 0x2006714
.equ unk_2006720, 0x2006720
.equ dword_2006740, 0x2006740
.equ dword_2006744, 0x2006744
.equ unk_2006750, 0x2006750
.equ word_2006770, 0x2006770
.equ byte_2006772, 0x2006772
.equ word_2006774, 0x2006774
.equ word_2006776, 0x2006776
.equ unk_2006778, 0x2006778
.equ byte_2006788, 0x2006788
.equ unk_2006798, 0x2006798
.equ byte_20067AE, 0x20067AE
.equ dword_20067C0, 0x20067C0
.equ unk_2008170, 0x2008170
.equ byte_2008450, 0x2008450
.equ byte_2008451, 0x2008451
.equ byte_2008452, 0x2008452
.equ byte_2008453, 0x2008453
.equ byte_2008978, 0x2008978
.equ dword_200897C, 0x200897C
.equ unk_2009450, 0x2009450
.equ unk_2009460, 0x2009460
.equ unk_2009480, 0x2009480
.equ unk_20096E0, 0x20096E0
.equ byte_2009790, 0x2009790
.equ unk_2009940, 0x2009940
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ sCamera, 0x2009980
.equ dword_2009A10, 0x2009A10
.equ dword_2009A18, 0x2009A18
.equ dword_2009A24, 0x2009A24
.equ dword_2009A28, 0x2009A28
.equ dword_2009A2C, 0x2009A2C
.equ sSubmenu, 0x2009A30
.equ sSubmenu, 0x2009A30
.equ unk_2009A80, 0x2009A80
.equ unk_2009AC0, 0x2009AC0
.equ dword_2009F38, 0x2009F38
.equ byte_2009F40, 0x2009F40
.equ unk_200A010, 0x200A010
.equ byte_200A220, 0x200A220
.equ byte_200A221, 0x200A221
.equ byte_200A222, 0x200A222
.equ byte_200A223, 0x200A223
.equ byte_200A224, 0x200A224
.equ dword_200A238, 0x200A238
.equ dword_200A23C, 0x200A23C
.equ dword_200A240, 0x200A240
.equ dword_200A244, 0x200A244
.equ dword_200A258, 0x200A258
.equ dword_200A25C, 0x200A25C
.equ sJoystick, 0x200A270
.equ byte_200A290, 0x200A290
.equ byte_200A291, 0x200A291
.equ byte_200A2A4, 0x200A2A4
.equ byte_200A2A6, 0x200A2A6
.equ byte_200A2A7, 0x200A2A7
.equ word_200A2B0, 0x200A2B0
.equ word_200A2B2, 0x200A2B2
.equ word_200A2B4, 0x200A2B4
.equ word_200A2B6, 0x200A2B6
.equ unk_200A3A0, 0x200A3A0
.equ unk_200A3B0, 0x200A3B0
.equ unk_200A3C0, 0x200A3C0
.equ unk_200A3E0, 0x200A3E0
.equ unk_200A400, 0x200A400
.equ unk_200A420, 0x200A420
.equ i_joGameSubsysSel, 0x200A480
.equ word_200A6F0, 0x200A6F0
.equ byte_200AC20, 0x200AC20
.equ byte_200AC21, 0x200AC21
.equ byte_200AC22, 0x200AC22
.equ byte_200AC23, 0x200AC23
.equ byte_200AC27, 0x200AC27
.equ unk_200AC30, 0x200AC30
.equ byte_200AC33, 0x200AC33
.equ byte_200AC34, 0x200AC34
.equ byte_200AC35, 0x200AC35
.equ unk_200AC80, 0x200AC80
.equ word_200AC84, 0x200AC84
.equ dword_200ACB0, 0x200ACB0
.equ dword_200ACCC, 0x200ACCC
.equ dword_200ACD0, 0x200ACD0
.equ byte_200AD04, 0x200AD04
.equ byte_200AD05, 0x200AD05
.equ word_200AD06, 0x200AD06
.equ sStartScr, 0x200AD10
.equ unk_200AF60, 0x200AF60
.equ byte_200AF64, 0x200AF64
.equ dword_200AF68, 0x200AF68
.equ byte_200AF80, 0x200AF80
.equ byte_200AF81, 0x200AF81
.equ byte_200AF82, 0x200AF82
.equ byte_200AF84, 0x200AF84
.equ byte_200AF85, 0x200AF85
.equ dword_200AF88, 0x200AF88
.equ dword_200AF8C, 0x200AF8C
.equ byte_200AF90, 0x200AF90
.equ dword_200AF94, 0x200AF94
.equ unk_200AFA0, 0x200AFA0
.equ byte_200B1A0, 0x200B1A0
.equ byte_200B1A1, 0x200B1A1
.equ byte_200B1A2, 0x200B1A2
.equ byte_200B1A3, 0x200B1A3
.equ dword_200B1B0, 0x200B1B0
.equ unk_200B2B0, 0x200B2B0
.equ byte_200BC30, 0x200BC30
.equ byte_200BC31, 0x200BC31
.equ byte_200BC32, 0x200BC32
.equ byte_200BC35, 0x200BC35
.equ byte_200BC3D, 0x200BC3D
.equ byte_200BC50, 0x200BC50
.equ dword_200BC5C, 0x200BC5C
.equ byte_200BC60, 0x200BC60
.equ byte_200BC61, 0x200BC61
.equ unk_200BC70, 0x200BC70
.equ byte_200BE70, 0x200BE70
.equ byte_200BE71, 0x200BE71
.equ word_200BE74, 0x200BE74
.equ word_200BE76, 0x200BE76
.equ dword_200BE78, 0x200BE78
.equ dword_200BE7C, 0x200BE7C
.equ dword_200BE80, 0x200BE80
.equ dword_200BE84, 0x200BE84
.equ dword_200BE88, 0x200BE88
.equ dword_200BE8C, 0x200BE8C
.equ dword_200BE90, 0x200BE90
.equ unk_200BEA0, 0x200BEA0
.equ unk_200C1A0, 0x200C1A0
.equ unk_200C1B0, 0x200C1B0
.equ unk_200C4B0, 0x200C4B0
.equ unk_200C4D0, 0x200C4D0
.equ unk_200C4F0, 0x200C4F0
.equ unk_200C7A0, 0x200C7A0
.equ unk_200C7C0, 0x200C7C0
.equ unk_200C7E0, 0x200C7E0
.equ unk_200C7F0, 0x200C7F0
.equ unk_200CDA0, 0x200CDA0
.equ byte_200DD10, 0x200DD10
.equ byte_200F348, 0x200F348
.equ byte_200F360, 0x200F360
.equ byte_200F361, 0x200F361
.equ byte_200F362, 0x200F362
.equ dword_200F368, 0x200F368
.equ unk_200F380, 0x200F380
.equ unk_200F3C4, 0x200F3C4
.equ dword_200F3D0, 0x200F3D0
.equ dword_200F3E0, 0x200F3E0
.equ dword_200F3E4, 0x200F3E4
.equ dword_200F3EC, 0x200F3EC
.equ dword_200F3F0, 0x200F3F0
.equ dword_200F3F8, 0x200F3F8
.equ dword_200F3FC, 0x200F3FC
.equ dword_200F444, 0x200F444
.equ byte_200F460, 0x200F460
.equ unk_200FE70, 0x200FE70
.equ unk_2010100, 0x2010100
.equ byte_2010144, 0x2010144
.equ byte_2010280, 0x2010280
.equ byte_2010288, 0x2010288
.equ word_2010420, 0x2010420
.equ byte_2011800, 0x2011800
.equ byte_2011805, 0x2011805
.equ byte_2011860, 0x2011860
.equ byte_2011861, 0x2011861
.equ byte_2011862, 0x2011862
.equ byte_2011863, 0x2011863
.equ dword_2011A20, 0x2011A20
.equ word_2011A24, 0x2011A24
.equ byte_2011A26, 0x2011A26
.equ byte_2011A27, 0x2011A27
.equ dword_2011A34, 0x2011A34
.equ byte_2011A40, 0x2011A40
.equ dword_2011BD0, 0x2011BD0
.equ dword_2011BD4, 0x2011BD4
.equ byte_2011C10, 0x2011C10
.equ byte_2011C14, 0x2011C14
.equ word_2011C22, 0x2011C22
.equ word_2011C24, 0x2011C24
.equ word_2011C28, 0x2011C28
.equ dword_2011C2C, 0x2011C2C
.equ dword_2011C34, 0x2011C34
.equ unk_2011C54, 0x2011C54
.equ dword_2011D10, 0x2011D10
.equ word_2011D14, 0x2011D14
.equ word_2011D16, 0x2011D16
.equ byte_2011D18, 0x2011D18
.equ byte_2011D19, 0x2011D19
.equ byte_2011D1A, 0x2011D1A
.equ byte_2011D1B, 0x2011D1B
.equ byte_2011D1C, 0x2011D1C
.equ dword_2011D20, 0x2011D20
.equ dword_2011D24, 0x2011D24
.equ word_2011D28, 0x2011D28
.equ unk_2011E30, 0x2011E30
.equ byte_2011E34, 0x2011E34
.equ byte_2011E37, 0x2011E37
.equ word_2011E38, 0x2011E38
.equ byte_2011E40, 0x2011E40
.equ unk_2011E60, 0x2011E60
.equ dword_2011E68, 0x2011E68
.equ dword_2011E6C, 0x2011E6C
.equ dword_2011E70, 0x2011E70
.equ unk_2011EA0, 0x2011EA0
.equ dword_2013920, 0x2013920
.equ word_2013924, 0x2013924
.equ byte_2013926, 0x2013926
.equ byte_2013927, 0x2013927
.equ dword_2013934, 0x2013934
.equ dword_2013940, 0x2013940
.equ word_2013944, 0x2013944
.equ byte_2013946, 0x2013946
.equ byte_2013947, 0x2013947
.equ dword_2013954, 0x2013954
.equ word_2013A00, 0x2013A00
.equ unk_2013C00, 0x2013C00
.equ unk_2013C40, 0x2013C40
.equ unk_2015A00, 0x2015A00
.equ unk_2015E00, 0x2015E00
.equ unk_2017200, 0x2017200
.equ unk_2017204, 0x2017204
.equ unk_2017A00, 0x2017A00
.equ unk_2017A04, 0x2017A04
.equ unk_2018A00, 0x2018A00
.equ unk_2018A04, 0x2018A04
.equ unk_2019200, 0x2019200
.equ unk_2019204, 0x2019204
.equ unk_2019400, 0x2019400
.equ unk_2019404, 0x2019404
.equ byte_2019A00, 0x2019A00
.equ byte_2019A01, 0x2019A01
.equ word_2019A02, 0x2019A02
.equ byte_2019A04, 0x2019A04
.equ unk_201AA00, 0x201AA00
.equ byte_201AE00, 0x201AE00
.equ byte_201AE01, 0x201AE01
.equ word_201AE02, 0x201AE02
.equ byte_201AE04, 0x201AE04
.equ byte_201AE05, 0x201AE05
.equ word_201AE06, 0x201AE06
.equ unk_201BA00, 0x201BA00
.equ unk_201BA10, 0x201BA10
.equ unk_201CA20, 0x201CA20
.equ unk_201F320, 0x201F320
.equ unk_201F5A0, 0x201F5A0
.equ unk_2020A20, 0x2020A20
.equ unk_2024A00, 0x2024A00
.equ unk_2024E00, 0x2024E00
.equ unk_2025200, 0x2025200
.equ unk_2025600, 0x2025600
.equ unk_2025A00, 0x2025A00
.equ unk_2025E00, 0x2025E00
.equ unk_2026200, 0x2026200
.equ unk_2026600, 0x2026600
.equ unk_2026A00, 0x2026A00
.equ byte_2027200, 0x2027200
.equ unk_2027400, 0x2027400
.equ unk_2027A00, 0x2027A00
.equ unk_2028200, 0x2028200
.equ unk_2028204, 0x2028204
.equ unk_2028A00, 0x2028A00
.equ unk_2029200, 0x2029200
.equ unk_2029A00, 0x2029A00
.equ reqBBS_requestInfo_textOffsets, 0x2029A04
.equ unk_2029E00, 0x2029E00
.equ unk_2029E04, 0x2029E04
.equ word_202A020, 0x202A020
.equ dword_202A034, 0x202A034
.equ dword_202A03C, 0x202A03C
.equ unk_202A200, 0x202A200
.equ unk_202A204, 0x202A204
.equ unk_202A3E0, 0x202A3E0
.equ word_202A3F4, 0x202A3F4
.equ word_202A3FC, 0x202A3FC
.equ unk_202A600, 0x202A600
.equ unk_202A604, 0x202A604
.equ unk_202AB00, 0x202AB00
.equ unk_202AF00, 0x202AF00
.equ unk_202BA00, 0x202BA00
.equ unk_202BA04, 0x202BA04
.equ unk_202DA00, 0x202DA00
.equ unk_202DA04, 0x202DA04
.equ unk_202F800, 0x202F800
.equ unk_202FA00, 0x202FA00
.equ unk_2030200, 0x2030200
.equ unk_2030860, 0x2030860
.equ unk_2030A00, 0x2030A00
.equ unk_2030E60, 0x2030E60
.equ unk_2031000, 0x2031000
.equ unk_2031200, 0x2031200
.equ unk_2032000, 0x2032000
.equ unk_2032A00, 0x2032A00
.equ dword_2033000, 0x2033000
.equ dword_2033000, 0x2033000
.equ word_2033004, 0x2033004
.equ word_2033006, 0x2033006
.equ dword_203300C, 0x203300C
.equ dword_203300C, 0x203300C
.equ word_2033010, 0x2033010
.equ word_2033012, 0x2033012
.equ word_2033018, 0x2033018
.equ word_203301A, 0x203301A
.equ word_2033024, 0x2033024
.equ word_2033026, 0x2033026
.equ word_2033028, 0x2033028
.equ word_203302A, 0x203302A
.equ word_2033030, 0x2033030
.equ word_203303C, 0x203303C
.equ word_203303E, 0x203303E
.equ word_2033040, 0x2033040
.equ word_2033042, 0x2033042
.equ unk_2033400, 0x2033400
.equ unk_20343E0, 0x20343E0
.equ unk_2034458, 0x2034458
.equ unk_20345A8, 0x20345A8
.equ unk_20345FC, 0x20345FC
.equ unk_20346DC, 0x20346DC
.equ unk_2034714, 0x2034714
.equ unk_203474C, 0x203474C
.equ unk_2034768, 0x2034768
.equ unk_20347A0, 0x20347A0
.equ dword_2034800, 0x2034800
.equ unk_2034814, 0x2034814
.equ unk_203486C, 0x203486C
.equ dword_20349A0, 0x20349A0
.equ byte_20349A4, 0x20349A4
.equ byte_20349A5, 0x20349A5
.equ dword_20349A8, 0x20349A8
.equ word_20349AC, 0x20349AC
.equ word_20349AE, 0x20349AE
.equ byte_20349B0, 0x20349B0
.equ byte_20349B1, 0x20349B1
.equ byte_20349C0, 0x20349C0
.equ unk_2034A00, 0x2034A00
.equ unk_2034A04, 0x2034A04
.equ unk_2034A60, 0x2034A60
.equ unk_2034B30, 0x2034B30
.equ unk_2035000, 0x2035000
.equ unk_2035188, 0x2035188
.equ unk_203518C, 0x203518C
.equ unk_2035190, 0x2035190
.equ unk_2035194, 0x2035194
.equ unk_2035198, 0x2035198
.equ unk_2035260, 0x2035260
.equ byte_2035261, 0x2035261
.equ dword_2035268, 0x2035268
.equ unk_203526C, 0x203526C
.equ byte_203526D, 0x203526D
.equ dword_2035274, 0x2035274
.equ byte_2035280, 0x2035280
.equ byte_2035296, 0x2035296
.equ byte_2035297, 0x2035297
.equ dword_20352C8, 0x20352C8
.equ byte_20352CC, 0x20352CC
.equ unk_2035320, 0x2035320
.equ unk_20354E0, 0x20354E0
.equ unk_2035520, 0x2035520
.equ dword_2035800, 0x2035800
.equ dword_2035800, 0x2035800
.equ dword_2035800, 0x2035800
.equ unk_2035A00, 0x2035A00
.equ unk_2035C6C, 0x2035C6C
.equ unk_2035C8C, 0x2035C8C
.equ unk_2036120, 0x2036120
.equ unk_20362F0, 0x20362F0
.equ dword_2036334, 0x2036334
.equ dword_20364C0, 0x20364C0
.equ dword_20364C0, 0x20364C0
.equ dword_20364C4, 0x20364C4
.equ dword_20364C4, 0x20364C4
.equ dword_20364C4, 0x20364C4
.equ dword_20364C4, 0x20364C4
.equ byte_20364C8, 0x20364C8
.equ byte_20364C9, 0x20364C9
.equ byte_20364CC, 0x20364CC
.equ byte_20364CD, 0x20364CD
.equ byte_20364D0, 0x20364D0
.equ byte_20364D1, 0x20364D1
.equ unk_20364D4, 0x20364D4
.equ byte_20364D5, 0x20364D5
.equ word_20364D6, 0x20364D6
.equ dword_20364D8, 0x20364D8
.equ dword_20364DC, 0x20364DC
.equ word_20364E0, 0x20364E0
.equ word_20364F8, 0x20364F8
.equ word_20364FA, 0x20364FA
.equ unk_20365C0, 0x20365C0
.equ word_2036660, 0x2036660
.equ word_2036660, 0x2036660
.equ word_2036664, 0x2036664
.equ byte_2036666, 0x2036666
.equ byte_2036667, 0x2036667
.equ byte_2036668, 0x2036668
.equ dword_203666C, 0x203666C
.equ word_2036674, 0x2036674
.equ byte_20366C0, 0x20366C0
.equ word_20366C2, 0x20366C2
.equ word_20366CE, 0x20366CE
.equ word_20366DA, 0x20366DA
.equ word_20366E6, 0x20366E6
.equ word_20366F2, 0x20366F2
.equ byte_20366FE, 0x20366FE
.equ byte_2036704, 0x2036704
.equ unk_2036720, 0x2036720
.equ dword_2036728, 0x2036728
.equ dword_2036738, 0x2036738
.equ word_2036780, 0x2036780
.equ dword_20367E0, 0x20367E0
.equ dword_2036820, 0x2036820
.equ dword_2036824, 0x2036824
.equ dword_203682C, 0x203682C
.equ unk_2037800, 0x2037800
.equ unk_2037A00, 0x2037A00
.equ unk_20399F0, 0x20399F0
.equ unk_2039A00, 0x2039A00
.equ unk_203A0A0, 0x203A0A0
.equ unk_203A980, 0x203A980
.equ sBtlPlayer, 0x203A9B0
.equ unk_203C4A0, 0x203C4A0
.equ unk_203C4E0, 0x203C4E0
.equ unk_203C6E0, 0x203C6E0
.equ dword_203C970, 0x203C970
.equ dword_203C970, 0x203C970
.equ byte_203C974, 0x203C974
.equ dword_203C978, 0x203C978
.equ dword_203C97C, 0x203C97C
.equ dword_203CA48, 0x203CA48
.equ dword_203CA50, 0x203CA50
.equ unk_203CA80, 0x203CA80
.equ word_203CDB0, 0x203CDB0
.equ byte_203CED0, 0x203CED0
.equ byte_203CED4, 0x203CED4
.equ dword_203CFB0, 0x203CFB0
.equ dword_203CFB0, 0x203CFB0
.equ dword_203CFB4, 0x203CFB4
.equ dword_203CFB8, 0x203CFB8
.equ dword_203CFBC, 0x203CFBC
.equ dword_203CFBC, 0x203CFBC
.equ dword_203CFC0, 0x203CFC0
.equ dword_203CFC4, 0x203CFC4
.equ dword_203EAD0, 0x203EAD0
.equ byte_203EAD4, 0x203EAD4
.equ byte_203EAD7, 0x203EAD7
.equ word_203EAD8, 0x203EAD8
.equ word_203EADA, 0x203EADA
.equ word_203EADC, 0x203EADC
.equ word_203EADE, 0x203EADE
.equ word_3000000, 0x3000000
.equ unk_3001150, 0x3001150
.equ unk_3001650, 0x3001650
.equ unk_30016B0, 0x30016B0
.equ unk_30016D0, 0x30016D0
.equ unk_30016F0, 0x30016F0
.equ unk_3001710, 0x3001710
.equ unk_3001730, 0x3001730
.equ unk_3001750, 0x3001750
.equ dword_3001950, 0x3001950
.equ word_3001960, 0x3001960
.equ unk_3001980, 0x3001980
.equ unk_30019A0, 0x30019A0
.equ unk_30019C0, 0x30019C0
.equ unk_3001A80, 0x3001A80
.equ unk_3001AA0, 0x3001AA0
.equ unk_3001AD4, 0x3001AD4
.equ unk_3001AE0, 0x3001AE0
.equ unk_3001B20, 0x3001B20
.equ unk_3001B40, 0x3001B40
.equ unk_3001B60, 0x3001B60
.equ dword_3001D70, 0x3001D70
.equ unk_3002580, 0x3002580
.equ dword_3002590, 0x3002590
.equ unk_30025B0, 0x30025B0
.equ loc_30068E8, 0x30068E8
.equ loc_3006920, 0x3006920
.equ loc_3006B94, 0x3006B94
.equ loc_3006F8C, 0x3006F8C
.equ loc_3007038, 0x3007038
.equ loc_30070B4, 0x30070B4
.equ LCDControl, 0x4000000
.equ BG1X_Offset, 0x4000014
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_8021550, 0x8021550
.equ dword_804CFBC, 0x804CFBC
.equ dword_804CFD4, 0x804CFD4
.equ dword_804D08C, 0x804D08C
.equ dword_804D090, 0x804D090
.equ dword_804D094, 0x804D094
.equ dword_804D098, 0x804D098
.equ dword_804D09C, 0x804D09C
.equ dword_804D0A0, 0x804D0A0
.equ off_804D0A4, 0x804D0A4
.equ off_804D0AC, 0x804D0AC
.equ off_804D0B4, 0x804D0B4
.equ off_804D0BC, 0x804D0BC
.equ off_804D0E4, 0x804D0E4
.equ off_804E92C, 0x804E92C
.equ dword_804E940, 0x804E940
.equ off_804E954, 0x804E954
.equ off_804E968, 0x804E968
.equ dword_80525C0, 0x80525C0
.equ dword_80525DC, 0x80525DC
.equ off_8052D88, 0x8052D88
.equ dword_8052DB4, 0x8052DB4
.equ off_8052DE0, 0x8052DE0
.equ off_8052E0C, 0x8052E0C
.equ off_8059D48, 0x8059D48
.equ dword_8059D5C, 0x8059D5C
.equ off_8059D70, 0x8059D70
.equ off_8059D84, 0x8059D84
.equ off_805E15C, 0x805E15C
.equ off_805E170, 0x805E170
.equ off_805E184, 0x805E184
.equ off_805E198, 0x805E198
.equ off_806063C, 0x806063C
.equ off_806064C, 0x806064C
.equ off_806065C, 0x806065C
.equ off_806066C, 0x806066C
.equ off_8062F48, 0x8062F48
.equ off_8062F60, 0x8062F60
.equ off_8062F78, 0x8062F78
.equ off_8062F90, 0x8062F90
.equ off_806C7B0, 0x806C7B0
.equ dword_806C7CC, 0x806C7CC
.equ off_806C7E8, 0x806C7E8
.equ off_806C804, 0x806C804
.equ off_806DFB0, 0x806DFB0
.equ dword_806DFF0, 0x806DFF0
.equ off_806E030, 0x806E030
.equ off_806E070, 0x806E070
.equ off_807022C, 0x807022C
.equ dword_807026C, 0x807026C
.equ off_80702AC, 0x80702AC
.equ off_80702EC, 0x80702EC
.equ off_80758A0, 0x80758A0
.equ off_80758AC, 0x80758AC
.equ off_80758B8, 0x80758B8
.equ off_80758C4, 0x80758C4
.equ off_8078104, 0x8078104
.equ dword_807810C, 0x807810C
.equ off_8078114, 0x8078114
.equ off_807811C, 0x807811C
.equ off_807952C, 0x807952C
.equ off_8079534, 0x8079534
.equ off_807953C, 0x807953C
.equ off_8079544, 0x8079544
.equ off_807ADEC, 0x807ADEC
.equ dword_807ADF8, 0x807ADF8
.equ off_807AE04, 0x807AE04
.equ off_807AE10, 0x807AE10
.equ off_807D2F0, 0x807D2F0
.equ off_807D300, 0x807D300
.equ off_807D310, 0x807D310
.equ off_807D320, 0x807D320
.equ dword_807F1F8, 0x807F1F8
.equ dword_807F204, 0x807F204
.equ dword_807F210, 0x807F210
.equ off_807F21C, 0x807F21C
.equ dword_80982A8, 0x80982A8
.equ dword_80982A8, 0x80982A8
.equ dword_80984C8, 0x80984C8
.equ dword_8098824, 0x8098824
.equ dword_80988E4, 0x80988E4
.equ dword_809895C, 0x809895C
.equ dword_8098B40, 0x8098B40
.equ dword_82E8388, 0x82E8388
.equ dword_84E0554, 0x84E0554
.equ dword_858F110, 0x858F110
.equ off_8592304, 0x8592304
.equ dword_85924A8, 0x85924A8
.equ dword_8594D80, 0x8594D80
.equ dword_8598328, 0x8598328
.equ dword_85AEFA8, 0x85AEFA8
.equ dword_85B22DC, 0x85B22DC
.equ off_85B5D28, 0x85B5D28
.equ dword_85B5ECC, 0x85B5ECC
.equ dword_85B86C8, 0x85B86C8
.equ dword_85BB3D0, 0x85BB3D0
.equ dword_85C7AA0, 0x85C7AA0
.equ dword_85CB0A8, 0x85CB0A8
.equ off_85CD6B4, 0x85CD6B4
.equ dword_85CD858, 0x85CD858
.equ off_85D0894, 0x85D0894
.equ off_85D183C, 0x85D183C
.equ dword_85D19E0, 0x85D19E0
.equ off_85D2850, 0x85D2850
.equ off_85D29F4, 0x85D29F4
.equ off_85D2B98, 0x85D2B98
.equ off_85D2D3C, 0x85D2D3C
.equ off_85D2EE0, 0x85D2EE0
.equ off_85D35B8, 0x85D35B8
.equ dword_85D375C, 0x85D375C
.equ off_85D430C, 0x85D430C
.equ dword_85D44B0, 0x85D44B0
.equ dword_85D4E48, 0x85D4E48
.equ off_85D895C, 0x85D895C
.equ dword_85D8B00, 0x85D8B00
.equ dword_85DB160, 0x85DB160
.equ off_85DDB74, 0x85DDB74
.equ dword_85DDD18, 0x85DDD18
.equ off_85E0670, 0x85E0670
.equ dword_85E0814, 0x85E0814
.equ dword_85E2F90, 0x85E2F90
.equ dword_85E519C, 0x85E519C
.equ off_85E79D0, 0x85E79D0
.equ dword_85E7B74, 0x85E7B74
.equ off_85EAD2C, 0x85EAD2C
.equ dword_85EAED0, 0x85EAED0
.equ off_85EE2A4, 0x85EE2A4
.equ dword_85EE448, 0x85EE448
.equ dword_85F1B20, 0x85F1B20
.equ off_85F4D84, 0x85F4D84
.equ dword_85F4F28, 0x85F4F28
.equ dword_85F7C58, 0x85F7C58
.equ off_85FB848, 0x85FB848
.equ dword_85FB9EC, 0x85FB9EC
.equ dword_85FEF08, 0x85FEF08
.equ off_8602590, 0x8602590
.equ dword_8602734, 0x8602734
.equ dword_8606438, 0x8606438
.equ dword_8609770, 0x8609770
.equ off_860D678, 0x860D678
.equ dword_8619B90, 0x8619B90
.equ dword_861ABD4, 0x861ABD4
.equ dword_861AD94, 0x861AD94
.equ dword_861B320, 0x861B320
.equ dword_861C344, 0x861C344
.equ dword_861C780, 0x861C780
.equ dword_861CC60, 0x861CC60
.equ dword_861CEF8, 0x861CEF8
.equ dword_861D06C, 0x861D06C
.equ dword_861DCE8, 0x861DCE8
.equ dword_861F710, 0x861F710
.equ dword_8620350, 0x8620350
.equ dword_8620A9C, 0x8620A9C
.equ dword_8620E58, 0x8620E58
.equ dword_862B6E0, 0x862B6E0
.equ dword_862C160, 0x862C160
.equ dword_862C978, 0x862C978
.equ dword_862D0A0, 0x862D0A0
.equ dword_862E15C, 0x862E15C
.equ dword_863168C, 0x863168C
.equ dword_8632288, 0x8632288
.equ dword_8633084, 0x8633084
.equ dword_8634E64, 0x8634E64
.equ dword_8635EB4, 0x8635EB4
.equ dword_8636A7C, 0x8636A7C
.equ dword_86376B4, 0x86376B4
.equ dword_8638E70, 0x8638E70
.equ dword_863951C, 0x863951C
.equ dword_863B234, 0x863B234
.equ dword_863D1A4, 0x863D1A4
.equ dword_863F830, 0x863F830
.equ dword_8642B34, 0x8642B34
.equ dword_86460FC, 0x86460FC
.equ dword_86475CC, 0x86475CC
.equ dword_8648BA8, 0x8648BA8
.equ dword_864A484, 0x864A484
.equ dword_864D860, 0x864D860
.equ dword_8651B2C, 0x8651B2C
.equ dword_8656C0C, 0x8656C0C
.equ dword_865A08C, 0x865A08C
.equ dword_865B77C, 0x865B77C
.equ dword_8660604, 0x8660604
.equ dword_8664988, 0x8664988
.equ dword_8664F04, 0x8664F04
.equ dword_8665548, 0x8665548
.equ dword_8667820, 0x8667820
.equ dword_866B038, 0x866B038
.equ dword_86A4740, 0x86A4740
.equ dword_86A48A0, 0x86A48A0
.equ dword_86A4A40, 0x86A4A40
.equ dword_86A5300, 0x86A5300
.equ dword_86A5D60, 0x86A5D60
.equ dword_86ACD24, 0x86ACD24
.equ dword_86B7AA0, 0x86B7AA0
.equ dword_86B7AC0, 0x86B7AC0
.equ dword_86B7AE0, 0x86B7AE0
.equ dword_86BEAE0, 0x86BEAE0
.equ dword_86BEB20, 0x86BEB20
.equ dword_86BEC80, 0x86BEC80
.equ dword_86BF480, 0x86BF480
.equ dword_86BFE20, 0x86BFE20
.equ dword_86BFE20, 0x86BFE20
.equ dword_86BFE20, 0x86BFE20
.equ dword_86C0900, 0x86C0900
.equ dword_86C0900, 0x86C0900
.equ dword_86C0D20, 0x86C0D20
.equ dword_86C1AA0, 0x86C1AA0
.equ dword_86C1DC8, 0x86C1DC8
.equ dword_86C1F80, 0x86C1F80
.equ dword_86C1F80, 0x86C1F80
.equ dword_86C41B4, 0x86C41B4
.equ dword_86C580C, 0x86C580C
.equ loc_86CB360, 0x86CB360
.equ dword_86CF4AC, 0x86CF4AC
.equ dword_86DDB24, 0x86DDB24
.equ dword_86E1238, 0x86E1238
.equ dword_86E2E98, 0x86E2E98
.equ dword_86E3598, 0x86E3598
.equ dword_86E3B18, 0x86E3B18
.equ dword_86E411C, 0x86E411C
.equ dword_86E441C, 0x86E441C
.equ dword_86E4D9C, 0x86E4D9C
.equ dword_86E55BC, 0x86E55BC
.equ dword_86E56FC, 0x86E56FC
.equ dword_86E587C, 0x86E587C
.equ dword_86E591C, 0x86E591C
.equ dword_86E601C, 0x86E601C
.equ unk_86E625C, 0x86E625C
.equ unk_86E64B4, 0x86E64B4
.equ unk_86E670C, 0x86E670C
.equ unk_86E6964, 0x86E6964
.equ unk_86E6BBC, 0x86E6BBC
.equ unk_86E6E14, 0x86E6E14
.equ unk_86E706C, 0x86E706C
.equ unk_86E72C4, 0x86E72C4
.equ unk_86E751C, 0x86E751C
.equ unk_86E7774, 0x86E7774
.equ dword_86E7DCC, 0x86E7DCC
.equ dword_86E944C, 0x86E944C
.equ dword_86EA94C, 0x86EA94C
.equ dword_86EB354, 0x86EB354
.equ dword_86EB354, 0x86EB354
.equ dword_86EDB54, 0x86EDB54
.equ dword_86EF4D4, 0x86EF4D4
.equ a8Bdfhjlnprtvxz, 0x86EF71C
.equ dword_86EF78C, 0x86EF78C
.equ aBdfhjlnprtvxzB, 0x86F0300
.equ dword_86F047C, 0x86F047C
.equ dword_86F2E60, 0x86F2E60
.equ dword_86F3868, 0x86F3868
.equ dword_86F3F5C, 0x86F3F5C
.equ dword_86F4498, 0x86F4498
.equ dword_86F53CC, 0x86F53CC
.equ dword_86F5834, 0x86F5834
.equ dword_87225B4, 0x87225B4
.equ dword_8722AF4, 0x8722AF4
.equ dword_8723034, 0x8723034
.equ dword_87257D4, 0x87257D4
.equ dword_87257F4, 0x87257F4
.equ dword_8725814, 0x8725814
.equ dword_8725854, 0x8725854
.equ dword_8725874, 0x8725874
.equ dword_8725894, 0x8725894
.equ unk_872CF94, 0x872CF94
.equ dword_872F3F4, 0x872F3F4
.equ dword_8731DF4, 0x8731DF4
.equ dword_8732154, 0x8732154
.equ dword_87324B4, 0x87324B4
.equ dword_8732E54, 0x8732E54
.equ dword_8733394, 0x8733394
.equ dword_87333B4, 0x87333B4
.equ dword_87338F4, 0x87338F4
.equ dword_8733914, 0x8733914
.equ dword_8733E54, 0x8733E54
.equ dword_8733E74, 0x8733E74
.equ dword_87343B4, 0x87343B4
.equ dword_87343D4, 0x87343D4
.equ dword_87343F4, 0x87343F4
.equ dword_8734934, 0x8734934
.equ aTuDhr, 0x8736D74
.equ aF_0, 0x873811C
.equ dword_873B9E0, 0x873B9E0
.equ dword_873D9FC, 0x873D9FC
.equ dword_873DE4C, 0x873DE4C
.equ dword_873EA50, 0x873EA50
.equ dword_873ECC8, 0x873ECC8
.equ dword_873F008, 0x873F008
.equ dword_873F028, 0x873F028
.equ dword_873F048, 0x873F048
.equ dword_873F430, 0x873F430
.equ dword_873F908, 0x873F908
.equ dword_873FD64, 0x873FD64
.equ dword_874041C, 0x874041C
.equ dword_8740974, 0x8740974
.equ dword_8740E90, 0x8740E90
.equ dword_87414AC, 0x87414AC
.equ dword_8741D04, 0x8741D04
.equ dword_8742318, 0x8742318
.equ dword_87428D4, 0x87428D4
.equ dword_8742D64, 0x8742D64
.equ dword_87433BC, 0x87433BC
.equ dword_87439D8, 0x87439D8
.equ dword_87439F8, 0x87439F8
.equ dword_8745100, 0x8745100
.equ dword_874584C, 0x874584C
.equ dword_8745DEC, 0x8745DEC
.equ dword_87461A0, 0x87461A0
.equ unk_87462D0, 0x87462D0
.equ dword_87463F4, 0x87463F4
.equ dword_87464AC, 0x87464AC
.equ dword_87466F8, 0x87466F8
.equ dword_87469C4, 0x87469C4
.equ dword_8746A34, 0x8746A34
.equ dword_8746AE8, 0x8746AE8
.equ dword_8746D34, 0x8746D34
.equ dword_8746E38, 0x8746E38
.equ dword_8746EF0, 0x8746EF0
.equ dword_874713C, 0x874713C
.equ dword_8747228, 0x8747228
.equ dword_8747474, 0x8747474
.equ unk_87477F4, 0x87477F4
.equ dword_8747D30, 0x8747D30
.equ dword_8748650, 0x8748650
.equ dword_8748F44, 0x8748F44
.equ dword_8749514, 0x8749514
.equ dword_8749C38, 0x8749C38
.equ dword_874A638, 0x874A638
.equ dword_874B154, 0x874B154
.equ dword_874B878, 0x874B878
.equ dword_874BC34, 0x874BC34
.equ dword_874C5D0, 0x874C5D0
.equ dword_874D038, 0x874D038
.equ dword_874D74C, 0x874D74C
.equ dword_874DCF0, 0x874DCF0
.equ dword_874E6E0, 0x874E6E0
.equ dword_874EFE0, 0x874EFE0
.equ dword_874F5C4, 0x874F5C4
.equ dword_874F980, 0x874F980
.equ dword_87502B4, 0x87502B4
.equ dword_8750B80, 0x8750B80
.equ dword_8751150, 0x8751150
.equ dword_87517E8, 0x87517E8
.equ dword_8752174, 0x8752174
.equ dword_8752818, 0x8752818
.equ dword_8752FBC, 0x8752FBC
.equ dword_875358C, 0x875358C
.equ dword_8753F78, 0x8753F78
.equ dword_8754620, 0x8754620
.equ dword_8754674, 0x8754674
.equ dword_87550BC, 0x87550BC
.equ dword_87557A8, 0x87557A8
.equ dword_8755834, 0x8755834
.equ dword_87558D8, 0x87558D8
.equ off_8755C0C, 0x8755C0C
.equ dword_8755C18, 0x8755C18
.equ dword_8756124, 0x8756124
.equ unk_87565E8, 0x87565E8
.equ dword_8756AA4, 0x8756AA4
.equ dword_8756C9C, 0x8756C9C
.equ dword_875752C, 0x875752C
.equ dword_8757B7C, 0x8757B7C
.equ dword_8758018, 0x8758018
.equ dword_8758410, 0x8758410
.equ dword_8758834, 0x8758834
.equ dword_8758AF0, 0x8758AF0
.equ dword_8758D98, 0x8758D98
.equ dword_875906C, 0x875906C
.equ dword_8759480, 0x8759480
.equ dword_8759870, 0x8759870
.equ dword_8759C10, 0x8759C10
.equ dword_8759EF8, 0x8759EF8
.equ dword_875A2C4, 0x875A2C4
.equ dword_875A918, 0x875A918
.equ dword_875B064, 0x875B064
.equ dword_875B30C, 0x875B30C
.equ dword_875B30C, 0x875B30C
.equ dword_875B30C, 0x875B30C
.equ dword_875BB0C, 0x875BB0C
.equ dword_875BB0C, 0x875BB0C
.equ dword_875BB0C, 0x875BB0C
.equ dword_875BFD8, 0x875BFD8
.equ unk_875C22C, 0x875C22C
.equ dword_875C4B8, 0x875C4B8
.equ dword_875C83C, 0x875C83C
.equ dword_875CB68, 0x875CB68
.equ dword_875CE10, 0x875CE10
.equ dword_875CFC4, 0x875CFC4
.equ dword_875D1FC, 0x875D1FC
.equ dword_875D5E0, 0x875D5E0
.equ off_875D774, 0x875D774
.equ dword_875D780, 0x875D780
.equ dword_875D800, 0x875D800
.equ dword_875D974, 0x875D974
.equ dword_875D9C0, 0x875D9C0
.equ dword_875DA0C, 0x875DA0C
.equ dword_875DA58, 0x875DA58
.equ dword_875DAB8, 0x875DAB8
.equ dword_875DB18, 0x875DB18
.equ dword_875DBD8, 0x875DBD8
.equ dword_875DC10, 0x875DC10
.equ dword_875DC48, 0x875DC48
.equ dword_875DC80, 0x875DC80
.equ dword_875DD4C, 0x875DD4C
.equ dword_875DDF8, 0x875DDF8
.equ dword_875DE80, 0x875DE80
.equ off_875DF20, 0x875DF20
.equ dword_875DF2C, 0x875DF2C
.equ dword_875DF38, 0x875DF38
.equ dword_875DF44, 0x875DF44
.equ dword_875DF50, 0x875DF50
.equ dword_875DF78, 0x875DF78
.equ dword_875DFA4, 0x875DFA4
.equ dword_875DFB0, 0x875DFB0
.equ dword_875DFBC, 0x875DFBC
.equ dword_875DFC8, 0x875DFC8
.equ dword_875DFD4, 0x875DFD4
.equ dword_875DFE0, 0x875DFE0
.equ dword_875DFEC, 0x875DFEC
.equ dword_875DFF8, 0x875DFF8
.equ dword_875E0F4, 0x875E0F4
.equ dword_875E100, 0x875E100
.equ off_875E36C, 0x875E36C
.equ dword_875E378, 0x875E378
.equ dword_875E414, 0x875E414
.equ dword_875E4AC, 0x875E4AC
.equ dword_875E52C, 0x875E52C
.equ dword_875E5C4, 0x875E5C4
.equ dword_875E5D0, 0x875E5D0
.equ dword_875E5DC, 0x875E5DC
.equ dword_875E5E8, 0x875E5E8
.equ dword_875E5F4, 0x875E5F4
.equ dword_875E600, 0x875E600
.equ dword_875E60C, 0x875E60C
.equ dword_875E618, 0x875E618
.equ dword_875E624, 0x875E624
.equ dword_875E630, 0x875E630
.equ dword_875E63C, 0x875E63C
.equ dword_875E648, 0x875E648
.equ dword_875E654, 0x875E654
.equ dword_875E660, 0x875E660
.equ dword_875E66C, 0x875E66C
.equ dword_875E678, 0x875E678
.equ dword_875E684, 0x875E684
.equ dword_875E690, 0x875E690
.equ dword_875E8DC, 0x875E8DC
.equ dword_875EA10, 0x875EA10
.equ dword_875F038, 0x875F038
.equ dword_875F424, 0x875F424
.equ dword_875F838, 0x875F838
.equ dword_875FAB8, 0x875FAB8
.equ dword_875FF70, 0x875FF70
.equ dword_87601FC, 0x87601FC
.equ dword_87605E0, 0x87605E0
.equ dword_8760910, 0x8760910
.equ dword_8760D38, 0x8760D38
.equ dword_8761234, 0x8761234
.equ dword_8761698, 0x8761698
.equ dword_87618C0, 0x87618C0
.equ dword_876210C, 0x876210C
.equ dword_8762434, 0x8762434
.equ dword_8762F98, 0x8762F98
.equ dword_8762FE4, 0x8762FE4
.equ dword_8762FF0, 0x8762FF0
.equ dword_876381C, 0x876381C
.equ dword_8763B24, 0x8763B24
.equ dword_87643A8, 0x87643A8
.equ dword_87643B4, 0x87643B4
.equ dword_87643C0, 0x87643C0
.equ off_87643CC, 0x87643CC
.equ off_87643D8, 0x87643D8
.equ dword_87643E4, 0x87643E4
.equ dword_8764FAC, 0x8764FAC
.equ unk_87658F0, 0x87658F0
.equ dword_87666B4, 0x87666B4
.equ dword_8766BFC, 0x8766BFC
.equ dword_87680AC, 0x87680AC
.equ dword_8768558, 0x8768558
.equ dword_8768D28, 0x8768D28
.equ dword_8768EEC, 0x8768EEC
.equ dword_8769148, 0x8769148
.equ dword_87691D8, 0x87691D8
.equ dword_87691E4, 0x87691E4
.equ dword_8769264, 0x8769264
.equ dword_8769270, 0x8769270
.equ dword_876927C, 0x876927C
.equ dword_87692AC, 0x87692AC
.equ off_87693BC, 0x87693BC
.equ off_87693C8, 0x87693C8
.equ off_87693D4, 0x87693D4
.equ dword_87693E0, 0x87693E0
.equ off_87694B4, 0x87694B4
.equ dword_87694C0, 0x87694C0
.equ dword_87698B0, 0x87698B0
.equ dword_8769BA8, 0x8769BA8
.equ dword_8769DE8, 0x8769DE8
.equ dword_876A5B4, 0x876A5B4
.equ dword_876B0DC, 0x876B0DC
.equ dword_876B29C, 0x876B29C
.equ dword_876B5A4, 0x876B5A4
.equ dword_876B7C4, 0x876B7C4
.equ dword_876B978, 0x876B978
.equ dword_876BD54, 0x876BD54
.equ dword_876BF64, 0x876BF64
.equ dword_876C0DC, 0x876C0DC
.equ dword_876C2A8, 0x876C2A8
.equ dword_876C880, 0x876C880
.equ dword_876CA38, 0x876CA38
.equ dword_876CBE8, 0x876CBE8
.equ dword_876CD18, 0x876CD18
.equ dword_876CE60, 0x876CE60
.equ dword_876D154, 0x876D154
.equ dword_876D378, 0x876D378
.equ dword_876D48C, 0x876D48C
.equ dword_876D580, 0x876D580
.equ dword_876D618, 0x876D618
.equ dword_876D7E0, 0x876D7E0
.equ dword_876DB88, 0x876DB88
.equ dword_876DE70, 0x876DE70
.equ dword_876E078, 0x876E078
.equ dword_876E144, 0x876E144
.equ dword_876E538, 0x876E538
.equ dword_876E698, 0x876E698
.equ dword_876E73C, 0x876E73C
.equ dword_876E874, 0x876E874
.equ dword_876E900, 0x876E900
.equ dword_876EE64, 0x876EE64
.equ dword_876F2EC, 0x876F2EC
.equ dword_876F7E4, 0x876F7E4
.equ dword_876FD30, 0x876FD30
.equ dword_876FE2C, 0x876FE2C
.equ dword_8770084, 0x8770084
.equ dword_87707EC, 0x87707EC
.equ dword_87709CC, 0x87709CC
.equ dword_8770D20, 0x8770D20
.equ dword_8770EC0, 0x8770EC0
.equ dword_877125C, 0x877125C
.equ dword_8771268, 0x8771268
.equ dword_877129C, 0x877129C
.equ off_87712BC, 0x87712BC
.equ dword_87712C8, 0x87712C8
.equ dword_8771844, 0x8771844
.equ dword_8771850, 0x8771850
.equ dword_877185C, 0x877185C
.equ dword_8771FAC, 0x8771FAC
.equ dword_8771FB8, 0x8771FB8
.equ dword_8771FC4, 0x8771FC4
.equ dword_8771FD0, 0x8771FD0
.equ dword_87786EC, 0x87786EC
.equ dword_8778810, 0x8778810
.equ dword_87789F4, 0x87789F4
.equ dword_8778B40, 0x8778B40
.equ off_87792A8, 0x87792A8
.equ off_87792B4, 0x87792B4
.equ off_87792C0, 0x87792C0
.equ dword_87792CC, 0x87792CC
.equ dword_87792DC, 0x87792DC
.equ dword_8779B1C, 0x8779B1C
.equ dword_8779F28, 0x8779F28
.equ dword_877A4A8, 0x877A4A8
.equ dword_877A7FC, 0x877A7FC
.equ dword_877C0FC, 0x877C0FC
.equ dword_877C534, 0x877C534
.equ dword_877C7A4, 0x877C7A4
.equ dword_877C94C, 0x877C94C
.equ dword_877CD94, 0x877CD94
.equ dword_877D7D4, 0x877D7D4
.equ unk_877D8CC, 0x877D8CC
.equ dword_877DAB4, 0x877DAB4
.equ dword_877DF6C, 0x877DF6C
.equ dword_877E03C, 0x877E03C
.equ dword_877E278, 0x877E278
.equ dword_877E3DC, 0x877E3DC
.equ off_877E554, 0x877E554
.equ off_877E560, 0x877E560
.equ dword_877E56C, 0x877E56C
.equ dword_877E620, 0x877E620
.equ dword_877E668, 0x877E668
.equ dword_877F594, 0x877F594
.equ dword_8780104, 0x8780104
.equ dword_8780724, 0x8780724
.equ dword_87808D0, 0x87808D0
.equ dword_8781048, 0x8781048
.equ dword_87813CC, 0x87813CC
.equ dword_8781564, 0x8781564
.equ dword_8781784, 0x8781784
.equ dword_8781B18, 0x8781B18
.equ dword_8781CB4, 0x8781CB4
.equ dword_8781ED4, 0x8781ED4
.equ dword_8781FE4, 0x8781FE4
.equ dword_8782048, 0x8782048
.equ dword_878205C, 0x878205C
.equ dword_87821B4, 0x87821B4
.equ off_87822E8, 0x87822E8
.equ dword_87822F4, 0x87822F4
.equ off_8782414, 0x8782414
.equ dword_8782420, 0x8782420
.equ dword_8782564, 0x8782564
.equ dword_87825B4, 0x87825B4
.equ off_87825C0, 0x87825C0
.equ dword_87825CC, 0x87825CC
.equ dword_8782FEC, 0x8782FEC
.equ dword_8783ED0, 0x8783ED0
.equ dword_878460C, 0x878460C
.equ dword_8784908, 0x8784908
.equ dword_87859C0, 0x87859C0
.equ dword_8785FF4, 0x8785FF4
.equ dword_8786694, 0x8786694
.equ dword_8786C04, 0x8786C04
.equ dword_8786EA0, 0x8786EA0
.equ dword_87876E4, 0x87876E4
.equ dword_8787C6C, 0x8787C6C
.equ dword_8788390, 0x8788390
.equ dword_8788F78, 0x8788F78
.equ dword_87892BC, 0x87892BC
.equ dword_8789780, 0x8789780
.equ dword_8789A10, 0x8789A10
.equ dword_878A004, 0x878A004
.equ dword_878A4E0, 0x878A4E0
.equ dword_878A898, 0x878A898
.equ dword_878CE18, 0x878CE18
.equ dword_878D038, 0x878D038
.equ dword_878D544, 0x878D544
.equ dword_878DAD4, 0x878DAD4
.equ dword_878DE08, 0x878DE08
.equ dword_878E728, 0x878E728
.equ dword_878EA40, 0x878EA40
.equ dword_878F110, 0x878F110
.equ dword_878F364, 0x878F364
.equ dword_878FA4C, 0x878FA4C
.equ dword_878FFC8, 0x878FFC8
.equ dword_8790508, 0x8790508
.equ dword_879073C, 0x879073C
.equ dword_87913C8, 0x87913C8
.equ dword_8791604, 0x8791604
.equ dword_87917D4, 0x87917D4
.equ dword_8791878, 0x8791878
.equ dword_8791A0C, 0x8791A0C
.equ dword_8791A28, 0x8791A28
.equ dword_8791AA8, 0x8791AA8
.equ dword_87921F4, 0x87921F4
.equ dword_8792478, 0x8792478
.equ dword_8793DCC, 0x8793DCC
.equ dword_8794604, 0x8794604
.equ dword_87948B8, 0x87948B8
.equ dword_8794EC0, 0x8794EC0
.equ dword_8795234, 0x8795234
.equ dword_87956C4, 0x87956C4
.equ dword_8795A38, 0x8795A38
.equ dword_8795A44, 0x8795A44
.equ dword_8795D58, 0x8795D58
.equ unk_8795E14, 0x8795E14
.equ dword_8796494, 0x8796494
.equ dword_87964A0, 0x87964A0
.equ dword_87964AC, 0x87964AC
.equ dword_87964C8, 0x87964C8
.equ dword_8796940, 0x8796940
.equ dword_879694C, 0x879694C
.equ dword_87969DC, 0x87969DC
.equ dword_8796AE4, 0x8796AE4
.equ dword_8797208, 0x8797208
.equ dword_8797214, 0x8797214
.equ dword_8797220, 0x8797220
.equ dword_8797310, 0x8797310
.equ dword_879748C, 0x879748C
.equ dword_8797498, 0x8797498
.equ dword_87974A4, 0x87974A4
.equ dword_87974B0, 0x87974B0
.equ dword_87979CC, 0x87979CC
.equ dword_87979F0, 0x87979F0
.equ dword_87979FC, 0x87979FC
.equ dword_8797A08, 0x8797A08
.equ off_8797A14, 0x8797A14
.equ dword_8797A20, 0x8797A20
.equ off_8797E70, 0x8797E70
.equ dword_8797E7C, 0x8797E7C
.equ dword_8797E88, 0x8797E88
.equ dword_8797E94, 0x8797E94
.equ dword_87982AC, 0x87982AC
.equ off_87982B8, 0x87982B8
.equ dword_87982C4, 0x87982C4
.equ dword_87982D0, 0x87982D0
.equ dword_87982DC, 0x87982DC
.equ off_8798474, 0x8798474
.equ off_8798480, 0x8798480
.equ dword_879848C, 0x879848C
.equ dword_8798498, 0x8798498
.equ dword_87984A4, 0x87984A4
.equ dword_8798660, 0x8798660
.equ dword_879896C, 0x879896C
.equ dword_8798978, 0x8798978
.equ dword_8798984, 0x8798984
.equ dword_8798990, 0x8798990
.equ dword_879899C, 0x879899C
.equ dword_87989A8, 0x87989A8
.equ dword_87989B4, 0x87989B4
.equ dword_87989C0, 0x87989C0
.equ dword_87989CC, 0x87989CC
.equ dword_87989D8, 0x87989D8
.equ dword_87989E4, 0x87989E4
.equ dword_8798B28, 0x8798B28
.equ dword_8798ED8, 0x8798ED8
.equ dword_8798EE4, 0x8798EE4
.equ off_87994A4, 0x87994A4
.equ dword_87994B0, 0x87994B0
.equ dword_87994BC, 0x87994BC
.equ off_879951C, 0x879951C
.equ dword_8799528, 0x8799528
.equ dword_8799534, 0x8799534
.equ dword_8799708, 0x8799708
.equ dword_8799AD4, 0x8799AD4
.equ dword_8799AE0, 0x8799AE0
.equ dword_8799E5C, 0x8799E5C
.equ dword_8799E68, 0x8799E68
.equ dword_879A228, 0x879A228
.equ dword_879A28C, 0x879A28C
.equ dword_879A63C, 0x879A63C
.equ dword_879A648, 0x879A648
.equ dword_879A654, 0x879A654
.equ dword_879A660, 0x879A660
.equ dword_879A66C, 0x879A66C
.equ dword_879A6DC, 0x879A6DC
.equ dword_879A6E8, 0x879A6E8
.equ dword_879A704, 0x879A704
.equ dword_879A764, 0x879A764
.equ dword_879A770, 0x879A770
.equ dword_879A77C, 0x879A77C
.equ dword_879AAB0, 0x879AAB0
.equ dword_879AACC, 0x879AACC
.equ dword_879AF5C, 0x879AF5C
.equ dword_879AF68, 0x879AF68
.equ dword_879B28C, 0x879B28C
.equ dword_879B298, 0x879B298
.equ dword_879B2B4, 0x879B2B4
.equ dword_879BF6C, 0x879BF6C
.equ dword_879C700, 0x879C700
.equ dword_879C70C, 0x879C70C
.equ dword_879C728, 0x879C728
.equ dword_879D130, 0x879D130
.equ dword_879D13C, 0x879D13C
.equ dword_879D158, 0x879D158
.equ dword_879DA44, 0x879DA44
.equ dword_879DA50, 0x879DA50
.equ dword_879DA5C, 0x879DA5C
.equ dword_879DA68, 0x879DA68
.equ dword_879DA74, 0x879DA74
.equ dword_879E3D0, 0x879E3D0
.equ dword_879E3DC, 0x879E3DC
.equ dword_879E3E8, 0x879E3E8
.equ dword_879E3F4, 0x879E3F4
.equ dword_879E4C4, 0x879E4C4
.equ dword_879E574, 0x879E574
.equ dword_879E580, 0x879E580
.equ dword_879E58C, 0x879E58C
.equ dword_879E598, 0x879E598
.equ off_879E62C, 0x879E62C
.equ dword_879E638, 0x879E638
.equ dword_879E644, 0x879E644
.equ dword_879E650, 0x879E650
.equ dword_879E65C, 0x879E65C
.equ off_879EB78, 0x879EB78
.equ off_879EB84, 0x879EB84
.equ dword_879EB90, 0x879EB90
.equ dword_879EB9C, 0x879EB9C
.equ dword_879EBA8, 0x879EBA8
.equ off_879F194, 0x879F194
.equ dword_879F1A0, 0x879F1A0
.equ dword_879F1AC, 0x879F1AC
.equ dword_879F1B8, 0x879F1B8
.equ off_879F5CC, 0x879F5CC
.equ off_879F5D8, 0x879F5D8
.equ dword_879F5E4, 0x879F5E4
.equ dword_879F5F0, 0x879F5F0
.equ dword_879F5FC, 0x879F5FC
.equ dword_879F6A0, 0x879F6A0
.equ dword_879F734, 0x879F734
.equ dword_879F740, 0x879F740
.equ dword_879FB18, 0x879FB18
.equ dword_879FB24, 0x879FB24
.equ dword_879FD9C, 0x879FD9C
.equ dword_879FDA8, 0x879FDA8
.equ dword_879FDB4, 0x879FDB4
.equ dword_87A00D8, 0x87A00D8
.equ dword_87A0434, 0x87A0434
.equ dword_87A0440, 0x87A0440
.equ dword_87A044C, 0x87A044C
.equ dword_87A04C0, 0x87A04C0
.equ dword_87A04CC, 0x87A04CC
.equ dword_87A04D8, 0x87A04D8
.equ dword_87A04E4, 0x87A04E4
.equ dword_87A05E0, 0x87A05E0
.equ dword_87A0698, 0x87A0698
.equ dword_87A06A4, 0x87A06A4
.equ dword_87A0700, 0x87A0700
.equ dword_87A07D0, 0x87A07D0
.equ dword_87A07DC, 0x87A07DC
.equ dword_87A0AA8, 0x87A0AA8
.equ dword_87A0B14, 0x87A0B14
.equ dword_87A0B20, 0x87A0B20
.equ dword_87A0B88, 0x87A0B88
.equ dword_87A0C18, 0x87A0C18
.equ dword_87A0C24, 0x87A0C24
.equ dword_87A0EF4, 0x87A0EF4
.equ dword_87A0F00, 0x87A0F00
.equ dword_87A0F0C, 0x87A0F0C
.equ dword_87A0FB8, 0x87A0FB8
.equ dword_87A0FC4, 0x87A0FC4
.equ dword_87A0FD0, 0x87A0FD0
.equ dword_87A1078, 0x87A1078
.equ dword_87A1084, 0x87A1084
.equ dword_87A1090, 0x87A1090
.equ dword_87A1120, 0x87A1120
.equ dword_87A112C, 0x87A112C
.equ dword_87A1138, 0x87A1138
.equ dword_87A1144, 0x87A1144
.equ dword_87A1570, 0x87A1570
.equ dword_87A157C, 0x87A157C
.equ dword_87A1588, 0x87A1588
.equ dword_87A1594, 0x87A1594
.equ dword_87A15A0, 0x87A15A0
.equ dword_87A1CC0, 0x87A1CC0
.equ dword_87A1CCC, 0x87A1CCC
.equ dword_87A1CD8, 0x87A1CD8
.equ dword_87A1CE4, 0x87A1CE4
.equ dword_87A1EF4, 0x87A1EF4
.equ dword_87A1F00, 0x87A1F00
.equ dword_87A1F0C, 0x87A1F0C
.equ dword_87A1F18, 0x87A1F18
.equ dword_87A243C, 0x87A243C
.equ dword_87A2448, 0x87A2448
.equ dword_87A2454, 0x87A2454
.equ dword_87A2460, 0x87A2460
.equ dword_87A29B4, 0x87A29B4
.equ dword_87A29C0, 0x87A29C0
.equ dword_87A29CC, 0x87A29CC
.equ dword_87A29D8, 0x87A29D8
.equ dword_87A2B20, 0x87A2B20
.equ dword_87A2B2C, 0x87A2B2C
.equ dword_87A2B38, 0x87A2B38
.equ dword_87A2B44, 0x87A2B44
.equ dword_87A2B50, 0x87A2B50
.equ dword_87A2BEC, 0x87A2BEC
.equ dword_87A2BF8, 0x87A2BF8
.equ dword_87A2C04, 0x87A2C04
.equ off_87A3168, 0x87A3168
.equ off_87A3174, 0x87A3174
.equ dword_87A3180, 0x87A3180
.equ dword_87A3624, 0x87A3624
.equ dword_87A3630, 0x87A3630
.equ dword_87A363C, 0x87A363C
.equ dword_87A36E8, 0x87A36E8
.equ dword_87A36F4, 0x87A36F4
.equ dword_87A377C, 0x87A377C
.equ dword_87A3788, 0x87A3788
.equ dword_87A3794, 0x87A3794
.equ dword_87A37A0, 0x87A37A0
.equ dword_87A37AC, 0x87A37AC
.equ dword_87A39FC, 0x87A39FC
.equ dword_87A3A08, 0x87A3A08
.equ dword_87A3A14, 0x87A3A14
.equ dword_87A3AFC, 0x87A3AFC
.equ dword_87A3B08, 0x87A3B08
.equ dword_87A3B84, 0x87A3B84
.equ dword_87E36F8, 0x87E36F8
.equ dword_87E4FE0, 0x87E4FE0
.equ dword_87E660C, 0x87E660C
.equ byte_87E672C, 0x87E672C
.equ word_87E672E, 0x87E672E
.equ dword_87E6BDC, 0x87E6BDC
.equ dword_87F0340, 0x87F0340
.equ dword_87F05A4, 0x87F05A4
.equ dword_87F0DA0, 0x87F0DA0
.equ dword_87F0FF4, 0x87F0FF4
.equ dword_87F1278, 0x87F1278
.equ dword_87F14CC, 0x87F14CC
.equ dword_87F195C, 0x87F195C
.equ dword_87F1BA8, 0x87F1BA8
.equ dword_87F1E10, 0x87F1E10
.equ aLlllllllllllll, 0x87F2654
.equ aZz, 0x87F2808
.equ dword_87F28DC, 0x87F28DC
.equ aV, 0x87F2A1C
.equ dword_87F2E38, 0x87F2E38
.equ dword_87F2ED0, 0x87F2ED0
.equ dword_87F8EB0, 0x87F8EB0

.endif // INC_ASM03
