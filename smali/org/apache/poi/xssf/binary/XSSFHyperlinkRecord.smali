.class public Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
.super Ljava/lang/Object;
.source "XSSFHyperlinkRecord.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private display:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private final relId:Ljava/lang/String;

.field private toolTip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cellRangeAddress"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "relId"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "toolTip"    # Ljava/lang/String;
    .param p5, "display"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 45
    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_5

    .line 88
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    .line 90
    .local v2, "that":Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    if-eqz v3, :cond_3

    .line 91
    :goto_0
    return v1

    .line 92
    :cond_3
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 93
    :cond_5
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    if-eqz v3, :cond_7

    :goto_2
    return v1

    .line 94
    :cond_7
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v4, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_8
    iget-object v3, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    if-eqz v3, :cond_9

    :goto_3
    return v1

    .line 95
    :cond_9
    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v0, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_a
    iget-object v3, v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 86
    .end local v2    # "that":Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;
    :cond_c
    :goto_5
    return v1
.end method

.method getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRelId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    return-object v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 100
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    .line 102
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 103
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v2, v3

    .line 104
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    .line 105
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method setDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    .line 61
    return-void
.end method

.method setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    .line 53
    return-void
.end method

.method setToolTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "toolTip"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XSSFHyperlinkRecord{cellRangeAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->cellRangeAddress:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->relId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", toolTip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->toolTip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", display=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->display:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
