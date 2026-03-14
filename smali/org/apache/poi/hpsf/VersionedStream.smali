.class Lorg/apache/poi/hpsf/VersionedStream;
.super Ljava/lang/Object;
.source "VersionedStream.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

.field private final _versionGuid:Lorg/apache/poi/hpsf/GUID;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/GUID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_versionGuid:Lorg/apache/poi/hpsf/GUID;

    .line 28
    new-instance v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

    .line 30
    return-void
.end method


# virtual methods
.method read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 1
    .param p1, "lei"    # Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    .line 33
    iget-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_versionGuid:Lorg/apache/poi/hpsf/GUID;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/GUID;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 34
    iget-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/IndirectPropertyName;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    .line 35
    return-void
.end method
