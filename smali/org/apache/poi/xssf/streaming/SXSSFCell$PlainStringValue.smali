.class Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlainStringValue"
.end annotation


# instance fields
.field _value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1130
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;-><init>()V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    .line 1139
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->_value:Ljava/lang/String;

    return-object v0
.end method

.method isRichText()Z
    .locals 1

    .line 1144
    const/4 v0, 0x0

    return v0
.end method

.method setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 1135
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$PlainStringValue;->_value:Ljava/lang/String;

    .line 1136
    return-void
.end method
