.class public Lorg/apache/poi/xdgf/usermodel/section/GenericSection;
.super Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.source "GenericSection.java"


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 0
    .param p1, "section"    # Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
    .param p2, "containingSheet"    # Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
    .locals 0
    .param p1, "section"    # Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    .line 32
    return-void
.end method
