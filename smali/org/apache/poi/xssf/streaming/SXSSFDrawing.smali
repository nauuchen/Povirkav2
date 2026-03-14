.class public Lorg/apache/poi/xssf/streaming/SXSSFDrawing;
.super Ljava/lang/Object;
.source "SXSSFDrawing.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Drawing<",
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final _drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

.field private final _wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFDrawing;)V
    .locals 0
    .param p1, "workbook"    # Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .param p2, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    .line 42
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 43
    return-void
.end method


# virtual methods
.method public createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 10
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I
    .param p5, "col1"    # I
    .param p6, "row1"    # I
    .param p7, "col2"    # I
    .param p8, "row2"    # I

    .line 63
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v1

    return-object v1
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 53
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Chart;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createChart(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFChart;

    move-result-object v0

    return-object v0
.end method

.method public createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
    .locals 1
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "storageId"    # I
    .param p3, "pictureIndex"    # I

    .line 68
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 1
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "x1"    # I

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/streaming/SXSSFPicture;
    .locals 3
    .param p1, "anchor"    # Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .param p2, "pictureIndex"    # I

    .line 47
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object v0

    .line 48
    .local v0, "pict":Lorg/apache/poi/xssf/usermodel/XSSFPicture;
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFPicture;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
