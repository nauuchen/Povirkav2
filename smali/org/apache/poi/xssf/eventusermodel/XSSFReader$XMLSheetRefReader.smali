.class Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XSSFReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMLSheetRefReader"
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SHEET:Ljava/lang/String; = "sheet"


# instance fields
.field private final sheetRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 419
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 424
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->sheetRefs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/xssf/eventusermodel/XSSFReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/xssf/eventusermodel/XSSFReader$1;

    .line 419
    invoke-direct {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;-><init>()V

    return-void
.end method


# virtual methods
.method getSheetRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->sheetRefs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 430
    const-string v0, "sheet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 433
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 434
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "attrName":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 437
    :cond_0
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 441
    iget-object v4, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;->sheetRefs:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    invoke-direct {v5, v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    goto :goto_2

    .line 433
    .end local v3    # "attrName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void
.end method
