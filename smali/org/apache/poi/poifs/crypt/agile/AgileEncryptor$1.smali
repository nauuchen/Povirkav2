.class Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;
.super Ljava/lang/Object;
.source "AgileEncryptor.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

.field final synthetic val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 2
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 399
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 400
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 402
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 404
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->createEncryptionDocument()Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    move-result-object v0

    .line 405
    .local v0, "ed":Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->marshallEncryptionDocument(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 406
    return-void
.end method
