.class Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;
.super Ljava/lang/Object;
.source "HSSFRow.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/ss/usermodel/Cell;",
        ">;"
    }
.end annotation


# instance fields
.field nextId:I

.field final synthetic this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

.field thisId:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->thisId:I

    .line 647
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->nextId:I

    .line 651
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->findNext()V

    .line 652
    return-void
.end method

.method private findNext()V
    .locals 2

    .line 678
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->nextId:I

    add-int/lit8 v0, v0, 0x1

    .line 679
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 681
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_1
    :goto_1
    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->nextId:I

    .line 684
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 656
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->nextId:I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 645
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->next()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2

    .line 661
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->nextId:I

    aget-object v0, v0, v1

    .line 664
    .local v0, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->thisId:I

    .line 665
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->findNext()V

    .line 666
    return-object v0

    .line 662
    .end local v0    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "At last element"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 671
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->thisId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 673
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-static {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;->thisId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 674
    return-void

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
