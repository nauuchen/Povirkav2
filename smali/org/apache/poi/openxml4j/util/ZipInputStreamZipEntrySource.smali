.class public Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;
.super Ljava/lang/Object;
.source "ZipInputStreamZipEntrySource.java"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;,
        Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private zipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V
    .locals 4
    .param p1, "inp"    # Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x1

    .line 51
    .local v0, "going":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 53
    .local v1, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_0

    .line 54
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    :cond_0
    new-instance v2, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;

    invoke-direct {v2, v1, p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    .line 57
    .local v2, "entry":Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->closeEntry()V

    .line 59
    iget-object v3, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v1    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v2    # "entry":Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;
    :goto_1
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->close()V

    .line 63
    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    .line 38
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;-><init>(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$1;)V

    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 2
    .param p1, "zipEntry"    # Ljava/util/zip/ZipEntry;

    .line 70
    instance-of v0, p1, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;

    .line 72
    .local v0, "entry":Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "entry":Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
