.class public Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
.super Ljava/lang/Object;
.source "DrawingTextBody.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final textBody:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
    .locals 0
    .param p1, "textBody"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;->textBody:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    .line 33
    return-void
.end method


# virtual methods
.method public getParagraphs()[Lorg/apache/poi/xslf/usermodel/DrawingParagraph;
    .locals 5

    .line 36
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;->textBody:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v0

    .line 37
    .local v0, "paragraphs":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/DrawingParagraph;

    .line 39
    .local v1, "o":[Lorg/apache/poi/xslf/usermodel/DrawingParagraph;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 40
    new-instance v3, Lorg/apache/poi/xslf/usermodel/DrawingParagraph;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/xslf/usermodel/DrawingParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    aput-object v3, v1, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
