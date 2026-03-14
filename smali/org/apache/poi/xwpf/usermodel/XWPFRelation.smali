.class public final Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
.super Lorg/apache/poi/POIXMLRelation;
.source "XWPFRelation.java"


# static fields
.field public static final COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    .line 37
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    const-string v3, "/word/document.xml"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 43
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template.main+xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 49
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.ms-word.document.macroEnabled.main+xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 55
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.ms-word.template.macroEnabledTemplate.main+xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 61
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.glossary+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/glossaryDocument"

    const-string v3, "/word/glossary/document.xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 67
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering"

    const-string v5, "/word/numbering.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 73
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable"

    const-string v3, "/word/fontTable.xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 79
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings"

    const-string v5, "/word/settings.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 85
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v5, "/word/styles.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 91
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/webSettings"

    const-string v3, "/word/webSettings.xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 97
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.header+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/header"

    const-string v5, "/word/header#.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 103
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer"

    const-string v5, "/word/footer#.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 109
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v3, "/word/theme/theme#.xml"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 115
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v0, v4, v1, v4, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 121
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    invoke-direct {v0, v4, v1, v4, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 127
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes"

    const-string v5, "/word/footnotes.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 133
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/endnotes"

    invoke-direct {v0, v4, v1, v4, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 142
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/x-emf"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v5, "/word/media/image#.emf"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 148
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/x-wmf"

    const-string v5, "/word/media/image#.wmf"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 154
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/pict"

    const-string v5, "/word/media/image#.pict"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 160
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/jpeg"

    const-string v5, "/word/media/image#.jpeg"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 166
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/png"

    const-string v5, "/word/media/image#.png"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 172
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/dib"

    const-string v5, "/word/media/image#.dib"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 178
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/gif"

    const-string v5, "/word/media/image#.gif"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 184
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/tiff"

    const-string v5, "/word/media/image#.tiff"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 190
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/x-eps"

    const-string v5, "/word/media/image#.eps"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 196
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/x-ms-bmp"

    const-string v5, "/word/media/image#.bmp"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 202
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    const-string v2, "image/x-wpg"

    const-string v5, "/word/media/image#.wpg"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 208
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    invoke-direct {v0, v4, v3, v4, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

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
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 217
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .locals 1
    .param p0, "rel"    # Ljava/lang/String;

    .line 228
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-object v0
.end method
