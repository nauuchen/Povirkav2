.class public Lorg/apache/poi/xwpf/usermodel/XWPFNum;
.super Ljava/lang/Object;
.source "XWPFNum.java"


# instance fields
.field private ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

.field protected numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 31
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 1
    .param p1, "numbering"    # Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 41
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;)V
    .locals 1
    .param p1, "ctNum"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 0
    .param p1, "ctNum"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    .param p2, "numbering"    # Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 46
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 47
    return-void
.end method


# virtual methods
.method public getCTNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    return-object v0
.end method

.method public getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public setCTNum(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;)V
    .locals 0
    .param p1, "ctNum"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 62
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->ctNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    .line 63
    return-void
.end method

.method public setNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 0
    .param p1, "numbering"    # Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 54
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 55
    return-void
.end method
