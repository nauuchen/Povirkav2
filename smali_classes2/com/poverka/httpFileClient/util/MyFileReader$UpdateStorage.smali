.class public Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;
.super Ljava/lang/Object;
.source "MyFileReader.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/MyFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateStorage"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private scanner:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "f"    # Ljava/io/File;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;->file:Ljava/io/File;

    .line 227
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;->scanner:Landroid/media/MediaScannerConnection;

    .line 228
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 229
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;->scanner:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 240
    iget-object v0, p0, Lcom/poverka/httpFileClient/util/MyFileReader$UpdateStorage;->scanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 241
    return-void
.end method
