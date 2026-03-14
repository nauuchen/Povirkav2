.class public Lorg/apache/poi/xssf/model/ThemesTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "ThemesTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;
    }
.end annotation


# instance fields
.field private colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 72
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    .line 73
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->addNewTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->addNewThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 3
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 86
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    nop

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;)V
    .locals 0
    .param p1, "theme"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    .line 96
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    .line 98
    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ThemesTable;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 185
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 186
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/ThemesTable;->writeTo(Ljava/io/OutputStream;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 188
    return-void
.end method

.method public getThemeColor(I)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 5
    .param p1, "idx"    # I

    .line 117
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->getTheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getClrScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;

    move-result-object v0

    .line 119
    .local v0, "colorScheme":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;
    sget-object v1, Lorg/apache/poi/xssf/model/ThemesTable$1;->$SwitchMap$org$apache$poi$xssf$model$ThemesTable$ThemeElement:[I

    invoke-static {p1}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->byId(I)Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/ThemesTable$ThemeElement;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 132
    .local v1, "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    return-object v2

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_0
    move-object v1, v2

    .line 131
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_1
    move-object v1, v2

    .line 130
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_2
    move-object v1, v2

    .line 129
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_3
    move-object v1, v2

    .line 128
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_4
    move-object v1, v2

    .line 127
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_5
    move-object v1, v2

    .line 126
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_6
    move-object v1, v2

    .line 125
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_7
    move-object v1, v2

    .line 124
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_8
    move-object v1, v2

    .line 123
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getDk2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_9
    move-object v1, v2

    .line 122
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getLt2()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_a
    move-object v1, v2

    .line 121
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getDk1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_0

    .line 120
    .end local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :pswitch_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorScheme;->getLt1()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    move-result-object v1

    .line 135
    .restart local v1    # "ctColor":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
    :goto_0
    const/4 v3, 0x0

    .line 136
    .local v3, "rgb":[B
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSrgbClr()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->getVal()[B

    move-result-object v2

    .end local v3    # "rgb":[B
    .local v2, "rgb":[B
    goto :goto_1

    .line 139
    .end local v2    # "rgb":[B
    .restart local v3    # "rgb":[B
    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->isSetSysClr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->getLastClr()[B

    move-result-object v2

    .line 145
    .end local v3    # "rgb":[B
    .restart local v2    # "rgb":[B
    :goto_1
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    iget-object v4, p0, Lorg/apache/poi/xssf/model/ThemesTable;->colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v3, v2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>([BLorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v3

    .line 143
    .end local v2    # "rgb":[B
    .restart local v3    # "rgb":[B
    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public inheritFromThemeAsRequired(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 3
    .param p1, "color"    # Lorg/apache/poi/xssf/usermodel/XSSFColor;

    .line 154
    if-nez p1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetTheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/ThemesTable;->getThemeColor(I)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    .line 167
    .local v0, "themeColor":Lorg/apache/poi/xssf/usermodel/XSSFColor;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setRgb([B)V

    .line 170
    return-void
.end method

.method protected setColorMap(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0
    .param p1, "colorMap"    # Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 105
    iput-object p1, p0, Lorg/apache/poi/xssf/model/ThemesTable;->colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    .line 106
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ThemesTable;->theme:Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/ThemeDocument;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 180
    return-void
.end method
