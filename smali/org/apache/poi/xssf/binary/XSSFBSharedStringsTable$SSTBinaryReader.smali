.class Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBSharedStringsTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSTBinaryReader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "is"    # Ljava/io/InputStream;

    .line 122
    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    .line 123
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 5
    .param p1, "recordType"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    .line 130
    .local v0, "type":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "rstr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-static {p2, v3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->access$102(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I

    .line 137
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    const/4 v3, 0x4

    invoke-static {p2, v3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->access$202(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I

    goto :goto_0

    .line 132
    .end local v1    # "rstr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    :cond_1
    invoke-static {p2, v3}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->build([BI)Lorg/apache/poi/xssf/binary/XSSFBRichStr;

    move-result-object v1

    .line 133
    .restart local v1    # "rstr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-static {v2}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->access$000(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    nop

    .line 141
    .end local v1    # "rstr":Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    :goto_0
    return-void
.end method
