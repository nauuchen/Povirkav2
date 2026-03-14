.class public Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XWPFPictureData.java"


# static fields
.field protected static final RELATIONS:[Lorg/apache/poi/POIXMLRelation;


# instance fields
.field private checksum:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/apache/poi/POIXMLRelation;

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    .line 46
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 47
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 49
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 52
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 53
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 56
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 57
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    if-ne p1, p0, :cond_0

    .line 181
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 185
    return v0

    .line 188
    :cond_1
    instance-of v1, p1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    if-nez v1, :cond_2

    .line 189
    return v0

    .line 192
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 193
    .local v1, "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    .line 194
    .local v2, "foreignPackagePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    .line 196
    .local v3, "ownPackagePart":Lorg/apache/poi/openxml4j/opc/PackagePart;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 198
    :cond_4
    return v0

    .line 201
    :cond_5
    if-eqz v3, :cond_9

    .line 202
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    .line 203
    .local v4, "foreignPackage":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v5

    .line 205
    .local v5, "ownPackage":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    if-eqz v4, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-nez v4, :cond_8

    if-eqz v5, :cond_8

    .line 207
    :cond_7
    return v0

    .line 209
    :cond_8
    if-eqz v5, :cond_9

    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 212
    return v0

    .line 217
    .end local v4    # "foreignPackage":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .end local v5    # "ownPackage":Lorg/apache/poi/openxml4j/opc/OPCPackage;
    :cond_9
    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v4

    .line 218
    .local v4, "foreignChecksum":Ljava/lang/Long;
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v5

    .line 220
    .local v5, "localChecksum":Ljava/lang/Long;
    invoke-virtual {v5, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 221
    return v0

    .line 223
    :cond_a
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getData()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getData()[B

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getChecksum()Ljava/lang/Long;
    .locals 4

    .line 150
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->checksum:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 154
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 155
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .local v1, "data":[B
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    nop

    .line 161
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->checksum:Ljava/lang/Long;

    goto :goto_1

    .line 159
    .end local v1    # "data":[B
    :catchall_0
    move-exception v2

    .restart local v1    # "data":[B
    goto :goto_0

    .line 156
    .end local v1    # "data":[B
    :catch_0
    move-exception v2

    .line 157
    .restart local v1    # "data":[B
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lorg/apache/poi/POIXMLException;

    invoke-direct {v3, v2}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "data":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "data":[B
    :catchall_1
    move-exception v2

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 163
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "data":[B
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->checksum:Ljava/lang/Long;

    return-object v0
.end method

.method public getData()[B
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPictureType()I
    .locals 4

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 138
    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 139
    goto :goto_1

    .line 142
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    return v1

    .line 137
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 228
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getChecksum()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onDocumentRead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-super {p0}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRead()V

    .line 82
    return-void
.end method

.method protected prepareForCommit()V
    .locals 0

    .line 238
    return-void
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
