.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.super Ljava/lang/Object;
.source "XSLFPropertiesDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TextCharDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    return-void
.end method

.method private static getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "props"    # Lorg/apache/xmlbeans/XmlObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")TT;"
        }
    .end annotation

    .line 1826
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 1827
    .local v0, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1828
    return-object v1

    .line 1829
    :cond_0
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1830
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 1831
    :cond_1
    instance-of v2, p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    if-eqz v2, :cond_2

    .line 1832
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 1833
    :cond_2
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    if-eqz v2, :cond_3

    .line 1834
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 1835
    :cond_3
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    if-eqz v2, :cond_4

    .line 1836
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 1837
    :cond_4
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    if-nez v2, :cond_9

    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    if-nez v2, :cond_9

    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    if-nez v2, :cond_9

    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    if-nez v2, :cond_9

    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    if-nez v2, :cond_9

    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    if-eqz v2, :cond_5

    goto :goto_0

    .line 1844
    :cond_5
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    if-eqz v2, :cond_6

    .line 1845
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;)V

    move-object v0, v2

    goto :goto_1

    .line 1846
    :cond_6
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    if-eqz v2, :cond_7

    .line 1847
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    move-object v0, v2

    goto :goto_1

    .line 1848
    :cond_7
    instance-of v2, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    if-eqz v2, :cond_8

    .line 1849
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TextCharDelegate;

    move-object v5, p1

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-direct {v2, v5}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TextCharDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    move-object v0, v2

    goto :goto_1

    .line 1851
    :cond_8
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is an unknown properties type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1852
    return-object v1

    .line 1843
    :cond_9
    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;

    invoke-direct {v2, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    move-object v0, v2

    .line 1855
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1856
    return-object v0

    .line 1859
    :cond_a
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t implement "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 1860
    return-object v1
.end method

.method public static getEffectDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;
    .locals 1
    .param p0, "props"    # Lorg/apache/xmlbeans/XmlObject;

    .line 65
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;

    return-object v0
.end method

.method public static getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    .locals 1
    .param p0, "props"    # Lorg/apache/xmlbeans/XmlObject;

    .line 57
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    return-object v0
.end method

.method public static getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
    .locals 1
    .param p0, "props"    # Lorg/apache/xmlbeans/XmlObject;

    .line 61
    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    return-object v0
.end method
