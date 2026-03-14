.class public Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
.super Lorg/apache/poi/xssf/usermodel/XSSFShape;
.source "XSSFSimpleShape.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/ss/usermodel/SimpleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
        ">;",
        "Lorg/apache/poi/ss/usermodel/SimpleShape;"
    }
.end annotation


# static fields
.field private static _romanAlphaValues:[I

.field private static _romanChars:[Ljava/lang/String;

.field private static prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# instance fields
.field private final _paragraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 331
    const-string v1, "M"

    const-string v2, "CM"

    const-string v3, "D"

    const-string v4, "CD"

    const-string v5, "C"

    const-string v6, "XC"

    const-string v7, "L"

    const-string v8, "XL"

    const-string v9, "X"

    const-string v10, "IX"

    const-string v11, "V"

    const-string v12, "IV"

    const-string v13, "I"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanChars:[Ljava/lang/String;

    .line 332
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanAlphaValues:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 5
    .param p1, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .param p2, "ctShape"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFShape;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 58
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    .line 64
    invoke-interface {p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 65
    .local v0, "body":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->sizeOfPArray()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static applyAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
    .locals 6
    .param p0, "pr"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    .param p1, "rPr"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    .line 828
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfBArray()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    .line 829
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfUArray()I

    move-result v0

    if-lez v0, :cond_3

    .line 830
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getUArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTUnderlineProperty;->getVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    move-result-object v0

    .line 831
    .local v0, "u1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues;->SINGLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    if-ne v0, v2, :cond_1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    goto :goto_0

    .line 832
    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues;->DOUBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    if-ne v0, v2, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    goto :goto_0

    .line 833
    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;

    if-ne v0, v2, :cond_3

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    .line 835
    .end local v0    # "u1":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnderlineValues$Enum;
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfIArray()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getIArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBooleanProperty;->getVal()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    .line 837
    :cond_4
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfRFontArray()I

    move-result v0

    if-lez v0, :cond_6

    .line 838
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLatin()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewLatin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    move-result-object v0

    .line 839
    .local v0, "rFont":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :goto_1
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getRFontArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontName;->getVal()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;->setTypeface(Ljava/lang/String;)V

    .line 842
    .end local v0    # "rFont":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
    :cond_6
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfSzArray()I

    move-result v0

    if-lez v0, :cond_7

    .line 843
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getSzArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFontSize;->getVal()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 844
    .local v0, "sz":I
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 847
    .end local v0    # "sz":I
    :cond_7
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->sizeOfColorArray()I

    move-result v0

    if-lez v0, :cond_c

    .line 848
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    .line 849
    .local v0, "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :goto_2
    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;->getColorArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v2

    .line 850
    .local v2, "xlsColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetRgb()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 851
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    .line 852
    .local v1, "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    :goto_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getRgb()[B

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 853
    .end local v1    # "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    goto :goto_5

    .line 854
    :cond_a
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->isSetIndexed()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 855
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->getIndexed()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/util/HSSFColor;

    .line 856
    .local v3, "indexed":Lorg/apache/poi/hssf/util/HSSFColor;
    if-eqz v3, :cond_c

    .line 857
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 858
    .local v4, "rgb":[B
    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v5

    aget-short v5, v5, v1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 859
    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    const/4 v5, 0x1

    aget-short v1, v1, v5

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 860
    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    const/4 v5, 0x2

    aget-short v1, v1, v5

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 861
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->isSetSrgbClr()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v1

    .line 862
    .restart local v1    # "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    :goto_4
    invoke-interface {v1, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 866
    .end local v0    # "fill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    .end local v1    # "clr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
    .end local v2    # "xlsColor":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
    .end local v3    # "indexed":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v4    # "rgb":[B
    :cond_c
    :goto_5
    return-void
.end method

.method private getBulletPrefix(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)Ljava/lang/String;
    .locals 5
    .param p1, "scheme"    # Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    .param p2, "value"    # I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "out":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$ListAutoNumber:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0x29

    const/16 v4, 0x2e

    packed-switch v1, :pswitch_data_0

    .line 310
    const/16 v1, 0x2022

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 306
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    goto/16 :goto_0

    .line 302
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    goto/16 :goto_0

    .line 297
    :pswitch_2
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_UC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    goto/16 :goto_0

    .line 291
    :pswitch_3
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ROMAN_LC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToRoman(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    goto :goto_0

    .line 287
    :pswitch_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    goto :goto_0

    .line 283
    :pswitch_5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    goto :goto_0

    .line 278
    :pswitch_6
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ARABIC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    goto :goto_0

    .line 273
    :pswitch_7
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    goto :goto_0

    .line 269
    :pswitch_8
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    goto :goto_0

    .line 264
    :pswitch_9
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_UC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    goto :goto_0

    .line 258
    :pswitch_a
    sget-object v1, Lorg/apache/poi/xssf/usermodel/ListAutoNumber;->ALPHA_LC_PARENT_BOTH:Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    if-ne p1, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->valueToAlpha(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    nop

    .line 313
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processAutoNumGroup(IILjava/util/List;Ljava/lang/StringBuilder;)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "level"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    .line 179
    .local p3, "levelCount":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 180
    .local v0, "p":Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    const/4 v1, 0x0

    .line 184
    .local v1, "nextp":Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    .line 193
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberStart()I

    move-result v2

    .line 194
    .local v2, "startAt":I
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    move-result-object v3

    .line 195
    .local v3, "scheme":Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 196
    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v6, 0x9

    if-ge v4, p2, :cond_2

    .line 200
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 203
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getBulletPrefix(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_3
    :goto_2
    add-int/lit8 v4, p1, 0x1

    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    :goto_3
    move-object v1, v4

    .line 208
    if-nez v1, :cond_5

    goto/16 :goto_5

    .line 209
    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBulletAutoNumber()Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_5

    .line 210
    :cond_6
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v4

    const/16 v7, 0xa

    if-le v4, p2, :cond_8

    .line 212
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_7
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v7

    invoke-direct {p0, v4, v7, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->processAutoNumGroup(IILjava/util/List;Ljava/lang/StringBuilder;)I

    move-result p1

    .line 214
    goto :goto_2

    .line 215
    :cond_8
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v4

    if-ge v4, p2, :cond_9

    .line 216
    goto :goto_5

    .line 218
    :cond_9
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberScheme()Lorg/apache/poi/xssf/usermodel/ListAutoNumber;

    move-result-object v4

    .line 219
    .local v4, "nextScheme":Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletAutoNumberStart()I

    move-result v8

    .line 221
    .local v8, "nextStartAt":I
    if-ne v4, v3, :cond_c

    if-ne v8, v2, :cond_c

    .line 223
    add-int/lit8 p1, p1, 0x1

    .line 224
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :cond_a
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, p2, :cond_b

    .line 227
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 230
    .end local v7    # "j":I
    :cond_b
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 232
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, p2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v4, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getBulletPrefix(Lorg/apache/poi/xssf/usermodel/ListAutoNumber;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 242
    .end local v4    # "nextScheme":Lorg/apache/poi/xssf/usermodel/ListAutoNumber;
    .end local v8    # "nextStartAt":I
    :cond_c
    :goto_5
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    return p1
.end method

.method protected static prototype()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 15

    .line 76
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    move-result-object v0

    .line 79
    .local v0, "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v1

    .line 80
    .local v1, "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v2

    .line 81
    .local v2, "nvp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    const-wide/16 v3, 0x1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 82
    const-string v3, "Shape 1"

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 83
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->addNewCNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingShapeProps;

    .line 85
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v3

    .line 86
    .local v3, "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v4

    .line 87
    .local v4, "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v5

    .line 88
    .local v5, "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    const-wide/16 v6, 0x0

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 89
    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 90
    invoke-interface {v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v8

    .line 91
    .local v8, "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    invoke-interface {v8, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 92
    invoke-interface {v8, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 94
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v6

    .line 95
    .local v6, "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v7, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 96
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 98
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->addNewTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v7

    .line 99
    .local v7, "body":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v9

    .line 100
    .local v9, "bodypr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    sget-object v10, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;->T:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    .line 101
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRtlCol(Z)V

    .line 102
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v10

    .line 103
    .local v10, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-interface {v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    move-result-object v11

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType;->L:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;

    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAlignType$Enum;)V

    .line 104
    invoke-interface {v10}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v11

    .line 105
    .local v11, "endPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    const-string v12, "en-US"

    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 106
    const/16 v12, 0x44c

    invoke-interface {v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 107
    invoke-interface {v11}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v12

    .line 108
    .local v12, "scfpr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    invoke-interface {v12}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [B

    fill-array-data v14, :array_0

    invoke-interface {v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;->setVal([B)V

    .line 110
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewLstStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;

    .line 112
    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 114
    .end local v0    # "shape":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .end local v1    # "nv":Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;
    .end local v2    # "nvp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v3    # "sp":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .end local v4    # "t2d":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .end local v5    # "p1":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v6    # "geom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .end local v7    # "body":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    .end local v8    # "p2":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .end local v9    # "bodypr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    .end local v10    # "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    .end local v11    # "endPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .end local v12    # "scfpr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->prototype:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private valueToAlpha(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .line 321
    const-string v0, ""

    .line 323
    .local v0, "alpha":Ljava/lang/String;
    :goto_0
    if-lez p1, :cond_0

    .line 324
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x1a

    .line 325
    .local v1, "modulo":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    sub-int v2, p1, v1

    div-int/lit8 p1, v2, 0x1a

    goto :goto_0

    .line 328
    .end local v1    # "modulo":I
    :cond_0
    return-object v0
.end method

.method private valueToRoman(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lez p1, :cond_1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanChars:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 340
    :goto_1
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanAlphaValues:[I

    aget v2, v2, v1

    if-gt v2, p1, :cond_0

    .line 341
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanChars:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_romanAlphaValues:[I

    aget v2, v2, v1

    sub-int/2addr p1, v2

    goto :goto_1

    .line 339
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addNewTextParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 4

    .line 420
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 421
    .local v0, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    .line 422
    .local v1, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 423
    .local v2, "paragraph":Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    return-object v2
.end method

.method public addNewTextParagraph(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 433
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->addNewTextParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    move-result-object v0

    .line 434
    .local v0, "paragraph":Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setText(Ljava/lang/String;)V

    .line 435
    return-object v0
.end method

.method public addNewTextParagraph(Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;)Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    .locals 9
    .param p1, "str"    # Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 444
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 445
    .local v0, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->addNewP()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    .line 447
    .local v1, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->numFormattingRuns()I

    move-result v2

    const-string v3, "en-US"

    if-nez v2, :cond_0

    .line 448
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v2

    .line 449
    .local v2, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v4

    .line 450
    .local v4, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 451
    const/16 v3, 0x44c

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 452
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 454
    .end local v2    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .end local v4    # "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    goto :goto_1

    .line 455
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 456
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v4

    .line 457
    .local v4, "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v5

    .line 458
    .local v5, "ltPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    if-nez v5, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->addNewRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v5

    .line 460
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v6

    .line 461
    .local v6, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v7

    .line 462
    .local v7, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v7, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 464
    invoke-static {v5, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->applyAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 466
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 455
    .end local v4    # "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v5    # "ltPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    .end local v6    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .end local v7    # "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "i":I
    :cond_2
    :goto_1
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 472
    .local v2, "paragraph":Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    return-object v2
.end method

.method public clearText()V
    .locals 2

    .line 352
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    .line 354
    .local v0, "txBody":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    .line 355
    return-void
.end method

.method public getBottomInset()D
    .locals 3

    .line 614
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 615
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 616
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetBIns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getBIns()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    return-wide v1

    .line 621
    :cond_0
    const-wide v1, 0x400ccccccccccccdL    # 3.6

    return-wide v1
.end method

.method public getCTShape()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    return-object v0
.end method

.method public getLeftInset()D
    .locals 3

    .line 632
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 633
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 634
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetLIns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getLIns()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    return-wide v1

    .line 639
    :cond_0
    const-wide v1, 0x400ccccccccccccdL    # 3.6

    return-wide v1
.end method

.method public getRightInset()D
    .locals 3

    .line 650
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 651
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 652
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRIns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getRIns()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    return-wide v1

    .line 657
    :cond_0
    const-wide v1, 0x400ccccccccccccdL    # 3.6

    return-wide v1
.end method

.method public getShapeId()I
    .locals 2

    .line 875
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getNvSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShapeNonVisual;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShapeProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .locals 1

    .line 819
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    return-object v0
.end method

.method public getShapeType()I
    .locals 1

    .line 805
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->intValue()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 11

    .line 133
    const/16 v0, 0x9

    .line 134
    .local v0, "MAX_LEVELS":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v1, "out":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v2, "levelCount":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 139
    .local v4, "p":Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_0

    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    .end local v5    # "k":I
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    iget-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    .line 147
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBullet()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 149
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getLevel()I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 151
    .local v7, "level":I
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->isBulletAutoNumber()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 152
    invoke-direct {p0, v5, v7, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->processAutoNumGroup(IILjava/util/List;Ljava/lang/StringBuilder;)I

    move-result v5

    goto :goto_4

    .line 155
    :cond_2
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_3

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 158
    .end local v8    # "j":I
    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getBulletCharacter()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "character":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    const-string v9, "- "

    :goto_3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .end local v7    # "level":I
    .end local v8    # "character":Ljava/lang/String;
    :goto_4
    goto :goto_6

    .line 163
    :cond_5
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_5
    if-ge v7, v3, :cond_6

    .line 167
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 143
    .end local v7    # "k":I
    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 172
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTextAutofit()Lorg/apache/poi/xssf/usermodel/TextAutofit;
    .locals 2

    .line 789
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 790
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_2

    .line 791
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NONE:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object v1

    .line 792
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NORMAL:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object v1

    .line 793
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextAutofit;->SHAPE:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object v1

    .line 795
    :cond_2
    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextAutofit;->NORMAL:Lorg/apache/poi/xssf/usermodel/TextAutofit;

    return-object v1
.end method

.method public getTextDirection()Lorg/apache/poi/xssf/usermodel/TextDirection;
    .locals 4

    .line 596
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 597
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v1

    .line 599
    .local v1, "val":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    if-eqz v1, :cond_0

    .line 600
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextDirection;->values()[Lorg/apache/poi/xssf/usermodel/TextDirection;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    return-object v2

    .line 603
    .end local v1    # "val":Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextDirection;->HORIZONTAL:Lorg/apache/poi/xssf/usermodel/TextDirection;

    return-object v1
.end method

.method public getTextHorizontalOverflow()Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;
    .locals 3

    .line 500
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 501
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetHorzOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;->values()[Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 506
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;->OVERFLOW:Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;

    return-object v1
.end method

.method public getTextParagraphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    return-object v0
.end method

.method public getTextVerticalOverflow()Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;
    .locals 3

    .line 532
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 533
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVertOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;->values()[Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getVertOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 538
    :cond_0
    sget-object v1, Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;->OVERFLOW:Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;

    return-object v1
.end method

.method public getTopInset()D
    .locals 3

    .line 667
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 668
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 669
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetTIns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getTIns()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v1

    return-wide v1

    .line 674
    :cond_0
    const-wide v1, 0x400ccccccccccccdL    # 3.6

    return-wide v1
.end method

.method public getVerticalAlignment()Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 565
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    invoke-static {}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->values()[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 570
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object v1
.end method

.method public getWordWrap()Z
    .locals 4

    .line 742
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 743
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 744
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetWrap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->getWrap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 748
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setBottomInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 684
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 685
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 686
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 687
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetBIns()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetBIns()V

    goto :goto_0

    .line 688
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setBIns(I)V

    .line 690
    :cond_1
    :goto_0
    return-void
.end method

.method public setLeftInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 699
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 700
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 701
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 702
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetLIns()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetLIns()V

    goto :goto_0

    .line 703
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setLIns(I)V

    .line 705
    :cond_1
    :goto_0
    return-void
.end method

.method public setRightInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 714
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 715
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 716
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 717
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetRIns()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetRIns()V

    goto :goto_0

    .line 718
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setRIns(I)V

    .line 720
    :cond_1
    :goto_0
    return-void
.end method

.method public setShapeType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 815
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 816
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->clearText()V

    .line 364
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->addNewTextParagraph()Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;->addNewTextRun()Lorg/apache/poi/xssf/usermodel/XSSFTextRun;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;->setText(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public setText(Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;)V
    .locals 9
    .param p1, "str"    # Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    .line 373
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getDrawing()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 374
    .local v0, "wb":Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    .line 376
    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v1

    .line 377
    .local v1, "p":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->numFormattingRuns()I

    move-result v2

    const-string v3, "en-US"

    if-nez v2, :cond_0

    .line 378
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v2

    .line 379
    .local v2, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v4

    .line 380
    .local v4, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 381
    const/16 v3, 0x44c

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    .line 382
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 384
    .end local v2    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .end local v4    # "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    goto :goto_1

    .line 385
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->sizeOfRArray()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 386
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getCTRst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;->getRArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;

    move-result-object v4

    .line 387
    .local v4, "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v5

    .line 388
    .local v5, "ltPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    if-nez v5, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->addNewRPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;

    move-result-object v5

    .line 390
    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    move-result-object v6

    .line 391
    .local v6, "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->addNewRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v7

    .line 392
    .local v7, "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    invoke-interface {v7, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    .line 394
    invoke-static {v5, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->applyAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    .line 396
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;->getT()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;->setT(Ljava/lang/String;)V

    .line 385
    .end local v4    # "lt":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRElt;
    .end local v5    # "ltPr":Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRPrElt;
    .end local v6    # "r":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
    .end local v7    # "rPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->clearText()V

    .line 401
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->setPArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)V

    .line 402
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->_paragraphs:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v5}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getPArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public setTextAutofit(Lorg/apache/poi/xssf/usermodel/TextAutofit;)V
    .locals 3
    .param p1, "value"    # Lorg/apache/poi/xssf/usermodel/TextAutofit;

    .line 770
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 771
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_6

    .line 772
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetSpAutoFit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetSpAutoFit()V

    .line 773
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNoAutofit()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNoAutofit()V

    .line 774
    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetNormAutofit()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetNormAutofit()V

    .line 776
    :cond_2
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape$1;->$SwitchMap$org$apache$poi$xssf$usermodel$TextAutofit:[I

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/TextAutofit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 779
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;

    goto :goto_0

    .line 778
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    goto :goto_0

    .line 777
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->addNewNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;

    .line 782
    :cond_6
    :goto_0
    return-void
.end method

.method public setTextDirection(Lorg/apache/poi/xssf/usermodel/TextDirection;)V
    .locals 2
    .param p1, "orientation"    # Lorg/apache/poi/xssf/usermodel/TextDirection;

    .line 580
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 581
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 582
    if-nez p1, :cond_0

    .line 583
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVert()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetVert()V

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/TextDirection;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V

    .line 588
    :cond_1
    :goto_0
    return-void
.end method

.method public setTextHorizontalOverflow(Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;)V
    .locals 2
    .param p1, "overflow"    # Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;

    .line 484
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 485
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 486
    if-nez p1, :cond_0

    .line 487
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetHorzOverflow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetHorzOverflow()V

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/TextHorizontalOverflow;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;)V

    .line 492
    :cond_1
    :goto_0
    return-void
.end method

.method public setTextVerticalOverflow(Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;)V
    .locals 2
    .param p1, "overflow"    # Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;

    .line 516
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 517
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 518
    if-nez p1, :cond_0

    .line 519
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetVertOverflow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetVertOverflow()V

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/TextVerticalOverflow;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setVertOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;)V

    .line 524
    :cond_1
    :goto_0
    return-void
.end method

.method public setTopInset(D)V
    .locals 4
    .param p1, "margin"    # D

    .line 729
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 730
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 731
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    .line 732
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetTIns()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetTIns()V

    goto :goto_0

    .line 733
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setTIns(I)V

    .line 735
    :cond_1
    :goto_0
    return-void
.end method

.method public setVerticalAlignment(Lorg/apache/poi/ss/usermodel/VerticalAlignment;)V
    .locals 2
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 548
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 549
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 550
    if-nez p1, :cond_0

    .line 551
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->isSetAnchor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->unsetAnchor()V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V

    .line 556
    :cond_1
    :goto_0
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 2
    .param p1, "wrap"    # Z

    .line 756
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->ctShape:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;->getTxBody()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;->getBodyPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;

    move-result-object v0

    .line 757
    .local v0, "bodyPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
    if-eqz v0, :cond_1

    .line 758
    if-eqz p1, :cond_0

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->SQUARE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;

    :goto_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->setWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;)V

    .line 760
    :cond_1
    return-void
.end method
