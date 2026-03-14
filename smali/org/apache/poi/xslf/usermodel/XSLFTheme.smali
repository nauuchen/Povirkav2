.class public Lorg/apache/poi/xslf/usermodel/XSLFTheme;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSLFTheme.java"


# instance fields
.field private _schemeColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;",
            ">;"
        }
    .end annotation
.end field

.field private _theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 55
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    move-result-object v0

    .line 65
    .local v0, "doc":Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->getTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    .line 66
    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->initialize()V

    .line 67
    return-void
.end method

.method private initialize()V
    .locals 9

    .line 75
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    .line 76
    .local v0, "elems":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getClrScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;

    move-result-object v1

    .line 78
    .local v1, "scheme":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    .line 79
    const-string v2, "*"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 80
    .local v5, "o":Lorg/apache/xmlbeans/XmlObject;
    move-object v6, v5

    check-cast v6, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    .line 81
    .local v6, "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v5    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v6    # "c":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected final commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 134
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    const-string/jumbo v3, "theme"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 138
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 139
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 141
    return-void
.end method

.method getCTColor(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    return-object v0
.end method

.method getDefaultParagraphStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    const-string v1, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//a:objectDefaults/a:spDef/a:lstStyle/a:defPPr"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 167
    .local v0, "o":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 168
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-object v1

    .line 170
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMajorFont()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFontScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMajorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinorFont()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFontScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontScheme;->getMinorFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontCollection;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->getTypeface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    return-object v0
.end method

.method public importTheme(Lorg/apache/poi/xslf/usermodel/XSLFTheme;)V
    .locals 1
    .param p1, "theme"    # Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    .line 71
    iget-object v0, p1, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    .line 72
    return-void
.end method

.method initColorMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V
    .locals 3
    .param p1, "cmap"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    .line 92
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bg1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bg2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tx1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_schemeColors:Ljava/util/Map;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->getTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tx2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->_theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->setName(Ljava/lang/String;)V

    .line 113
    return-void
.end method
