.class final Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;
.super Ljava/lang/Object;
.source "SignatureFacet.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->brokenJvmWorkaround(Ljavax/xml/crypto/dsig/Reference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bcProv:Ljava/security/Provider;

.field final synthetic val$digestMethod:Ljavax/xml/crypto/dsig/DigestMethod;

.field final synthetic val$reference:Ljavax/xml/crypto/dsig/Reference;


# direct methods
.method constructor <init>(Ljavax/xml/crypto/dsig/DigestMethod;Ljava/security/Provider;Ljavax/xml/crypto/dsig/Reference;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$digestMethod:Ljavax/xml/crypto/dsig/DigestMethod;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$bcProv:Ljava/security/Provider;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$reference:Ljavax/xml/crypto/dsig/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 7

    .line 175
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lorg/apache/jcp/xml/dsig/internal/dom/DOMDigestMethod;

    const-string v3, "getMessageDigestAlgorithm"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 176
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 177
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$digestMethod:Ljavax/xml/crypto/dsig/DigestMethod;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, "mdAlgo":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$bcProv:Ljava/security/Provider;

    invoke-static {v3, v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 179
    .local v4, "md":Ljava/security/MessageDigest;
    const-class v5, Lorg/apache/jcp/xml/dsig/internal/dom/DOMReference;

    const-string v6, "md"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 180
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet$1;->val$reference:Ljavax/xml/crypto/dsig/Reference;

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "mdAlgo":Ljava/lang/String;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Can\'t overwrite message digest (workaround for https://bugzilla.redhat.com/show_bug.cgi?id=1155012)"

    aput-object v6, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 185
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
