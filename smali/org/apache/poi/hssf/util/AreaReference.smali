.class public final Lorg/apache/poi/hssf/util/AreaReference;
.super Lorg/apache/poi/ss/util/AreaReference;
.source "AreaReference.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "reference"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/util/CellReference;Lorg/apache/poi/hssf/util/CellReference;)V
    .locals 0
    .param p1, "topLeft"    # Lorg/apache/poi/hssf/util/CellReference;
    .param p2, "botRight"    # Lorg/apache/poi/hssf/util/CellReference;

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V

    .line 42
    return-void
.end method
