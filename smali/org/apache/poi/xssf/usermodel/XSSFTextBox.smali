.class public final Lorg/apache/poi/xssf/usermodel/XSSFTextBox;
.super Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;
.source "XSSFTextBox.java"


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V
    .locals 0
    .param p1, "drawing"    # Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .param p2, "ctShape"    # Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDrawing;Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTShape;)V

    .line 31
    return-void
.end method
