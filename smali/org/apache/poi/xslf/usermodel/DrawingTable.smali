.class public Lorg/apache/poi/xslf/usermodel/DrawingTable;
.super Ljava/lang/Object;
.source "DrawingTable.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;)V
    .locals 0
    .param p1, "table"    # Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/DrawingTable;->table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    .line 33
    return-void
.end method


# virtual methods
.method public getRows()[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    .locals 5

    .line 36
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTable;->table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v0

    .line 37
    .local v0, "ctTableRows":[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/xslf/usermodel/DrawingTableRow;

    .line 39
    .local v1, "o":[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 40
    new-instance v3, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V

    aput-object v3, v1, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
