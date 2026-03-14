.class public Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
.super Ljava/lang/Object;
.source "DrawingTableRow.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V
    .locals 0
    .param p1, "row"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;->row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    .line 33
    return-void
.end method


# virtual methods
.method public getCells()[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    .locals 5

    .line 36
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;->row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getTcArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    .line 37
    .local v0, "ctTableCells":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/DrawingTableCell;

    .line 39
    .local v1, "o":[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 40
    new-instance v3, Lorg/apache/poi/xslf/usermodel/DrawingTableCell;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/xslf/usermodel/DrawingTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;)V

    aput-object v3, v1, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
