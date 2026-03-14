.class public Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
.super Ljava/lang/Object;
.source "FontGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontGroupRange"
.end annotation


# instance fields
.field private fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;

    .line 46
    iget-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    .param p1, "x1"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 46
    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p1
.end method

.method static synthetic access$112(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    .param p1, "x1"    # I

    .line 46
    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    return v0
.end method


# virtual methods
.method public getFontGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    return v0
.end method
