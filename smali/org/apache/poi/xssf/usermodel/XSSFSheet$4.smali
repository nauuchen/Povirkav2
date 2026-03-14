.class Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;
.super Ljava/lang/Object;
.source "XSSFSheet.java"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field final synthetic val$source:Lorg/apache/poi/ss/usermodel/Table;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/usermodel/Table;)V
    .locals 0

    .line 4364
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;->val$source:Lorg/apache/poi/ss/usermodel/Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 1
    .param p1, "wsSource"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    .line 4367
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;->val$source:Lorg/apache/poi/ss/usermodel/Table;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setName(Ljava/lang/String;)V

    .line 4368
    return-void
.end method
