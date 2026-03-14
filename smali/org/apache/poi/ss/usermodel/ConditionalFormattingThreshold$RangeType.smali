.class public final enum Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
.super Ljava/lang/Enum;
.source "ConditionalFormattingThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum PERCENT:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum PERCENTILE:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

.field public static final enum UNALLOCATED:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "num"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 34
    new-instance v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v4, "MIN"

    const/4 v5, 0x2

    const-string v6, "min"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 36
    new-instance v4, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v6, "MAX"

    const/4 v7, 0x3

    const-string v8, "max"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 38
    new-instance v6, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v8, "PERCENT"

    const/4 v9, 0x4

    const-string v10, "percent"

    invoke-direct {v6, v8, v7, v9, v10}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENT:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 40
    new-instance v8, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v10, "PERCENTILE"

    const/4 v11, 0x5

    const-string v12, "percentile"

    invoke-direct {v8, v10, v9, v11, v12}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->PERCENTILE:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 41
    new-instance v10, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v12, "UNALLOCATED"

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-direct {v10, v12, v11, v13, v14}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->UNALLOCATED:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 43
    new-instance v12, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    const-string v14, "FORMULA"

    const/4 v15, 0x7

    const-string v11, "formula"

    invoke-direct {v12, v14, v13, v15, v11}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    .line 30
    new-array v11, v15, [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    aput-object v12, v11, v13

    sput-object v11, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static byId(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 2
    .param p0, "id"    # I

    .line 55
    invoke-static {}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->values()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    move-result-object v0

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static byName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    invoke-static {}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->values()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 59
    .local v3, "t":Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    iget-object v4, v3, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 58
    .end local v3    # "t":Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->$VALUES:[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
