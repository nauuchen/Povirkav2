.class public Lorg/apache/poi/POIXMLProperties$CustomProperties;
.super Ljava/lang/Object;
.source "POIXMLProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/POIXMLProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomProperties"
.end annotation


# static fields
.field public static final FORMAT_ID:Ljava/lang/String; = "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"


# instance fields
.field private props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;


# direct methods
.method private constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;)V
    .locals 0
    .param p1, "props"    # Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;Lorg/apache/poi/POIXMLProperties$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;
    .param p2, "x1"    # Lorg/apache/poi/POIXMLProperties$1;

    .line 477
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;-><init>(Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/poi/POIXMLProperties$CustomProperties;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/POIXMLProperties$CustomProperties;

    .line 477
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    return-object v0
.end method

.method private add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 500
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->addNewProperty()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .line 506
    .local v0, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->nextPid()I

    move-result v1

    .line 507
    .local v1, "pid":I
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setPid(I)V

    .line 508
    const-string/jumbo v2, "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setFmtid(Ljava/lang/String;)V

    .line 509
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setName(Ljava/lang/String;)V

    .line 510
    return-object v0

    .line 501
    .end local v0    # "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .end local v1    # "pid":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A property with this name already exists in the custom properties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 535
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .line 536
    .local v0, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setR8(D)V

    .line 537
    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 548
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .line 549
    .local v0, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setI4(I)V

    .line 550
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 522
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .line 523
    .local v0, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setLpwstr(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 561
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLProperties$CustomProperties;->add(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .line 562
    .local v0, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->setBool(Z)V

    .line 563
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 586
    .local v3, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    .line 585
    .end local v3    # "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 604
    .local v3, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 605
    return-object v3

    .line 603
    .end local v3    # "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v0

    return-object v0
.end method

.method protected nextPid()I
    .locals 6

    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, "propid":I
    iget-object v1, p0, Lorg/apache/poi/POIXMLProperties$CustomProperties;->props:Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/PropertiesDocument;->getProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;

    move-result-object v1

    .local v1, "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 573
    .local v4, "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    invoke-interface {v4}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getPid()I

    move-result v5

    if-le v5, v0, :cond_0

    invoke-interface {v4}, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;->getPid()I

    move-result v0

    .line 572
    .end local v4    # "p":Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "arr$":[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method
