.class public Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;
.super Lorg/apache/poi/xslf/usermodel/DrawingTextBody;
.source "DrawingTextPlaceholder.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final placeholder:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;)V
    .locals 0
    .param p1, "textBody"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .param p2, "placeholder"    # Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/DrawingTextBody;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V

    .line 39
    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;->placeholder:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    .line 40
    return-void
.end method


# virtual methods
.method public getPlaceholderType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;->placeholder:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderTypeEnum()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;->placeholder:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getType()Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    return-object v0
.end method

.method public isPlaceholderCustom()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTextPlaceholder;->placeholder:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;->getHasCustomPrompt()Z

    move-result v0

    return v0
.end method
