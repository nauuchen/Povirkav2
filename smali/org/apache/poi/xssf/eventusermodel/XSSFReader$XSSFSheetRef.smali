.class public final Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;
.super Ljava/lang/Object;
.source "XSSFReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "XSSFSheetRef"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->id:Ljava/lang/String;

    .line 406
    iput-object p2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->name:Ljava/lang/String;

    .line 407
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;->name:Ljava/lang/String;

    return-object v0
.end method
