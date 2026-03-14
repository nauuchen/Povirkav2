.class public Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
.super Ljava/lang/Object;
.source "XSSFDataFormat.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataFormat;


# instance fields
.field private final stylesSource:Lorg/apache/poi/xssf/model/StylesTable;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/model/StylesTable;)V
    .locals 0
    .param p1, "stylesSource"    # Lorg/apache/poi/xssf/model/StylesTable;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    .line 40
    return-void
.end method


# virtual methods
.method public getFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 83
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->getFormat(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat(S)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # S

    .line 70
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatAt(S)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "fmt":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method public getFormat(Ljava/lang/String;)S
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/model/StylesTable;->putNumberFormat(Ljava/lang/String;)I

    move-result v0

    .line 54
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method public putFormat(SLjava/lang/String;)V
    .locals 1
    .param p1, "index"    # S
    .param p2, "format"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/model/StylesTable;->putNumberFormat(SLjava/lang/String;)V

    .line 97
    return-void
.end method
