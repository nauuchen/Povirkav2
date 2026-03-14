.class final Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
.super Ljava/lang/Object;
.source "RecordFactoryInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamEncryptionInfo"
.end annotation


# instance fields
.field private final _filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

.field private final _hasBOFRecord:Z

.field private final _initialRecordsSize:I

.field private final _lastRecord:Lorg/apache/poi/hssf/record/Record;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;Ljava/util/List;)V
    .locals 5
    .param p1, "rs"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/RecordInputStream;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "outputRecs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 59
    .local v0, "recSize":I
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 60
    .local v1, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    instance-of v3, v1, Lorg/apache/poi/hssf/record/BOFRecord;

    if-eqz v3, :cond_3

    .line 63
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 69
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 71
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    instance-of v3, v1, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 77
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 79
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    instance-of v3, v1, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz v3, :cond_1

    .line 84
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 88
    :cond_1
    instance-of v3, v1, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez v3, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Nothing between BOF and EOF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    .line 100
    :cond_4
    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_initialRecordsSize:I

    .line 101
    iput-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 102
    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 103
    return-void
.end method


# virtual methods
.method public createDecryptingStream(Ljava/io/InputStream;)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 6
    .param p1, "original"    # Ljava/io/InputStream;

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 107
    .local v0, "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "userPassword":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 109
    const-string v1, "VelvetSweatshop"

    .line 112
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    .line 114
    .local v2, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VelvetSweatshop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Default"

    goto :goto_0

    :cond_1
    const-string v5, "Supplied"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " password is invalid for salt/verifier/verifierHash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    .end local v1    # "userPassword":Ljava/lang/String;
    .end local v2    # "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .end local p1    # "original":Ljava/io/InputStream;
    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .restart local v0    # "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    .restart local v1    # "userPassword":Ljava/lang/String;
    .restart local v2    # "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .restart local p1    # "original":Ljava/io/InputStream;
    :cond_2
    nop

    .line 123
    new-instance v3, Lorg/apache/poi/hssf/record/RecordInputStream;

    iget v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_initialRecordsSize:I

    invoke-direct {v3, p1, v2, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    return-object v3

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v4, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getLastRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    return-object v0
.end method

.method public hasBOFRecord()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    return v0
.end method

.method public hasEncryption()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
