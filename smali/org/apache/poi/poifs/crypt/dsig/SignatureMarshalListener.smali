.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;
.super Ljava/lang/Object;
.source "SignatureMarshalListener.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;


# instance fields
.field signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

.field target:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/w3c/dom/events/EventTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->target:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 2
    .param p0, "target"    # Lorg/w3c/dom/events/EventTarget;
    .param p1, "listener"    # Lorg/w3c/dom/events/EventListener;
    .param p2, "enabled"    # Z

    .line 76
    const-string v0, "DOMSubtreeModified"

    .line 77
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 78
    .local v1, "useCapture":Z
    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method public handleElement(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "el"    # Lorg/w3c/dom/Element;

    .line 57
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    .line 59
    .local v0, "target":Lorg/w3c/dom/events/EventTarget;
    const-string v1, "Id"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {p1, v1, v3}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 63
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V

    .line 64
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "parentNS":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v5, "mdssi"

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    const-string/jumbo v5, "xmlns:mdssi"

    invoke-interface {p1, v4, v5, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "parentNS":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setPrefix(Lorg/w3c/dom/Node;)V

    .line 71
    invoke-static {v0, p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setListener(Lorg/w3c/dom/events/EventTarget;Lorg/w3c/dom/events/EventListener;Z)V

    .line 72
    return-void
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .param p1, "e"    # Lorg/w3c/dom/events/Event;

    .line 45
    instance-of v0, p1, Lorg/w3c/dom/events/MutationEvent;

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/events/MutationEvent;

    .line 49
    .local v0, "mutEvt":Lorg/w3c/dom/events/MutationEvent;
    invoke-interface {v0}, Lorg/w3c/dom/events/MutationEvent;->getTarget()Lorg/w3c/dom/events/EventTarget;

    move-result-object v1

    .line 50
    .local v1, "et":Lorg/w3c/dom/events/EventTarget;
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-nez v2, :cond_1

    .line 51
    return-void

    .line 53
    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->handleElement(Lorg/w3c/dom/Element;)V

    .line 54
    return-void
.end method

.method public setEventTarget(Lorg/w3c/dom/events/EventTarget;)V
    .locals 1
    .param p1, "target"    # Lorg/w3c/dom/events/EventTarget;

    .line 40
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->target:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method protected setPrefix(Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "el"    # Lorg/w3c/dom/Node;

    .line 86
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getNamespacePrefixes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 92
    .local v1, "nl":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 93
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->setPrefix(Lorg/w3c/dom/Node;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0
    .param p1, "signatureConfig"    # Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 99
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 100
    return-void
.end method
