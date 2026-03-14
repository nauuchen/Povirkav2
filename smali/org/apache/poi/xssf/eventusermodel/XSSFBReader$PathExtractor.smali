.class Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "XSSFBReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathExtractor"
.end annotation


# static fields
.field private static RECORDS:Ljava/util/BitSet;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 182
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->RECORDS:Ljava/util/BitSet;

    .line 184
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 188
    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->RECORDS:Ljava/util/BitSet;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;Ljava/util/BitSet;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method getPath()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    return-object v0
.end method

.method public handleRecord(I[B)V
    .locals 2
    .param p1, "recordType"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    .line 193
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    .line 199
    return-void
.end method
