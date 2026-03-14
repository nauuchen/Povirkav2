.class public Lorg/apache/poi/xssf/usermodel/XSSFVBAPart;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSSFVBAPart.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected prepareForCommit()V
    .locals 0

    .line 50
    return-void
.end method
