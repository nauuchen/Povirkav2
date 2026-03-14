.class public final Lorg/apache/poi/openxml4j/opc/ContentTypes;
.super Ljava/lang/Object;
.source "ContentTypes.java"


# static fields
.field public static final CORE_PROPERTIES_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.core-properties+xml"

.field public static final CUSTOM_XML_PART:Ljava/lang/String; = "application/vnd.openxmlformats-officedocument.customXmlProperties+xml"

.field public static final DIGITAL_SIGNATURE_CERTIFICATE_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.digital-signature-certificate"

.field public static final DIGITAL_SIGNATURE_ORIGIN_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.digital-signature-origin"

.field public static final DIGITAL_SIGNATURE_XML_SIGNATURE_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.digital-signature-xmlsignature+xml"

.field public static final EXTENSION_GIF:Ljava/lang/String; = "gif"

.field public static final EXTENSION_JPG_1:Ljava/lang/String; = "jpg"

.field public static final EXTENSION_JPG_2:Ljava/lang/String; = "jpeg"

.field public static final EXTENSION_PICT:Ljava/lang/String; = "tiff"

.field public static final EXTENSION_PNG:Ljava/lang/String; = "png"

.field public static final EXTENSION_TIFF:Ljava/lang/String; = "tiff"

.field public static final EXTENSION_XML:Ljava/lang/String; = "xml"

.field public static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field public static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final IMAGE_PICT:Ljava/lang/String; = "image/pict"

.field public static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final IMAGE_TIFF:Ljava/lang/String; = "image/tiff"

.field public static final PLAIN_OLD_XML:Ljava/lang/String; = "application/xml"

.field public static final RELATIONSHIPS_PART:Ljava/lang/String; = "application/vnd.openxmlformats-package.relationships+xml"

.field public static final XML:Ljava/lang/String; = "text/xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 114
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "image/gif"

    return-object v1

    .line 121
    :cond_1
    const-string/jumbo v1, "tiff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const-string v1, "image/pict"

    return-object v1

    .line 123
    :cond_2
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    const-string v1, "image/png"

    return-object v1

    .line 125
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    const-string v1, "image/tiff"

    return-object v1

    .line 127
    :cond_4
    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    const-string/jumbo v1, "text/xml"

    return-object v1

    .line 130
    :cond_5
    const/4 v1, 0x0

    return-object v1

    .line 118
    :cond_6
    :goto_0
    const-string v1, "image/jpeg"

    return-object v1
.end method
