.class public Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;
.super Ljava/lang/Object;
.source "XWPFLatentStyles.java"


# instance fields
.field private latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

.field protected styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;)V
    .locals 1
    .param p1, "latentStyles"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V
    .locals 0
    .param p1, "latentStyles"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;
    .param p2, "styles"    # Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    .line 36
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    .line 37
    return-void
.end method


# virtual methods
.method public getNumberOfStyles()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->sizeOfLsdExceptionArray()I

    move-result v0

    return v0
.end method

.method protected isLatentStyle(Ljava/lang/String;)Z
    .locals 5
    .param p1, "latentStyleID"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFLatentStyles;->latentStyles:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;->getLsdExceptionArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 48
    .local v3, "lsd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const/4 v4, 0x1

    return v4

    .line 47
    .end local v3    # "lsd":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLsdException;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
