.class public Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSLFTableStyles.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocumentPart;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
        ">;"
    }
.end annotation


# instance fields
.field private _styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
            ">;"
        }
    .end annotation
.end field

.field private _tblStyleLst:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 9
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 50
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument$Factory;->parse(Ljava/io/InputStream;)Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument;

    move-result-object v1

    .line 51
    .local v1, "styleDoc":Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/TblStyleLstDocument;->getTblStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_tblStyleLst:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;

    .line 53
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;->getTblStyleArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    move-result-object v2

    .line 54
    .local v2, "tblStyleArray":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    .line 55
    move-object v3, v2

    .local v3, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 56
    .local v6, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    iget-object v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    new-instance v8, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;

    invoke-direct {v8, v6}, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v6    # "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_tblStyleLst:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleList;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;->_styles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
