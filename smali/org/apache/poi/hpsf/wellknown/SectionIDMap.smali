.class public Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
.super Ljava/lang/Object;
.source "SectionIDMap.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

.field private static final DOC_SUMMARY_INFORMATION:Lorg/apache/poi/hpsf/ClassID;

.field public static final SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

.field public static final UNDEFINED:Ljava/lang/String; = "[undefined]"

.field private static final USER_DEFINED_PROPERTIES:Lorg/apache/poi/hpsf/ClassID;

.field private static defaultMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hpsf/ClassID;",
            "Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Ljava/lang/ThreadLocal;

    .line 53
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{F29F85E0-4FF9-1068-AB91-08002B27B3D9}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    .line 59
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v1, "{D5CDD502-2E9C-101B-9397-08002B2CF9AE}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOC_SUMMARY_INFORMATION:Lorg/apache/poi/hpsf/ClassID;

    .line 61
    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    const-string/jumbo v2, "{D5CDD505-2E9C-101B-9397-08002B2CF9AE}"

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->USER_DEFINED_PROPERTIES:Lorg/apache/poi/hpsf/ClassID;

    .line 64
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/poi/hpsf/ClassID;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;
    .locals 3

    .line 80
    sget-object v0, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 81
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;>;"
    if-nez v0, :cond_0

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 83
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->defaultMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;-><init>()V

    return-object v1
.end method

.method public static getPIDString(Lorg/apache/poi/hpsf/ClassID;J)Ljava/lang/String;
    .locals 3
    .param p0, "sectionFormatID"    # Lorg/apache/poi/hpsf/ClassID;
    .param p1, "pid"    # J

    .line 106
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->get(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    .line 107
    .local v0, "m":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    const-string v1, "[undefined]"

    if-nez v0, :cond_0

    .line 108
    return-object v1

    .line 110
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 112
    return-object v1

    .line 114
    :cond_1
    return-object v2
.end method


# virtual methods
.method public get(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1
    .param p1, "sectionFormatID"    # Lorg/apache/poi/hpsf/ClassID;

    .line 127
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->get(Lorg/apache/poi/hpsf/ClassID;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method protected put(Ljava/lang/String;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 150
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put(Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1
    .param p1, "sectionFormatID"    # Lorg/apache/poi/hpsf/ClassID;
    .param p2, "propertyIDMap"    # Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 138
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->getInstance()Lorg/apache/poi/hpsf/wellknown/SectionIDMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->put(Lorg/apache/poi/hpsf/ClassID;Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method
