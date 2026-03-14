.class public Lorg/apache/poi/hssf/record/common/UnicodeString;
.super Ljava/lang/Object;
.source "UnicodeString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/common/UnicodeString$PhRun;,
        Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;,
        Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/record/common/UnicodeString;",
        ">;"
    }
.end annotation


# static fields
.field private static _logger:Lorg/apache/poi/util/POILogger;

.field private static final extBit:Lorg/apache/poi/util/BitField;

.field private static final highByte:Lorg/apache/poi/util/BitField;

.field private static final richText:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_charCount:S

.field private field_2_optionflags:B

.field private field_3_string:Ljava/lang/String;

.field private field_4_format_runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;",
            ">;"
        }
    .end annotation
.end field

.field private field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->_logger:Lorg/apache/poi/util/POILogger;

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->highByte:Lorg/apache/poi/util/BitField;

    .line 56
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    .line 57
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->setString(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 10
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    .line 449
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "runCount":I
    const/4 v1, 0x0

    .line 454
    .local v1, "extensionLength":I
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isRichText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 458
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isExtendedText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    .line 462
    :cond_1
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 463
    .local v2, "isCompressed":Z
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v5

    .line 464
    .local v5, "cc":I
    if-eqz v2, :cond_3

    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v5}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    .line 466
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isRichText()Z

    move-result v6

    if-eqz v6, :cond_4

    if-lez v0, :cond_4

    .line 467
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 468
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_4

    .line 469
    iget-object v7, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    new-instance v8, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    invoke-direct {v8, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 473
    .end local v6    # "i":I
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isExtendedText()Z

    move-result v6

    if-eqz v6, :cond_5

    if-lez v1, :cond_5

    .line 474
    new-instance v6, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    new-instance v7, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-direct {v6, v7, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;-><init>(Lorg/apache/poi/util/LittleEndianInput;I)V

    iput-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 475
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    if-eq v6, v1, :cond_5

    .line 476
    sget-object v6, Lorg/apache/poi/hssf/record/common/UnicodeString;->_logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExtRst was supposed to be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes long, but seems to actually be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    invoke-virtual {v6, v7, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 479
    :cond_5
    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->_logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private findFormatRunAt(I)I
    .locals 5
    .param p1, "characterPos"    # I

    .line 594
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 595
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_2

    .line 596
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 597
    .local v3, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-short v4, v3, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-ne v4, p1, :cond_0

    .line 598
    return v1

    .line 599
    :cond_0
    iget-short v4, v3, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    if-le v4, p1, :cond_1

    .line 600
    return v2

    .line 595
    .end local v3    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private isExtendedText()Z
    .locals 2

    .line 806
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getOptionFlags()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method private isRichText()Z
    .locals 2

    .line 802
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getOptionFlags()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addFormatRun(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 612
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 616
    :cond_0
    iget-short v0, p1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->findFormatRunAt(I)I

    move-result v0

    .line 617
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 618
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 621
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 627
    sget-object v1, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 628
    return-void
.end method

.method public clearFormatting()V
    .locals 2

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 647
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 648
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .line 810
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>()V

    .line 811
    .local v0, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    .line 812
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 813
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    .line 814
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 815
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 816
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 817
    .local v2, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-object v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    new-instance v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    iget-short v5, v2, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_character:S

    iget-short v6, v2, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(SS)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 820
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v1, :cond_1

    .line 821
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->clone()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 824
    :cond_1
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 8
    .param p1, "str"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 758
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 761
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 762
    return v0

    .line 766
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 769
    iget-object v1, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 770
    :cond_2
    iget-object v4, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    const/4 v5, -0x1

    if-nez v4, :cond_3

    .line 772
    return v5

    .line 776
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 777
    .local v1, "size":I
    iget-object v4, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_4

    .line 778
    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, v1, v2

    return v2

    .line 781
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_6

    .line 782
    iget-object v6, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 783
    .local v6, "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-object v7, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 785
    .local v7, "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)I

    move-result v0

    .line 786
    if-eqz v0, :cond_5

    .line 787
    return v0

    .line 781
    .end local v6    # "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    .end local v7    # "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 792
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v4, :cond_8

    .line 793
    iget-object v4, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 794
    :cond_8
    iget-object v2, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v2, :cond_9

    .line 795
    return v5

    .line 797
    :cond_9
    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)I

    move-result v2

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 397
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    return v1

    .line 400
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 403
    .local v0, "other":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    iget-short v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    if-ne v2, v3, :cond_b

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    iget-byte v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 410
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 412
    iget-object v2, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 413
    :cond_3
    iget-object v4, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v4, :cond_4

    .line 415
    return v1

    .line 419
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 420
    .local v2, "size":I
    iget-object v4, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_5

    .line 421
    return v1

    .line 424
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_7

    .line 425
    iget-object v5, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 426
    .local v5, "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-object v6, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 428
    .local v6, "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 429
    return v1

    .line 424
    .end local v5    # "run1":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    .end local v6    # "run2":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 434
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v4, :cond_9

    .line 435
    iget-object v4, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    .line 436
    :cond_9
    iget-object v3, v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-nez v3, :cond_a

    .line 437
    return v1

    .line 440
    :cond_a
    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 406
    .end local v2    # "size":I
    :cond_b
    :goto_1
    return v1
.end method

.method public formatIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 634
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharCount()I
    .locals 2

    .line 490
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    if-gez v0, :cond_0

    .line 491
    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    return v0

    .line 493
    :cond_0
    return v0
.end method

.method public getCharCountShort()S
    .locals 1

    .line 503
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    return v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 6

    .line 698
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 700
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[UNICODESTRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    const-string v1, "    .charcount       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    const-string v1, "    .optionflags     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getOptionFlags()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    const-string v1, "    .string          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 707
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 708
    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 709
    .local v3, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      .format_run"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "          = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    .end local v3    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v1, :cond_1

    .line 713
    const-string v1, "    .field_5_ext_rst          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    :cond_1
    const-string v1, "[/UNICODESTRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExtendedRst()Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    return-object v0
.end method

.method public getFormatRun(I)Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    .locals 2
    .param p1, "index"    # I

    .line 584
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 585
    return-object v1

    .line 587
    :cond_0
    if-ltz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    return-object v0

    .line 588
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getFormatRunCount()I
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOptionFlags()B
    .locals 1

    .line 526
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "stringHash":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 385
    :cond_0
    iget-short v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    add-int/2addr v1, v0

    return v1
.end method

.method public removeFormatRun(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 638
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    .line 641
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->richText:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 643
    :cond_0
    return-void
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 5
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "numberOfRichTextRuns":I
    const/4 v1, 0x0

    .line 728
    .local v1, "extendedDataSize":I
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isRichText()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 729
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 731
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->isExtendedText()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v2, :cond_1

    .line 732
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->getDataSize()I

    move-result v2

    add-int/lit8 v1, v2, 0x4

    .line 737
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeString(Ljava/lang/String;II)V

    .line 739
    if-lez v0, :cond_3

    .line 742
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 743
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getAvailableSpace()I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 744
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 746
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 747
    .local v4, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 742
    .end local v4    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 751
    .end local v2    # "i":I
    :cond_3
    if-lez v1, :cond_4

    iget-object v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    if-eqz v2, :cond_4

    .line 752
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 754
    :cond_4
    return-void
.end method

.method public setCharCount(S)V
    .locals 0
    .param p1, "cc"    # S

    .line 513
    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_1_charCount:S

    .line 514
    return-void
.end method

.method setExtendedRst(Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;)V
    .locals 2
    .param p1, "ext_rst"    # Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 655
    if-eqz p1, :cond_0

    .line 656
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    goto :goto_0

    .line 658
    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/record/common/UnicodeString;->extBit:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 660
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_5_ext_rst:Lorg/apache/poi/hssf/record/common/UnicodeString$ExtRst;

    .line 661
    return-void
.end method

.method public setOptionFlags(B)V
    .locals 0
    .param p1, "of"    # B

    .line 539
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 540
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .line 557
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_3_string:Ljava/lang/String;

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->setCharCount(S)V

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "useUTF16":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 565
    .local v1, "strlen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 566
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    .line 567
    const/4 v0, 0x1

    .line 568
    goto :goto_1

    .line 565
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    .end local v2    # "j":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 573
    sget-object v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->highByte:Lorg/apache/poi/util/BitField;

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    goto :goto_2

    .line 575
    :cond_2
    sget-object v2, Lorg/apache/poi/hssf/record/common/UnicodeString;->highByte:Lorg/apache/poi/util/BitField;

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_2_optionflags:B

    .line 577
    :goto_2
    return-void
.end method

.method public swapFontUse(SS)V
    .locals 3
    .param p1, "oldFontIndex"    # S
    .param p2, "newFontIndex"    # S

    .line 671
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/UnicodeString;->field_4_format_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 672
    .local v1, "run":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    iget-short v2, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    if-ne v2, p1, :cond_0

    .line 673
    iput-short p2, v1, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->_fontIndex:S

    .end local v1    # "run":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_0
    goto :goto_0

    .line 676
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 686
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
