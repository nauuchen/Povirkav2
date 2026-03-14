.class final Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;
.super Ljava/lang/Object;
.source "SXSSFWorkbook.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SheetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/poi/ss/usermodel/Sheet;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 0

    .line 722
    .local p0, "this":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;, "Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator<TT;>;"
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->this$0:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->access$000(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->it:Ljava/util/Iterator;

    .line 724
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 727
    .local p0, "this":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;, "Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 719
    .local p0, "this":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;, "Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->next()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 732
    .local p0, "this":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;, "Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 733
    .local v0, "xssfSheet":Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;->this$0:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 742
    .local p0, "this":Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;, "Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove method not supported on XSSFWorkbook.iterator(). Use Sheet.removeSheetAt(int) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
