.class public final enum Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
.super Ljava/lang/Enum;
.source "XSSFWorkbookType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

.field public static final enum XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

.field public static final enum XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;


# instance fields
.field private final _contentType:Ljava/lang/String;

.field private final _extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XLSX"

    const/4 v3, 0x0

    const-string/jumbo v4, "xlsx"

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    .line 27
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XLSM"

    const/4 v5, 0x1

    const-string/jumbo v6, "xlsm"

    invoke-direct {v1, v4, v5, v2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    .line 24
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->$VALUES:[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_contentType:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_extension:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->$VALUES:[Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->_extension:Ljava/lang/String;

    return-object v0
.end method
