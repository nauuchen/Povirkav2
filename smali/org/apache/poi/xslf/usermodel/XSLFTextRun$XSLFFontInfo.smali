.class Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
.super Ljava/lang/Object;
.source "XSLFTextRun.java"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XSLFFontInfo"
.end annotation


# instance fields
.field private final fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 0
    .param p2, "fontGroup"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 644
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    if-eqz p2, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    .line 646
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
    .param p2, "x1"    # Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .param p3, "x2"    # Lorg/apache/poi/xslf/usermodel/XSLFTextRun$1;

    .line 641
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;
    .param p1, "x1"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .param p2, "x2"    # Z

    .line 641
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getCTTextFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    return-object v0
.end method

.method private getCTTextFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 8
    .param p1, "props"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .param p2, "create"    # Z

    .line 795
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 796
    return-object v0

    .line 800
    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {v2}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    .line 803
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 804
    .local v1, "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 805
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    .line 800
    .end local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :cond_1
    move-object v1, v0

    .line 821
    .restart local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 822
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 823
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSym()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    .line 800
    .end local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :cond_2
    move-object v1, v0

    .line 815
    .restart local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 816
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 817
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_0

    .line 800
    .end local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :cond_3
    move-object v1, v0

    .line 809
    .restart local v1    # "font":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 810
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 811
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 828
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 829
    return-object v0

    .line 832
    :cond_5
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetTypeface()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_6

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    .line 833
    .local v0, "typeface":Ljava/lang/String;
    :goto_1
    const-string v4, "+mj-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "+mn-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 835
    :cond_7
    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getParentShape()Lorg/apache/poi/xslf/usermodel/XSLFTextShape;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTextShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v5

    .line 836
    .local v5, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    invoke-virtual {v5}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFontScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;

    move-result-object v6

    .line 837
    .local v6, "fontTheme":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMajorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v4

    goto :goto_2

    :cond_8
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMinorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v4

    .line 841
    .local v4, "coll":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "fgStr":Ljava/lang/String;
    const-string v7, "ea"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 843
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getEa()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_3

    .line 844
    :cond_9
    const-string v7, "cs"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 845
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getCs()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    goto :goto_3

    .line 847
    :cond_a
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 851
    :goto_3
    if-eqz v1, :cond_b

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetTypeface()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 852
    :cond_b
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v1

    .line 856
    .end local v3    # "fgStr":Ljava/lang/String;
    .end local v4    # "coll":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;
    .end local v5    # "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    .end local v6    # "fontTheme":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;
    :cond_c
    return-object v1
.end method

.method private getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    .locals 2
    .param p1, "create"    # Z

    .line 774
    if-eqz p1, :cond_0

    .line 775
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getCTTextFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    return-object v0

    .line 778
    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;)Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->getIndentLevel()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;I)V

    .line 789
    .local v0, "visitor":Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;, "Lorg/apache/poi/xslf/model/CharacterPropertyFetcher<Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;>;"
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-static {v1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->access$300(Lorg/apache/poi/xslf/usermodel/XSLFTextRun;Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;)Z

    .line 791
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/CharacterPropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    return-object v1
.end method


# virtual methods
.method public copyFrom(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)V
    .locals 4
    .param p1, "fontInfo"    # Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 650
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setTypeface(Ljava/lang/String;)V

    .line 651
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V

    .line 652
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v1

    .line 653
    .local v1, "pitch":Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v2

    .line 654
    .local v2, "family":Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 655
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetPitchFamily()V

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V

    .line 660
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    .line 662
    :cond_1
    :goto_0
    return-void
.end method

.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 2

    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 720
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetCharset()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getCharset()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 2

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 738
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 2

    .line 756
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 757
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 2

    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 677
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetTypeface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 2
    .param p1, "charset"    # Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    .line 725
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 726
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-eqz p1, :cond_0

    .line 727
    invoke-virtual {p1}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getNativeId()I

    move-result v1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setCharset(B)V

    goto :goto_0

    .line 729
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetCharset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->unsetCharset()V

    .line 733
    :cond_1
    :goto_0
    return-void
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 3
    .param p1, "family"    # Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 743
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 744
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v1

    if-nez v1, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    .line 750
    .local v1, "pitch":Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    :goto_0
    if-eqz p1, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    :goto_1
    invoke-static {v1, v2}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result v2

    .line 751
    .local v2, "pitchFamily":B
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    .line 752
    return-void
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setIndex not supported by XSLFFontInfo."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 3
    .param p1, "pitch"    # Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    .line 762
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 763
    .local v0, "tf":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    if-nez p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->isSetPitchFamily()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getPitchFamily()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    .line 769
    .local v1, "family":Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    :goto_0
    if-eqz p1, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    :goto_1
    invoke-static {v2, v1}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B

    move-result v2

    .line 770
    .local v2, "pitchFamily":B
    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setPitchFamily(B)V

    .line 771
    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 4
    .param p1, "typeface"    # Ljava/lang/String;

    .line 682
    if-eqz p1, :cond_0

    .line 683
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->getXmlObject(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 684
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v0

    .line 688
    .local v0, "props":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    if-nez v0, :cond_1

    .line 689
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$XSLFFontInfo;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTextRun;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupFirst(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v1

    .line 692
    .local v1, "fg":Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextRun$11;->$SwitchMap$org$apache$poi$common$usermodel$fonts$FontGroup:[I

    invoke-virtual {v1}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 695
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 696
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetLatin()V

    goto :goto_0

    .line 710
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 711
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetSym()V

    goto :goto_0

    .line 705
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCs()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 706
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetCs()V

    goto :goto_0

    .line 700
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetEa()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 701
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->unsetEa()V

    .line 715
    :cond_5
    :goto_0
    return-void
.end method
