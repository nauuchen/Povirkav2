.class public abstract Lorg/apache/poi/POITextExtractor;
.super Ljava/lang/Object;
.source "POITextExtractor.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private fsToClose:Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/POITextExtractor;->fsToClose:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/poi/POITextExtractor;->fsToClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 76
    :cond_0
    return-void
.end method

.method public abstract getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public setFilesystem(Ljava/io/Closeable;)V
    .locals 0
    .param p1, "fs"    # Ljava/io/Closeable;

    .line 61
    iput-object p1, p0, Lorg/apache/poi/POITextExtractor;->fsToClose:Ljava/io/Closeable;

    .line 62
    return-void
.end method
