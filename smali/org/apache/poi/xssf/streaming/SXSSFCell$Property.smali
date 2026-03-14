.class abstract Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;
.super Ljava/lang/Object;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Property"
.end annotation


# static fields
.field static final COMMENT:I = 0x1

.field static final HYPERLINK:I = 0x2


# instance fields
.field _next:Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;

.field _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_value:Ljava/lang/Object;

    .line 1066
    return-void
.end method


# virtual methods
.method abstract getType()I
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 1074
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 1070
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$Property;->_value:Ljava/lang/Object;

    .line 1071
    return-void
.end method
