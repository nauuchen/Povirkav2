.class public final enum Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
.super Ljava/lang/Enum;
.source "STSchemeColorVal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_SchemeColorVal"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

.field public static final enum ACCENT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent1"
    .end annotation
.end field

.field public static final enum ACCENT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent2"
    .end annotation
.end field

.field public static final enum ACCENT_3:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent3"
    .end annotation
.end field

.field public static final enum ACCENT_4:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent4"
    .end annotation
.end field

.field public static final enum ACCENT_5:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent5"
    .end annotation
.end field

.field public static final enum ACCENT_6:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "accent6"
    .end annotation
.end field

.field public static final enum BG_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "bg1"
    .end annotation
.end field

.field public static final enum BG_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "bg2"
    .end annotation
.end field

.field public static final enum DK_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "dk1"
    .end annotation
.end field

.field public static final enum DK_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "dk2"
    .end annotation
.end field

.field public static final enum FOL_HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "folHlink"
    .end annotation
.end field

.field public static final enum HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "hlink"
    .end annotation
.end field

.field public static final enum LT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lt1"
    .end annotation
.end field

.field public static final enum LT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lt2"
    .end annotation
.end field

.field public static final enum PH_CLR:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "phClr"
    .end annotation
.end field

.field public static final enum TX_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tx1"
    .end annotation
.end field

.field public static final enum TX_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tx2"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 64
    new-instance v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v1, "BG_1"

    const/4 v2, 0x0

    const-string v3, "bg1"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->BG_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 71
    new-instance v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v3, "TX_1"

    const/4 v4, 0x1

    const-string/jumbo v5, "tx1"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->TX_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 78
    new-instance v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v5, "BG_2"

    const/4 v6, 0x2

    const-string v7, "bg2"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->BG_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 85
    new-instance v5, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v7, "TX_2"

    const/4 v8, 0x3

    const-string/jumbo v9, "tx2"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->TX_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 92
    new-instance v7, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v9, "ACCENT_1"

    const/4 v10, 0x4

    const-string v11, "accent1"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 99
    new-instance v9, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v11, "ACCENT_2"

    const/4 v12, 0x5

    const-string v13, "accent2"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 106
    new-instance v11, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v13, "ACCENT_3"

    const/4 v14, 0x6

    const-string v15, "accent3"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_3:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 113
    new-instance v13, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "ACCENT_4"

    const/4 v14, 0x7

    const-string v12, "accent4"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_4:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 120
    new-instance v12, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "ACCENT_5"

    const/16 v14, 0x8

    const-string v10, "accent5"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_5:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 127
    new-instance v10, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "ACCENT_6"

    const/16 v14, 0x9

    const-string v8, "accent6"

    invoke-direct {v10, v15, v14, v8}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->ACCENT_6:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 134
    new-instance v8, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "HLINK"

    const/16 v14, 0xa

    const-string v6, "hlink"

    invoke-direct {v8, v15, v14, v6}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 141
    new-instance v6, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "FOL_HLINK"

    const/16 v14, 0xb

    const-string v4, "folHlink"

    invoke-direct {v6, v15, v14, v4}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->FOL_HLINK:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 148
    new-instance v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "PH_CLR"

    const/16 v14, 0xc

    const-string v2, "phClr"

    invoke-direct {v4, v15, v14, v2}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->PH_CLR:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 155
    new-instance v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "DK_1"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "dk1"

    invoke-direct {v2, v15, v14, v4}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->DK_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 162
    new-instance v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "LT_1"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "lt1"

    invoke-direct {v4, v15, v14, v2}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->LT_1:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 169
    new-instance v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "DK_2"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "dk2"

    invoke-direct {v2, v15, v14, v4}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->DK_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 176
    new-instance v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const-string v15, "LT_2"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "lt2"

    invoke-direct {v4, v15, v14, v2}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->LT_2:Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    .line 55
    const/16 v2, 0x11

    new-array v2, v2, [Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

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

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->value:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->values()[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 190
    .local v3, "c":Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    return-object v3

    .line 189
    .end local v3    # "c":Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "arr$":[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STSchemeColorVal;->value:Ljava/lang/String;

    return-object v0
.end method
