.class public final Lorg/apache/poi/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field public static final CHARSET_1252:Ljava/nio/charset/Charset;

.field public static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final userLocale:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final userTimeZone:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 53
    const-string v0, "CP1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    .line 55
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getLocaleCalendar()Ljava/util/Calendar;
    .locals 1

    .line 110
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleCalendar(III)Ljava/util/Calendar;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 122
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar(IIIIII)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleCalendar(IIIIII)Ljava/util/Calendar;
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .line 137
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v7

    .line 138
    .local v7, "cal":Ljava/util/Calendar;
    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 139
    const/16 v0, 0xe

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->clear(I)V

    .line 140
    return-object v7
.end method

.method public static getLocaleCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .line 147
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleFromLCID(I)Ljava/lang/String;
    .locals 2
    .param p0, "lcid"    # I

    .line 157
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 158
    .local v0, "languageId":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x803

    if-eq v0, v1, :cond_5

    const/16 v1, 0x804

    if-eq v0, v1, :cond_4

    const/16 v1, 0x809

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x810

    if-eq v0, v1, :cond_1

    const/16 v1, 0x811

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 615
    const-string v1, "invalid"

    return-object v1

    .line 445
    :pswitch_0
    const-string v1, "quc-CO"

    return-object v1

    .line 444
    :pswitch_1
    const-string v1, "ku-Arab-IQ"

    return-object v1

    .line 443
    :pswitch_2
    const-string v1, "gd-GB"

    return-object v1

    .line 442
    :pswitch_3
    const-string v1, "khb-Talu-CN"

    return-object v1

    .line 441
    :pswitch_4
    const-string/jumbo v1, "tdd-Tale-CN"

    return-object v1

    .line 440
    :pswitch_5
    const-string/jumbo v1, "zh-yue-HK"

    return-object v1

    .line 439
    :pswitch_6
    const-string v1, "plt-MG"

    return-object v1

    .line 438
    :pswitch_7
    const-string v1, "prs-AF"

    return-object v1

    .line 437
    :pswitch_8
    const-string/jumbo v1, "wo-SN"

    return-object v1

    .line 436
    :pswitch_9
    const-string v1, "rw-RW"

    return-object v1

    .line 435
    :pswitch_a
    const-string v1, "qut-GT"

    return-object v1

    .line 434
    :pswitch_b
    const-string v1, "sah-RU"

    return-object v1

    .line 433
    :pswitch_c
    const-string v1, "gsw-FR"

    return-object v1

    .line 432
    :pswitch_d
    const-string v1, "co-FR"

    return-object v1

    .line 431
    :pswitch_e
    const-string v1, "oc-FR"

    return-object v1

    .line 430
    :pswitch_f
    const-string v1, "mi-NZ"

    return-object v1

    .line 429
    :pswitch_10
    const-string/jumbo v1, "ug-CN"

    return-object v1

    .line 426
    :pswitch_11
    const-string v1, "arn-CL"

    return-object v1

    .line 425
    :pswitch_12
    const-string v1, "pap-x029"

    return-object v1

    .line 424
    :pswitch_13
    const-string v1, "ii-CN"

    return-object v1

    .line 423
    :pswitch_14
    const-string v1, "so-SO"

    return-object v1

    .line 422
    :pswitch_15
    const-string v1, "la-Latn"

    return-object v1

    .line 421
    :pswitch_16
    const-string v1, "haw-US"

    return-object v1

    .line 420
    :pswitch_17
    const-string v1, "gn-PY"

    return-object v1

    .line 419
    :pswitch_18
    const-string/jumbo v1, "ti-ET"

    return-object v1

    .line 418
    :pswitch_19
    const-string v1, "om-Ethi-ET"

    return-object v1

    .line 417
    :pswitch_1a
    const-string v1, "kr-NG"

    return-object v1

    .line 416
    :pswitch_1b
    const-string v1, "ig-NG"

    return-object v1

    .line 415
    :pswitch_1c
    const-string v1, "kl-GL"

    return-object v1

    .line 414
    :pswitch_1d
    const-string v1, "lb-LU"

    return-object v1

    .line 413
    :pswitch_1e
    const-string v1, "ba-RU"

    return-object v1

    .line 412
    :pswitch_1f
    const-string v1, "nso-ZA"

    return-object v1

    .line 411
    :pswitch_20
    const-string v1, "quz-BO"

    return-object v1

    .line 410
    :pswitch_21
    const-string/jumbo v1, "yo-NG"

    return-object v1

    .line 409
    :pswitch_22
    const-string v1, "ibb-NG"

    return-object v1

    .line 408
    :pswitch_23
    const-string v1, "ha-Latn-NG"

    return-object v1

    .line 407
    :pswitch_24
    const-string v1, "fuv-NG"

    return-object v1

    .line 406
    :pswitch_25
    const-string v1, "bin-NG"

    return-object v1

    .line 405
    :pswitch_26
    const-string v1, "dv-MV"

    return-object v1

    .line 404
    :pswitch_27
    const-string v1, "fil-PH"

    return-object v1

    .line 403
    :pswitch_28
    const-string v1, "ps-AF"

    return-object v1

    .line 402
    :pswitch_29
    const-string v1, "fy-NL"

    return-object v1

    .line 401
    :pswitch_2a
    const-string v1, "ne-NP"

    return-object v1

    .line 400
    :pswitch_2b
    const-string v1, "ks-Arab"

    return-object v1

    .line 399
    :pswitch_2c
    const-string/jumbo v1, "tzm-Arab-MA"

    return-object v1

    .line 398
    :pswitch_2d
    const-string v1, "am-ET"

    return-object v1

    .line 397
    :pswitch_2e
    const-string v1, "iu-Cans-CA"

    return-object v1

    .line 396
    :pswitch_2f
    const-string v1, "chr-Cher-US"

    return-object v1

    .line 395
    :pswitch_30
    const-string v1, "si-LK"

    return-object v1

    .line 394
    :pswitch_31
    const-string v1, "syr-SY"

    return-object v1

    .line 393
    :pswitch_32
    const-string v1, "sd-Deva-IN"

    return-object v1

    .line 392
    :pswitch_33
    const-string v1, "mni-IN"

    return-object v1

    .line 391
    :pswitch_34
    const-string v1, "kok-IN"

    return-object v1

    .line 390
    :pswitch_35
    const-string v1, "gl-ES"

    return-object v1

    .line 389
    :pswitch_36
    const-string v1, "my-MM"

    return-object v1

    .line 388
    :pswitch_37
    const-string v1, "lo-LA"

    return-object v1

    .line 387
    :pswitch_38
    const-string v1, "km-KH"

    return-object v1

    .line 386
    :pswitch_39
    const-string v1, "cy-GB"

    return-object v1

    .line 385
    :pswitch_3a
    const-string v1, "bo-CN"

    return-object v1

    .line 384
    :pswitch_3b
    const-string v1, "mn-MN"

    return-object v1

    .line 383
    :pswitch_3c
    const-string v1, "sa-IN"

    return-object v1

    .line 382
    :pswitch_3d
    const-string v1, "mr-IN"

    return-object v1

    .line 381
    :pswitch_3e
    const-string v1, "as-IN"

    return-object v1

    .line 380
    :pswitch_3f
    const-string v1, "ml-IN"

    return-object v1

    .line 379
    :pswitch_40
    const-string v1, "kn-IN"

    return-object v1

    .line 378
    :pswitch_41
    const-string/jumbo v1, "te-IN"

    return-object v1

    .line 377
    :pswitch_42
    const-string/jumbo v1, "ta-IN"

    return-object v1

    .line 376
    :pswitch_43
    const-string v1, "or-IN"

    return-object v1

    .line 375
    :pswitch_44
    const-string v1, "gu-IN"

    return-object v1

    .line 374
    :pswitch_45
    const-string v1, "pa-IN"

    return-object v1

    .line 373
    :pswitch_46
    const-string v1, "bn-IN"

    return-object v1

    .line 372
    :pswitch_47
    const-string/jumbo v1, "tt-RU"

    return-object v1

    .line 371
    :pswitch_48
    const-string/jumbo v1, "uz-Latn-UZ"

    return-object v1

    .line 370
    :pswitch_49
    const-string/jumbo v1, "tk-TM"

    return-object v1

    .line 369
    :pswitch_4a
    const-string v1, "sw-KE"

    return-object v1

    .line 368
    :pswitch_4b
    const-string v1, "ky-KG"

    return-object v1

    .line 367
    :pswitch_4c
    const-string v1, "kk-KZ"

    return-object v1

    .line 366
    :pswitch_4d
    const-string v1, "ms-MY"

    return-object v1

    .line 365
    :pswitch_4e
    const-string/jumbo v1, "yi-Hebr"

    return-object v1

    .line 364
    :pswitch_4f
    const-string v1, "se-NO"

    return-object v1

    .line 363
    :pswitch_50
    const-string v1, "mt-MT"

    return-object v1

    .line 362
    :pswitch_51
    const-string v1, "hi-IN"

    return-object v1

    .line 361
    :pswitch_52
    const-string v1, "fo-FO"

    return-object v1

    .line 360
    :pswitch_53
    const-string v1, "ka-GE"

    return-object v1

    .line 359
    :pswitch_54
    const-string v1, "af-ZA"

    return-object v1

    .line 358
    :pswitch_55
    const-string/jumbo v1, "zu-ZA"

    return-object v1

    .line 357
    :pswitch_56
    const-string/jumbo v1, "xh-ZA"

    return-object v1

    .line 356
    :pswitch_57
    const-string/jumbo v1, "ve-ZA"

    return-object v1

    .line 355
    :pswitch_58
    const-string/jumbo v1, "tn-ZA"

    return-object v1

    .line 354
    :pswitch_59
    const-string/jumbo v1, "ts-ZA"

    return-object v1

    .line 353
    :pswitch_5a
    const-string v1, "st-ZA"

    return-object v1

    .line 352
    :pswitch_5b
    const-string v1, "mk-MK"

    return-object v1

    .line 351
    :pswitch_5c
    const-string v1, "hsb-DE"

    return-object v1

    .line 350
    :pswitch_5d
    const-string v1, "eu-ES"

    return-object v1

    .line 349
    :pswitch_5e
    const-string v1, "az-Latn-AZ"

    return-object v1

    .line 348
    :pswitch_5f
    const-string v1, "hy-AM"

    return-object v1

    .line 347
    :pswitch_60
    const-string/jumbo v1, "vi-VN"

    return-object v1

    .line 346
    :pswitch_61
    const-string v1, "fa-IR"

    return-object v1

    .line 345
    :pswitch_62
    const-string/jumbo v1, "tg-Cyrl-TJ"

    return-object v1

    .line 344
    :pswitch_63
    const-string v1, "lt-LT"

    return-object v1

    .line 343
    :pswitch_64
    const-string v1, "lv-LV"

    return-object v1

    .line 342
    :pswitch_65
    const-string v1, "et-EE"

    return-object v1

    .line 341
    :pswitch_66
    const-string v1, "sl-SI"

    return-object v1

    .line 340
    :pswitch_67
    const-string v1, "be-BY"

    return-object v1

    .line 339
    :pswitch_68
    const-string/jumbo v1, "uk-UA"

    return-object v1

    .line 338
    :pswitch_69
    const-string v1, "id-ID"

    return-object v1

    .line 337
    :pswitch_6a
    const-string/jumbo v1, "ur-PK"

    return-object v1

    .line 336
    :pswitch_6b
    const-string/jumbo v1, "tr-TR"

    return-object v1

    .line 335
    :pswitch_6c
    const-string/jumbo v1, "th-TH"

    return-object v1

    .line 334
    :pswitch_6d
    const-string v1, "sv-SE"

    return-object v1

    .line 333
    :pswitch_6e
    const-string v1, "sq-AL"

    return-object v1

    .line 332
    :pswitch_6f
    const-string v1, "sk-SK"

    return-object v1

    .line 331
    :pswitch_70
    const-string v1, "hr-HR"

    return-object v1

    .line 330
    :pswitch_71
    const-string v1, "ru-RU"

    return-object v1

    .line 329
    :pswitch_72
    const-string v1, "ro-RO"

    return-object v1

    .line 328
    :pswitch_73
    const-string v1, "rm-CH"

    return-object v1

    .line 327
    :pswitch_74
    const-string v1, "pt-BR"

    return-object v1

    .line 326
    :pswitch_75
    const-string v1, "pl-PL"

    return-object v1

    .line 325
    :pswitch_76
    const-string v1, "nb-NO"

    return-object v1

    .line 324
    :pswitch_77
    const-string v1, "nl-NL"

    return-object v1

    .line 323
    :pswitch_78
    const-string v1, "ko-KR"

    return-object v1

    .line 322
    :pswitch_79
    const-string v1, "ja-JP"

    return-object v1

    .line 321
    :pswitch_7a
    const-string v1, "it-IT"

    return-object v1

    .line 320
    :pswitch_7b
    const-string v1, "is-IS"

    return-object v1

    .line 319
    :pswitch_7c
    const-string v1, "hu-HU"

    return-object v1

    .line 318
    :pswitch_7d
    const-string v1, "he-IL"

    return-object v1

    .line 317
    :pswitch_7e
    const-string v1, "fr-FR"

    return-object v1

    .line 316
    :pswitch_7f
    const-string v1, "fi-FI"

    return-object v1

    .line 315
    :pswitch_80
    const-string v1, "es-ES_tradnl"

    return-object v1

    .line 314
    :pswitch_81
    const-string v1, "en-US"

    return-object v1

    .line 313
    :pswitch_82
    const-string v1, "el-GR"

    return-object v1

    .line 312
    :pswitch_83
    const-string v1, "de-DE"

    return-object v1

    .line 311
    :pswitch_84
    const-string v1, "da-DK"

    return-object v1

    .line 310
    :pswitch_85
    const-string v1, "cs-CZ"

    return-object v1

    .line 309
    :pswitch_86
    const-string/jumbo v1, "zh-TW"

    return-object v1

    .line 308
    :pswitch_87
    const-string v1, "ca-ES"

    return-object v1

    .line 307
    :pswitch_88
    const-string v1, "bg-BG"

    return-object v1

    .line 306
    :pswitch_89
    const-string v1, "ar-SA"

    return-object v1

    .line 305
    :pswitch_8a
    const-string v1, "quc"

    return-object v1

    .line 304
    :pswitch_8b
    const-string v1, "ku"

    return-object v1

    .line 303
    :pswitch_8c
    const-string v1, "gd"

    return-object v1

    .line 294
    :pswitch_8d
    const-string/jumbo v1, "wo"

    return-object v1

    .line 293
    :pswitch_8e
    const-string v1, "rw"

    return-object v1

    .line 292
    :pswitch_8f
    const-string v1, "qut"

    return-object v1

    .line 291
    :pswitch_90
    const-string v1, "sah"

    return-object v1

    .line 290
    :pswitch_91
    const-string v1, "gsw"

    return-object v1

    .line 289
    :pswitch_92
    const-string v1, "co"

    return-object v1

    .line 288
    :pswitch_93
    const-string v1, "oc"

    return-object v1

    .line 287
    :pswitch_94
    const-string v1, "mi"

    return-object v1

    .line 286
    :pswitch_95
    const-string/jumbo v1, "ug"

    return-object v1

    .line 614
    :sswitch_0
    const-string v1, "ku-Arab"

    return-object v1

    .line 613
    :sswitch_1
    const-string v1, "ha-Latn"

    return-object v1

    .line 612
    :sswitch_2
    const-string v1, "ff-Latn"

    return-object v1

    .line 611
    :sswitch_3
    const-string/jumbo v1, "tzm-Latn"

    return-object v1

    .line 610
    :sswitch_4
    const-string v1, "iu-Latn"

    return-object v1

    .line 609
    :sswitch_5
    const-string v1, "chr-Cher"

    return-object v1

    .line 608
    :sswitch_6
    const-string v1, "sd-Arab"

    return-object v1

    .line 607
    :sswitch_7
    const-string v1, "mn-Mong"

    return-object v1

    .line 606
    :sswitch_8
    const-string v1, "pa-Arab"

    return-object v1

    .line 605
    :sswitch_9
    const-string/jumbo v1, "uz-Latn"

    return-object v1

    .line 604
    :sswitch_a
    const-string v1, "smj"

    return-object v1

    .line 603
    :sswitch_b
    const-string v1, "dsb"

    return-object v1

    .line 602
    :sswitch_c
    const-string/jumbo v1, "tg-Cyrl"

    return-object v1

    .line 601
    :sswitch_d
    const-string v1, "sr"

    return-object v1

    .line 600
    :sswitch_e
    const-string v1, "nb"

    return-object v1

    .line 599
    :sswitch_f
    const-string/jumbo v1, "zh-Hant"

    return-object v1

    .line 598
    :sswitch_10
    const-string v1, "iu-Cans"

    return-object v1

    .line 597
    :sswitch_11
    const-string v1, "mn-Cyrl"

    return-object v1

    .line 596
    :sswitch_12
    const-string/jumbo v1, "uz-Cyrl"

    return-object v1

    .line 595
    :sswitch_13
    const-string v1, "sma"

    return-object v1

    .line 594
    :sswitch_14
    const-string v1, "az-Latn"

    return-object v1

    .line 593
    :sswitch_15
    const-string v1, "bs"

    return-object v1

    .line 592
    :sswitch_16
    const-string v1, "nn"

    return-object v1

    .line 591
    :sswitch_17
    const-string/jumbo v1, "zh"

    return-object v1

    .line 590
    :sswitch_18
    const-string v1, "sms"

    return-object v1

    .line 589
    :sswitch_19
    const-string v1, "az-Cyrl"

    return-object v1

    .line 588
    :sswitch_1a
    const-string v1, "smn"

    return-object v1

    .line 587
    :sswitch_1b
    const-string v1, "sr-Latn"

    return-object v1

    .line 586
    :sswitch_1c
    const-string v1, "sr-Cyrl"

    return-object v1

    .line 585
    :sswitch_1d
    const-string v1, "bs-Latn"

    return-object v1

    .line 584
    :sswitch_1e
    const-string v1, "bs-Cyrl"

    return-object v1

    .line 583
    :sswitch_1f
    const-string v1, "en-YE"

    return-object v1

    .line 582
    :sswitch_20
    const-string v1, "en-TR"

    return-object v1

    .line 581
    :sswitch_21
    const-string v1, "en-KW"

    return-object v1

    .line 580
    :sswitch_22
    const-string v1, "en-JO"

    return-object v1

    .line 579
    :sswitch_23
    const-string v1, "es-US"

    return-object v1

    .line 578
    :sswitch_24
    const-string v1, "en-EG"

    return-object v1

    .line 577
    :sswitch_25
    const-string v1, "es-PR"

    return-object v1

    .line 576
    :sswitch_26
    const-string v1, "en-BH"

    return-object v1

    .line 575
    :sswitch_27
    const-string v1, "es-NI"

    return-object v1

    .line 574
    :sswitch_28
    const-string v1, "en-AE"

    return-object v1

    .line 573
    :sswitch_29
    const-string v1, "es-HN"

    return-object v1

    .line 572
    :sswitch_2a
    const-string v1, "en-SG"

    return-object v1

    .line 571
    :sswitch_2b
    const-string v1, "ar-145"

    return-object v1

    .line 570
    :sswitch_2c
    const-string v1, "es-SV"

    return-object v1

    .line 569
    :sswitch_2d
    const-string v1, "en-MY"

    return-object v1

    .line 568
    :sswitch_2e
    const-string v1, "ar-Ploc-SA"

    return-object v1

    .line 567
    :sswitch_2f
    const-string v1, "es-BO"

    return-object v1

    .line 566
    :sswitch_30
    const-string v1, "en-IN"

    return-object v1

    .line 565
    :sswitch_31
    const-string v1, "ar-QA"

    return-object v1

    .line 564
    :sswitch_32
    const-string v1, "fr-HT"

    return-object v1

    .line 563
    :sswitch_33
    const-string v1, "es-PY"

    return-object v1

    .line 562
    :sswitch_34
    const-string v1, "en-HK"

    return-object v1

    .line 561
    :sswitch_35
    const-string v1, "ar-BH"

    return-object v1

    .line 560
    :sswitch_36
    const-string v1, "fr-MA"

    return-object v1

    .line 559
    :sswitch_37
    const-string v1, "es-UY"

    return-object v1

    .line 558
    :sswitch_38
    const-string v1, "en-ID"

    return-object v1

    .line 557
    :sswitch_39
    const-string v1, "ar-AE"

    return-object v1

    .line 556
    :sswitch_3a
    const-string v1, "fr-ML"

    return-object v1

    .line 555
    :sswitch_3b
    const-string v1, "es-CL"

    return-object v1

    .line 554
    :sswitch_3c
    const-string v1, "en-PH"

    return-object v1

    .line 553
    :sswitch_3d
    const-string v1, "ar-KW"

    return-object v1

    .line 552
    :sswitch_3e
    const-string v1, "sr-Cyrl-ME"

    return-object v1

    .line 551
    :sswitch_3f
    const-string v1, "fr-CI"

    return-object v1

    .line 550
    :sswitch_40
    const-string v1, "es-EC"

    return-object v1

    .line 549
    :sswitch_41
    const-string v1, "en-ZW"

    return-object v1

    .line 548
    :sswitch_42
    const-string v1, "ar-LB"

    return-object v1

    .line 547
    :sswitch_43
    const-string v1, "sr-Latn-ME"

    return-object v1

    .line 546
    :sswitch_44
    const-string v1, "fr-CM"

    return-object v1

    .line 545
    :sswitch_45
    const-string v1, "es-AR"

    return-object v1

    .line 544
    :sswitch_46
    const-string v1, "en-TT"

    return-object v1

    .line 543
    :sswitch_47
    const-string v1, "ar-JO"

    return-object v1

    .line 542
    :sswitch_48
    const-string v1, "sr-Cyrl-RS"

    return-object v1

    .line 541
    :sswitch_49
    const-string v1, "fr-SN"

    return-object v1

    .line 540
    :sswitch_4a
    const-string v1, "es-PE"

    return-object v1

    .line 539
    :sswitch_4b
    const-string v1, "en-BZ"

    return-object v1

    .line 538
    :sswitch_4c
    const-string v1, "ar-SY"

    return-object v1

    .line 537
    :sswitch_4d
    const-string v1, "smn-FI"

    return-object v1

    .line 536
    :sswitch_4e
    const-string v1, "sr-Latn-RS"

    return-object v1

    .line 535
    :sswitch_4f
    const-string v1, "fr-CG"

    return-object v1

    .line 534
    :sswitch_50
    const-string v1, "es-CO"

    return-object v1

    .line 533
    :sswitch_51
    const-string v1, "en-029"

    return-object v1

    .line 532
    :sswitch_52
    const-string v1, "ar-YE"

    return-object v1

    .line 531
    :sswitch_53
    const-string v1, "sms-FI"

    return-object v1

    .line 530
    :sswitch_54
    const-string v1, "bs-Cyrl-BA"

    return-object v1

    .line 529
    :sswitch_55
    const-string v1, "fr-RE"

    return-object v1

    .line 528
    :sswitch_56
    const-string v1, "es-VE"

    return-object v1

    .line 527
    :sswitch_57
    const-string v1, "en-JM"

    return-object v1

    .line 525
    :sswitch_58
    const-string v1, "ar-OM"

    return-object v1

    .line 524
    :sswitch_59
    const-string v1, "sma-SE"

    return-object v1

    .line 523
    :sswitch_5a
    const-string v1, "sr-Cyrl-BA"

    return-object v1

    .line 521
    :sswitch_5b
    const-string v1, "es-DO"

    return-object v1

    .line 520
    :sswitch_5c
    const-string v1, "en-ZA"

    return-object v1

    .line 519
    :sswitch_5d
    const-string v1, "ar-TN"

    return-object v1

    .line 518
    :sswitch_5e
    const-string v1, "sma-NO"

    return-object v1

    .line 517
    :sswitch_5f
    const-string v1, "sr-Latn-BA"

    return-object v1

    .line 516
    :sswitch_60
    const-string v1, "fr-MC"

    return-object v1

    .line 515
    :sswitch_61
    const-string v1, "es-PA"

    return-object v1

    .line 514
    :sswitch_62
    const-string v1, "en-IE"

    return-object v1

    .line 513
    :sswitch_63
    const-string v1, "ar-MA"

    return-object v1

    .line 512
    :sswitch_64
    const-string v1, "smj-SE"

    return-object v1

    .line 511
    :sswitch_65
    const-string v1, "bs-Latn-BA"

    return-object v1

    .line 510
    :sswitch_66
    const-string v1, "fr-LU"

    return-object v1

    .line 509
    :sswitch_67
    const-string v1, "es-CR"

    return-object v1

    .line 508
    :sswitch_68
    const-string v1, "en-NZ"

    return-object v1

    .line 507
    :sswitch_69
    const-string v1, "de-LI"

    return-object v1

    .line 506
    :sswitch_6a
    const-string/jumbo v1, "zh-MO"

    return-object v1

    .line 505
    :sswitch_6b
    const-string v1, "ar-DZ"

    return-object v1

    .line 504
    :sswitch_6c
    const-string v1, "smj-NO"

    return-object v1

    .line 503
    :sswitch_6d
    const-string v1, "hr-BA"

    return-object v1

    .line 502
    :sswitch_6e
    const-string v1, "fr-CH"

    return-object v1

    .line 501
    :sswitch_6f
    const-string v1, "es-GT"

    return-object v1

    .line 500
    :sswitch_70
    const-string v1, "en-CA"

    return-object v1

    .line 499
    :sswitch_71
    const-string v1, "de-LU"

    return-object v1

    .line 498
    :sswitch_72
    const-string/jumbo v1, "zh-SG"

    return-object v1

    .line 497
    :sswitch_73
    const-string v1, "ar-LY"

    return-object v1

    .line 496
    :sswitch_74
    const-string v1, "quz-PE"

    return-object v1

    .line 495
    :sswitch_75
    const-string/jumbo v1, "tmz-MA"

    return-object v1

    .line 494
    :sswitch_76
    const-string v1, "se-FI"

    return-object v1

    .line 493
    :sswitch_77
    const-string v1, "sr-Cyrl-CS"

    return-object v1

    .line 492
    :sswitch_78
    const-string v1, "fr-CA"

    return-object v1

    .line 491
    :sswitch_79
    const-string v1, "es-ES"

    return-object v1

    .line 490
    :sswitch_7a
    const-string v1, "en-AU"

    return-object v1

    .line 489
    :sswitch_7b
    const-string v1, "de-AT"

    return-object v1

    .line 488
    :sswitch_7c
    const-string/jumbo v1, "zh-HK"

    return-object v1

    .line 487
    :sswitch_7d
    const-string v1, "ar-EG"

    return-object v1

    .line 486
    :sswitch_7e
    const-string v1, "qps-plocm"

    return-object v1

    .line 485
    :sswitch_7f
    const-string/jumbo v1, "ti-ER"

    return-object v1

    .line 484
    :sswitch_80
    const-string v1, "quz-EC"

    return-object v1

    .line 483
    :sswitch_81
    const-string v1, "ff-Latn-SN"

    return-object v1

    .line 482
    :sswitch_82
    const-string v1, "ne-IN"

    return-object v1

    .line 481
    :sswitch_83
    const-string v1, "ks-Deva"

    return-object v1

    .line 480
    :sswitch_84
    const-string/jumbo v1, "tzm-Latn-DZ"

    return-object v1

    .line 479
    :sswitch_85
    const-string v1, "iu-Latn-CA"

    return-object v1

    .line 478
    :sswitch_86
    const-string v1, "sd-Arab-PK"

    return-object v1

    .line 477
    :sswitch_87
    const-string v1, "bo-BT"

    return-object v1

    .line 476
    :sswitch_88
    const-string v1, "mn-Mong-CN"

    return-object v1

    .line 475
    :sswitch_89
    const-string/jumbo v1, "ta-LK"

    return-object v1

    .line 474
    :sswitch_8a
    const-string v1, "pa-Arab-PK"

    return-object v1

    .line 473
    :sswitch_8b
    const-string v1, "bn-BD"

    return-object v1

    .line 472
    :sswitch_8c
    const-string/jumbo v1, "uz-Cyrl-UZ"

    return-object v1

    .line 471
    :sswitch_8d
    const-string v1, "ms-BN"

    return-object v1

    .line 470
    :sswitch_8e
    const-string v1, "ga-IE"

    return-object v1

    .line 469
    :sswitch_8f
    const-string v1, "se-SE"

    return-object v1

    .line 468
    :sswitch_90
    const-string/jumbo v1, "tn-BW"

    return-object v1

    .line 467
    :sswitch_91
    const-string v1, "dsb-DE"

    return-object v1

    .line 466
    :sswitch_92
    const-string v1, "az-Cyrl-AZ"

    return-object v1

    .line 464
    :sswitch_93
    const-string/jumbo v1, "ur-IN"

    return-object v1

    .line 463
    :sswitch_94
    const-string v1, "sv-FI"

    return-object v1

    .line 462
    :sswitch_95
    const-string v1, "sr-Latn-CS"

    return-object v1

    .line 461
    :sswitch_96
    const-string v1, "ru-MO"

    return-object v1

    .line 460
    :sswitch_97
    const-string v1, "ro-MO"

    return-object v1

    .line 459
    :sswitch_98
    const-string v1, "pt-PT"

    return-object v1

    .line 458
    :sswitch_99
    const-string v1, "nn-NO"

    return-object v1

    .line 457
    :sswitch_9a
    const-string v1, "nl-BE"

    return-object v1

    .line 454
    :sswitch_9b
    const-string v1, "fr-BE"

    return-object v1

    .line 451
    :sswitch_9c
    const-string v1, "de-CH"

    return-object v1

    .line 448
    :sswitch_9d
    const-string v1, "ar-IQ"

    return-object v1

    .line 447
    :sswitch_9e
    const-string v1, "qps-ploca"

    return-object v1

    .line 446
    :sswitch_9f
    const-string v1, "qps-ploc"

    return-object v1

    .line 428
    :sswitch_a0
    const-string v1, "br-FR"

    return-object v1

    .line 427
    :sswitch_a1
    const-string v1, "moh-CA"

    return-object v1

    .line 298
    :sswitch_a2
    const-string v1, "prs"

    return-object v1

    .line 284
    :sswitch_a3
    const-string v1, "br"

    return-object v1

    .line 282
    :sswitch_a4
    const-string v1, "moh"

    return-object v1

    .line 280
    :sswitch_a5
    const-string v1, "arn"

    return-object v1

    .line 279
    :sswitch_a6
    const-string v1, "pap"

    return-object v1

    .line 278
    :sswitch_a7
    const-string v1, "ii"

    return-object v1

    .line 277
    :sswitch_a8
    const-string v1, "so"

    return-object v1

    .line 276
    :sswitch_a9
    const-string v1, "la"

    return-object v1

    .line 275
    :sswitch_aa
    const-string v1, "haw"

    return-object v1

    .line 274
    :sswitch_ab
    const-string v1, "gn"

    return-object v1

    .line 273
    :sswitch_ac
    const-string/jumbo v1, "ti"

    return-object v1

    .line 272
    :sswitch_ad
    const-string v1, "om"

    return-object v1

    .line 271
    :sswitch_ae
    const-string v1, "kr"

    return-object v1

    .line 270
    :sswitch_af
    const-string v1, "ig"

    return-object v1

    .line 269
    :sswitch_b0
    const-string v1, "kl"

    return-object v1

    .line 268
    :sswitch_b1
    const-string v1, "lb"

    return-object v1

    .line 267
    :sswitch_b2
    const-string v1, "ba"

    return-object v1

    .line 266
    :sswitch_b3
    const-string v1, "nso"

    return-object v1

    .line 265
    :sswitch_b4
    const-string v1, "quz"

    return-object v1

    .line 264
    :sswitch_b5
    const-string/jumbo v1, "yo"

    return-object v1

    .line 263
    :sswitch_b6
    const-string v1, "ibb"

    return-object v1

    .line 262
    :sswitch_b7
    const-string v1, "ha"

    return-object v1

    .line 261
    :sswitch_b8
    const-string v1, "ff"

    return-object v1

    .line 260
    :sswitch_b9
    const-string v1, "bin"

    return-object v1

    .line 259
    :sswitch_ba
    const-string v1, "dv"

    return-object v1

    .line 258
    :sswitch_bb
    const-string v1, "fil"

    return-object v1

    .line 257
    :sswitch_bc
    const-string v1, "ps"

    return-object v1

    .line 256
    :sswitch_bd
    const-string v1, "fy"

    return-object v1

    .line 255
    :sswitch_be
    const-string v1, "ne"

    return-object v1

    .line 254
    :sswitch_bf
    const-string v1, "ks"

    return-object v1

    .line 253
    :sswitch_c0
    const-string/jumbo v1, "tzm"

    return-object v1

    .line 252
    :sswitch_c1
    const-string v1, "am"

    return-object v1

    .line 251
    :sswitch_c2
    const-string v1, "iu"

    return-object v1

    .line 250
    :sswitch_c3
    const-string v1, "chr"

    return-object v1

    .line 249
    :sswitch_c4
    const-string v1, "si"

    return-object v1

    .line 248
    :sswitch_c5
    const-string v1, "syr"

    return-object v1

    .line 247
    :sswitch_c6
    const-string v1, "sd"

    return-object v1

    .line 246
    :sswitch_c7
    const-string v1, "mni"

    return-object v1

    .line 245
    :sswitch_c8
    const-string v1, "kok"

    return-object v1

    .line 244
    :sswitch_c9
    const-string v1, "gl"

    return-object v1

    .line 243
    :sswitch_ca
    const-string v1, "my"

    return-object v1

    .line 242
    :sswitch_cb
    const-string v1, "lo"

    return-object v1

    .line 241
    :sswitch_cc
    const-string v1, "km"

    return-object v1

    .line 240
    :sswitch_cd
    const-string v1, "cy"

    return-object v1

    .line 239
    :sswitch_ce
    const-string v1, "bo"

    return-object v1

    .line 238
    :sswitch_cf
    const-string v1, "mn"

    return-object v1

    .line 237
    :sswitch_d0
    const-string v1, "sa"

    return-object v1

    .line 236
    :sswitch_d1
    const-string v1, "mr"

    return-object v1

    .line 235
    :sswitch_d2
    const-string v1, "as"

    return-object v1

    .line 234
    :sswitch_d3
    const-string v1, "ml"

    return-object v1

    .line 233
    :sswitch_d4
    const-string v1, "kn"

    return-object v1

    .line 232
    :sswitch_d5
    const-string/jumbo v1, "te"

    return-object v1

    .line 231
    :sswitch_d6
    const-string v1, "ta"

    return-object v1

    .line 230
    :sswitch_d7
    const-string v1, "or"

    return-object v1

    .line 229
    :sswitch_d8
    const-string v1, "gu"

    return-object v1

    .line 228
    :sswitch_d9
    const-string v1, "pa"

    return-object v1

    .line 227
    :sswitch_da
    const-string v1, "bn"

    return-object v1

    .line 226
    :sswitch_db
    const-string/jumbo v1, "tt"

    return-object v1

    .line 225
    :sswitch_dc
    const-string/jumbo v1, "uz"

    return-object v1

    .line 224
    :sswitch_dd
    const-string/jumbo v1, "tk"

    return-object v1

    .line 223
    :sswitch_de
    const-string v1, "sw"

    return-object v1

    .line 222
    :sswitch_df
    const-string v1, "ky"

    return-object v1

    .line 221
    :sswitch_e0
    const-string v1, "kk"

    return-object v1

    .line 220
    :sswitch_e1
    const-string v1, "ms"

    return-object v1

    .line 219
    :sswitch_e2
    const-string/jumbo v1, "yi"

    return-object v1

    .line 218
    :sswitch_e3
    const-string v1, "ga"

    return-object v1

    .line 217
    :sswitch_e4
    const-string v1, "se"

    return-object v1

    .line 216
    :sswitch_e5
    const-string v1, "mt"

    return-object v1

    .line 215
    :sswitch_e6
    const-string v1, "hi"

    return-object v1

    .line 214
    :sswitch_e7
    const-string v1, "fo"

    return-object v1

    .line 213
    :sswitch_e8
    const-string v1, "ka"

    return-object v1

    .line 212
    :sswitch_e9
    const-string v1, "af"

    return-object v1

    .line 211
    :sswitch_ea
    const-string/jumbo v1, "zu"

    return-object v1

    .line 210
    :sswitch_eb
    const-string/jumbo v1, "xh"

    return-object v1

    .line 209
    :sswitch_ec
    const-string/jumbo v1, "ve"

    return-object v1

    .line 208
    :sswitch_ed
    const-string/jumbo v1, "tn"

    return-object v1

    .line 207
    :sswitch_ee
    const-string/jumbo v1, "ts"

    return-object v1

    .line 206
    :sswitch_ef
    const-string v1, "st"

    return-object v1

    .line 205
    :sswitch_f0
    const-string v1, "mk"

    return-object v1

    .line 204
    :sswitch_f1
    const-string v1, "dsb or hsb"

    return-object v1

    .line 203
    :sswitch_f2
    const-string v1, "eu"

    return-object v1

    .line 202
    :sswitch_f3
    const-string v1, "az"

    return-object v1

    .line 201
    :sswitch_f4
    const-string v1, "hy"

    return-object v1

    .line 200
    :sswitch_f5
    const-string/jumbo v1, "vi"

    return-object v1

    .line 199
    :sswitch_f6
    const-string v1, "fa"

    return-object v1

    .line 198
    :sswitch_f7
    const-string/jumbo v1, "tg"

    return-object v1

    .line 197
    :sswitch_f8
    const-string v1, "lt"

    return-object v1

    .line 196
    :sswitch_f9
    const-string v1, "lv"

    return-object v1

    .line 195
    :sswitch_fa
    const-string v1, "et"

    return-object v1

    .line 194
    :sswitch_fb
    const-string v1, "sl"

    return-object v1

    .line 193
    :sswitch_fc
    const-string v1, "be"

    return-object v1

    .line 192
    :sswitch_fd
    const-string/jumbo v1, "uk"

    return-object v1

    .line 191
    :sswitch_fe
    const-string v1, "id"

    return-object v1

    .line 190
    :sswitch_ff
    const-string/jumbo v1, "ur"

    return-object v1

    .line 189
    :sswitch_100
    const-string/jumbo v1, "tr"

    return-object v1

    .line 188
    :sswitch_101
    const-string/jumbo v1, "th"

    return-object v1

    .line 187
    :sswitch_102
    const-string v1, "sv"

    return-object v1

    .line 186
    :sswitch_103
    const-string v1, "sq"

    return-object v1

    .line 185
    :sswitch_104
    const-string v1, "sk"

    return-object v1

    .line 184
    :sswitch_105
    const-string v1, "bs, hr, or sr"

    return-object v1

    .line 183
    :sswitch_106
    const-string v1, "ru"

    return-object v1

    .line 182
    :sswitch_107
    const-string v1, "ro"

    return-object v1

    .line 181
    :sswitch_108
    const-string v1, "rm"

    return-object v1

    .line 180
    :sswitch_109
    const-string v1, "pt"

    return-object v1

    .line 179
    :sswitch_10a
    const-string v1, "pl"

    return-object v1

    .line 178
    :sswitch_10b
    const-string v1, "no"

    return-object v1

    .line 177
    :sswitch_10c
    const-string v1, "nl"

    return-object v1

    .line 176
    :sswitch_10d
    const-string v1, "ko"

    return-object v1

    .line 175
    :sswitch_10e
    const-string v1, "ja"

    return-object v1

    .line 174
    :sswitch_10f
    const-string v1, "it"

    return-object v1

    .line 173
    :sswitch_110
    const-string v1, "is"

    return-object v1

    .line 172
    :sswitch_111
    const-string v1, "hu"

    return-object v1

    .line 171
    :sswitch_112
    const-string v1, "he"

    return-object v1

    .line 170
    :sswitch_113
    const-string v1, "fr"

    return-object v1

    .line 169
    :sswitch_114
    const-string v1, "fi"

    return-object v1

    .line 168
    :sswitch_115
    const-string v1, "es"

    return-object v1

    .line 167
    :sswitch_116
    const-string v1, "en"

    return-object v1

    .line 166
    :sswitch_117
    const-string v1, "el"

    return-object v1

    .line 456
    :cond_0
    const-string v1, "ja-Ploc-JP"

    return-object v1

    .line 455
    :cond_1
    const-string v1, "it-CH"

    return-object v1

    .line 453
    :cond_2
    const-string v1, "es-MX"

    return-object v1

    .line 452
    :cond_3
    const-string v1, "en-GB"

    return-object v1

    .line 450
    :cond_4
    const-string/jumbo v1, "zh-CN"

    return-object v1

    .line 449
    :cond_5
    const-string v1, "ca-ES-valencia"

    return-object v1

    .line 165
    :cond_6
    :sswitch_118
    const-string v1, "de"

    return-object v1

    .line 164
    :cond_7
    const-string v1, "da"

    return-object v1

    .line 163
    :cond_8
    const-string v1, "cs"

    return-object v1

    .line 162
    :cond_9
    const-string/jumbo v1, "zh-Hans"

    return-object v1

    .line 161
    :cond_a
    const-string v1, "ca"

    return-object v1

    .line 160
    :cond_b
    const-string v1, "bg"

    return-object v1

    .line 159
    :cond_c
    const-string v1, "ar"

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_118
        0x8 -> :sswitch_117
        0x9 -> :sswitch_116
        0xa -> :sswitch_115
        0xb -> :sswitch_114
        0xc -> :sswitch_113
        0xd -> :sswitch_112
        0xe -> :sswitch_111
        0xf -> :sswitch_110
        0x10 -> :sswitch_10f
        0x11 -> :sswitch_10e
        0x12 -> :sswitch_10d
        0x13 -> :sswitch_10c
        0x14 -> :sswitch_10b
        0x15 -> :sswitch_10a
        0x16 -> :sswitch_109
        0x17 -> :sswitch_108
        0x18 -> :sswitch_107
        0x19 -> :sswitch_106
        0x1a -> :sswitch_105
        0x1b -> :sswitch_104
        0x1c -> :sswitch_103
        0x1d -> :sswitch_102
        0x1e -> :sswitch_101
        0x1f -> :sswitch_100
        0x20 -> :sswitch_ff
        0x21 -> :sswitch_fe
        0x22 -> :sswitch_fd
        0x23 -> :sswitch_fc
        0x24 -> :sswitch_fb
        0x25 -> :sswitch_fa
        0x26 -> :sswitch_f9
        0x27 -> :sswitch_f8
        0x28 -> :sswitch_f7
        0x29 -> :sswitch_f6
        0x2a -> :sswitch_f5
        0x2b -> :sswitch_f4
        0x2c -> :sswitch_f3
        0x2d -> :sswitch_f2
        0x2e -> :sswitch_f1
        0x2f -> :sswitch_f0
        0x30 -> :sswitch_ef
        0x31 -> :sswitch_ee
        0x32 -> :sswitch_ed
        0x33 -> :sswitch_ec
        0x34 -> :sswitch_eb
        0x35 -> :sswitch_ea
        0x36 -> :sswitch_e9
        0x37 -> :sswitch_e8
        0x38 -> :sswitch_e7
        0x39 -> :sswitch_e6
        0x3a -> :sswitch_e5
        0x3b -> :sswitch_e4
        0x3c -> :sswitch_e3
        0x3d -> :sswitch_e2
        0x3e -> :sswitch_e1
        0x3f -> :sswitch_e0
        0x40 -> :sswitch_df
        0x41 -> :sswitch_de
        0x42 -> :sswitch_dd
        0x43 -> :sswitch_dc
        0x44 -> :sswitch_db
        0x45 -> :sswitch_da
        0x46 -> :sswitch_d9
        0x47 -> :sswitch_d8
        0x48 -> :sswitch_d7
        0x49 -> :sswitch_d6
        0x4a -> :sswitch_d5
        0x4b -> :sswitch_d4
        0x4c -> :sswitch_d3
        0x4d -> :sswitch_d2
        0x4e -> :sswitch_d1
        0x4f -> :sswitch_d0
        0x50 -> :sswitch_cf
        0x51 -> :sswitch_ce
        0x52 -> :sswitch_cd
        0x53 -> :sswitch_cc
        0x54 -> :sswitch_cb
        0x55 -> :sswitch_ca
        0x56 -> :sswitch_c9
        0x57 -> :sswitch_c8
        0x58 -> :sswitch_c7
        0x59 -> :sswitch_c6
        0x5a -> :sswitch_c5
        0x5b -> :sswitch_c4
        0x5c -> :sswitch_c3
        0x5d -> :sswitch_c2
        0x5e -> :sswitch_c1
        0x5f -> :sswitch_c0
        0x60 -> :sswitch_bf
        0x61 -> :sswitch_be
        0x62 -> :sswitch_bd
        0x63 -> :sswitch_bc
        0x64 -> :sswitch_bb
        0x65 -> :sswitch_ba
        0x66 -> :sswitch_b9
        0x67 -> :sswitch_b8
        0x68 -> :sswitch_b7
        0x69 -> :sswitch_b6
        0x6a -> :sswitch_b5
        0x6b -> :sswitch_b4
        0x6c -> :sswitch_b3
        0x6d -> :sswitch_b2
        0x6e -> :sswitch_b1
        0x6f -> :sswitch_b0
        0x70 -> :sswitch_af
        0x71 -> :sswitch_ae
        0x72 -> :sswitch_ad
        0x73 -> :sswitch_ac
        0x74 -> :sswitch_ab
        0x75 -> :sswitch_aa
        0x76 -> :sswitch_a9
        0x77 -> :sswitch_a8
        0x78 -> :sswitch_a7
        0x79 -> :sswitch_a6
        0x7a -> :sswitch_a5
        0x7c -> :sswitch_a4
        0x7e -> :sswitch_a3
        0x8c -> :sswitch_a2
        0x47c -> :sswitch_a1
        0x47e -> :sswitch_a0
        0x501 -> :sswitch_9f
        0x5fe -> :sswitch_9e
        0x801 -> :sswitch_9d
        0x807 -> :sswitch_9c
        0x80c -> :sswitch_9b
        0x813 -> :sswitch_9a
        0x814 -> :sswitch_99
        0x816 -> :sswitch_98
        0x818 -> :sswitch_97
        0x819 -> :sswitch_96
        0x81a -> :sswitch_95
        0x81d -> :sswitch_94
        0x820 -> :sswitch_93
        0x82c -> :sswitch_92
        0x82e -> :sswitch_91
        0x832 -> :sswitch_90
        0x83b -> :sswitch_8f
        0x83c -> :sswitch_8e
        0x83e -> :sswitch_8d
        0x843 -> :sswitch_8c
        0x845 -> :sswitch_8b
        0x846 -> :sswitch_8a
        0x849 -> :sswitch_89
        0x850 -> :sswitch_88
        0x851 -> :sswitch_87
        0x859 -> :sswitch_86
        0x85d -> :sswitch_85
        0x85f -> :sswitch_84
        0x860 -> :sswitch_83
        0x861 -> :sswitch_82
        0x867 -> :sswitch_81
        0x86b -> :sswitch_80
        0x873 -> :sswitch_7f
        0x9ff -> :sswitch_7e
        0xc01 -> :sswitch_7d
        0xc04 -> :sswitch_7c
        0xc07 -> :sswitch_7b
        0xc09 -> :sswitch_7a
        0xc0a -> :sswitch_79
        0xc0c -> :sswitch_78
        0xc1a -> :sswitch_77
        0xc3b -> :sswitch_76
        0xc5f -> :sswitch_75
        0xc6b -> :sswitch_74
        0x1001 -> :sswitch_73
        0x1004 -> :sswitch_72
        0x1007 -> :sswitch_71
        0x1009 -> :sswitch_70
        0x100a -> :sswitch_6f
        0x100c -> :sswitch_6e
        0x101a -> :sswitch_6d
        0x103b -> :sswitch_6c
        0x1401 -> :sswitch_6b
        0x1404 -> :sswitch_6a
        0x1407 -> :sswitch_69
        0x1409 -> :sswitch_68
        0x140a -> :sswitch_67
        0x140c -> :sswitch_66
        0x141a -> :sswitch_65
        0x143b -> :sswitch_64
        0x1801 -> :sswitch_63
        0x1809 -> :sswitch_62
        0x180a -> :sswitch_61
        0x180c -> :sswitch_60
        0x181a -> :sswitch_5f
        0x183b -> :sswitch_5e
        0x1c01 -> :sswitch_5d
        0x1c09 -> :sswitch_5c
        0x1c0a -> :sswitch_5b
        0x1c1a -> :sswitch_5a
        0x1c3b -> :sswitch_59
        0x2001 -> :sswitch_58
        0x2009 -> :sswitch_57
        0x200a -> :sswitch_56
        0x200c -> :sswitch_55
        0x201a -> :sswitch_54
        0x203b -> :sswitch_53
        0x2401 -> :sswitch_52
        0x2409 -> :sswitch_51
        0x240a -> :sswitch_50
        0x240c -> :sswitch_4f
        0x241a -> :sswitch_4e
        0x243b -> :sswitch_4d
        0x2801 -> :sswitch_4c
        0x2809 -> :sswitch_4b
        0x280a -> :sswitch_4a
        0x280c -> :sswitch_49
        0x281a -> :sswitch_48
        0x2c01 -> :sswitch_47
        0x2c09 -> :sswitch_46
        0x2c0a -> :sswitch_45
        0x2c0c -> :sswitch_44
        0x2c1a -> :sswitch_43
        0x3001 -> :sswitch_42
        0x3009 -> :sswitch_41
        0x300a -> :sswitch_40
        0x300c -> :sswitch_3f
        0x301a -> :sswitch_3e
        0x3401 -> :sswitch_3d
        0x3409 -> :sswitch_3c
        0x340a -> :sswitch_3b
        0x340c -> :sswitch_3a
        0x3801 -> :sswitch_39
        0x3809 -> :sswitch_38
        0x380a -> :sswitch_37
        0x380c -> :sswitch_36
        0x3c01 -> :sswitch_35
        0x3c09 -> :sswitch_34
        0x3c0a -> :sswitch_33
        0x3c0c -> :sswitch_32
        0x4001 -> :sswitch_31
        0x4009 -> :sswitch_30
        0x400a -> :sswitch_2f
        0x4401 -> :sswitch_2e
        0x4409 -> :sswitch_2d
        0x440a -> :sswitch_2c
        0x4801 -> :sswitch_2b
        0x4809 -> :sswitch_2a
        0x480a -> :sswitch_29
        0x4c09 -> :sswitch_28
        0x4c0a -> :sswitch_27
        0x5009 -> :sswitch_26
        0x500a -> :sswitch_25
        0x5409 -> :sswitch_24
        0x540a -> :sswitch_23
        0x5809 -> :sswitch_22
        0x5c09 -> :sswitch_21
        0x6009 -> :sswitch_20
        0x6409 -> :sswitch_1f
        0x641a -> :sswitch_1e
        0x681a -> :sswitch_1d
        0x6c1a -> :sswitch_1c
        0x701a -> :sswitch_1b
        0x703b -> :sswitch_1a
        0x742c -> :sswitch_19
        0x743b -> :sswitch_18
        0x7804 -> :sswitch_17
        0x7814 -> :sswitch_16
        0x781a -> :sswitch_15
        0x782c -> :sswitch_14
        0x783b -> :sswitch_13
        0x7843 -> :sswitch_12
        0x7850 -> :sswitch_11
        0x785d -> :sswitch_10
        0x7c04 -> :sswitch_f
        0x7c14 -> :sswitch_e
        0x7c1a -> :sswitch_d
        0x7c28 -> :sswitch_c
        0x7c2e -> :sswitch_b
        0x7c3b -> :sswitch_a
        0x7c43 -> :sswitch_9
        0x7c46 -> :sswitch_8
        0x7c50 -> :sswitch_7
        0x7c59 -> :sswitch_6
        0x7c5c -> :sswitch_5
        0x7c5d -> :sswitch_4
        0x7c5f -> :sswitch_3
        0x7c67 -> :sswitch_2
        0x7c68 -> :sswitch_1
        0x7c92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x91
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x401
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43d
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x480
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x48c
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

.method public static getUserLocale()Ljava/util/Locale;
    .locals 2

    .line 98
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 99
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getUserTimeZone()Ljava/util/TimeZone;
    .locals 2

    .line 74
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 75
    .local v0, "timeZone":Ljava/util/TimeZone;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static resetUserLocale()V
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 104
    return-void
.end method

.method public static resetUserTimeZone()V
    .locals 1

    .line 82
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 83
    return-void
.end method

.method public static setUserLocale(Ljava/util/Locale;)V
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .line 90
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static setUserTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p0, "timezone"    # Ljava/util/TimeZone;

    .line 66
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->userTimeZone:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
