.class Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;
.super Ljava/lang/Object;
.source "OOXMLSignatureFacet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestReferences(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljavax/xml/crypto/dsig/Reference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 194
    move-object v0, p1

    check-cast v0, Ljavax/xml/crypto/dsig/Reference;

    move-object v1, p2

    check-cast v1, Ljavax/xml/crypto/dsig/Reference;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;->compare(Ljavax/xml/crypto/dsig/Reference;Ljavax/xml/crypto/dsig/Reference;)I

    move-result v0

    return v0
.end method

.method public compare(Ljavax/xml/crypto/dsig/Reference;Ljavax/xml/crypto/dsig/Reference;)I
    .locals 2
    .param p1, "o1"    # Ljavax/xml/crypto/dsig/Reference;
    .param p2, "o2"    # Ljavax/xml/crypto/dsig/Reference;

    .line 196
    invoke-interface {p1}, Ljavax/xml/crypto/dsig/Reference;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljavax/xml/crypto/dsig/Reference;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
