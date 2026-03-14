.class public final enum Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
.super Ljava/lang/Enum;
.source "STBlackWhiteMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_BlackWhiteMode"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

.field public static final enum AUTO:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "auto"
    .end annotation
.end field

.field public static final enum BLACK:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "black"
    .end annotation
.end field

.field public static final enum BLACK_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "blackGray"
    .end annotation
.end field

.field public static final enum BLACK_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "blackWhite"
    .end annotation
.end field

.field public static final enum CLR:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "clr"
    .end annotation
.end field

.field public static final enum GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "gray"
    .end annotation
.end field

.field public static final enum GRAY_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "grayWhite"
    .end annotation
.end field

.field public static final enum HIDDEN:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "hidden"
    .end annotation
.end field

.field public static final enum INV_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "invGray"
    .end annotation
.end field

.field public static final enum LT_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "ltGray"
    .end annotation
.end field

.field public static final enum WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "white"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 58
    new-instance v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v1, "CLR"

    const/4 v2, 0x0

    const-string v3, "clr"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->CLR:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 65
    new-instance v1, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    const-string v5, "auto"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->AUTO:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 72
    new-instance v3, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v5, "GRAY"

    const/4 v6, 0x2

    const-string v7, "gray"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 79
    new-instance v5, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v7, "LT_GRAY"

    const/4 v8, 0x3

    const-string v9, "ltGray"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->LT_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 86
    new-instance v7, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v9, "INV_GRAY"

    const/4 v10, 0x4

    const-string v11, "invGray"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->INV_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 93
    new-instance v9, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v11, "GRAY_WHITE"

    const/4 v12, 0x5

    const-string v13, "grayWhite"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->GRAY_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 100
    new-instance v11, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v13, "BLACK_GRAY"

    const/4 v14, 0x6

    const-string v15, "blackGray"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->BLACK_GRAY:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 107
    new-instance v13, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v15, "BLACK_WHITE"

    const/4 v14, 0x7

    const-string v12, "blackWhite"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->BLACK_WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 114
    new-instance v12, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v15, "BLACK"

    const/16 v14, 0x8

    const-string v10, "black"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->BLACK:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 121
    new-instance v10, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v15, "WHITE"

    const/16 v14, 0x9

    const-string/jumbo v8, "white"

    invoke-direct {v10, v15, v14, v8}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->WHITE:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 128
    new-instance v8, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    const-string v15, "HIDDEN"

    const/16 v14, 0xa

    const-string v6, "hidden"

    invoke-direct {v8, v15, v14, v6}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->HIDDEN:Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    .line 49
    const/16 v6, 0xb

    new-array v6, v6, [Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->value:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .line 141
    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->values()[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 142
    .local v3, "c":Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    return-object v3

    .line 141
    .end local v3    # "c":Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "arr$":[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STBlackWhiteMode;->value:Ljava/lang/String;

    return-object v0
.end method
