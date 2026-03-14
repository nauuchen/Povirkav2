.class public Lorg/apache/poi/ddf/EscherOptRecord;
.super Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.source "EscherOptRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtOPT"

.field public static final RECORD_ID:S = -0xff5s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()S
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->setInstance(S)V

    .line 36
    invoke-super {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getInstance()S

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getInstance()S

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherOptRecord;->getVersion()S

    .line 49
    invoke-super {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getOptions()S

    move-result v0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "Opt"

    return-object v0
.end method

.method public getVersion()S
    .locals 1

    .line 61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherOptRecord;->setVersion(S)V

    .line 62
    invoke-super {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getVersion()S

    move-result v0

    return v0
.end method

.method public setVersion(S)V
    .locals 2
    .param p1, "value"    # S

    .line 68
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->setVersion(S)V

    .line 74
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msofbtOPT can have only \'0x3\' version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
