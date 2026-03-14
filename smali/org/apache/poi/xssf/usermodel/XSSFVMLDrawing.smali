.class public final Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFVMLDrawing.java"


# static fields
.field private static final COMMENT_SHAPE_TYPE_ID:Ljava/lang/String; = "_x0000_t202"

.field private static final QNAME_SHAPE:Ljavax/xml/namespace/QName;

.field private static final QNAME_SHAPE_LAYOUT:Ljavax/xml/namespace/QName;

.field private static final QNAME_SHAPE_TYPE:Ljavax/xml/namespace/QName;

.field private static final ptrn_shapeId:Ljava/util/regex/Pattern;


# instance fields
.field private _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation
.end field

.field private _qnames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field private _shapeId:I

.field private _shapeTypeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string/jumbo v1, "urn:schemas-microsoft-com:office:office"

    const-string v2, "shapelayout"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_LAYOUT:Ljavax/xml/namespace/QName;

    .line 86
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string/jumbo v1, "urn:schemas-microsoft-com:vml"

    const-string v2, "shapetype"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_TYPE:Ljavax/xml/namespace/QName;

    .line 87
    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v2, "shape"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE:Ljavax/xml/namespace/QName;

    .line 93
    const-string v0, "_x0000_s(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    .line 98
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 107
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->newDrawing()V

    .line 108
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    .line 98
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 120
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->read(Ljava/io/InputStream;)V

    .line 121
    return-void
.end method

.method private newDrawing()V
    .locals 6

    .line 213
    invoke-static {}, Lcom/microsoft/schemas/office/office/CTShapeLayout$Factory;->newInstance()Lcom/microsoft/schemas/office/office/CTShapeLayout;

    move-result-object v0

    .line 214
    .local v0, "layout":Lcom/microsoft/schemas/office/office/CTShapeLayout;
    sget-object v1, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/office/office/CTShapeLayout;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    .line 215
    invoke-interface {v0}, Lcom/microsoft/schemas/office/office/CTShapeLayout;->addNewIdmap()Lcom/microsoft/schemas/office/office/CTIdMap;

    move-result-object v1

    .line 216
    .local v1, "idmap":Lcom/microsoft/schemas/office/office/CTIdMap;
    sget-object v2, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/office/CTIdMap;->setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V

    .line 217
    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/office/office/CTIdMap;->setData(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_LAYOUT:Ljavax/xml/namespace/QName;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lcom/microsoft/schemas/vml/CTShapetype$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTShapetype;

    move-result-object v2

    .line 222
    .local v2, "shapetype":Lcom/microsoft/schemas/vml/CTShapetype;
    const-string v3, "_x0000_t202"

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    .line 223
    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShapetype;->setId(Ljava/lang/String;)V

    .line 224
    const-string v3, "21600,21600"

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShapetype;->setCoordsize(Ljava/lang/String;)V

    .line 225
    const/high16 v3, 0x434a0000    # 202.0f

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShapetype;->setSpt(F)V

    .line 226
    const-string v3, "m,l,21600r21600,l21600,xe"

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShapetype;->setPath2(Ljava/lang/String;)V

    .line 227
    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewStroke()Lcom/microsoft/schemas/vml/CTStroke;

    move-result-object v3

    sget-object v4, Lcom/microsoft/schemas/vml/STStrokeJoinStyle;->MITER:Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;

    invoke-interface {v3, v4}, Lcom/microsoft/schemas/vml/CTStroke;->setJoinstyle(Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;)V

    .line 228
    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShapetype;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v3

    .line 229
    .local v3, "path":Lcom/microsoft/schemas/vml/CTPath;
    sget-object v4, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v3, v4}, Lcom/microsoft/schemas/vml/CTPath;->setGradientshapeok(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 230
    sget-object v4, Lcom/microsoft/schemas/office/office/STConnectType;->RECT:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {v3, v4}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    .line 231
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_TYPE:Ljavax/xml/namespace/QName;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
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

    .line 203
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 204
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 205
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->write(Ljava/io/OutputStream;)V

    .line 206
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 207
    return-void
.end method

.method protected findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;
    .locals 7
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 268
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlObject;

    .line 269
    .local v1, "itm":Lorg/apache/xmlbeans/XmlObject;
    instance-of v2, v1, Lcom/microsoft/schemas/vml/CTShape;

    if-eqz v2, :cond_0

    .line 270
    move-object v2, v1

    check-cast v2, Lcom/microsoft/schemas/vml/CTShape;

    .line 271
    .local v2, "sh":Lcom/microsoft/schemas/vml/CTShape;
    invoke-interface {v2}, Lcom/microsoft/schemas/vml/CTShape;->sizeOfClientDataArray()I

    move-result v3

    if-lez v3, :cond_0

    .line 272
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTShape;->getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v4

    .line 273
    .local v4, "cldata":Lcom/microsoft/schemas/office/excel/CTClientData;
    invoke-interface {v4}, Lcom/microsoft/schemas/office/excel/CTClientData;->getObjectType()Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    move-result-object v5

    sget-object v6, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    if-ne v5, v6, :cond_0

    .line 274
    invoke-interface {v4, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->getRowArray(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 275
    .local v5, "crow":I
    invoke-interface {v4, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->getColumnArray(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 276
    .local v3, "ccol":I
    if-ne v5, p1, :cond_0

    if-ne v3, p2, :cond_0

    .line 277
    return-object v2

    .line 281
    .end local v1    # "itm":Lorg/apache/xmlbeans/XmlObject;
    .end local v2    # "sh":Lcom/microsoft/schemas/vml/CTShape;
    .end local v3    # "ccol":I
    .end local v4    # "cldata":Lcom/microsoft/schemas/office/excel/CTClientData;
    .end local v5    # "crow":I
    :cond_0
    goto :goto_0

    .line 283
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    return-object v0
.end method

.method protected newCommentShape()Lcom/microsoft/schemas/vml/CTShape;
    .locals 6

    .line 236
    invoke-static {}, Lcom/microsoft/schemas/vml/CTShape$Factory;->newInstance()Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v0

    .line 237
    .local v0, "shape":Lcom/microsoft/schemas/vml/CTShape;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_x0000_s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setId(Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setType(Ljava/lang/String;)V

    .line 239
    const-string v1, "position:absolute; visibility:hidden"

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setStyle(Ljava/lang/String;)V

    .line 240
    const-string v1, "#ffffe1"

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/vml/CTShape;->setFillcolor(Ljava/lang/String;)V

    .line 241
    sget-object v2, Lcom/microsoft/schemas/office/office/STInsetMode;->AUTO:Lcom/microsoft/schemas/office/office/STInsetMode$Enum;

    invoke-interface {v0, v2}, Lcom/microsoft/schemas/vml/CTShape;->setInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode$Enum;)V

    .line 242
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewFill()Lcom/microsoft/schemas/vml/CTFill;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/microsoft/schemas/vml/CTFill;->setColor(Ljava/lang/String;)V

    .line 243
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewShadow()Lcom/microsoft/schemas/vml/CTShadow;

    move-result-object v1

    .line 244
    .local v1, "shadow":Lcom/microsoft/schemas/vml/CTShadow;
    sget-object v2, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShadow;->setOn(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 245
    const-string v2, "black"

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShadow;->setColor(Ljava/lang/String;)V

    .line 246
    sget-object v2, Lcom/microsoft/schemas/vml/STTrueFalse;->T:Lcom/microsoft/schemas/vml/STTrueFalse$Enum;

    invoke-interface {v1, v2}, Lcom/microsoft/schemas/vml/CTShadow;->setObscured(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V

    .line 247
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewPath()Lcom/microsoft/schemas/vml/CTPath;

    move-result-object v2

    sget-object v3, Lcom/microsoft/schemas/office/office/STConnectType;->NONE:Lcom/microsoft/schemas/office/office/STConnectType$Enum;

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTPath;->setConnecttype(Lcom/microsoft/schemas/office/office/STConnectType$Enum;)V

    .line 248
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewTextbox()Lcom/microsoft/schemas/vml/CTTextbox;

    move-result-object v2

    const-string v3, "mso-direction-alt:auto"

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/vml/CTTextbox;->setStyle(Ljava/lang/String;)V

    .line 249
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->addNewClientData()Lcom/microsoft/schemas/office/excel/CTClientData;

    move-result-object v2

    .line 250
    .local v2, "cldata":Lcom/microsoft/schemas/office/excel/CTClientData;
    sget-object v3, Lcom/microsoft/schemas/office/excel/STObjectType;->NOTE:Lcom/microsoft/schemas/office/excel/STObjectType$Enum;

    invoke-interface {v2, v3}, Lcom/microsoft/schemas/office/excel/CTClientData;->setObjectType(Lcom/microsoft/schemas/office/excel/STObjectType$Enum;)V

    .line 251
    invoke-interface {v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewMoveWithCells()Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;

    .line 252
    invoke-interface {v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewSizeWithCells()Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;

    .line 253
    invoke-interface {v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewAnchor()Lorg/apache/xmlbeans/XmlString;

    move-result-object v3

    const-string v4, "1, 15, 0, 2, 3, 15, 3, 16"

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/XmlString;->setStringValue(Ljava/lang/String;)V

    .line 254
    invoke-interface {v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewAutoFill()Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;

    move-result-object v3

    const-string v4, "False"

    invoke-interface {v3, v4}, Lcom/microsoft/schemas/office/excel/STTrueFalseBlank;->setStringValue(Ljava/lang/String;)V

    .line 255
    invoke-interface {v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewRow()Lorg/apache/xmlbeans/XmlInteger;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/XmlInteger;->setBigIntegerValue(Ljava/math/BigInteger;)V

    .line 256
    invoke-interface {v2}, Lcom/microsoft/schemas/office/excel/CTClientData;->addNewColumn()Lorg/apache/xmlbeans/XmlInteger;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/XmlInteger;->setBigIntegerValue(Ljava/math/BigInteger;)V

    .line 257
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-object v0
.end method

.method protected read(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/util/ReplacingInputStream;

    const-string v2, "<br>"

    const-string v3, "<br/>"

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .local v1, "doc":Lorg/w3c/dom/Document;
    nop

    .line 136
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 138
    .local v2, "root":Lorg/apache/xmlbeans/XmlObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    .line 140
    const-string v3, "$this/xml/*"

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .local v3, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 141
    .local v6, "obj":Lorg/apache/xmlbeans/XmlObject;
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v7

    .line 142
    .local v7, "nd":Lorg/w3c/dom/Node;
    new-instance v8, Ljavax/xml/namespace/QName;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v8, "qname":Ljavax/xml/namespace/QName;
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_LAYOUT:Ljavax/xml/namespace/QName;

    invoke-virtual {v8, v9}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 144
    iget-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlObject;->xmlText()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v10, v11}, Lcom/microsoft/schemas/office/office/CTShapeLayout$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/office/CTShapeLayout;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 145
    :cond_0
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE_TYPE:Ljavax/xml/namespace/QName;

    invoke-virtual {v8, v9}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlObject;->xmlText()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v9}, Lcom/microsoft/schemas/vml/CTShapetype$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/vml/CTShapetype;

    move-result-object v0

    .line 147
    .local v0, "st":Lcom/microsoft/schemas/vml/CTShapetype;
    iget-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShapetype;->getId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeTypeId:Ljava/lang/String;

    .line 149
    .end local v0    # "st":Lcom/microsoft/schemas/vml/CTShapetype;
    goto :goto_1

    :cond_1
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->QNAME_SHAPE:Ljavax/xml/namespace/QName;

    invoke-virtual {v8, v9}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 150
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlObject;->xmlText()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v9}, Lcom/microsoft/schemas/vml/CTShape$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v0

    .line 151
    .local v0, "shape":Lcom/microsoft/schemas/vml/CTShape;
    invoke-interface {v0}, Lcom/microsoft/schemas/vml/CTShape;->getId()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "id":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 153
    sget-object v10, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->ptrn_shapeId:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 154
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 155
    iget v11, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_shapeId:I

    .line 158
    .end local v10    # "m":Ljava/util/regex/Matcher;
    :cond_2
    iget-object v10, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v0    # "shape":Lcom/microsoft/schemas/vml/CTShape;
    .end local v9    # "id":Ljava/lang/String;
    goto :goto_1

    .line 162
    :cond_3
    :try_start_1
    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v10, Ljava/io/StringReader;

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlObject;->xmlText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 163
    .local v9, "is2":Lorg/xml/sax/InputSource;
    invoke-static {v9}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .end local v9    # "is2":Lorg/xml/sax/InputSource;
    .local v0, "doc2":Lorg/w3c/dom/Document;
    nop

    .line 168
    iget-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    sget-object v10, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v10}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v0    # "doc2":Lorg/w3c/dom/Document;
    :goto_1
    iget-object v9, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v6    # "obj":Lorg/apache/xmlbeans/XmlObject;
    .end local v7    # "nd":Lorg/w3c/dom/Node;
    .end local v8    # "qname":Ljavax/xml/namespace/QName;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 164
    .restart local v6    # "obj":Lorg/apache/xmlbeans/XmlObject;
    .restart local v7    # "nd":Lorg/w3c/dom/Node;
    .restart local v8    # "qname":Ljavax/xml/namespace/QName;
    :catch_0
    move-exception v9

    .line 165
    .restart local v0    # "doc2":Lorg/w3c/dom/Document;
    .local v9, "e":Lorg/xml/sax/SAXException;
    new-instance v10, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 172
    .end local v0    # "doc2":Lorg/w3c/dom/Document;
    .end local v3    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v6    # "obj":Lorg/apache/xmlbeans/XmlObject;
    .end local v7    # "nd":Lorg/w3c/dom/Node;
    .end local v8    # "qname":Ljavax/xml/namespace/QName;
    .end local v9    # "e":Lorg/xml/sax/SAXException;
    :cond_4
    return-void

    .line 133
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "root":Lorg/apache/xmlbeans/XmlObject;
    :catch_1
    move-exception v1

    .line 134
    .local v0, "doc":Lorg/w3c/dom/Document;
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected removeCommentShape(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;

    move-result-object v0

    .line 288
    .local v0, "shape":Lcom/microsoft/schemas/vml/CTShape;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected write(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-static {}, Lorg/apache/xmlbeans/XmlObject$Factory;->newInstance()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 180
    .local v0, "rootObject":Lorg/apache/xmlbeans/XmlObject;
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 181
    .local v1, "rootCursor":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 182
    const-string/jumbo v2, "xml"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 185
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    .line 186
    .local v3, "xc":Lorg/apache/xmlbeans/XmlCursor;
    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->_qnames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/namespace/QName;

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/XmlCursor;->beginElement(Ljavax/xml/namespace/QName;)V

    .line 187
    :goto_1
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v4

    sget-object v5, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne v4, v5, :cond_0

    .line 188
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 189
    .local v4, "anode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v4    # "anode":Lorg/w3c/dom/Node;
    goto :goto_1

    .line 191
    :cond_0
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toStartDoc()V

    .line 192
    invoke-interface {v3, v1}, Lorg/apache/xmlbeans/XmlCursor;->copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 193
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 194
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 184
    .end local v3    # "xc":Lorg/apache/xmlbeans/XmlCursor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 198
    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v2}, Lorg/apache/xmlbeans/XmlObject;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 199
    return-void
.end method
