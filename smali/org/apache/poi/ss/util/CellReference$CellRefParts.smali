.class final Lorg/apache/poi/ss/util/CellReference$CellRefParts;
.super Ljava/lang/Object;
.source "CellReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/CellReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellRefParts"
.end annotation


# instance fields
.field final colRef:Ljava/lang/String;

.field final rowRef:Ljava/lang/String;

.field final sheetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowRef"    # Ljava/lang/String;
    .param p3, "colRef"    # Ljava/lang/String;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->sheetName:Ljava/lang/String;

    .line 374
    const-string v0, ""

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->rowRef:Ljava/lang/String;

    .line 375
    if-eqz p3, :cond_1

    move-object v0, p3

    :cond_1
    iput-object v0, p0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->colRef:Ljava/lang/String;

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/poi/ss/util/CellReference$1;

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/CellReference$CellRefParts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
