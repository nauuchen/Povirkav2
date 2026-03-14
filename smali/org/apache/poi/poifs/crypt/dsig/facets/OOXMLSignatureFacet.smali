.class public Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "OOXMLSignatureFacet.java"


# static fields
.field private static final ID_PACKAGE_OBJECT:Ljava/lang/String; = "idPackageObject"

.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final signed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 147

    .line 81
    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    .line 297
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "activeXControlBinary"

    const-string v2, "aFChunk"

    const-string v3, "attachedTemplate"

    const-string v4, "attachedToolbars"

    const-string v5, "audio"

    const-string v6, "calcChain"

    const-string v7, "chart"

    const-string v8, "chartColorStyle"

    const-string v9, "chartLayout"

    const-string v10, "chartsheet"

    const-string v11, "chartStyle"

    const-string v12, "chartUserShapes"

    const-string v13, "commentAuthors"

    const-string v14, "comments"

    const-string v15, "connections"

    const-string v16, "connectorXml"

    const-string v17, "control"

    const-string v18, "ctrlProp"

    const-string v19, "customData"

    const-string v20, "customData"

    const-string v21, "customProperty"

    const-string v22, "customXml"

    const-string v23, "diagram"

    const-string v24, "diagramColors"

    const-string v25, "diagramColorsHeader"

    const-string v26, "diagramData"

    const-string v27, "diagramDrawing"

    const-string v28, "diagramLayout"

    const-string v29, "diagramLayoutHeader"

    const-string v30, "diagramQuickStyle"

    const-string v31, "diagramQuickStyleHeader"

    const-string v32, "dialogsheet"

    const-string v33, "dictionary"

    const-string v34, "documentParts"

    const-string v35, "downRev"

    const-string v36, "drawing"

    const-string v37, "endnotes"

    const-string v38, "externalLink"

    const-string v39, "externalLinkPath"

    const-string v40, "font"

    const-string v41, "fontTable"

    const-string v42, "footer"

    const-string v43, "footnotes"

    const-string v44, "functionPrototypes"

    const-string v45, "glossaryDocument"

    const-string v46, "graphicFrameDoc"

    const-string v47, "groupShapeXml"

    const-string v48, "handoutMaster"

    const-string v49, "hdphoto"

    const-string v50, "header"

    const-string v51, "hyperlink"

    const-string v52, "image"

    const-string v53, "ink"

    const-string v54, "inkXml"

    const-string v55, "keyMapCustomizations"

    const-string v56, "legacyDiagramText"

    const-string v57, "legacyDocTextInfo"

    const-string v58, "mailMergeHeaderSource"

    const-string v59, "mailMergeRecipientData"

    const-string v60, "mailMergeSource"

    const-string v61, "media"

    const-string v62, "notesMaster"

    const-string v63, "notesSlide"

    const-string v64, "numbering"

    const-string v65, "officeDocument"

    const-string v66, "officeDocument"

    const-string v67, "oleObject"

    const-string v68, "package"

    const-string v69, "pictureXml"

    const-string v70, "pivotCacheDefinition"

    const-string v71, "pivotCacheRecords"

    const-string v72, "pivotTable"

    const-string v73, "powerPivotData"

    const-string v74, "presProps"

    const-string v75, "printerSettings"

    const-string v76, "queryTable"

    const-string v77, "recipientData"

    const-string v78, "settings"

    const-string v79, "shapeXml"

    const-string v80, "sharedStrings"

    const-string v81, "sheetMetadata"

    const-string v82, "slicer"

    const-string v83, "slicer"

    const-string v84, "slicerCache"

    const-string v85, "slicerCache"

    const-string v86, "slide"

    const-string v87, "slideLayout"

    const-string v88, "slideMaster"

    const-string v89, "slideUpdateInfo"

    const-string v90, "slideUpdateUrl"

    const-string v91, "smartTags"

    const-string v92, "styles"

    const-string v93, "stylesWithEffects"

    const-string/jumbo v94, "table"

    const-string/jumbo v95, "tableSingleCells"

    const-string/jumbo v96, "tableStyles"

    const-string/jumbo v97, "tags"

    const-string/jumbo v98, "theme"

    const-string/jumbo v99, "themeOverride"

    const-string/jumbo v100, "timeline"

    const-string/jumbo v101, "timelineCache"

    const-string/jumbo v102, "transform"

    const-string/jumbo v103, "ui/altText"

    const-string/jumbo v104, "ui/buttonSize"

    const-string/jumbo v105, "ui/controlID"

    const-string/jumbo v106, "ui/description"

    const-string/jumbo v107, "ui/enabled"

    const-string/jumbo v108, "ui/extensibility"

    const-string/jumbo v109, "ui/extensibility"

    const-string/jumbo v110, "ui/helperText"

    const-string/jumbo v111, "ui/imageID"

    const-string/jumbo v112, "ui/imageMso"

    const-string/jumbo v113, "ui/keyTip"

    const-string/jumbo v114, "ui/label"

    const-string/jumbo v115, "ui/lcid"

    const-string/jumbo v116, "ui/loud"

    const-string/jumbo v117, "ui/pressed"

    const-string/jumbo v118, "ui/progID"

    const-string/jumbo v119, "ui/ribbonID"

    const-string/jumbo v120, "ui/showImage"

    const-string/jumbo v121, "ui/showLabel"

    const-string/jumbo v122, "ui/supertip"

    const-string/jumbo v123, "ui/target"

    const-string/jumbo v124, "ui/text"

    const-string/jumbo v125, "ui/title"

    const-string/jumbo v126, "ui/tooltip"

    const-string/jumbo v127, "ui/userCustomization"

    const-string/jumbo v128, "ui/visible"

    const-string/jumbo v129, "userXmlData"

    const-string/jumbo v130, "vbaProject"

    const-string/jumbo v131, "video"

    const-string/jumbo v132, "viewProps"

    const-string/jumbo v133, "vmlDrawing"

    const-string/jumbo v134, "volatileDependencies"

    const-string/jumbo v135, "webSettings"

    const-string/jumbo v136, "wordVbaData"

    const-string/jumbo v137, "worksheet"

    const-string/jumbo v138, "wsSortMap"

    const-string/jumbo v139, "xlBinaryIndex"

    const-string/jumbo v140, "xlExternalLinkPath/xlAlternateStartup"

    const-string/jumbo v141, "xlExternalLinkPath/xlLibrary"

    const-string/jumbo v142, "xlExternalLinkPath/xlPathMissing"

    const-string/jumbo v143, "xlExternalLinkPath/xlStartup"

    const-string/jumbo v144, "xlIntlMacrosheet"

    const-string/jumbo v145, "xlMacrosheet"

    const-string/jumbo v146, "xmlMaps"

    filled-new-array/range {v1 .. v146}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method

.method protected static getRelationshipReferenceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zipEntryName"    # Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getResourceReferenceURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "contentType"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isSignedRelationship(Ljava/lang/String;)Z
    .locals 5
    .param p0, "relationshipType"    # Ljava/lang/String;

    .line 289
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relationship type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 290
    const-string v0, ".*/relationships/"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "rt":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "customXml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "partName"    # Ljava/net/URI;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "pn":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 212
    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    nop

    .line 216
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {v2, v1}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected addManifestObject(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 101
    .local p2, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "manifestReferences":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestReferences(Ljava/util/List;)V

    .line 103
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newManifest(Ljava/util/List;)Ljavax/xml/crypto/dsig/Manifest;

    move-result-object v1

    .line 105
    .local v1, "manifest":Ljavax/xml/crypto/dsig/Manifest;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "objectContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureTime(Lorg/w3c/dom/Document;Ljava/util/List;)V

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v3

    const-string v4, "idPackageObject"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object v3

    .line 111
    .local v3, "xo":Ljavax/xml/crypto/dsig/XMLObject;
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v5, "#idPackageObject"

    const/4 v6, 0x0

    const-string v7, "http://www.w3.org/2000/09/xmldsig#Object"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v4

    .line 114
    .local v4, "reference":Ljavax/xml/crypto/dsig/Reference;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method protected addManifestReferences(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 121
    .local p1, "manifestReferences":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v9

    .line 122
    .local v9, "ooxml":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    const-string v0, "application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v9, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 124
    .local v10, "relsEntryNames":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 125
    .local v11, "digestedPartNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 126
    .local v13, "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v13}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(.*)/_rels/.*"

    const-string v4, "$1"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, "baseUri":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v2, v9}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v15, v2

    .line 131
    .local v15, "prc":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :try_start_1
    invoke-virtual {v15, v13}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    nop

    .line 136
    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    invoke-direct {v1}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;-><init>()V

    move-object v6, v1

    .line 137
    .local v6, "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    invoke-virtual {v15}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v17, v0

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 138
    .local v18, "relationship":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "relationshipType":Ljava/lang/String;
    sget-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 146
    goto :goto_1

    .line 149
    :cond_0
    invoke-static {v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->isSignedRelationship(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->addRelationshipReference(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0, v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "partName":Ljava/lang/String;
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    goto :goto_1

    .line 161
    :cond_2
    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    :try_start_2
    invoke-static {v4}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    .line 166
    .local v0, "relName":Lorg/apache/poi/openxml4j/opc/PackagePartName;
    invoke-virtual {v9, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 167
    .local v1, "pp2":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    .line 170
    .end local v1    # "pp2":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .local v0, "contentType":Ljava/lang/String;
    nop

    .line 172
    const-string v1, "customXml"

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "inkml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v17, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    .end local v5    # "relationshipType":Ljava/lang/String;
    .local v20, "relationshipType":Ljava/lang/String;
    const-string v5, "skipping customXml with content type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v17

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 175
    move-object/from16 v19, v6

    goto :goto_2

    .line 172
    .end local v20    # "relationshipType":Ljava/lang/String;
    .restart local v5    # "relationshipType":Ljava/lang/String;
    :cond_3
    move-object/from16 v20, v5

    .line 178
    .end local v5    # "relationshipType":Ljava/lang/String;
    .restart local v20    # "relationshipType":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?ContentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 179
    .local v17, "uri":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v22, v4

    .end local v4    # "partName":Ljava/lang/String;
    .local v22, "partName":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    .end local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .local v19, "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v1

    .line 180
    .local v1, "reference":Ljavax/xml/crypto/dsig/Reference;
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "reference":Ljavax/xml/crypto/dsig/Reference;
    .end local v17    # "uri":Ljava/lang/String;
    .end local v18    # "relationship":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v20    # "relationshipType":Ljava/lang/String;
    .end local v22    # "partName":Ljava/lang/String;
    nop

    .line 137
    :goto_2
    move-object/from16 v17, v0

    move-object/from16 v6, v19

    goto/16 :goto_1

    .line 168
    .end local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .restart local v4    # "partName":Ljava/lang/String;
    .restart local v5    # "relationshipType":Ljava/lang/String;
    .restart local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .restart local v18    # "relationship":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :catch_0
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .end local v4    # "partName":Ljava/lang/String;
    .end local v5    # "relationshipType":Ljava/lang/String;
    .end local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .restart local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .restart local v20    # "relationshipType":Ljava/lang/String;
    .restart local v22    # "partName":Ljava/lang/String;
    move-object/from16 v1, v17

    .line 169
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .local v1, "contentType":Ljava/lang/String;
    new-instance v2, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {v2, v0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 137
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v18    # "relationship":Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .end local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .end local v20    # "relationshipType":Ljava/lang/String;
    .end local v22    # "partName":Ljava/lang/String;
    .restart local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    :cond_4
    move-object/from16 v19, v6

    .line 183
    .end local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .end local v16    # "i$":Ljava/util/Iterator;
    .restart local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->hasSourceIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    const-string v1, "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    move-object/from16 v6, v19

    .end local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .restart local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    invoke-virtual {v7, v1, v6}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-virtual {v7, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2, v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 189
    .local v16, "uri":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v0

    .end local v6    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    .restart local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v1

    .line 190
    .local v1, "reference":Ljavax/xml/crypto/dsig/Reference;
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v0    # "transforms":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Transform;>;"
    .end local v1    # "reference":Ljavax/xml/crypto/dsig/Reference;
    .end local v13    # "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v14    # "baseUri":Ljava/lang/String;
    .end local v15    # "prc":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .end local v16    # "uri":Ljava/lang/String;
    .end local v19    # "parameterSpec":Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;
    :cond_5
    move-object v1, v15

    move-object/from16 v0, v17

    goto/16 :goto_0

    .line 132
    .restart local v13    # "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .restart local v14    # "baseUri":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v15, v1

    .line 133
    .local v0, "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .restart local v15    # "prc":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :goto_3
    new-instance v1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid relationship descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 194
    .end local v0    # "e":Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "pp":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v14    # "baseUri":Ljava/lang/String;
    .end local v15    # "prc":Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :cond_6
    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;

    invoke-direct {v0, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    return-void
.end method

.method protected addSignatureInfo(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 251
    .local p2, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    move-object/from16 v6, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 253
    .local v7, "objectContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    invoke-static {}, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document$Factory;->newInstance()Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;

    move-result-object v8

    .line 254
    .local v8, "sigV1":Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;
    invoke-interface {v8}, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;->addNewSignatureInfoV1()Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;

    move-result-object v9

    .line 255
    .local v9, "ctSigV1":Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;
    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setManifestHashAlgorithm(Ljava/lang/String;)V

    .line 256
    invoke-interface {v9}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v10, p1

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/w3c/dom/Element;

    .line 257
    .local v11, "n":Lorg/w3c/dom/Element;
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v1, "xmlns"

    const-string v2, "http://schemas.microsoft.com/office/2006/digsig"

    invoke-interface {v11, v0, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 260
    .local v12, "signatureInfoContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    new-instance v0, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v0, v11}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "idOfficeV1Details"

    invoke-virtual {v0, v12, v1, v3}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperty;

    move-result-object v13

    .line 265
    .local v13, "signatureInfoSignatureProperty":Ljavax/xml/crypto/dsig/SignatureProperty;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 266
    .local v14, "signaturePropertyContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/SignatureProperty;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperties(Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperties;

    move-result-object v15

    .line 269
    .local v15, "signatureProperties":Ljavax/xml/crypto/dsig/SignatureProperties;
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const-string v5, "idOfficeObject"

    .line 272
    .local v5, "objectId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    invoke-virtual {v0, v7, v5, v1, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object v0

    move-object/from16 v4, p3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/2000/09/xmldsig#Object"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "objectId":Ljava/lang/String;
    .local v16, "objectId":Ljava/lang/String;
    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v0

    .line 275
    .local v0, "reference":Ljavax/xml/crypto/dsig/Reference;
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method protected addSignatureTime(Lorg/w3c/dom/Document;Ljava/util/List;)V
    .locals 10
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/XMLStructure;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "objectContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 225
    .local v0, "fmt":Ljava/text/DateFormat;
    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 226
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getExecutionTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "nowStr":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 229
    invoke-static {}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;

    move-result-object v2

    .line 230
    .local v2, "sigTime":Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->addNewSignatureTime()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;

    move-result-object v4

    .line 231
    .local v4, "ctTime":Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;
    const-string v5, "YYYY-MM-DDThh:mm:ssTZD"

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setFormat(Ljava/lang/String;)V

    .line 232
    invoke-interface {v4, v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-interface {v4}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {p1, v5, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 235
    .local v3, "n":Lorg/w3c/dom/Element;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v5, "signatureTimeContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/XMLStructure;>;"
    new-instance v6, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v6, v3}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v8}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "idSignatureTime"

    invoke-virtual {v6, v5, v7, v8}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperty;

    move-result-object v6

    .line 240
    .local v6, "signatureTimeSignatureProperty":Ljavax/xml/crypto/dsig/SignatureProperty;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v7, "signaturePropertyContent":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/SignatureProperty;>;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperties(Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperties;

    move-result-object v8

    .line 244
    .local v8, "signatureProperties":Ljavax/xml/crypto/dsig/SignatureProperties;
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    .line 90
    .local p2, "references":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/Reference;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljavax/xml/crypto/dsig/XMLObject;>;"
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pre sign"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestObject(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureInfo(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    .line 93
    return-void
.end method
