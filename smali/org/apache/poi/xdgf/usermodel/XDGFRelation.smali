.class public Lorg/apache/poi/xdgf/usermodel/XDGFRelation;
.super Lorg/apache/poi/POIXMLRelation;
.source "XDGFRelation.java"


# static fields
.field public static final DOCUMENT:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final IMAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final MASTER:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final MASTERS:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final PAGE:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final PAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final WINDOW:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->_table:Ljava/util/Map;

    .line 34
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-string v1, "application/vnd.ms-visio.drawing.main+xml"

    const-string v2, "http://schemas.microsoft.com/visio/2010/relationships/document"

    const-string v3, "/visio/document.xml"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->DOCUMENT:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    .line 39
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-class v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasters;

    const-string v2, "application/vnd.ms-visio.masters+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/masters"

    const-string v5, "/visio/masters/masters.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->MASTERS:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    .line 44
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-class v1, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    const-string v2, "application/vnd.ms-visio.master+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/master"

    const-string v5, "/visio/masters/master#.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->MASTER:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    .line 49
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    invoke-direct {v0, v4, v1, v4, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->IMAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    .line 53
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-class v1, Lorg/apache/poi/xdgf/usermodel/XDGFPages;

    const-string v2, "application/vnd.ms-visio.pages+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/pages"

    const-string v5, "/visio/pages/pages.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->PAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    .line 58
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-class v1, Lorg/apache/poi/xdgf/usermodel/XDGFPageContents;

    const-string v2, "application/vnd.ms-visio.page+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/page"

    const-string v5, "/visio/pages/page#.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->PAGE:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    .line 63
    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-string v1, "application/vnd.ms-visio.windows+xml"

    const-string v2, "http://schemas.microsoft.com/visio/2010/relationships/windows"

    const-string v3, "/visio/windows.xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->WINDOW:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    sget-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFRelation;
    .locals 1
    .param p0, "rel"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    return-object v0
.end method
