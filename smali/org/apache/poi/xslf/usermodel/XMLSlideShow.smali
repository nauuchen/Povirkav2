.class public Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
.super Lorg/apache/poi/POIXMLDocument;
.source "XMLSlideShow.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SlideShow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/POIXMLDocument;",
        "Lorg/apache/poi/sl/usermodel/SlideShow<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

.field private _masters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;",
            ">;"
        }
    .end annotation
.end field

.field private _notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

.field private _pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private _presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

.field private _slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation
.end field

.field private _tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->empty()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 2
    .param p1, "pkg"    # Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 98
    :cond_0
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->load(Lorg/apache/poi/POIXMLFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 6
    .param p1, "slide"    # Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 297
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createNotesMaster()V

    .line 301
    :cond_0
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getFileNameIndex(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/Integer;

    move-result-object v0

    .line 306
    .local v0, "slideIndex":Ljava/lang/Integer;
    :goto_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "slideName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 308
    .local v2, "found":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getRelations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart;

    .line 309
    .local v4, "relation":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    const/4 v2, 0x1

    .line 313
    goto :goto_2

    .end local v4    # "relation":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_1
    goto :goto_1

    .line 317
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v3

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 320
    const/4 v2, 0x1

    .line 323
    :cond_3
    if-nez v2, :cond_4

    .line 324
    nop

    .line 330
    .end local v1    # "slideName":Ljava/lang/String;
    .end local v2    # "found":Z
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    .line 333
    .local v1, "notesSlide":Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 334
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v1, v3, v2, v4}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 335
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1, v3, v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 337
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/usermodel/XSLFNotes;->importContent(Lorg/apache/poi/xslf/usermodel/XSLFSheet;)Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    .line 339
    return-object v1

    .line 326
    .local v1, "slideName":Ljava/lang/String;
    .restart local v2    # "found":Z
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 327
    .end local v1    # "slideName":Ljava/lang/String;
    .end local v2    # "found":Z
    goto/16 :goto_0
.end method

.method static empty()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 3

    .line 109
    const-class v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    const-string v1, "empty.pptx"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 110
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/apache/poi/POIXMLException;

    invoke-direct {v2, v1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 111
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v2, "Missing resource \'empty.pptx\'"

    invoke-direct {v1, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 1
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 4
    .param p1, "pict"    # Ljava/io/File;
    .param p2, "format"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 535
    .local v1, "length":I
    new-array v0, v1, [B

    .line 536
    .local v0, "data":[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 538
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v2, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 541
    nop

    .line 542
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v3

    return-object v3

    .line 540
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v3
.end method

.method public addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 6
    .param p1, "pictureData"    # [B
    .param p2, "format"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    .line 480
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    .line 482
    .local v0, "img":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    if-eqz v0, :cond_0

    .line 483
    return-object v0

    .line 486
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 487
    .local v1, "imageNumber":I
    invoke-static {p2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getRelationForType(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-result-object v2

    .line 488
    .local v2, "relType":Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    if-eqz v2, :cond_1

    .line 491
    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    .line 492
    invoke-virtual {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->setIndex(I)V

    .line 493
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 496
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 497
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v3    # "out":Ljava/io/OutputStream;
    nop

    .line 502
    return-object v0

    .line 498
    :catch_0
    move-exception v3

    .line 499
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/apache/poi/POIXMLException;

    invoke-direct {v4, v3}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 489
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Picture type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    .line 171
    .local v0, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 172
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v2, v1, v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 174
    return-void
.end method

.method public createMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
            "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createNotesMaster()V
    .locals 11

    .line 346
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->NOTES_MASTER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    .line 348
    .local v0, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    .line 350
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;

    move-result-object v1

    .line 351
    .local v1, "notesMasterIdList":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;->addNewNotesMasterId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;

    move-result-object v4

    .line 352
    .local v4, "notesMasterId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;
    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdListEntry;->setId(Ljava/lang/String;)V

    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 356
    .local v5, "themeIndex":Ljava/lang/Integer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v6, "themeIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getRelations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/POIXMLDocumentPart;

    .line 358
    .local v8, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v9, v8, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    if-eqz v9, :cond_0

    .line 359
    sget-object v9, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v9, v8}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getFileNameIndex(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_0
    goto :goto_0

    .line 363
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 364
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 365
    .local v7, "found":Ljava/lang/Boolean;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .local v8, "i":Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-gt v9, v10, :cond_3

    .line 366
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 367
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 368
    move-object v5, v8

    .line 365
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    .line 371
    .end local v8    # "i":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    .line 372
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 376
    .end local v7    # "found":Ljava/lang/Boolean;
    :cond_4
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v2, v7, v8}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    .line 378
    .local v2, "theme":Lorg/apache/poi/xslf/usermodel/XSLFTheme;
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlides()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->importTheme(Lorg/apache/poi/xslf/usermodel/XSLFTheme;)V

    .line 380
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v3, v7, v8, v2}, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 381
    return-void
.end method

.method public bridge synthetic createSlide()Lorg/apache/poi/sl/usermodel/Slide;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v0

    return-object v0
.end method

.method public createSlide()Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 7

    .line 265
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    .line 266
    .local v0, "sm":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    sget-object v2, Lorg/apache/poi/xslf/usermodel/SlideLayout;->BLANK:Lorg/apache/poi/xslf/usermodel/SlideLayout;

    invoke-virtual {v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayout(Lorg/apache/poi/xslf/usermodel/SlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v2

    .line 267
    .local v2, "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    if-nez v2, :cond_1

    .line 268
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Blank layout was not found - defaulting to first slide layout in master"

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getSlideLayouts()[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v3

    .line 270
    .local v3, "sl":[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    array-length v4, v3

    if-eqz v4, :cond_0

    .line 273
    aget-object v2, v3, v1

    goto :goto_0

    .line 271
    :cond_0
    new-instance v1, Lorg/apache/poi/POIXMLException;

    const-string v4, "SlideMaster must contain a SlideLayout."

    invoke-direct {v1, v4}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    .end local v3    # "sl":[Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    move-result-object v1

    return-object v1
.end method

.method public createSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 11
    .param p1, "layout"    # Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    .line 207
    const/16 v0, 0x100

    .local v0, "slideNumber":I
    const/4 v1, 0x1

    .line 209
    .local v1, "cnt":I
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->addNewSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v2

    .local v2, "slideList":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    goto/16 :goto_4

    .line 212
    .end local v2    # "slideList":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v2

    .line 213
    .restart local v2    # "slideList":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v3

    .local v3, "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 214
    .local v6, "slideId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    invoke-interface {v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    int-to-long v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    .line 215
    nop

    .end local v6    # "slideId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    add-int/lit8 v1, v1, 0x1

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "arr$":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_1
    :goto_1
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v3, v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "slideName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 223
    .local v4, "found":Z
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getRelations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/POIXMLDocumentPart;

    .line 224
    .local v6, "relation":Lorg/apache/poi/POIXMLDocumentPart;
    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    const/4 v4, 0x1

    .line 228
    goto :goto_3

    .end local v6    # "relation":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_2
    goto :goto_2

    .line 232
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v5

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 235
    const/4 v4, 0x1

    .line 238
    :cond_4
    if-nez v4, :cond_5

    .line 239
    nop

    .line 245
    .end local v3    # "slideName":Ljava/lang/String;
    .end local v4    # "found":Z
    :goto_4
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-static {}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v1, v5}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v3

    .line 247
    .local v3, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 249
    .local v4, "slide":Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->addNewSldId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v5

    .line 250
    .local v5, "slideId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    int-to-long v6, v0

    invoke-interface {v5, v6, v7}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->setId(J)V

    .line 251
    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->setId2(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v4}, Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;->copyLayout(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V

    .line 254
    const/4 v6, 0x0

    sget-object v7, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->SLIDE_LAYOUT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v4, v6, v7, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 256
    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-object v4

    .line 241
    .end local v5    # "slideId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .local v3, "slideName":Ljava/lang/String;
    .local v4, "found":Z
    :cond_5
    nop

    .end local v3    # "slideName":Ljava/lang/String;
    .end local v4    # "found":Z
    add-int/lit8 v1, v1, 0x1

    .line 242
    goto/16 :goto_1
.end method

.method public findLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 575
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getSlideMasters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    .line 576
    .local v1, "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;->getLayout(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;

    move-result-object v2

    .line 577
    .local v2, "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    if-eqz v2, :cond_0

    .line 578
    return-object v2

    .line 580
    .end local v1    # "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    .end local v2    # "layout":Lorg/apache/poi/xslf/usermodel/XSLFSlideLayout;
    :cond_0
    goto :goto_0

    .line 581
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic findPictureData([B)Lorg/apache/poi/sl/usermodel/PictureData;
    .locals 1
    .param p1, "x0"    # [B

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    move-result-object v0

    return-object v0
.end method

.method public findPictureData([B)Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    .locals 6
    .param p1, "pictureData"    # [B

    .line 555
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    .line 556
    .local v0, "checksum":J
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 557
    .local v2, "cs":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 559
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPictureData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    .line 560
    .local v4, "pic":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getChecksum()[B

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    return-object v4

    .end local v4    # "pic":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    :cond_0
    goto :goto_0

    .line 564
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getAllEmbedds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const-string v1, "/ppt/embeddings/.*?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCTPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    return-object v0
.end method

.method public getCommentAuthors()Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    return-object v0
.end method

.method getDefaultParagraphStyle(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
    .locals 3
    .param p1, "level"    # I

    .line 590
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declare namespace p=\'http://schemas.openxmlformats.org/presentationml/2006/main\' declare namespace a=\'http://schemas.openxmlformats.org/drawingml/2006/main\' .//p:defaultTextStyle/a:lvl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pPr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 594
    .local v0, "o":[Lorg/apache/xmlbeans/XmlObject;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 595
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-object v1

    .line 597
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNotesMaster()Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    return-object v0
.end method

.method public getNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    .locals 1
    .param p1, "slide"    # Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 284
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;->getNotes()Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    .line 285
    .local v0, "notesSlide":Lorg/apache/poi/xslf/usermodel/XSLFNotes;
    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->createNotesSlide(Lorg/apache/poi/xslf/usermodel/XSLFSlide;)Lorg/apache/poi/xslf/usermodel/XSLFNotes;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0
.end method

.method public getPageSize()Ljava/awt/Dimension;
    .locals 7

    .line 450
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    move-result-object v0

    .line 451
    .local v0, "sz":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->getCx()I

    move-result v1

    .line 452
    .local v1, "cx":I
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->getCy()I

    move-result v2

    .line 453
    .local v2, "cy":I
    new-instance v3, Ljava/awt/Dimension;

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-long v5, v2

    invoke-static {v5, v6}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    return-object v3
.end method

.method public getPictureData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFPictureData;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const-string v1, "/ppt/media/.*?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "mediaParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 192
    .local v2, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;

    invoke-direct {v3, v2}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 193
    .local v3, "pd":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->setIndex(I)V

    .line 194
    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v2    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v3    # "pd":Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
    goto :goto_0

    .line 197
    .end local v0    # "mediaParts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/openxml4j/opc/PackagePart;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_pictures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lorg/apache/poi/sl/usermodel/Resources;
    .locals 1

    .line 609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSlideMasters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    return-object v0
.end method

.method public getSlides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    return-object v0
.end method

.method public getTableStyles()Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    return-object v0
.end method

.method protected onDocumentRead()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;

    move-result-object v0

    .line 127
    .local v0, "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;->getPresentation()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v1, "masterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v2, "shIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xslf/usermodel/XSLFSlide;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getRelationParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 132
    .local v4, "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v5

    .line 133
    .local v5, "p":Lorg/apache/poi/POIXMLDocumentPart;
    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_0
    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    if-eqz v6, :cond_1

    .line 136
    invoke-virtual {p0, v5}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v5

    check-cast v7, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_1
    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    if-eqz v6, :cond_2

    .line 138
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    iput-object v6, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_tableStyles:Lorg/apache/poi/xslf/usermodel/XSLFTableStyles;

    goto :goto_1

    .line 139
    :cond_2
    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    if-eqz v6, :cond_3

    .line 140
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    iput-object v6, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_notesMaster:Lorg/apache/poi/xslf/usermodel/XSLFNotesMaster;

    goto :goto_1

    .line 141
    :cond_3
    instance-of v6, v5, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    if-eqz v6, :cond_4

    .line 142
    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    iput-object v6, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_commentAuthors:Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;

    .line 144
    .end local v4    # "rp":Lorg/apache/poi/POIXMLDocumentPart$RelationPart;
    .end local v5    # "p":Lorg/apache/poi/POIXMLDocumentPart;
    :cond_4
    :goto_1
    goto :goto_0

    .line 146
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    .line 147
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;->getSldMasterIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;

    .line 148
    .local v4, "masterId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;

    .line 149
    .local v5, "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_masters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    nop

    .end local v4    # "masterId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;
    .end local v5    # "master":Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;
    goto :goto_2

    .line 152
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    .line 153
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->isSetSldIdLst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 154
    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    .line 155
    .local v4, "slId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 156
    .local v5, "sh":Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    if-nez v5, :cond_7

    .line 157
    sget-object v6, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Slide with r:id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was defined, but didn\'t exist in package, skipping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 158
    goto :goto_3

    .line 160
    :cond_7
    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    nop

    .end local v4    # "slId":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .end local v5    # "sh":Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    goto :goto_3

    .line 165
    .end local v0    # "doc":Lorg/openxmlformats/schemas/presentationml/x2006/main/PresentationDocument;
    .end local v1    # "masterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xslf/usermodel/XSLFSlideMaster;>;"
    .end local v2    # "shIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/xslf/usermodel/XSLFSlide;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    nop

    .line 166
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeSlide(I)Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .locals 2
    .param p1, "index"    # I

    .line 442
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    .line 443
    .local v0, "slide":Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    .line 444
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->removeSldId(I)V

    .line 445
    return-object v0
.end method

.method public setPageSize(Ljava/awt/Dimension;)V
    .locals 3
    .param p1, "pgSize"    # Ljava/awt/Dimension;

    .line 458
    invoke-static {}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize$Factory;->newInstance()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;

    move-result-object v0

    .line 459
    .local v0, "sz":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->setCx(I)V

    .line 460
    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;->setCy(I)V

    .line 461
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->setSldSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;)V

    .line 462
    return-void
.end method

.method public setSlideOrder(Lorg/apache/poi/xslf/usermodel/XSLFSlide;I)V
    .locals 6
    .param p1, "slide"    # Lorg/apache/poi/xslf/usermodel/XSLFSlide;
    .param p2, "newIndex"    # I

    .line 417
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 418
    .local v0, "oldIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 421
    if-ne v0, p2, :cond_0

    .line 422
    return-void

    .line 426
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_slides:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->_presentation:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;

    move-result-object v1

    .line 430
    .local v1, "sldIdLst":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    move-result-object v2

    .line 431
    .local v2, "entries":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    aget-object v3, v2, v0

    .line 432
    .local v3, "oldEntry":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    if-ge v0, p2, :cond_1

    .line 433
    add-int/lit8 v4, v0, 0x1

    sub-int v5, p2, v0

    invoke-static {v2, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 435
    :cond_1
    add-int/lit8 v4, p2, 0x1

    sub-int v5, v0, p2

    invoke-static {v2, p2, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    :goto_0
    aput-object v3, v2, p2

    .line 438
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->setSldIdArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V

    .line 439
    return-void

    .line 419
    .end local v1    # "sldIdLst":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
    .end local v2    # "entries":[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    .end local v3    # "oldEntry":Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Slide not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
