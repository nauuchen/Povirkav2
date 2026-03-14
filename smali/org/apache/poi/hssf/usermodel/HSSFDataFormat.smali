.class public final Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
.super Ljava/lang/Object;
.source "HSSFDataFormat.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataFormat;


# static fields
.field private static final _builtinFormats:[Ljava/lang/String;


# instance fields
.field private final _formats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _movedBuiltins:Z

.field private final _workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getAll()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_builtinFormats:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 5
    .param p1, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_movedBuiltins:Z

    .line 58
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/FormatRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FormatRecord;

    .line 63
    .local v1, "r":Lorg/apache/poi/hssf/record/FormatRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->ensureFormatsSize(I)V

    .line 64
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getIndexCode()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormatRecord;->getFormatString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v1    # "r":Lorg/apache/poi/hssf/record/FormatRecord;
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method private ensureFormatsSize(I)V
    .locals 2
    .param p1, "index"    # I

    .line 177
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public static getBuiltinFormat(S)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # S

    .line 161
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuiltinFormat(Ljava/lang/String;)S
    .locals 1
    .param p0, "format"    # Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static getBuiltinFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_builtinFormats:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfBuiltinBuiltinFormats()I
    .locals 1

    .line 169
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_builtinFormats:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public getFormat(S)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # S

    .line 131
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_movedBuiltins:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 135
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 138
    return-object v1

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_2
    move-object v0, v1

    .line 142
    .local v0, "fmt":Ljava/lang/String;
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_builtinFormats:[Ljava/lang/String;

    array-length v2, v1

    if-le v2, p1, :cond_4

    aget-object v2, v1, p1

    if-eqz v2, :cond_4

    .line 144
    if-eqz v0, :cond_3

    .line 146
    return-object v0

    .line 149
    :cond_3
    aget-object v1, v1, p1

    return-object v1

    .line 152
    :cond_4
    return-object v0
.end method

.method public getFormat(Ljava/lang/String;)S
    .locals 5
    .param p1, "pFormat"    # Ljava/lang/String;

    .line 92
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "@"

    .local v0, "format":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 99
    .restart local v0    # "format":Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_movedBuiltins:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_builtinFormats:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 101
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->ensureFormatsSize(I)V

    .line 102
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 103
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    aget-object v3, v3, v1

    invoke-virtual {v4, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "i":I
    :cond_2
    iput-boolean v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_movedBuiltins:Z

    .line 112
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 113
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    int-to-short v2, v1

    return v2

    .line 112
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 119
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFormat(Ljava/lang/String;Z)S

    move-result v1

    .line 120
    .local v1, "index":S
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->ensureFormatsSize(I)V

    .line 121
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;->_formats:Ljava/util/Vector;

    invoke-virtual {v2, v1, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    return v1
.end method
