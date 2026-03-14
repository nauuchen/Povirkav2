.class public final enum Lorg/apache/poi/sl/draw/binding/STRectAlignment;
.super Ljava/lang/Enum;
.source "STRectAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STRectAlignment;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_RectAlignment"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

.field public static final enum B:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "b"
    .end annotation
.end field

.field public static final enum BL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "bl"
    .end annotation
.end field

.field public static final enum BR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "br"
    .end annotation
.end field

.field public static final enum CTR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "ctr"
    .end annotation
.end field

.field public static final enum L:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "l"
    .end annotation
.end field

.field public static final enum R:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "r"
    .end annotation
.end field

.field public static final enum T:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "t"
    .end annotation
.end field

.field public static final enum TL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tl"
    .end annotation
.end field

.field public static final enum TR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "tr"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v1, "TL"

    const/4 v2, 0x0

    const-string/jumbo v3, "tl"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->TL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 63
    new-instance v1, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v3, "T"

    const/4 v4, 0x1

    const-string v5, "t"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->T:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 70
    new-instance v3, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v5, "TR"

    const/4 v6, 0x2

    const-string/jumbo v7, "tr"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->TR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 77
    new-instance v5, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v7, "L"

    const/4 v8, 0x3

    const-string v9, "l"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->L:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 84
    new-instance v7, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v9, "CTR"

    const/4 v10, 0x4

    const-string v11, "ctr"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->CTR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 91
    new-instance v9, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v11, "R"

    const/4 v12, 0x5

    const-string v13, "r"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->R:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 98
    new-instance v11, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v13, "BL"

    const/4 v14, 0x6

    const-string v15, "bl"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->BL:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 105
    new-instance v13, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v15, "B"

    const/4 v14, 0x7

    const-string v12, "b"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->B:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 112
    new-instance v12, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    const-string v15, "BR"

    const/16 v14, 0x8

    const-string v10, "br"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->BR:Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    .line 47
    const/16 v10, 0x9

    new-array v10, v10, [Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->value:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .line 125
    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->values()[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 126
    .local v3, "c":Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    return-object v3

    .line 125
    .end local v3    # "c":Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "arr$":[Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STRectAlignment;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STRectAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STRectAlignment;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STRectAlignment;->value:Ljava/lang/String;

    return-object v0
.end method
