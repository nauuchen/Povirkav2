.class Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;
.super Ljava/lang/Object;
.source "XSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field final synthetic val$source:Lorg/apache/poi/ss/util/AreaReference;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    .line 4262
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;->val$source:Lorg/apache/poi/ss/util/AreaReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 8
    .param p1, "wsSource"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    .line 4265
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;->val$source:Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v0

    .line 4266
    .local v0, "firstCell":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 4267
    .local v2, "firstRow":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v4, v0, v3

    .line 4268
    .local v4, "firstCol":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;->val$source:Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v5

    .line 4269
    .local v5, "lastCell":[Ljava/lang/String;
    aget-object v1, v5, v1

    .line 4270
    .local v1, "lastRow":Ljava/lang/String;
    aget-object v3, v5, v3

    .line 4271
    .local v3, "lastCol":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4272
    .local v6, "ref":Ljava/lang/String;
    invoke-interface {p1, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setRef(Ljava/lang/String;)V

    .line 4273
    return-void
.end method
