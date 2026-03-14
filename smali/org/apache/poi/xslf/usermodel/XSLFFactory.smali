.class public final Lorg/apache/poi/xslf/usermodel/XSLFFactory;
.super Lorg/apache/poi/POIXMLFactory;
.source "XSLFFactory.java"


# static fields
.field private static final inst:Lorg/apache/poi/xslf/usermodel/XSLFFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    invoke-direct {v0}, Lorg/apache/poi/xslf/usermodel/XSLFFactory;-><init>()V

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->inst:Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/poi/POIXMLFactory;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lorg/apache/poi/xslf/usermodel/XSLFFactory;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFFactory;->inst:Lorg/apache/poi/xslf/usermodel/XSLFFactory;

    return-object v0
.end method


# virtual methods
.method protected createDocumentPart(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/poi/POIXMLDocumentPart;
    .locals 2
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

    .line 58
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 59
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/POIXMLDocumentPart;>;"
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart;

    return-object v1
.end method

.method protected getDescriptor(Ljava/lang/String;)Lorg/apache/poi/POIXMLRelation;
    .locals 1
    .param p1, "relationshipType"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-result-object v0

    return-object v0
.end method
