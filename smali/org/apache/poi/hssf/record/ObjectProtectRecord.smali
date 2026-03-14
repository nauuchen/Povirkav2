.class public final Lorg/apache/poi/hssf/record/ObjectProtectRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ObjectProtectRecord.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x63s


# instance fields
.field private field_1_protect:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->clone()Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/ObjectProtectRecord;
    .locals 2

    .line 100
    new-instance v0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;-><init>()V

    .line 101
    .local v0, "rec":Lorg/apache/poi/hssf/record/ObjectProtectRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    .line 102
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 90
    const/4 v0, 0x2

    return v0
.end method

.method public getProtect()Z
    .locals 2

    .line 71
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getSid()S
    .locals 1

    .line 95
    const/16 v0, 0x63

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    return-void
.end method

.method public setProtect(Z)V
    .locals 1
    .param p1, "protect"    # Z

    .line 54
    if-eqz p1, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->field_1_protect:S

    .line 62
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SCENARIOPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "    .protect         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->getProtect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, "[/SCENARIOPROTECT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
