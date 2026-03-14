.class public final Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XSLFPictureData.java"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureData;


# instance fields
.field private checksum:Ljava/lang/Long;

.field private index:I

.field private origSize:Ljava/awt/Dimension;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    .line 49
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 67
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    .line 49
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    .line 68
    return-void
.end method

.method static getRelationForType(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    .locals 2
    .param p0, "pt"    # Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    .line 227
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData$1;->$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType:[I

    invoke-virtual {p0}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 239
    :pswitch_0
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 238
    :pswitch_1
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 237
    :pswitch_2
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 236
    :pswitch_3
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 235
    :pswitch_4
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 234
    :pswitch_5
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 233
    :pswitch_6
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 232
    :pswitch_7
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 231
    :pswitch_8
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 230
    :pswitch_9
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 229
    :pswitch_a
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    .line 228
    :pswitch_b
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected cacheProperties()V
    .locals 5

    .line 141
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    if-nez v0, :cond_5

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object v0

    .line 143
    .local v0, "data":[B
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    .line 145
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v1

    .line 146
    .local v1, "pt":Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 147
    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 148
    return-void

    .line 151
    :cond_1
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureData$1;->$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType:[I

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    if-eq v3, v2, :cond_4

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    .line 164
    new-instance v2, Lorg/apache/poi/sl/image/ImageHeaderBitmap;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/sl/image/ImageHeaderBitmap;-><init>([BI)V

    invoke-virtual {v2}, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    goto :goto_0

    .line 161
    :cond_2
    new-instance v2, Lorg/apache/poi/sl/image/ImageHeaderPICT;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/sl/image/ImageHeaderPICT;-><init>([BI)V

    invoke-virtual {v2}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 162
    goto :goto_0

    .line 158
    :cond_3
    new-instance v2, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/sl/image/ImageHeaderWMF;-><init>([BI)V

    invoke-virtual {v2}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 159
    goto :goto_0

    .line 153
    :cond_4
    new-instance v2, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/sl/image/ImageHeaderEMF;-><init>([BI)V

    invoke-virtual {v2}, Lorg/apache/poi/sl/image/ImageHeaderEMF;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 154
    nop

    .line 168
    .end local v0    # "data":[B
    .end local v1    # "pt":Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    :cond_5
    :goto_0
    return-void
.end method

.method public getChecksum()[B
    .locals 4

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->cacheProperties()V

    .line 117
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 118
    .local v0, "cs":[B
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 119
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 2

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImageDimension()Ljava/awt/Dimension;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->cacheProperties()V

    .line 125
    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    return-object v0
.end method

.method public getImageDimensionInPixels()Ljava/awt/Dimension;
    .locals 5

    .line 130
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getImageDimension()Ljava/awt/Dimension;

    move-result-object v0

    .line 131
    .local v0, "dim":Ljava/awt/Dimension;
    new-instance v1, Ljava/awt/Dimension;

    invoke-virtual {v0}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v2

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    .line 248
    iget v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 2

    .line 196
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "ct":Ljava/lang/String;
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 199
    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 201
    :cond_1
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 203
    :cond_2
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 205
    :cond_3
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 207
    :cond_4
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 209
    :cond_5
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 211
    :cond_6
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 213
    :cond_7
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 214
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 215
    :cond_8
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 216
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 217
    :cond_9
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 218
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 219
    :cond_a
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 220
    sget-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v1

    .line 222
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method protected prepareForCommit()V
    .locals 0

    .line 177
    return-void
.end method

.method public setData([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 186
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 187
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 189
    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Ljava/awt/Dimension;

    .line 192
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 255
    iput p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    .line 256
    return-void
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
