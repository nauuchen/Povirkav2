.class Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;
.super Ljava/lang/Object;
.source "XSSFSheet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftRows(IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)V
    .locals 0

    .line 3036
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 3036
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-object v1, p2

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->compare(Lorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I
    .locals 5
    .param p1, "o1"    # Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .param p2, "o2"    # Lorg/apache/poi/xssf/usermodel/XSSFComment;

    .line 3039
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v0

    .line 3040
    .local v0, "row1":I
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->getRow()I

    move-result v1

    .line 3042
    .local v1, "row2":I
    if-ne v0, v1, :cond_0

    .line 3045
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->hashCode()I

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 3049
    :cond_0
    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;->val$n:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v2, :cond_2

    .line 3050
    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 3053
    :cond_2
    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    return v3
.end method
