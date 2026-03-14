.class public Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
.super Ljava/lang/Object;
.source "POIXMLDocumentPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/POIXMLDocumentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelationPart"
.end annotation


# instance fields
.field private final documentPart:Lorg/apache/poi/POIXMLDocumentPart;

.field private final relationship:Lorg/apache/poi/openxml4j/opc/PackageRelationship;


# direct methods
.method constructor <init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 0
    .param p1, "relationship"    # Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .param p2, "documentPart"    # Lorg/apache/poi/POIXMLDocumentPart;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->relationship:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 71
    iput-object p2, p0, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->documentPart:Lorg/apache/poi/POIXMLDocumentPart;

    .line 72
    return-void
.end method


# virtual methods
.method public getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">()TT;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->documentPart:Lorg/apache/poi/POIXMLDocumentPart;

    return-object v0
.end method

.method public getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->relationship:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-object v0
.end method
