.class public final enum Lorg/apache/poi/sl/draw/binding/STPathFillMode;
.super Ljava/lang/Enum;
.source "STPathFillMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/binding/STPathFillMode;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlEnum;
.end annotation

.annotation runtime Ljavax/xml/bind/annotation/XmlType;
    name = "ST_PathFillMode"
    namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

.field public static final enum DARKEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "darken"
    .end annotation
.end field

.field public static final enum DARKEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "darkenLess"
    .end annotation
.end field

.field public static final enum LIGHTEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lighten"
    .end annotation
.end field

.field public static final enum LIGHTEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "lightenLess"
    .end annotation
.end field

.field public static final enum NONE:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "none"
    .end annotation
.end field

.field public static final enum NORM:Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .annotation runtime Ljavax/xml/bind/annotation/XmlEnumValue;
        value = "norm"
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 53
    new-instance v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->NONE:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    .line 60
    new-instance v1, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const-string v3, "NORM"

    const/4 v4, 0x1

    const-string v5, "norm"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->NORM:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    .line 67
    new-instance v3, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const-string v5, "LIGHTEN"

    const/4 v6, 0x2

    const-string v7, "lighten"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->LIGHTEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    .line 74
    new-instance v5, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const-string v7, "LIGHTEN_LESS"

    const/4 v8, 0x3

    const-string v9, "lightenLess"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->LIGHTEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    .line 81
    new-instance v7, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const-string v9, "DARKEN"

    const/4 v10, 0x4

    const-string v11, "darken"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->DARKEN:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    .line 88
    new-instance v9, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    const-string v11, "DARKEN_LESS"

    const/4 v12, 0x5

    const-string v13, "darkenLess"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->DARKEN_LESS:Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    .line 44
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

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

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->value:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 5
    .param p0, "v"    # Ljava/lang/String;

    .line 101
    invoke-static {}, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->values()[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 102
    .local v3, "c":Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    iget-object v4, v3, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    return-object v3

    .line 101
    .end local v3    # "c":Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "arr$":[Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/binding/STPathFillMode;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->$VALUES:[Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/binding/STPathFillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/binding/STPathFillMode;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/poi/sl/draw/binding/STPathFillMode;->value:Ljava/lang/String;

    return-object v0
.end method
