.class public final Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;
.super Ljava/lang/Object;
.source "UnmarshallContext.java"


# instance fields
.field private _package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0
    .param p1, "targetPackage"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .param p2, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->_package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 49
    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 50
    return-void
.end method


# virtual methods
.method getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->_package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    return-object v0
.end method

.method getZipEntry()Ljava/util/zip/ZipEntry;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->zipEntry:Ljava/util/zip/ZipEntry;

    return-object v0
.end method

.method public setPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0
    .param p1, "container"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 64
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->_package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 65
    return-void
.end method

.method public setPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0
    .param p1, "partName"    # Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 79
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 80
    return-void
.end method

.method public setZipEntry(Ljava/util/zip/ZipEntry;)V
    .locals 0
    .param p1, "zipEntry"    # Ljava/util/zip/ZipEntry;

    .line 94
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 95
    return-void
.end method
