.class final Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;
.super Ljava/text/Format;
.source "DataFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellFormatResultWrapper"
.end annotation


# instance fields
.field private final result:Lorg/apache/poi/ss/format/CellFormatResult;

.field final synthetic this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;)V
    .locals 0
    .param p2, "result"    # Lorg/apache/poi/ss/format/CellFormatResult;

    .line 1285
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1286
    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->result:Lorg/apache/poi/ss/format/CellFormatResult;

    .line 1287
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/usermodel/DataFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellFormatResult;
    .param p3, "x2"    # Lorg/apache/poi/ss/usermodel/DataFormatter$1;

    .line 1283
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1289
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->access$500(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->result:Lorg/apache/poi/ss/format/CellFormatResult;

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 1292
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->result:Lorg/apache/poi/ss/format/CellFormatResult;

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1296
    const/4 v0, 0x0

    return-object v0
.end method
