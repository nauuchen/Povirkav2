.class public Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;
.super Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;
.source "HSSFColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/util/HSSFColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AUTOMATIC"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# static fields
.field public static final hexString:Ljava/lang/String;

.field public static final index:S

.field public static final index2:I

.field private static final ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

.field public static final triplet:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1025
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    .line 1026
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v1

    sput-short v1, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->index:S

    .line 1027
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex2()S

    move-result v1

    sput v1, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->index2:I

    .line 1028
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getTriplet()[S

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->triplet:[S

    .line 1029
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getHexString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->hexString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1030
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;-><init>(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 1

    .line 1033
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->ref:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-static {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->access$100(Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method
