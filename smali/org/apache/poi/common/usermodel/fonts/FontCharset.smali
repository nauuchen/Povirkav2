.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontCharset;
.super Ljava/lang/Enum;
.source "FontCharset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontCharset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum ARABIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum BALTIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum CHINESEBIG5:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum EASTEUROPE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum GB2312:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum GREEK:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum HANGUL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum HEBREW:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum JOHAB:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum MAC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum OEM:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum RUSSIAN:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum SHIFTJIS:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum THAI_:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum TURKISH:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field public static final enum VIETNAMESE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field private static _table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private nativeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 34
    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v1, "ANSI"

    const/4 v2, 0x0

    const-string v3, "Cp1252"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 40
    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v4, "DEFAULT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 42
    new-instance v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v6, "SYMBOL"

    const/4 v7, 0x2

    const-string v8, ""

    invoke-direct {v4, v6, v7, v7, v8}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 44
    new-instance v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v8, "MAC"

    const/4 v9, 0x3

    const/16 v10, 0x4d

    const-string v11, "MacRoman"

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->MAC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 46
    new-instance v8, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v10, "SHIFTJIS"

    const/4 v11, 0x4

    const/16 v12, 0x80

    const-string v13, "Shift_JIS"

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SHIFTJIS:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 48
    new-instance v10, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v12, "HANGUL"

    const/4 v13, 0x5

    const/16 v14, 0x81

    const-string v15, "cp949"

    invoke-direct {v10, v12, v13, v14, v15}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->HANGUL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 50
    new-instance v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v14, "JOHAB"

    const/4 v15, 0x6

    const/16 v13, 0x82

    const-string/jumbo v11, "x-Johab"

    invoke-direct {v12, v14, v15, v13, v11}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->JOHAB:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 52
    new-instance v11, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v13, "GB2312"

    const/4 v14, 0x7

    const/16 v15, 0x86

    invoke-direct {v11, v13, v14, v15, v13}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->GB2312:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 57
    new-instance v13, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v15, "CHINESEBIG5"

    const/16 v14, 0x8

    const/16 v9, 0x88

    const-string v7, "Big5"

    invoke-direct {v13, v15, v14, v9, v7}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->CHINESEBIG5:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 59
    new-instance v7, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "GREEK"

    const/16 v15, 0x9

    const/16 v14, 0xa1

    const-string v5, "Cp1253"

    invoke-direct {v7, v9, v15, v14, v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->GREEK:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 61
    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "TURKISH"

    const/16 v14, 0xa

    const/16 v15, 0xa2

    const-string v2, "Cp1254"

    invoke-direct {v5, v9, v14, v15, v2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->TURKISH:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 63
    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "VIETNAMESE"

    const/16 v15, 0xb

    const/16 v14, 0xa3

    move-object/from16 v16, v5

    const-string v5, "Cp1258"

    invoke-direct {v2, v9, v15, v14, v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->VIETNAMESE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 65
    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "HEBREW"

    const/16 v14, 0xc

    const/16 v15, 0xb1

    move-object/from16 v17, v2

    const-string v2, "Cp1255"

    invoke-direct {v5, v9, v14, v15, v2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->HEBREW:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 67
    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "ARABIC"

    const/16 v15, 0xd

    const/16 v14, 0xb2

    move-object/from16 v18, v5

    const-string v5, "Cp1256"

    invoke-direct {v2, v9, v15, v14, v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ARABIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 69
    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "BALTIC"

    const/16 v14, 0xe

    const/16 v15, 0xba

    move-object/from16 v19, v2

    const-string v2, "Cp1257"

    invoke-direct {v5, v9, v14, v15, v2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->BALTIC:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 71
    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "RUSSIAN"

    const/16 v15, 0xf

    const/16 v14, 0xcc

    move-object/from16 v20, v5

    const-string v5, "Cp1251"

    invoke-direct {v2, v9, v15, v14, v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->RUSSIAN:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 73
    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "THAI_"

    const/16 v14, 0x10

    const/16 v15, 0xde

    move-object/from16 v21, v2

    const-string/jumbo v2, "x-windows-874"

    invoke-direct {v5, v9, v14, v15, v2}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->THAI_:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 75
    new-instance v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "EASTEUROPE"

    const/16 v15, 0x11

    const/16 v14, 0xee

    move-object/from16 v22, v5

    const-string v5, "Cp1250"

    invoke-direct {v2, v9, v15, v14, v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->EASTEUROPE:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 80
    new-instance v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const-string v9, "OEM"

    const/16 v14, 0x12

    const/16 v15, 0xff

    invoke-direct {v5, v9, v14, v15, v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->OEM:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 32
    const/16 v3, 0x13

    new-array v3, v3, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v11, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v7, v3, v0

    const/16 v0, 0xa

    aput-object v16, v3, v0

    const/16 v0, 0xb

    aput-object v17, v3, v0

    const/16 v0, 0xc

    aput-object v18, v3, v0

    const/16 v0, 0xd

    aput-object v19, v3, v0

    const/16 v0, 0xe

    aput-object v20, v3, v0

    const/16 v0, 0xf

    aput-object v21, v3, v0

    const/16 v0, 0x10

    aput-object v22, v3, v0

    const/16 v0, 0x11

    aput-object v2, v3, v0

    aput-object v5, v3, v14

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 82
    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 89
    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->values()[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 90
    .local v3, "c":Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    sget-object v4, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {v3}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result v5

    aput-object v3, v4, v5

    .line 89
    .end local v3    # "c":Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "arr$":[Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p3, "flag"    # I
    .param p4, "javaCharsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->nativeId:I

    .line 96
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 98
    :try_start_0
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 100
    :catch_0
    move-exception p1

    .line 101
    .local p1, "e":Ljava/nio/charset/UnsupportedCharsetException;
    const-class p2, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {p2}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object p2

    .line 102
    .local p2, "logger":Lorg/apache/poi/util/POILogger;
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported charset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 105
    .end local p1    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    .end local p2    # "logger":Lorg/apache/poi/util/POILogger;
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;

    .line 106
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 2
    .param p0, "value"    # I

    .line 122
    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->_table:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getNativeId()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->nativeId:I

    return v0
.end method
