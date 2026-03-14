.class public Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XDGFXMLDocumentPart.java"


# instance fields
.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 31
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 32
    iput-object p2, p0, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 33
    return-void
.end method
