.class public Lorg/apache/poi/sl/draw/DrawTextParagraph;
.super Ljava/lang/Object;
.source "DrawTextParagraph.java"

# interfaces
.implements Lorg/apache/poi/sl/draw/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;,
        Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

.field public static final HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected autoNbrIdx:I

.field protected bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

.field protected lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected maxLineHeight:D

.field protected paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;"
        }
    .end annotation
.end field

.field protected rawText:Ljava/lang/String;

.field x:D

.field y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 62
    const-class v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:Lorg/apache/poi/util/POILogger;

    .line 65
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    const-string v1, "href"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    .line 66
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    const-string v1, "label"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/TextParagraph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/TextParagraph<",
            "***>;)V"
        }
    .end annotation

    .line 106
    .local p1, "paragraph":Lorg/apache/poi/sl/usermodel/TextParagraph;, "Lorg/apache/poi/sl/usermodel/TextParagraph<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    .line 107
    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    .line 108
    return-void
.end method

.method private getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PlaceableShape<",
            "**>;"
        }
    .end annotation

    .line 541
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph$1;-><init>(Lorg/apache/poi/sl/draw/DrawTextParagraph;)V

    return-object v0
.end method

.method private static nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I
    .locals 3
    .param p0, "fontMapped"    # Ljava/awt/Font;
    .param p1, "runText"    # Ljava/lang/String;
    .param p2, "beginPart"    # I
    .param p3, "endPart"    # I
    .param p4, "isDisplayed"    # Z

    .line 720
    move v0, p2

    .line 721
    .local v0, "rIdx":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 722
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 723
    .local v1, "codepoint":I
    invoke-virtual {p0, v1}, Ljava/awt/Font;->canDisplay(I)Z

    move-result v2

    if-eq v2, p4, :cond_0

    .line 724
    goto :goto_1

    .line 726
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 727
    .end local v1    # "codepoint":I
    goto :goto_0

    .line 728
    :cond_1
    :goto_1
    return v0
.end method

.method private processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V
    .locals 26
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "dfm"    # Lorg/apache/poi/sl/draw/DrawFontManager;
    .param p4, "beginIndex"    # I
    .param p5, "run"    # Lorg/apache/poi/sl/usermodel/TextRun;
    .param p6, "runText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/Graphics2D;",
            "Lorg/apache/poi/sl/draw/DrawFontManager;",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;",
            ">;I",
            "Lorg/apache/poi/sl/usermodel/TextRun;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 660
    .local p3, "attList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {p6 .. p6}, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->getFontGroupRanges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 661
    .local v12, "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    const/4 v0, 0x0

    .line 662
    .local v0, "rangeBegin":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    .end local v0    # "rangeBegin":I
    .local v13, "i$":Ljava/util/Iterator;
    .local v14, "rangeBegin":I
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;

    .line 663
    .local v15, "ttr":Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    invoke-virtual {v15}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->getFontGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    move-result-object v0

    invoke-interface {v10, v0}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    .line 664
    .local v0, "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    if-nez v0, :cond_0

    .line 666
    sget-object v1, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-interface {v10, v1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 664
    :cond_0
    move-object v6, v0

    .line 668
    .end local v0    # "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .local v6, "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    :goto_1
    invoke-interface {v8, v7, v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    .line 669
    .local v0, "fiMapped":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    invoke-interface {v8, v7, v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v16

    .line 670
    .local v16, "fiFallback":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    if-eqz v16, :cond_7

    .line 671
    if-nez v0, :cond_1

    .line 672
    new-instance v1, Lorg/apache/poi/sl/draw/DrawFontInfo;

    move-object/from16 v5, p0

    iget-object v2, v5, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v7, v1}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v0

    goto :goto_2

    .line 671
    :cond_1
    move-object/from16 v5, p0

    .line 674
    :goto_2
    if-nez v0, :cond_2

    .line 675
    move-object/from16 v0, v16

    move-object/from16 v17, v0

    goto :goto_3

    .line 674
    :cond_2
    move-object/from16 v17, v0

    .line 678
    .end local v0    # "fiMapped":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .local v17, "fiMapped":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    :goto_3
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v18

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v19

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v5, v18

    move-object/from16 v18, v6

    .end local v6    # "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .local v18, "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    move/from16 v6, v19

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;

    move-result-object v6

    .line 679
    .local v6, "fontMapped":Ljava/awt/Font;
    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v5

    invoke-interface/range {p5 .. p5}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v19

    move-object/from16 v2, v16

    move-object v7, v6

    .end local v6    # "fontMapped":Ljava/awt/Font;
    .local v7, "fontMapped":Ljava/awt/Font;
    move/from16 v6, v19

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;

    move-result-object v0

    .line 682
    .local v0, "fontFallback":Ljava/awt/Font;
    invoke-virtual {v15}, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->getLength()I

    move-result v1

    .line 683
    .local v1, "rangeLen":I
    move v2, v14

    .line 684
    .local v2, "partEnd":I
    :goto_4
    add-int v3, v14, v1

    if-ge v2, v3, :cond_6

    .line 686
    move v3, v2

    .line 687
    .local v3, "partBegin":I
    add-int v4, v14, v1

    const/4 v5, 0x1

    invoke-static {v7, v11, v3, v4, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I

    move-result v2

    .line 694
    const-string v6, " - "

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x2

    const-string v24, " "

    if-ge v3, v2, :cond_3

    .line 696
    new-instance v4, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v5, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    add-int v10, p4, v3

    move-object/from16 v25, v12

    .end local v12    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .local v25, "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    add-int v12, p4, v2

    invoke-direct {v4, v5, v8, v10, v12}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v4, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 698
    const/16 v8, 0x8

    new-array v10, v8, [Ljava/lang/Object;

    const-string v8, "mapped: "

    const/4 v12, 0x0

    aput-object v8, v10, v12

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v5

    aput-object v24, v10, v23

    add-int v5, p4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v22

    aput-object v24, v10, v21

    add-int v5, p4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v20

    aput-object v6, v10, v19

    add-int v5, p4, v3

    add-int v8, p4, v2

    invoke-virtual {v11, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x7

    aput-object v5, v10, v8

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_5

    .line 694
    .end local v25    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .restart local v12    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    :cond_3
    move-object/from16 v25, v12

    .line 703
    .end local v12    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .restart local v25    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    :cond_4
    :goto_5
    move v3, v2

    .line 704
    add-int v4, v14, v1

    const/4 v5, 0x0

    invoke-static {v7, v11, v3, v4, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->nextPart(Ljava/awt/Font;Ljava/lang/String;IIZ)I

    move-result v2

    .line 706
    if-ge v3, v2, :cond_5

    .line 708
    new-instance v4, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v5, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    add-int v10, p4, v3

    add-int v12, p4, v2

    invoke-direct {v4, v5, v8, v10, v12}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v4, Lorg/apache/poi/sl/draw/DrawTextParagraph;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 710
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v10, "fallback: "

    const/4 v12, 0x0

    aput-object v10, v8, v12

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v5

    aput-object v24, v8, v23

    add-int v5, p4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v22

    aput-object v24, v8, v21

    add-int v5, p4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v20

    aput-object v6, v8, v19

    add-int v5, p4, v3

    add-int v6, p4, v2

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v8, v6

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 713
    .end local v3    # "partBegin":I
    :cond_5
    move-object/from16 v8, p2

    move-object/from16 v10, p5

    move-object/from16 v12, v25

    goto/16 :goto_4

    .line 715
    .end local v25    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .restart local v12    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    :cond_6
    move-object/from16 v25, v12

    .end local v12    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .restart local v25    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    add-int/2addr v14, v1

    .line 716
    .end local v0    # "fontFallback":Ljava/awt/Font;
    .end local v1    # "rangeLen":I
    .end local v2    # "partEnd":I
    .end local v7    # "fontMapped":Ljava/awt/Font;
    .end local v15    # "ttr":Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    .end local v16    # "fiFallback":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .end local v17    # "fiMapped":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .end local v18    # "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    goto/16 :goto_0

    .line 670
    .end local v25    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .local v0, "fiMapped":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .local v6, "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .restart local v12    # "ttrList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;>;"
    .restart local v15    # "ttr":Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    .restart local v16    # "fiFallback":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 717
    .end local v0    # "fiMapped":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .end local v6    # "fiRun":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "ttr":Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
    .end local v16    # "fiFallback":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    :cond_8
    return-void
.end method

.method private tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 11
    .param p1, "tr"    # Lorg/apache/poi/sl/usermodel/TextRun;

    .line 415
    new-instance v0, Ljava/text/AttributedString;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "string":Ljava/text/AttributedString;
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "fontFamily":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 418
    const-string v1, "Lucida Sans"

    .line 420
    :cond_0
    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, v2, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 422
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v2

    .line 423
    .local v2, "fs":Ljava/lang/Double;
    if-nez v2, :cond_1

    .line 424
    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 426
    :cond_1
    sget-object v3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 428
    new-instance v3, Ljava/awt/font/TextLayout;

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    new-instance v5, Ljava/awt/font/FontRenderContext;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7, v7}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;ZZ)V

    invoke-direct {v3, v4, v5}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 429
    .local v3, "l":Ljava/awt/font/TextLayout;
    invoke-virtual {v3}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v4

    float-to-double v4, v4

    .line 431
    .local v4, "wspace":D
    iget-object v6, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultTabSize()Ljava/lang/Double;

    move-result-object v6

    .line 432
    .local v6, "tabSz":Ljava/lang/Double;
    if-nez v6, :cond_2

    .line 433
    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    mul-double v7, v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 436
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    div-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 437
    .local v7, "numSpaces":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v8, "buf":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 439
    const/16 v10, 0x20

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 441
    .end local v9    # "i":I
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public applyTransform(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 242
    return-void
.end method

.method protected breakText(Ljava/awt/Graphics2D;)V
    .locals 20
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 256
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v2

    .line 257
    .local v2, "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v2, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v3, "text":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getAttributedString(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/text/AttributedString;

    move-result-object v4

    .line 260
    .local v4, "at":Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 262
    .local v5, "emptyParagraph":Z
    invoke-virtual {v4}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    .line 263
    .local v6, "it":Ljava/text/AttributedCharacterIterator;
    new-instance v7, Ljava/awt/font/LineBreakMeasurer;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 265
    .local v7, "measurer":Ljava/awt/font/LineBreakMeasurer;
    :goto_0
    invoke-virtual {v7}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v8

    .line 268
    .local v8, "startIndex":I
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    invoke-virtual {v0, v9, v1}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getWrappingWidth(ZLjava/awt/Graphics2D;)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v11

    .line 270
    .local v9, "wrappingWidth":D
    const-wide/16 v11, 0x0

    cmpg-double v13, v9, v11

    if-gez v13, :cond_0

    .line 271
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 274
    :cond_0
    add-int/lit8 v11, v8, 0x1

    const-string v12, "\n"

    invoke-virtual {v3, v12, v11}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 275
    .local v11, "nextBreak":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 276
    invoke-interface {v6}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v11

    .line 279
    :cond_1
    double-to-float v12, v9

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v11, v13}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v12

    .line 280
    .local v12, "layout":Ljava/awt/font/TextLayout;
    if-nez v12, :cond_2

    .line 283
    double-to-float v13, v9

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v11, v14}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v12

    .line 286
    :cond_2
    if-nez v12, :cond_3

    .line 288
    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    goto :goto_2

    .line 291
    :cond_3
    invoke-virtual {v7}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v13

    .line 293
    .local v13, "endIndex":I
    invoke-interface {v6}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    .line 294
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v7, v14}, Ljava/awt/font/LineBreakMeasurer;->setPosition(I)V

    .line 297
    :cond_4
    iget-object v14, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v14

    .line 298
    .local v14, "hAlign":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    sget-object v15, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-eq v14, v15, :cond_5

    sget-object v15, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    if-ne v14, v15, :cond_6

    .line 299
    :cond_5
    double-to-float v15, v9

    invoke-virtual {v12, v15}, Ljava/awt/font/TextLayout;->getJustifiedLayout(F)Ljava/awt/font/TextLayout;

    move-result-object v12

    .line 302
    :cond_6
    if-eqz v5, :cond_7

    const/4 v15, 0x0

    goto :goto_1

    :cond_7
    new-instance v15, Ljava/text/AttributedString;

    invoke-direct {v15, v6, v8, v13}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II)V

    .line 305
    .local v15, "str":Ljava/text/AttributedString;
    :goto_1
    invoke-virtual {v2, v12, v15}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v1

    .line 306
    .local v1, "line":Lorg/apache/poi/sl/draw/DrawTextFragment;
    move-object/from16 v16, v2

    .end local v2    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .local v16, "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    move-object v2, v4

    move/from16 v17, v5

    .end local v4    # "at":Ljava/text/AttributedString;
    .end local v5    # "emptyParagraph":Z
    .local v2, "at":Ljava/text/AttributedString;
    .local v17, "emptyParagraph":Z
    iget-wide v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->maxLineHeight:D

    move-object/from16 v18, v2

    .end local v2    # "at":Ljava/text/AttributedString;
    .local v18, "at":Ljava/text/AttributedString;
    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v2

    move-object/from16 v19, v1

    .end local v1    # "line":Lorg/apache/poi/sl/draw/DrawTextFragment;
    .local v19, "line":Lorg/apache/poi/sl/draw/DrawTextFragment;
    float-to-double v1, v2

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->maxLineHeight:D

    .line 310
    invoke-interface {v6}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v1

    if-ne v13, v1, :cond_8

    .line 311
    nop

    .line 315
    .end local v8    # "startIndex":I
    .end local v9    # "wrappingWidth":D
    .end local v11    # "nextBreak":I
    .end local v12    # "layout":Ljava/awt/font/TextLayout;
    .end local v13    # "endIndex":I
    .end local v14    # "hAlign":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .end local v15    # "str":Ljava/text/AttributedString;
    .end local v19    # "line":Lorg/apache/poi/sl/draw/DrawTextFragment;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    .line 316
    return-void

    .line 313
    :cond_8
    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v5, v17

    move-object/from16 v4, v18

    goto/16 :goto_0
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 25
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    return-void

    .line 134
    :cond_0
    iget-wide v2, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    .line 136
    .local v2, "penY":D
    const/4 v4, 0x1

    .line 137
    .local v4, "firstLine":Z
    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    move-result v5

    .line 138
    .local v5, "indentLevel":I
    iget-object v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v6

    .line 139
    .local v6, "leftMargin":Ljava/lang/Double;
    const-wide/32 v7, 0x54e0f

    if-nez v6, :cond_1

    .line 141
    int-to-long v9, v5

    mul-long v9, v9, v7

    invoke-static {v9, v10}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 143
    :cond_1
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v9

    .line 144
    .local v9, "indent":Ljava/lang/Double;
    if-nez v9, :cond_2

    .line 145
    int-to-long v10, v5

    mul-long v10, v10, v7

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 147
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 158
    :cond_3
    iget-object v7, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLineSpacing()Ljava/lang/Double;

    move-result-object v7

    .line 159
    .local v7, "spacing":Ljava/lang/Double;
    if-nez v7, :cond_4

    .line 160
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 163
    :cond_4
    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/sl/draw/DrawTextFragment;

    .line 166
    .local v10, "line":Lorg/apache/poi/sl/draw/DrawTextFragment;
    if-eqz v4, :cond_7

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isEmptyParagraph()Z

    move-result v11

    if-nez v11, :cond_5

    .line 169
    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getAttributedString()Ljava/text/AttributedString;

    move-result-object v11

    invoke-virtual {v11}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    .line 172
    :cond_5
    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v11, :cond_6

    .line 173
    iget-wide v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v11, v12, v13, v2, v3}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    .line 174
    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v11, v1}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    .line 176
    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v11}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLayout()Ljava/awt/font/TextLayout;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    float-to-double v11, v11

    .line 177
    .local v11, "bulletWidth":D
    iget-wide v13, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    move/from16 v16, v4

    move v15, v5

    .end local v4    # "firstLine":Z
    .end local v5    # "indentLevel":I
    .local v15, "indentLevel":I
    .local v16, "firstLine":Z
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    add-double v17, v17, v19

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "indent":Ljava/lang/Double;
    .local v19, "indent":Ljava/lang/Double;
    .local v20, "i$":Ljava/util/Iterator;
    add-double v8, v17, v11

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    add-double/2addr v13, v4

    .line 178
    .end local v11    # "bulletWidth":D
    .local v13, "penX":D
    goto :goto_1

    .line 179
    .end local v13    # "penX":D
    .end local v15    # "indentLevel":I
    .end local v16    # "firstLine":Z
    .end local v19    # "indent":Ljava/lang/Double;
    .end local v20    # "i$":Ljava/util/Iterator;
    .restart local v4    # "firstLine":Z
    .restart local v5    # "indentLevel":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "indent":Ljava/lang/Double;
    :cond_6
    move/from16 v16, v4

    move v15, v5

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .end local v4    # "firstLine":Z
    .end local v5    # "indentLevel":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "indent":Ljava/lang/Double;
    .restart local v15    # "indentLevel":I
    .restart local v16    # "firstLine":Z
    .restart local v19    # "indent":Ljava/lang/Double;
    .restart local v20    # "i$":Ljava/util/Iterator;
    iget-wide v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double v13, v4, v8

    .restart local v13    # "penX":D
    goto :goto_1

    .line 182
    .end local v13    # "penX":D
    .end local v15    # "indentLevel":I
    .end local v16    # "firstLine":Z
    .end local v19    # "indent":Ljava/lang/Double;
    .end local v20    # "i$":Ljava/util/Iterator;
    .restart local v4    # "firstLine":Z
    .restart local v5    # "indentLevel":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "indent":Ljava/lang/Double;
    :cond_7
    move/from16 v16, v4

    move v15, v5

    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .end local v4    # "firstLine":Z
    .end local v5    # "indentLevel":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "indent":Ljava/lang/Double;
    .restart local v15    # "indentLevel":I
    .restart local v16    # "firstLine":Z
    .restart local v19    # "indent":Ljava/lang/Double;
    .restart local v20    # "i$":Ljava/util/Iterator;
    iget-wide v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double v13, v4, v8

    .line 185
    .restart local v13    # "penX":D
    :goto_1
    iget-object v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v4

    .line 188
    .local v4, "anchor":Ljava/awt/geom/Rectangle2D;
    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v5

    .line 189
    .local v5, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    iget-wide v8, v5, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    .line 190
    .local v8, "leftInset":D
    iget-wide v11, v5, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    .line 192
    .local v11, "rightInset":D
    move-object/from16 v17, v5

    .end local v5    # "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    .local v17, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    iget-object v5, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    move-result-object v5

    .line 193
    .local v5, "ta":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    if-nez v5, :cond_8

    .line 194
    sget-object v5, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    .line 196
    :cond_8
    sget-object v18, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign:[I

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->ordinal()I

    move-result v21

    move-object/from16 v22, v5

    .end local v5    # "ta":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .local v22, "ta":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    aget v5, v18, v21

    move/from16 v18, v15

    .end local v15    # "indentLevel":I
    .local v18, "indentLevel":I
    const/4 v15, 0x1

    if-eq v5, v15, :cond_a

    const/4 v15, 0x2

    if-eq v5, v15, :cond_9

    move-object v15, v4

    goto :goto_2

    .line 201
    :cond_9
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v23

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result v5

    float-to-double v0, v5

    sub-double v23, v23, v0

    sub-double v23, v23, v8

    sub-double v23, v23, v11

    add-double v13, v13, v23

    .line 202
    move-object v15, v4

    goto :goto_2

    .line 198
    :cond_a
    invoke-virtual {v4}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getWidth()F

    move-result v5

    move-object v15, v4

    .end local v4    # "anchor":Ljava/awt/geom/Rectangle2D;
    .local v15, "anchor":Ljava/awt/geom/Rectangle2D;
    float-to-double v4, v5

    sub-double/2addr v0, v4

    sub-double/2addr v0, v8

    sub-double/2addr v0, v11

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    add-double/2addr v13, v0

    .line 199
    nop

    .line 207
    :goto_2
    invoke-virtual {v10, v13, v14, v2, v3}, Lorg/apache/poi/sl/draw/DrawTextFragment;->setPosition(DD)V

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->draw(Ljava/awt/Graphics2D;)V

    .line 210
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v23, 0x0

    cmpl-double v1, v4, v23

    if-lez v1, :cond_b

    .line 212
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v23, 0x3f847ae147ae147bL    # 0.01

    mul-double v4, v4, v23

    invoke-virtual {v10}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v1

    float-to-double v0, v1

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    goto :goto_3

    .line 215
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v2, v0

    .line 218
    :goto_3
    const/4 v4, 0x0

    .line 219
    .end local v8    # "leftInset":D
    .end local v10    # "line":Lorg/apache/poi/sl/draw/DrawTextFragment;
    .end local v11    # "rightInset":D
    .end local v13    # "penX":D
    .end local v15    # "anchor":Ljava/awt/geom/Rectangle2D;
    .end local v16    # "firstLine":Z
    .end local v17    # "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    .end local v22    # "ta":Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .local v4, "firstLine":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v18

    move-object/from16 v9, v19

    move-object/from16 v8, v20

    goto/16 :goto_0

    .line 163
    .end local v18    # "indentLevel":I
    .end local v19    # "indent":Ljava/lang/Double;
    .end local v20    # "i$":Ljava/util/Iterator;
    .local v5, "indentLevel":I
    .local v8, "i$":Ljava/util/Iterator;
    .restart local v9    # "indent":Ljava/lang/Double;
    :cond_c
    move/from16 v16, v4

    .line 221
    .end local v4    # "firstLine":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v16    # "firstLine":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    sub-double v4, v2, v4

    iput-wide v4, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    .line 222
    return-void
.end method

.method public drawContent(Ljava/awt/Graphics2D;)V
    .locals 0
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 246
    return-void
.end method

.method protected getAttributedString(Ljava/awt/Graphics2D;Ljava/lang/StringBuilder;)Ljava/text/AttributedString;
    .locals 22
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .line 566
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 567
    .local v9, "attList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;>;"
    if-nez p2, :cond_0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .end local p2    # "text":Ljava/lang/StringBuilder;
    .local v0, "text":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 567
    .end local v0    # "text":Ljava/lang/StringBuilder;
    .restart local p2    # "text":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v10, p2

    .line 571
    .end local p2    # "text":Ljava/lang/StringBuilder;
    .local v10, "text":Ljava/lang/StringBuilder;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v11

    .line 572
    .local v11, "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v12

    .line 573
    .local v12, "dfm":Lorg/apache/poi/sl/draw/DrawFontManager;
    if-eqz v12, :cond_d

    .line 575
    iget-object v0, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/apache/poi/sl/usermodel/TextRun;

    .line 576
    .local v14, "run":Lorg/apache/poi/sl/usermodel/TextRun;
    invoke-virtual {v7, v8, v14}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getRenderableText(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "runText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    goto :goto_1

    .line 584
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v1

    invoke-interface {v12, v8, v1, v0}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 585
    .end local v0    # "runText":Ljava/lang/String;
    .local v15, "runText":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 586
    .local v6, "beginIndex":I
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 589
    .local v5, "endIndex":I
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v4

    .line 590
    .local v4, "fgPaintStyle":Lorg/apache/poi/sl/usermodel/PaintStyle;
    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v0, v11}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v0, v8, v4}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v3

    .line 591
    .local v3, "fgPaint":Ljava/awt/Paint;
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-direct {v0, v1, v3, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->getFontSize()Ljava/lang/Double;

    move-result-object v0

    .line 594
    .local v0, "fontSz":Ljava/lang/Double;
    if-nez v0, :cond_2

    .line 595
    iget-object v1, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    .line 594
    :cond_2
    move-object/from16 v16, v0

    .line 597
    .end local v0    # "fontSz":Ljava/lang/Double;
    .local v16, "fontSz":Ljava/lang/Double;
    :goto_2
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->isBold()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->WEIGHT_BOLD:Ljava/lang/Float;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_3
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->POSTURE_OBLIQUE:Ljava/lang/Float;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_4
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->isUnderlined()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->UNDERLINE_LOW_TWO_PIXEL:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->isStrikethrough()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 610
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->STRIKETHROUGH_ON:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_6
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->isSubscript()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 613
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUB:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_7
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->isSuperscript()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 616
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    sget-object v2, Ljava/awt/font/TextAttribute;->SUPERSCRIPT_SUPER:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_8
    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/TextRun;->getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;

    move-result-object v17

    .line 620
    .local v17, "hl":Lorg/apache/poi/sl/usermodel/Hyperlink;, "Lorg/apache/poi/sl/usermodel/Hyperlink<**>;"
    if-eqz v17, :cond_9

    .line 621
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/sl/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v0, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v1, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/sl/usermodel/Hyperlink;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v18, v3

    .end local v3    # "fgPaint":Ljava/awt/Paint;
    .local v18, "fgPaint":Ljava/awt/Paint;
    move-object v3, v9

    move-object/from16 v19, v4

    .end local v4    # "fgPaintStyle":Lorg/apache/poi/sl/usermodel/PaintStyle;
    .local v19, "fgPaintStyle":Lorg/apache/poi/sl/usermodel/PaintStyle;
    move v4, v6

    move/from16 v20, v5

    .end local v5    # "endIndex":I
    .local v20, "endIndex":I
    move-object v5, v14

    move/from16 v21, v6

    .end local v6    # "beginIndex":I
    .local v21, "beginIndex":I
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->processGlyphs(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/draw/DrawFontManager;Ljava/util/List;ILorg/apache/poi/sl/usermodel/TextRun;Ljava/lang/String;)V

    .line 626
    .end local v14    # "run":Lorg/apache/poi/sl/usermodel/TextRun;
    .end local v15    # "runText":Ljava/lang/String;
    .end local v16    # "fontSz":Ljava/lang/Double;
    .end local v17    # "hl":Lorg/apache/poi/sl/usermodel/Hyperlink;, "Lorg/apache/poi/sl/usermodel/Hyperlink<**>;"
    .end local v18    # "fgPaint":Ljava/awt/Paint;
    .end local v19    # "fgPaintStyle":Lorg/apache/poi/sl/usermodel/PaintStyle;
    .end local v20    # "endIndex":I
    .end local v21    # "beginIndex":I
    goto/16 :goto_1

    .line 630
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 631
    iget-object v0, v7, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontSize()Ljava/lang/Double;

    move-result-object v0

    .line 632
    .restart local v0    # "fontSz":Ljava/lang/Double;
    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    new-instance v1, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    sget-object v2, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v0    # "fontSz":Ljava/lang/Double;
    :cond_b
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, "string":Ljava/text/AttributedString;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;

    .line 638
    .local v2, "asd":Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;
    iget-object v3, v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v4, v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iget v5, v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->beginIndex:I

    iget v6, v2, Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;->endIndex:I

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .end local v2    # "asd":Lorg/apache/poi/sl/draw/DrawTextParagraph$AttributedStringData;
    goto :goto_3

    .line 641
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_c
    return-object v0

    .line 573
    .end local v0    # "string":Ljava/text/AttributedString;
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected getBullet(Ljava/awt/Graphics2D;Ljava/text/AttributedCharacterIterator;)Lorg/apache/poi/sl/draw/DrawTextFragment;
    .locals 17
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "firstLineAttr"    # Ljava/text/AttributedCharacterIterator;

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;

    move-result-object v3

    .line 320
    .local v3, "bulletStyle":Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 321
    return-object v4

    .line 325
    :cond_0
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v5

    .line 326
    .local v5, "ans":Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    if-eqz v5, :cond_1

    .line 327
    iget v6, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    invoke-virtual {v5, v6}, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;->format(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "buCharacter":Ljava/lang/String;
    goto :goto_0

    .line 329
    .end local v6    # "buCharacter":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletCharacter()Ljava/lang/String;

    move-result-object v6

    .line 331
    .restart local v6    # "buCharacter":Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_2

    .line 332
    return-object v4

    .line 335
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->getParagraphShape()Lorg/apache/poi/sl/usermodel/PlaceableShape;

    move-result-object v4

    .line 336
    .local v4, "ps":Lorg/apache/poi/sl/usermodel/PlaceableShape;, "Lorg/apache/poi/sl/usermodel/PlaceableShape<**>;"
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v7

    .line 338
    .local v7, "fgPaintStyle":Lorg/apache/poi/sl/usermodel/PaintStyle;
    if-nez v7, :cond_3

    .line 339
    sget-object v8, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-interface {v2, v8}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/awt/Paint;

    .local v8, "fgPaint":Ljava/awt/Paint;
    goto :goto_1

    .line 341
    .end local v8    # "fgPaint":Ljava/awt/Paint;
    :cond_3
    new-instance v8, Lorg/apache/poi/sl/draw/DrawPaint;

    invoke-direct {v8, v4}, Lorg/apache/poi/sl/draw/DrawPaint;-><init>(Lorg/apache/poi/sl/usermodel/PlaceableShape;)V

    invoke-virtual {v8, v1, v7}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Ljava/awt/Paint;

    move-result-object v8

    .line 344
    .restart local v8    # "fgPaint":Ljava/awt/Paint;
    :goto_1
    sget-object v9, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-interface {v2, v9}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 345
    .local v9, "fontSize":F
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFontSize()Ljava/lang/Double;

    move-result-object v10

    .line 346
    .local v10, "buSz":Ljava/lang/Double;
    if-nez v10, :cond_4

    .line 347
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 349
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-lez v15, :cond_5

    .line 350
    float-to-double v11, v9

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    mul-double v13, v13, v15

    mul-double v11, v11, v13

    double-to-float v9, v11

    goto :goto_2

    .line 352
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v9, v11

    .line 355
    :goto_2
    invoke-interface {v3}, Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;->getBulletFont()Ljava/lang/String;

    move-result-object v11

    .line 356
    .local v11, "buFontStr":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 357
    iget-object v12, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v12}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object v11

    .line 359
    :cond_6
    if-eqz v11, :cond_7

    .line 360
    new-instance v12, Lorg/apache/poi/sl/draw/DrawFontInfo;

    invoke-direct {v12, v11}, Lorg/apache/poi/sl/draw/DrawFontInfo;-><init>(Ljava/lang/String;)V

    .line 363
    .local v12, "buFont":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v13

    invoke-virtual {v13, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getFontManager(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFontManager;

    move-result-object v13

    .line 365
    .local v13, "dfm":Lorg/apache/poi/sl/draw/DrawFontManager;
    invoke-interface {v13, v1, v12}, Lorg/apache/poi/sl/draw/DrawFontManager;->getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;

    move-result-object v12

    .line 367
    new-instance v14, Ljava/text/AttributedString;

    invoke-interface {v13, v1, v12, v6}, Lorg/apache/poi/sl/draw/DrawFontManager;->mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 368
    .local v14, "str":Ljava/text/AttributedString;
    sget-object v15, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    invoke-virtual {v14, v15, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 369
    sget-object v15, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {v12}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 370
    sget-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 372
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {v14}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 373
    .local v0, "layout":Ljava/awt/font/TextLayout;
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v1

    .line 374
    .local v1, "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    invoke-virtual {v1, v0, v14}, Lorg/apache/poi/sl/draw/DrawFactory;->getTextFragment(Ljava/awt/font/TextLayout;Ljava/text/AttributedString;)Lorg/apache/poi/sl/draw/DrawTextFragment;

    move-result-object v15

    return-object v15

    .line 359
    .end local v0    # "layout":Ljava/awt/font/TextLayout;
    .end local v1    # "fact":Lorg/apache/poi/sl/draw/DrawFactory;
    .end local v12    # "buFont":Lorg/apache/poi/common/usermodel/fonts/FontInfo;
    .end local v13    # "dfm":Lorg/apache/poi/sl/draw/DrawFontManager;
    .end local v14    # "str":Ljava/text/AttributedString;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFirstLineHeight()F
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getFirstLineLeading()F
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getLeading()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getLastLineHeight()F
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/DrawTextFragment;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/DrawTextFragment;->getHeight()F

    move-result v0

    :goto_0
    return v0
.end method

.method protected getRenderableText(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;
    .locals 9
    .param p1, "graphics"    # Ljava/awt/Graphics2D;
    .param p2, "tr"    # Lorg/apache/poi/sl/usermodel/TextRun;

    .line 378
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->SLIDE_NUMBER:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    if-ne v0, v1, :cond_1

    .line 379
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/Slide;

    .line 380
    .local v0, "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Slide;->getSlideNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 382
    .end local v0    # "slide":Lorg/apache/poi/sl/usermodel/Slide;, "Lorg/apache/poi/sl/usermodel/Slide<**>;"
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getTextCap()Lorg/apache/poi/sl/usermodel/TextRun$TextCap;

    move-result-object v1

    .line 384
    .local v1, "cap":Lorg/apache/poi/sl/usermodel/TextRun$TextCap;
    const/4 v2, 0x0

    .line 385
    .local v2, "tabs":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/poi/sl/usermodel/TextRun;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .local v3, "arr$":[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_7

    aget-char v6, v3, v5

    .line 386
    .local v6, "c":C
    const/16 v7, 0x9

    if-eq v6, v7, :cond_5

    const/16 v7, 0xb

    if-eq v6, v7, :cond_4

    .line 397
    sget-object v7, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap:[I

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/TextRun$TextCap;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    goto :goto_2

    .line 399
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    goto :goto_2

    .line 398
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 403
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 394
    :cond_4
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    goto :goto_3

    .line 388
    :cond_5
    if-nez v2, :cond_6

    .line 389
    invoke-direct {p0, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->tab2space(Lorg/apache/poi/sl/usermodel/TextRun;)Ljava/lang/String;

    move-result-object v2

    .line 391
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    nop

    .line 385
    .end local v6    # "c":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 408
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getWrappingWidth(ZLjava/awt/Graphics2D;)D
    .locals 23
    .param p1, "firstLine"    # Z
    .param p2, "graphics"    # Ljava/awt/Graphics2D;

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v1

    .line 456
    .local v1, "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getInsets()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v2

    .line 457
    .local v2, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    iget-wide v3, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    .line 458
    .local v3, "leftInset":D
    iget-wide v5, v2, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    .line 460
    .local v5, "rightInset":D
    iget-object v7, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v7}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndentLevel()I

    move-result v7

    .line 461
    .local v7, "indentLevel":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 463
    const/4 v7, 0x0

    .line 465
    :cond_0
    iget-object v8, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v8}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getLeftMargin()Ljava/lang/Double;

    move-result-object v8

    .line 466
    .local v8, "leftMargin":Ljava/lang/Double;
    const-wide/32 v9, 0x54e0f

    if-nez v8, :cond_1

    .line 468
    add-int/lit8 v11, v7, 0x1

    int-to-long v11, v11

    mul-long v11, v11, v9

    invoke-static {v11, v12}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 470
    :cond_1
    iget-object v11, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v11}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getIndent()Ljava/lang/Double;

    move-result-object v11

    .line 471
    .local v11, "indent":Ljava/lang/Double;
    if-nez v11, :cond_2

    .line 472
    int-to-long v12, v7

    mul-long v12, v12, v9

    invoke-static {v12, v13}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 474
    :cond_2
    iget-object v9, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v9}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getRightMargin()Ljava/lang/Double;

    move-result-object v9

    .line 475
    .local v9, "rightMargin":Ljava/lang/Double;
    const-wide/16 v12, 0x0

    if-nez v9, :cond_3

    .line 476
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 479
    :cond_3
    move-object/from16 v10, p2

    invoke-static {v10, v1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Ljava/awt/geom/Rectangle2D;

    move-result-object v14

    .line 480
    .local v14, "anchor":Ljava/awt/geom/Rectangle2D;
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getTextDirection()Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;

    move-result-object v15

    .line 482
    .local v15, "textDir":Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getWordWrap()Z

    move-result v16

    const/4 v13, 0x1

    if-nez v16, :cond_6

    .line 483
    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/TextShape;->getSheet()Lorg/apache/poi/sl/usermodel/Sheet;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/sl/usermodel/Sheet;->getSlideShow()Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v16

    .line 485
    .local v16, "pageDim":Ljava/awt/Dimension;
    sget-object v19, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v15}, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->ordinal()I

    move-result v20

    aget v12, v19, v20

    if-eq v12, v13, :cond_5

    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    .line 487
    invoke-virtual/range {v16 .. v16}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v12

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v17

    sub-double v12, v12, v17

    .line 488
    .local v12, "width":D
    goto :goto_0

    .line 485
    .end local v12    # "width":D
    :cond_4
    const-wide/16 v12, 0x0

    .line 493
    .restart local v12    # "width":D
    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v12

    goto :goto_0

    .line 485
    .end local v12    # "width":D
    :cond_5
    const-wide/16 v12, 0x0

    .line 490
    .restart local v12    # "width":D
    invoke-virtual/range {v16 .. v16}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v17

    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v19

    sub-double v12, v17, v19

    .line 491
    nop

    .line 496
    .end local v16    # "pageDim":Ljava/awt/Dimension;
    :goto_0
    move-object/from16 v16, v1

    goto/16 :goto_2

    .line 497
    .end local v12    # "width":D
    :cond_6
    sget-object v12, Lorg/apache/poi/sl/draw/DrawTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection:[I

    invoke-virtual {v15}, Lorg/apache/poi/sl/usermodel/TextShape$TextDirection;->ordinal()I

    move-result v16

    aget v12, v12, v16

    if-eq v12, v13, :cond_7

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    .line 499
    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v12

    sub-double/2addr v12, v3

    sub-double/2addr v12, v5

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    sub-double v12, v12, v19

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    sub-double v12, v12, v19

    .line 500
    .restart local v12    # "width":D
    goto :goto_1

    .line 497
    .end local v12    # "width":D
    :cond_7
    const-wide/16 v12, 0x0

    move-wide/from16 v19, v12

    .line 503
    .local v19, "width":D
    invoke-virtual {v14}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v12

    sub-double/2addr v12, v3

    sub-double/2addr v12, v5

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    sub-double v12, v12, v21

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    sub-double v12, v12, v21

    .line 506
    .end local v19    # "width":D
    .restart local v12    # "width":D
    :goto_1
    if-eqz p1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->isHSLF()Z

    move-result v16

    if-nez v16, :cond_a

    .line 507
    move-object/from16 v16, v1

    .end local v1    # "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    .local v16, "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    iget-object v1, v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->bullet:Lorg/apache/poi/sl/draw/DrawTextFragment;

    if-eqz v1, :cond_8

    .line 508
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/16 v17, 0x0

    cmpl-double v1, v19, v17

    if-lez v1, :cond_b

    .line 509
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    sub-double v12, v12, v17

    goto :goto_2

    .line 512
    :cond_8
    const-wide/16 v17, 0x0

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpl-double v1, v19, v17

    if-lez v1, :cond_9

    .line 513
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    sub-double v12, v12, v17

    goto :goto_2

    .line 514
    :cond_9
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpg-double v1, v19, v17

    if-gez v1, :cond_b

    .line 515
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    add-double v12, v12, v17

    goto :goto_2

    .line 506
    .end local v16    # "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    .restart local v1    # "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    :cond_a
    move-object/from16 v16, v1

    .line 521
    .end local v1    # "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    .restart local v16    # "ts":Lorg/apache/poi/sl/usermodel/TextShape;, "Lorg/apache/poi/sl/usermodel/TextShape<**>;"
    :cond_b
    :goto_2
    return-wide v12
.end method

.method public getY()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    return-wide v0
.end method

.method public isEmptyParagraph()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->rawText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isHSLF()Z
    .locals 1

    .line 735
    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->paragraph:Lorg/apache/poi/sl/usermodel/TextParagraph;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/TextParagraph;->getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawShape;->isHSLF(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result v0

    return v0
.end method

.method public setAutoNumberingIdx(I)V
    .locals 0
    .param p1, "index"    # I

    .line 125
    iput p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->autoNbrIdx:I

    .line 126
    return-void
.end method

.method public setPosition(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 112
    iput-wide p1, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->x:D

    .line 113
    iput-wide p3, p0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->y:D

    .line 114
    return-void
.end method
