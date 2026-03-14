.class public Lorg/apache/poi/util/LittleEndianCP950Reader;
.super Ljava/io/Reader;
.source "LittleEndianCP950Reader.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static final UNMAPPABLE:C = '?'

.field private static final range1High:C = '\u8dfe'

.field private static final range1Low:C = '\u8140'

.field private static final range2High:C = '\ua0fe'

.field private static final range2Low:C = '\u8e40'

.field private static final range3High:C = '\uc8fe'

.field private static final range3Low:C = '\uc6a1'

.field private static final range4High:C = '\ufefe'

.field private static final range4Low:C = '\ufa40'


# instance fields
.field private final charBuffer:Ljava/nio/CharBuffer;

.field cnt:I

.field private final data:[B

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final doubleByteBuffer:Ljava/nio/ByteBuffer;

.field private leading:I

.field private final length:I

.field private offset:I

.field private final startOffset:I

.field private trailing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/util/LittleEndianCP950Reader;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LittleEndianCP950Reader;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 61
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianCP950Reader;-><init>([BII)V

    .line 62
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 64
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    .line 38
    sget-object v0, Lorg/apache/poi/util/StringUtil;->BIG5:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->cnt:I

    .line 65
    iput-object p1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->data:[B

    .line 66
    iput p2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->startOffset:I

    .line 67
    iput p2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    .line 68
    iput p3, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->length:I

    .line 69
    return-void
.end method

.method private handleF9(I)I
    .locals 7
    .param p1, "trailing"    # I

    .line 158
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 474
    sget-object v0, Lorg/apache/poi/util/LittleEndianCP950Reader;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t create char for: f9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, p1, 0xff

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 476
    const/16 v0, 0x3f

    return v0

    .line 472
    :pswitch_0
    const/16 v0, 0x2593

    return v0

    .line 470
    :pswitch_1
    const/16 v0, 0x256f

    return v0

    .line 468
    :pswitch_2
    const/16 v0, 0x2570

    return v0

    .line 466
    :pswitch_3
    const/16 v0, 0x256e

    return v0

    .line 464
    :pswitch_4
    const/16 v0, 0x256d

    return v0

    .line 462
    :pswitch_5
    const/16 v0, 0x2550

    return v0

    .line 460
    :pswitch_6
    const/16 v0, 0x2551

    return v0

    .line 458
    :pswitch_7
    const/16 v0, 0x255c

    return v0

    .line 456
    :pswitch_8
    const/16 v0, 0x2568

    return v0

    .line 454
    :pswitch_9
    const/16 v0, 0x2559

    return v0

    .line 452
    :pswitch_a
    const/16 v0, 0x2562

    return v0

    .line 450
    :pswitch_b
    const/16 v0, 0x256b

    return v0

    .line 448
    :pswitch_c
    const/16 v0, 0x255f

    return v0

    .line 446
    :pswitch_d
    const/16 v0, 0x2556

    return v0

    .line 444
    :pswitch_e
    const/16 v0, 0x2565

    return v0

    .line 442
    :pswitch_f
    const/16 v0, 0x2553

    return v0

    .line 440
    :pswitch_10
    const/16 v0, 0x255b

    return v0

    .line 438
    :pswitch_11
    const/16 v0, 0x2567

    return v0

    .line 436
    :pswitch_12
    const/16 v0, 0x2558

    return v0

    .line 434
    :pswitch_13
    const/16 v0, 0x2561

    return v0

    .line 432
    :pswitch_14
    const/16 v0, 0x256a

    return v0

    .line 430
    :pswitch_15
    const/16 v0, 0x255e

    return v0

    .line 428
    :pswitch_16
    const/16 v0, 0x2555

    return v0

    .line 426
    :pswitch_17
    const/16 v0, 0x2564

    return v0

    .line 424
    :pswitch_18
    const/16 v0, 0x2552

    return v0

    .line 422
    :pswitch_19
    const/16 v0, 0x255d

    return v0

    .line 420
    :pswitch_1a
    const/16 v0, 0x2569

    return v0

    .line 418
    :pswitch_1b
    const/16 v0, 0x255a

    return v0

    .line 416
    :pswitch_1c
    const/16 v0, 0x2563

    return v0

    .line 414
    :pswitch_1d
    const/16 v0, 0x256c

    return v0

    .line 412
    :pswitch_1e
    const/16 v0, 0x2560

    return v0

    .line 410
    :pswitch_1f
    const/16 v0, 0x2557

    return v0

    .line 408
    :pswitch_20
    const/16 v0, 0x2566

    return v0

    .line 406
    :pswitch_21
    const/16 v0, 0x2554

    return v0

    .line 404
    :pswitch_22
    const/16 v0, 0x5afa

    return v0

    .line 402
    :pswitch_23
    const/16 v0, 0x7ca7

    return v0

    .line 400
    :pswitch_24
    const/16 v0, 0x6052

    return v0

    .line 398
    :pswitch_25
    const/16 v0, 0x58bb

    return v0

    .line 396
    :pswitch_26
    const v0, 0x88cf

    return v0

    .line 394
    :pswitch_27
    const v0, 0x92b9

    return v0

    .line 392
    :pswitch_28
    const/16 v0, 0x7881

    return v0

    .line 390
    :pswitch_29
    const v0, 0x9f98

    return v0

    .line 388
    :pswitch_2a
    const v0, 0x9f49

    return v0

    .line 386
    :pswitch_2b
    const v0, 0x9f7e

    return v0

    .line 384
    :pswitch_2c
    const v0, 0x9ea4

    return v0

    .line 382
    :pswitch_2d
    const/16 v0, 0x706a

    return v0

    .line 380
    :pswitch_2e
    const/16 v0, 0x7069

    return v0

    .line 378
    :pswitch_2f
    const v0, 0x9e1d

    return v0

    .line 376
    :pswitch_30
    const v0, 0x9c7a

    return v0

    .line 374
    :pswitch_31
    const v0, 0x9a6b

    return v0

    .line 372
    :pswitch_32
    const/16 v0, 0x7675

    return v0

    .line 370
    :pswitch_33
    const v0, 0x9eb7

    return v0

    .line 368
    :pswitch_34
    const v0, 0x9c79

    return v0

    .line 366
    :pswitch_35
    const v0, 0x9483

    return v0

    .line 364
    :pswitch_36
    const v0, 0x8b9f

    return v0

    .line 362
    :pswitch_37
    const v0, 0x864b

    return v0

    .line 360
    :pswitch_38
    const/16 v0, 0x7229

    return v0

    .line 358
    :pswitch_39
    const v0, 0x9e19

    return v0

    .line 356
    :pswitch_3a
    const v0, 0x9b2e

    return v0

    .line 354
    :pswitch_3b
    const v0, 0x9a68

    return v0

    .line 352
    :pswitch_3c
    const v0, 0x9a69

    return v0

    .line 350
    :pswitch_3d
    const v0, 0x9481

    return v0

    .line 348
    :pswitch_3e
    const v0, 0x9480

    return v0

    .line 346
    :pswitch_3f
    const v0, 0x9482

    return v0

    .line 344
    :pswitch_40
    const v0, 0x8ea8

    return v0

    .line 342
    :pswitch_41
    const v0, 0x864c

    return v0

    .line 340
    :pswitch_42
    const/16 v0, 0x7227

    return v0

    .line 338
    :pswitch_43
    const/16 v0, 0x6b1e

    return v0

    .line 336
    :pswitch_44
    const/16 v0, 0x6207

    return v0

    .line 334
    :pswitch_45
    const v0, 0x9f48

    return v0

    .line 332
    :pswitch_46
    const v0, 0x9e17

    return v0

    .line 330
    :pswitch_47
    const v0, 0x9e15

    return v0

    .line 328
    :pswitch_48
    const v0, 0x9b24

    return v0

    .line 326
    :pswitch_49
    const v0, 0x9a67

    return v0

    .line 324
    :pswitch_4a
    const v0, 0x9a66

    return v0

    .line 322
    :pswitch_4b
    const v0, 0x9a64

    return v0

    .line 320
    :pswitch_4c
    const v0, 0x99ab

    return v0

    .line 318
    :pswitch_4d
    const v0, 0x9961

    return v0

    .line 316
    :pswitch_4e
    const v0, 0x98cc

    return v0

    .line 314
    :pswitch_4f
    const v0, 0x9874

    return v0

    .line 312
    :pswitch_50
    const v0, 0x9873

    return v0

    .line 310
    :pswitch_51
    const v0, 0x974b

    return v0

    .line 308
    :pswitch_52
    const v0, 0x8ec9

    return v0

    .line 306
    :pswitch_53
    const v0, 0x8ea9

    return v0

    .line 304
    :pswitch_54
    const v0, 0x8c9c

    return v0

    .line 302
    :pswitch_55
    const v0, 0x8b9e

    return v0

    .line 300
    :pswitch_56
    const v0, 0x883f

    return v0

    .line 298
    :pswitch_57
    const v0, 0x883d

    return v0

    .line 296
    :pswitch_58
    const v0, 0x883e

    return v0

    .line 294
    :pswitch_59
    const v0, 0x866a

    return v0

    .line 292
    :pswitch_5a
    const/16 v0, 0x7cf7

    return v0

    .line 290
    :pswitch_5b
    const/16 v0, 0x7065

    return v0

    .line 288
    :pswitch_5c
    const/16 v0, 0x7068

    return v0

    .line 286
    :pswitch_5d
    const v0, 0x9fa4

    return v0

    .line 284
    :pswitch_5e
    const v0, 0x9f0a

    return v0

    .line 282
    :pswitch_5f
    const v0, 0x9ef6

    return v0

    .line 280
    :pswitch_60
    const v0, 0x9e13

    return v0

    .line 278
    :pswitch_61
    const v0, 0x9e14

    return v0

    .line 276
    :pswitch_62
    const v0, 0x9c75

    return v0

    .line 274
    :pswitch_63
    const v0, 0x9c71

    return v0

    .line 272
    :pswitch_64
    const v0, 0x9c73

    return v0

    .line 270
    :pswitch_65
    const v0, 0x9c74

    return v0

    .line 268
    :pswitch_66
    const v0, 0x9a60

    return v0

    .line 266
    :pswitch_67
    const v0, 0x9475

    return v0

    .line 264
    :pswitch_68
    const v0, 0x9476

    return v0

    .line 262
    :pswitch_69
    const v0, 0x9478

    return v0

    .line 260
    :pswitch_6a
    const v0, 0x9474

    return v0

    .line 258
    :pswitch_6b
    const v0, 0x91c3

    return v0

    .line 256
    :pswitch_6c
    const v0, 0x8ea6

    return v0

    .line 254
    :pswitch_6d
    const v0, 0x8db2

    return v0

    .line 252
    :pswitch_6e
    const v0, 0x883c

    return v0

    .line 250
    :pswitch_6f
    const/16 v0, 0x7c6f

    return v0

    .line 248
    :pswitch_70
    const/16 v0, 0x7066

    return v0

    .line 246
    :pswitch_71
    const/16 v0, 0x571e

    return v0

    .line 244
    :pswitch_72
    const v0, 0x9f79

    return v0

    .line 242
    :pswitch_73
    const v0, 0x9f7a

    return v0

    .line 240
    :pswitch_74
    const v0, 0x9f7b

    return v0

    .line 238
    :pswitch_75
    const v0, 0x9f78

    return v0

    .line 236
    :pswitch_76
    const v0, 0x9f47

    return v0

    .line 234
    :pswitch_77
    const v0, 0x9f09

    return v0

    .line 232
    :pswitch_78
    const v0, 0x9ef5

    return v0

    .line 230
    :pswitch_79
    const v0, 0x9ea1

    return v0

    .line 228
    :pswitch_7a
    const v0, 0x9e11

    return v0

    .line 226
    :pswitch_7b
    const v0, 0x9e12

    return v0

    .line 224
    :pswitch_7c
    const v0, 0x9e0f

    return v0

    .line 222
    :pswitch_7d
    const v0, 0x9e10

    return v0

    .line 220
    :pswitch_7e
    const v0, 0x9e0d

    return v0

    .line 218
    :pswitch_7f
    const v0, 0x9e0b

    return v0

    .line 216
    :pswitch_80
    const v0, 0x9c6d

    return v0

    .line 214
    :pswitch_81
    const v0, 0x9c6e

    return v0

    .line 212
    :pswitch_82
    const v0, 0x9c68

    return v0

    .line 210
    :pswitch_83
    const v0, 0x995f

    return v0

    .line 208
    :pswitch_84
    const v0, 0x9872

    return v0

    .line 206
    :pswitch_85
    const v0, 0x9749

    return v0

    .line 204
    :pswitch_86
    const v0, 0x9473

    return v0

    .line 202
    :pswitch_87
    const v0, 0x9471

    return v0

    .line 200
    :pswitch_88
    const v0, 0x946f

    return v0

    .line 198
    :pswitch_89
    const v0, 0x946d

    return v0

    .line 196
    :pswitch_8a
    const v0, 0x946e

    return v0

    .line 194
    :pswitch_8b
    const v0, 0x8ea3

    return v0

    .line 192
    :pswitch_8c
    const v0, 0x8ea4

    return v0

    .line 190
    :pswitch_8d
    const v0, 0x8ea5

    return v0

    .line 188
    :pswitch_8e
    const v0, 0x8b99

    return v0

    .line 186
    :pswitch_8f
    const v0, 0x8b98

    return v0

    .line 184
    :pswitch_90
    const v0, 0x89ff

    return v0

    .line 182
    :pswitch_91
    const v0, 0x897b

    return v0

    .line 180
    :pswitch_92
    const v0, 0x897c

    return v0

    .line 178
    :pswitch_93
    const v0, 0x897a

    return v0

    .line 176
    :pswitch_94
    const v0, 0x8979

    return v0

    .line 174
    :pswitch_95
    const v0, 0x8648

    return v0

    .line 172
    :pswitch_96
    const v0, 0x8647

    return v0

    .line 170
    :pswitch_97
    const v0, 0x8646

    return v0

    .line 168
    :pswitch_98
    const v0, 0x81e1

    return v0

    .line 166
    :pswitch_99
    const v0, 0x81e0

    return v0

    .line 164
    :pswitch_9a
    const/16 v0, 0x7e99

    return v0

    .line 162
    :pswitch_9b
    const/16 v0, 0x7e9b

    return v0

    .line 160
    :pswitch_9c
    const/16 v0, 0x7e98

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRange1(II)I
    .locals 2
    .param p1, "leading"    # I
    .param p2, "trailing"    # I

    .line 138
    add-int/lit16 v0, p1, -0x81

    mul-int/lit16 v0, v0, 0x9d

    const v1, 0xeeb8

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    add-int/lit8 v1, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, -0x62

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private handleRange2(II)I
    .locals 2
    .param p1, "leading"    # I
    .param p2, "trailing"    # I

    .line 143
    add-int/lit16 v0, p1, -0x8e

    mul-int/lit16 v0, v0, 0x9d

    const v1, 0xe311

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    add-int/lit8 v1, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, -0x62

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private handleRange3(II)I
    .locals 2
    .param p1, "leading"    # I
    .param p2, "trailing"    # I

    .line 148
    add-int/lit16 v0, p1, -0xc6

    mul-int/lit16 v0, v0, 0x9d

    const v1, 0xf672

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    add-int/lit8 v1, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, -0x62

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private handleRange4(II)I
    .locals 2
    .param p1, "leading"    # I
    .param p2, "trailing"    # I

    .line 153
    add-int/lit16 v0, p1, -0xfa

    mul-int/lit16 v0, v0, 0x9d

    const v1, 0xe000

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    add-int/lit8 v1, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, -0x62

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 135
    return-void
.end method

.method public read()I
    .locals 8

    .line 73
    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->data:[B

    array-length v3, v2

    if-gt v1, v3, :cond_8

    iget v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->startOffset:I

    sub-int v1, v0, v1

    iget v3, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->length:I

    if-le v1, v3, :cond_0

    goto/16 :goto_0

    .line 76
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    .line 77
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    .line 78
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 79
    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    const/16 v1, 0x81

    if-ge v0, v1, :cond_1

    .line 82
    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    return v0

    .line 83
    :cond_1
    const/16 v1, 0xf9

    if-ne v0, v1, :cond_2

    .line 84
    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleF9(I)I

    move-result v0

    return v0

    .line 86
    :cond_2
    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    add-int/2addr v1, v2

    .line 87
    .local v1, "ch":I
    const v3, 0x8140

    if-lt v1, v3, :cond_3

    const v3, 0x8dfe

    if-gt v1, v3, :cond_3

    .line 88
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange1(II)I

    move-result v0

    return v0

    .line 89
    :cond_3
    const v3, 0x8e40

    if-lt v1, v3, :cond_4

    const v3, 0xa0fe

    if-gt v1, v3, :cond_4

    .line 90
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange2(II)I

    move-result v0

    return v0

    .line 91
    :cond_4
    const v3, 0xc6a1

    if-lt v1, v3, :cond_5

    const v3, 0xc8fe

    if-gt v1, v3, :cond_5

    .line 92
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange3(II)I

    move-result v0

    return v0

    .line 93
    :cond_5
    const v3, 0xfa40

    if-lt v1, v3, :cond_6

    const v3, 0xfefe

    if-gt v1, v3, :cond_6

    .line 94
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange4(II)I

    move-result v0

    return v0

    .line 97
    :cond_6
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 98
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 99
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 103
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 106
    sget-object v0, Lorg/apache/poi/util/LittleEndianCP950Reader;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t create char for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 109
    const/16 v0, 0x3f

    return v0

    .line 111
    :cond_7
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 74
    .end local v1    # "ch":I
    :cond_8
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([CII)I
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianCP950Reader;->read()I

    move-result v1

    .line 125
    .local v1, "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 126
    sub-int v2, v0, p2

    return v2

    .line 128
    :cond_0
    int-to-char v2, v1

    aput-char v2, p1, v0

    .line 123
    .end local v1    # "c":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_1
    return p3
.end method
