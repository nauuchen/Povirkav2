.class public Lorg/apache/poi/xwpf/usermodel/XWPFSettings;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "XWPFSettings.java"


# instance fields
.field private ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    .line 60
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    .line 56
    return-void
.end method

.method private readFrom(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 428
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/SettingsDocument;->getSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    nop

    .line 432
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
    .locals 2

    .line 418
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    .line 419
    .local v0, "documentProtection":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setDocumentProtection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;)V

    .line 423
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    .line 409
    .local v0, "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    new-instance v1, Ljavax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    .line 411
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    .line 412
    .local v1, "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 413
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v3, v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 414
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 415
    return-void

    .line 405
    .end local v0    # "xmlOptions":Lorg/apache/xmlbeans/XmlOptions;
    .end local v1    # "part":Lorg/apache/poi/openxml4j/opc/PackagePart;
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to write out settings that were never read in!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getZoomPercent()J
    .locals 4

    .line 83
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object v0

    .local v0, "zoom":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
    goto :goto_0

    .line 86
    .end local v0    # "zoom":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object v0

    .line 90
    .restart local v0    # "zoom":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->getPercent()Ljava/math/BigInteger;

    move-result-object v1

    .line 91
    .local v1, "percent":Ljava/math/BigInteger;
    if-nez v1, :cond_1

    .line 92
    const-wide/16 v2, 0x64

    return-wide v2

    .line 94
    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public isEnforcedWith()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    .line 131
    .local v0, "ctDocProtect":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    return v1

    .line 135
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEnforcement()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isEnforcedWith(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)Z
    .locals 4
    .param p1, "editValue"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 153
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    .line 155
    .local v0, "ctDocProtect":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 159
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEnforcement()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getEdit()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTrackRevisions()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result v0

    return v0
.end method

.method isUpdateFields()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetUpdateFields()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getUpdateFields()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDocumentRead()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/apache/poi/POIXMLDocumentPart;->onDocumentRead()V

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->readFrom(Ljava/io/InputStream;)V

    .line 67
    return-void
.end method

.method public removeEnforcement()V
    .locals 2

    .line 351
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 352
    return-void
.end method

.method public setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V
    .locals 2
    .param p1, "editValue"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;

    .line 176
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 177
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    .line 178
    return-void
.end method

.method public setEnforcementEditValue(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 10
    .param p1, "editValue"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "hashAlgo"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 199
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEnforcement(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 200
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setEdit(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDocProtect$Enum;)V

    .line 202
    if-nez p2, :cond_6

    .line 203
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptProviderType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptProviderType()V

    .line 207
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmClass()V

    .line 211
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmType()V

    .line 215
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptAlgorithmSid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptAlgorithmSid()V

    .line 219
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetSalt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetSalt()V

    .line 223
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetCryptSpinCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetCryptSpinCount()V

    .line 227
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->isSetHash()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 228
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->unsetHash()V

    goto/16 :goto_1

    .line 233
    :cond_6
    if-nez p3, :cond_7

    .line 234
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 237
    :cond_7
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 267
    .local v0, "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .local v1, "sid":I
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash algorithm \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not supported for document write protection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v1    # "sid":I
    :pswitch_0
    move-object v0, v2

    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    move v2, v1

    .line 263
    .local v2, "sid":I
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 264
    const/16 v2, 0xe

    .line 265
    goto :goto_0

    .line 237
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v2    # "sid":I
    :pswitch_1
    move-object v0, v2

    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    move v2, v1

    .line 259
    .restart local v2    # "sid":I
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 260
    const/16 v2, 0xd

    .line 261
    goto :goto_0

    .line 237
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v2    # "sid":I
    :pswitch_2
    move-object v0, v2

    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    move v2, v1

    .line 255
    .restart local v2    # "sid":I
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_AES:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 256
    const/16 v2, 0xc

    .line 257
    goto :goto_0

    .line 237
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v2    # "sid":I
    :pswitch_3
    move-object v0, v2

    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    move v2, v1

    .line 251
    .restart local v2    # "sid":I
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 252
    const/4 v2, 0x4

    .line 253
    goto :goto_0

    .line 237
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v2    # "sid":I
    :pswitch_4
    move-object v0, v2

    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    move v2, v1

    .line 247
    .restart local v2    # "sid":I
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 248
    const/4 v2, 0x3

    .line 249
    goto :goto_0

    .line 237
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v2    # "sid":I
    :pswitch_5
    move-object v0, v2

    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    move v2, v1

    .line 243
    .restart local v2    # "sid":I
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 244
    const/4 v2, 0x2

    .line 245
    goto :goto_0

    .line 239
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v2    # "sid":I
    :pswitch_6
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv;->RSA_FULL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;

    .line 240
    .restart local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    const/4 v2, 0x1

    .line 241
    .restart local v2    # "sid":I
    nop

    .line 272
    :goto_0
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 273
    .local v3, "random":Ljava/security/SecureRandom;
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    .line 277
    .local v4, "salt":[B
    const v5, 0x186a0

    .line 279
    .local v5, "spinCount":I
    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "legacyHash":Ljava/lang/String;
    invoke-static {v6, p3, v4, v5, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object v1

    .line 285
    .local v1, "hash":[B
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setSalt([B)V

    .line 286
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setHash([B)V

    .line 287
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptSpinCount(Ljava/math/BigInteger;)V

    .line 288
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    sget-object v8, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgType;->TYPE_ANY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgType$Enum;

    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgType$Enum;)V

    .line 289
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    sget-object v8, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgClass;->HASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgClass$Enum;

    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmClass(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STAlgClass$Enum;)V

    .line 290
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptProviderType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;)V

    .line 291
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v7

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->setCryptAlgorithmSid(Ljava/math/BigInteger;)V

    .line 293
    .end local v0    # "providerType":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCryptProv$Enum;
    .end local v1    # "hash":[B
    .end local v2    # "sid":I
    .end local v3    # "random":Ljava/security/SecureRandom;
    .end local v4    # "salt":[B
    .end local v5    # "spinCount":I
    .end local v6    # "legacyHash":Ljava/lang/String;
    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTrackRevisions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 391
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewTrackRevisions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetTrackRevisions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->unsetTrackRevisions()V

    .line 400
    :cond_1
    :goto_0
    return-void
.end method

.method public setUpdateFields()V
    .locals 2

    .line 367
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v0

    .line 368
    .local v0, "onOff":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 369
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->setUpdateFields(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    .line 370
    return-void
.end method

.method public setZoomPercent(J)V
    .locals 2
    .param p1, "zoomPercent"    # J

    .line 108
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->isSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->addNewZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->ctSettings:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSettings;->getZoom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;

    move-result-object v0

    .line 112
    .local v0, "zoom":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTZoom;->setPercent(Ljava/math/BigInteger;)V

    .line 113
    return-void
.end method

.method public validateProtectionPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getCryptAlgorithmSid()Ljava/math/BigInteger;

    move-result-object v0

    .line 303
    .local v0, "sid":Ljava/math/BigInteger;
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getHash()[B

    move-result-object v1

    .line 304
    .local v1, "hash":[B
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getSalt()[B

    move-result-object v2

    .line 305
    .local v2, "salt":[B
    invoke-direct {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;->safeGetDocumentProtection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocProtect;->getCryptSpinCount()Ljava/math/BigInteger;

    move-result-object v3

    .line 307
    .local v3, "spinCount":Ljava/math/BigInteger;
    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-nez v3, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    packed-switch v5, :pswitch_data_0

    move-object v5, v7

    .line 333
    .local v5, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    return v4

    .line 310
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :pswitch_0
    move-object v5, v7

    .line 330
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 331
    goto :goto_0

    .line 310
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :pswitch_1
    move-object v5, v7

    .line 327
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 328
    goto :goto_0

    .line 310
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :pswitch_2
    move-object v5, v7

    .line 324
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 325
    goto :goto_0

    .line 310
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_1
    move-object v5, v7

    .line 321
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 322
    goto :goto_0

    .line 310
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_2
    move-object v5, v7

    .line 318
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 319
    goto :goto_0

    .line 310
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_3
    move-object v5, v7

    .line 315
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 316
    goto :goto_0

    .line 312
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_4
    sget-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 313
    .restart local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    nop

    .line 336
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "legacyHash":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-static {v6, v5, v2, v7, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object v4

    .line 342
    .local v4, "hash2":[B
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    return v7

    .line 307
    .end local v4    # "hash2":[B
    .end local v5    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v6    # "legacyHash":Ljava/lang/String;
    :cond_5
    :goto_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
