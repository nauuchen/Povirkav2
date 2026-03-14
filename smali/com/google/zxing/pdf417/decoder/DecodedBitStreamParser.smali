.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    nop

    .line 69
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 71
    nop

    .line 72
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 81
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 83
    .local v1, "nineHundred":Ljava/math/BigInteger;
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 84
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 85
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    .end local v1    # "nineHundred":Ljava/math/BigInteger;
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 19
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .line 478
    move/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 479
    .local v1, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 480
    .local v2, "count":I
    const-wide/16 v3, 0x0

    .line 481
    .local v3, "value":J
    const/4 v5, 0x0

    .line 483
    .local v5, "end":Z
    const/16 v6, 0x385

    const-wide/16 v7, 0x384

    const/16 v9, 0x3a0

    const/16 v10, 0x384

    const/4 v11, 0x6

    const/4 v12, 0x0

    if-eq v0, v6, :cond_5

    const/16 v6, 0x39c

    if-eq v0, v6, :cond_0

    move v6, v5

    move-wide v4, v3

    move v3, v2

    move/from16 v2, p3

    goto/16 :goto_6

    :cond_0
    move v6, v5

    const/4 v13, 0x0

    move-wide v4, v3

    move v3, v2

    move/from16 v2, p3

    .line 538
    .end local v5    # "end":Z
    .end local p3    # "codeIndex":I
    .local v2, "codeIndex":I
    .local v3, "count":I
    .local v4, "value":J
    .local v6, "end":Z
    :goto_0
    aget v14, p1, v12

    if-ge v2, v14, :cond_c

    if-nez v6, :cond_c

    .line 539
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "codeIndex":I
    .local v14, "codeIndex":I
    aget v2, p1, v2

    .line 540
    .local v13, "code":I
    move v13, v2

    if-ge v2, v10, :cond_1

    .line 541
    add-int/lit8 v3, v3, 0x1

    .line 543
    mul-long v15, v4, v7

    int-to-long v7, v13

    add-long v4, v15, v7

    move v2, v14

    goto :goto_1

    .line 545
    :cond_1
    if-eq v13, v9, :cond_2

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    move v2, v14

    goto :goto_1

    .line 553
    :cond_2
    :pswitch_0
    add-int/lit8 v14, v14, -0x1

    .line 554
    const/4 v2, 0x1

    move v6, v2

    move v2, v14

    .line 558
    .end local v14    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :goto_1
    rem-int/lit8 v7, v3, 0x5

    if-nez v7, :cond_4

    if-lez v3, :cond_4

    .line 561
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v11, :cond_3

    .line 562
    rsub-int/lit8 v8, v7, 0x5

    mul-int/lit8 v8, v8, 0x8

    shr-long v14, v4, v8

    long-to-int v8, v14

    int-to-byte v8, v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 564
    .end local v7    # "j":I
    :cond_3
    const-wide/16 v4, 0x0

    .line 565
    const/4 v3, 0x0

    .line 567
    .end local v13    # "code":I
    :cond_4
    const-wide/16 v7, 0x384

    goto :goto_0

    .line 488
    .end local v4    # "value":J
    .end local v6    # "end":Z
    .local v2, "count":I
    .local v3, "value":J
    .restart local v5    # "end":Z
    .restart local p3    # "codeIndex":I
    :cond_5
    new-array v6, v11, [I

    .line 489
    .local v6, "byteCompactedCodewords":[I
    add-int/lit8 v7, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v7, "codeIndex":I
    aget v8, p1, p3

    .line 490
    .local v8, "nextCode":I
    :goto_3
    aget v13, p1, v12

    if-ge v7, v13, :cond_9

    if-nez v5, :cond_9

    .line 491
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "count":I
    .local v13, "count":I
    aput v8, v6, v2

    .line 493
    const-wide/16 v14, 0x384

    mul-long v16, v3, v14

    int-to-long v14, v8

    add-long v3, v16, v14

    .line 494
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v7, p1, v7

    .line 496
    move v8, v7

    if-eq v7, v9, :cond_8

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    .line 508
    rem-int/lit8 v7, v13, 0x5

    if-nez v7, :cond_7

    if-lez v13, :cond_7

    .line 511
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v11, :cond_6

    .line 512
    rsub-int/lit8 v14, v7, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v3, v14

    long-to-int v15, v14

    int-to-byte v14, v15

    invoke-virtual {v1, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 511
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 514
    .end local v7    # "j":I
    :cond_6
    const-wide/16 v3, 0x0

    .line 515
    const/4 v7, 0x0

    move/from16 v18, v7

    move v7, v2

    move/from16 v2, v18

    .end local v13    # "count":I
    .local v7, "count":I
    goto :goto_3

    .line 490
    .end local v7    # "count":I
    .restart local v13    # "count":I
    :cond_7
    move v7, v2

    move v2, v13

    goto :goto_3

    .line 504
    :cond_8
    :pswitch_1
    add-int/lit8 v7, v2, -0x1

    .line 505
    .end local v2    # "codeIndex":I
    .local v7, "codeIndex":I
    const/4 v5, 0x1

    .line 506
    move v2, v13

    goto :goto_3

    .line 522
    .end local v13    # "count":I
    .local v2, "count":I
    :cond_9
    aget v9, p1, v12

    if-ne v7, v9, :cond_a

    if-ge v8, v10, :cond_a

    .line 523
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .local v9, "count":I
    aput v8, v6, v2

    move v2, v9

    .line 529
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_a
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    if-ge v9, v2, :cond_b

    .line 530
    aget v10, v6, v9

    int-to-byte v10, v10

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 529
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 533
    .end local v9    # "i":I
    :cond_b
    move v6, v5

    move-wide v4, v3

    move v3, v2

    move v2, v7

    .line 570
    .end local v5    # "end":Z
    .end local v7    # "codeIndex":I
    .end local v8    # "nextCode":I
    .local v2, "codeIndex":I
    .local v3, "count":I
    .restart local v4    # "value":J
    .local v6, "end":Z
    :cond_c
    :goto_6
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    move-object/from16 v9, p2

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    return v2

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x384
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 98
    .local v1, "encoding":Ljava/nio/charset/Charset;
    const/4 v3, 0x1

    .line 99
    .local v3, "codeIndex":I
    add-int/2addr v3, v2

    aget v2, p0, v2

    .line 100
    .local v2, "code":I
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v4, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    const/4 v5, 0x0

    move-object v6, v5

    .line 101
    :goto_0
    const/4 v7, 0x0

    aget v7, p0, v7

    if-ge v3, v7, :cond_2

    .line 102
    const/16 v7, 0x391

    if-eq v2, v7, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 140
    add-int/lit8 v3, v3, -0x1

    .line 141
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    goto :goto_1

    .line 130
    :pswitch_0
    invoke-static {p0, v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v3

    .line 131
    goto :goto_1

    .line 117
    :pswitch_1
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "codeIndex":I
    .local v7, "codeIndex":I
    aget v3, p0, v3

    .line 118
    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 119
    .local v6, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 120
    move v3, v7

    goto :goto_1

    .line 123
    .end local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :pswitch_2
    add-int/lit8 v3, v3, 0x2

    .line 124
    goto :goto_1

    .line 127
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 128
    goto :goto_1

    .line 135
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 114
    :pswitch_5
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 115
    goto :goto_1

    .line 108
    :pswitch_6
    invoke-static {v2, p0, v1, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v3

    .line 109
    goto :goto_1

    .line 104
    :pswitch_7
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 105
    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "codeIndex":I
    .restart local v7    # "codeIndex":I
    aget v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    move v3, v7

    .line 144
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_1

    .line 145
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "codeIndex":I
    .restart local v7    # "codeIndex":I
    aget v2, p0, v3

    move v3, v7

    goto :goto_0

    .line 147
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 150
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8, v5, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v5, v6

    .line 154
    .local v5, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v5, v7

    invoke-virtual {v7, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 155
    return-object v5

    .line 151
    .end local v5    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 665
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 666
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    .line 667
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 670
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    .line 673
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 160
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_6

    .line 164
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 165
    .local v2, "segmentIndexArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 166
    aget v4, p0, p1

    aput v4, v2, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i":I
    :cond_0
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 175
    aget v3, p0, p1

    const/16 v4, 0x39a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    const/16 v6, 0x39b

    if-eq v3, v6, :cond_1

    goto :goto_2

    .line 177
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 178
    aget v3, p0, v1

    sub-int/2addr v3, p1

    new-array v3, v3, [I

    .line 179
    .local v3, "additionalOptionCodeWords":[I
    const/4 v6, 0x0

    .line 181
    .local v6, "additionalOptionCodeWordsIndex":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 182
    .local v7, "end":Z
    :goto_1
    aget v9, p0, v1

    if-ge p1, v9, :cond_4

    if-nez v7, :cond_4

    .line 183
    add-int/lit8 v9, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v9, "codeIndex":I
    aget p1, p0, p1

    .line 184
    .local v8, "code":I
    move v8, p1

    const/16 v10, 0x384

    if-ge p1, v10, :cond_2

    .line 185
    add-int/lit8 p1, v6, 0x1

    .end local v6    # "additionalOptionCodeWordsIndex":I
    .local p1, "additionalOptionCodeWordsIndex":I
    aput v8, v3, v6

    move v6, p1

    move p1, v9

    goto :goto_1

    .line 187
    .end local p1    # "additionalOptionCodeWordsIndex":I
    .restart local v6    # "additionalOptionCodeWordsIndex":I
    :cond_2
    if-ne v8, v4, :cond_3

    .line 189
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 190
    add-int/lit8 p1, v9, 0x1

    .line 191
    .end local v9    # "codeIndex":I
    .local p1, "codeIndex":I
    const/4 v7, 0x1

    .line 192
    goto :goto_1

    .line 194
    .end local p1    # "codeIndex":I
    .restart local v9    # "codeIndex":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 198
    .end local v8    # "code":I
    .end local v9    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :cond_4
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 199
    goto :goto_2

    .line 201
    .end local v3    # "additionalOptionCodeWords":[I
    .end local v6    # "additionalOptionCodeWordsIndex":I
    .end local v7    # "end":Z
    :cond_5
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 202
    add-int/lit8 p1, p1, 0x1

    .line 206
    :goto_2
    return p1

    .line 162
    .end local v0    # "fileId":Ljava/lang/StringBuilder;
    .end local v2    # "segmentIndexArray":[I
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 10
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 291
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 292
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 293
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v2, 0x0

    .line 294
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_15

    .line 295
    aget v3, p0, v2

    .line 296
    .local v3, "subModeCh":I
    const/4 v4, 0x0

    .line 297
    .local v4, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1d

    const/16 v7, 0x1a

    const/16 v8, 0x391

    const/16 v9, 0x384

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    .line 433
    :pswitch_0
    move-object v0, v1

    .line 434
    if-ge v3, v6, :cond_0

    .line 435
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_6

    .line 437
    :cond_0
    if-eq v3, v6, :cond_3

    if-eq v3, v9, :cond_2

    if-eq v3, v8, :cond_1

    goto/16 :goto_6

    .line 444
    :cond_1
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    goto/16 :goto_6

    .line 447
    :cond_2
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_6

    .line 439
    :cond_3
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 440
    goto/16 :goto_6

    .line 416
    :pswitch_1
    move-object v0, v1

    .line 417
    if-ge v3, v7, :cond_4

    .line 418
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto/16 :goto_6

    .line 420
    :cond_4
    if-eq v3, v7, :cond_6

    if-eq v3, v9, :cond_5

    goto :goto_1

    .line 425
    :cond_5
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 429
    :goto_1
    goto/16 :goto_6

    .line 422
    :cond_6
    const/16 v4, 0x20

    .line 423
    goto/16 :goto_6

    .line 397
    :pswitch_2
    if-ge v3, v6, :cond_7

    .line 398
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_6

    .line 400
    :cond_7
    if-eq v3, v6, :cond_a

    if-eq v3, v9, :cond_9

    if-eq v3, v8, :cond_8

    goto :goto_2

    .line 405
    :cond_8
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    goto/16 :goto_6

    .line 408
    :cond_9
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 412
    :goto_2
    goto/16 :goto_6

    .line 402
    :cond_a
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 403
    goto/16 :goto_6

    .line 364
    :pswitch_3
    const/16 v5, 0x19

    if-ge v3, v5, :cond_b

    .line 365
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_6

    .line 367
    :cond_b
    if-eq v3, v9, :cond_d

    if-eq v3, v8, :cond_c

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    .line 382
    :pswitch_4
    move-object v1, v0

    .line 383
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 384
    goto/16 :goto_6

    .line 378
    :pswitch_5
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 379
    goto/16 :goto_6

    .line 375
    :pswitch_6
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 376
    goto/16 :goto_6

    .line 372
    :pswitch_7
    const/16 v4, 0x20

    .line 373
    goto/16 :goto_6

    .line 369
    :pswitch_8
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 370
    goto/16 :goto_6

    .line 386
    :cond_c
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    goto :goto_6

    .line 389
    :cond_d
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 393
    :goto_3
    goto :goto_6

    .line 331
    :pswitch_9
    if-ge v3, v7, :cond_e

    .line 332
    add-int/lit8 v5, v3, 0x61

    int-to-char v4, v5

    goto :goto_6

    .line 334
    :cond_e
    if-eq v3, v9, :cond_10

    if-eq v3, v8, :cond_f

    packed-switch v3, :pswitch_data_2

    goto :goto_4

    .line 348
    :pswitch_a
    move-object v1, v0

    .line 349
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 350
    goto :goto_6

    .line 344
    :pswitch_b
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 345
    goto :goto_6

    .line 340
    :pswitch_c
    move-object v1, v0

    .line 341
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 342
    goto :goto_6

    .line 336
    :pswitch_d
    const/16 v4, 0x20

    .line 337
    goto :goto_6

    .line 353
    :cond_f
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    goto :goto_6

    .line 356
    :cond_10
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 360
    :goto_4
    goto :goto_6

    .line 300
    :pswitch_e
    if-ge v3, v7, :cond_11

    .line 302
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto :goto_6

    .line 304
    :cond_11
    if-eq v3, v9, :cond_13

    if-eq v3, v8, :cond_12

    packed-switch v3, :pswitch_data_3

    goto :goto_5

    .line 316
    :pswitch_f
    move-object v1, v0

    .line 317
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 318
    goto :goto_6

    .line 312
    :pswitch_10
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 313
    goto :goto_6

    .line 309
    :pswitch_11
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 310
    goto :goto_6

    .line 306
    :pswitch_12
    const/16 v4, 0x20

    .line 307
    goto :goto_6

    .line 320
    :cond_12
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    goto :goto_6

    .line 323
    :cond_13
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 327
    :goto_5
    nop

    .line 453
    :goto_6
    if-eqz v4, :cond_14

    .line 455
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :cond_14
    nop

    .end local v3    # "subModeCh":I
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 458
    goto/16 :goto_0

    .line 459
    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "count":I
    const/4 v1, 0x0

    .line 586
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 588
    .local v2, "numericCodewords":[I
    :goto_0
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_5

    if-nez v1, :cond_5

    .line 589
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 590
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_0

    .line 591
    const/4 v1, 0x1

    .line 593
    :cond_0
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1

    .line 594
    aput p1, v2, v0

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 597
    :cond_1
    if-eq p1, v3, :cond_2

    const/16 v3, 0x385

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3a0

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 604
    :cond_2
    :pswitch_0
    add-int/lit8 v4, v4, -0x1

    .line 605
    const/4 v1, 0x1

    .line 609
    :goto_1
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_3

    const/16 v3, 0x386

    if-eq p1, v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-lez v0, :cond_4

    .line 614
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const/4 v0, 0x0

    .line 617
    .end local p1    # "code":I
    :cond_4
    move p1, v4

    goto :goto_0

    .line 618
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_5
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 221
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 223
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 225
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 226
    .local v3, "index":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 227
    .local v4, "end":Z
    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_3

    if-nez v4, :cond_3

    .line 228
    add-int/lit8 v6, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v6, "codeIndex":I
    aget p1, p0, p1

    .line 229
    .local v5, "code":I
    move v5, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_0

    .line 230
    div-int/lit8 p1, v5, 0x1e

    aput p1, v1, v3

    .line 231
    add-int/lit8 p1, v3, 0x1

    rem-int/lit8 v7, v5, 0x1e

    aput v7, v1, p1

    .line 232
    add-int/lit8 v3, v3, 0x2

    move p1, v6

    goto :goto_0

    .line 234
    :cond_0
    const/16 p1, 0x391

    if-eq v5, p1, :cond_2

    const/16 p1, 0x3a0

    if-eq v5, p1, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    move p1, v6

    goto :goto_1

    .line 237
    :pswitch_0
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .local p1, "index":I
    aput v7, v1, v3

    .line 238
    move v3, p1

    move p1, v6

    goto :goto_0

    .line 245
    .end local p1    # "index":I
    .restart local v3    # "index":I
    :cond_1
    :pswitch_1
    add-int/lit8 p1, v6, -0x1

    .line 246
    .end local v6    # "codeIndex":I
    .local p1, "codeIndex":I
    const/4 v4, 0x1

    .line 247
    goto :goto_0

    .line 255
    .end local p1    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :cond_2
    aput p1, v1, v3

    .line 256
    add-int/lit8 p1, v6, 0x1

    .end local v6    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v5, p0, v6

    .line 257
    aput v5, v2, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    .line 262
    .end local v5    # "code":I
    :goto_1
    goto :goto_0

    .line 263
    :cond_3
    invoke-static {v1, v2, v3, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 264
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
