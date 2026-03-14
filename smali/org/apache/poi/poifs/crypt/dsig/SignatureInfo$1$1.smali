.class Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;
.super Ljava/lang/Object;
.source "SignatureInfo.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;",
        ">;"
    }
.end annotation


# instance fields
.field pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field sigOrigRels:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field sigRels:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V
    .locals 1

    .line 375
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->this$1:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 377
    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/origin"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigOrigRels:Ljava/util/Iterator;

    .line 379
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;

    .line 380
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 7

    .line 383
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    return v1

    .line 384
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigOrigRels:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 385
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigOrigRels:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 386
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v0

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Digital Signature Origin part"

    aput-object v5, v4, v2

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    aput-object v5, v4, v1

    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 388
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const-string v4, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/signature"

    invoke-virtual {v0, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v4

    const/4 v5, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Reference to signature is invalid."

    aput-object v6, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {v4, v5, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 391
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :goto_2
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->next()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
    .locals 8

    .line 397
    const/4 v0, 0x0

    .line 400
    .local v0, "sigRelPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v4, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    move-object v0, v4

    .line 402
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "XML Signature part"

    aput-object v6, v5, v1

    aput-object v0, v5, v3

    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 405
    goto :goto_1

    .line 400
    :cond_0
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    .end local v0    # "sigRelPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    throw v4
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .restart local v0    # "sigRelPart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    :catch_0
    move-exception v4

    .line 404
    .local v4, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    const/4 v6, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "Reference to signature is invalid."

    aput-object v7, v2, v1

    aput-object v4, v2, v3

    invoke-virtual {v5, v6, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 406
    .end local v4    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v1, :cond_1

    .line 407
    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->this$1:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V

    return-object v1

    .line 406
    :cond_1
    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
