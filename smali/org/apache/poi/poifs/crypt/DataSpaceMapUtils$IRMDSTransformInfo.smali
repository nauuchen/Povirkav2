.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;
.super Ljava/lang/Object;
.source "DataSpaceMapUtils.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IRMDSTransformInfo"
.end annotation


# instance fields
.field extensibilityHeader:I

.field transformInfoHeader:Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

.field xrMLLicense:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;ILjava/lang/String;)V
    .locals 0
    .param p1, "transformInfoHeader"    # Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;
    .param p2, "extensibilityHeader"    # I
    .param p3, "xrMLLicense"    # Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->transformInfoHeader:Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

    .line 183
    iput p2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->extensibilityHeader:I

    .line 184
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->xrMLLicense:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->transformInfoHeader:Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

    .line 189
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->extensibilityHeader:I

    .line 190
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUtf8LPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->xrMLLicense:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 195
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->transformInfoHeader:Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 196
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->extensibilityHeader:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;->xrMLLicense:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUtf8LPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 199
    return-void
.end method
