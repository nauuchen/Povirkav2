.class public Lorg/apache/poi/xdgf/usermodel/XDGFFactory;
.super Lorg/apache/poi/POIXMLFactory;
.source "XDGFFactory.java"


# instance fields
.field private final document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/POIXMLFactory;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    .line 36
    return-void
.end method


# virtual methods
.method protected createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 5
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/poi/POIXMLDocumentPart;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 54
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 55
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    aput-object v3, v2, v1

    .line 56
    .local v2, "cl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    aput-object v3, v0, v1

    .local v0, "vals":[Ljava/lang/Object;
    goto :goto_0

    .line 58
    .end local v0    # "vals":[Ljava/lang/Object;
    .end local v2    # "cl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Class;

    .line 59
    .restart local v2    # "cl":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, p2

    invoke-static {p2, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    array-length v3, p2

    const-class v4, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    aput-object v4, v2, v3

    .line 61
    array-length v3, p3

    add-int/2addr v3, v0

    new-array v0, v3, [Ljava/lang/Object;

    .line 62
    .restart local v0    # "vals":[Ljava/lang/Object;
    array-length v3, p3

    invoke-static {p3, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v1, p3

    iget-object v3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    aput-object v3, v0, v1

    .line 66
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 67
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/POIXMLDocumentPart;

    return-object v3
.end method

.method protected getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;
    .locals 1
    .param p1, "relationshipType"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    move-result-object v0

    return-object v0
.end method
