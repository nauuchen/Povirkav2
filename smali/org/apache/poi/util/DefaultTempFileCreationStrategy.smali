.class public Lorg/apache/poi/util/DefaultTempFileCreationStrategy;
.super Ljava/lang/Object;
.source "DefaultTempFileCreationStrategy.java"

# interfaces
.implements Lorg/apache/poi/util/TempFileCreationStrategy;


# static fields
.field private static final JAVA_IO_TMPDIR:Ljava/lang/String; = "java.io.tmpdir"

.field public static final KEEP_FILES:Ljava/lang/String; = "poi.keep.tmp.files"

.field static final POIFILES:Ljava/lang/String; = "poifiles"

.field private static final random:Ljava/security/SecureRandom;


# instance fields
.field private dir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;-><init>(Ljava/io/File;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    .line 69
    return-void
.end method

.method private createPOIFilesDirectory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    if-nez v0, :cond_1

    .line 75
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "tmpDir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Ljava/io/File;

    const-string v2, "poifiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Systems temporary directory not defined - set the -Djava.io.tmpdir jvm property!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "tmpDir":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createTempDirectory(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method private createTempDirectory(Ljava/io/File;)V
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 96
    .local v0, "dirExists":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    return-void

    .line 100
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create temporary directory. \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exists but is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create temporary directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createTempDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createPOIFilesDirectory()V

    .line 129
    sget-object v0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 130
    .local v0, "n":J
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v2, "newDirectory":Ljava/io/File;
    invoke-direct {p0, v2}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createTempDirectory(Ljava/io/File;)V

    .line 134
    const-string v3, "poi.keep.tmp.files"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    .line 139
    :cond_0
    return-object v2
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->createPOIFilesDirectory()V

    .line 110
    iget-object v0, p0, Lorg/apache/poi/util/DefaultTempFileCreationStrategy;->dir:Ljava/io/File;

    invoke-static {p1, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "newFile":Ljava/io/File;
    const-string v1, "poi.keep.tmp.files"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 118
    :cond_0
    return-object v0
.end method
