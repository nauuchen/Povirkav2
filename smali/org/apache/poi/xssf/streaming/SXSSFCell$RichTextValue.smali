.class Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;
.super Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;
.source "SXSSFCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RichTextValue"
.end annotation


# instance fields
.field _value:Lorg/apache/poi/ss/usermodel/RichTextString;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1147
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFCell$StringValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    .line 1153
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method getValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 1161
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->_value:Lorg/apache/poi/ss/usermodel/RichTextString;

    return-object v0
.end method

.method isRichText()Z
    .locals 1

    .line 1166
    const/4 v0, 0x1

    return v0
.end method

.method setValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 1157
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFCell$RichTextValue;->_value:Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 1158
    return-void
.end method
