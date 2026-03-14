.class public Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;
.super Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;
.source "ZipContentTypeManager.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 55
    return-void
.end method


# virtual methods
.method public saveImpl(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z
    .locals 9
    .param p1, "content"    # Lorg/w3c/dom/Document;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "zos":Ljava/util/zip/ZipOutputStream;
    instance-of v1, p2, Ljava/util/zip/ZipOutputStream;

    if-eqz v1, :cond_0

    .line 62
    move-object v0, p2

    check-cast v0, Ljava/util/zip/ZipOutputStream;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 66
    :goto_0
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v2, "[Content_Types].xml"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "partEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 71
    invoke-static {p1, v0}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    return v3

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 80
    return v2

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v5, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Cannot write: [Content_Types].xml in Zip !"

    aput-object v8, v7, v3

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 78
    return v3
.end method
