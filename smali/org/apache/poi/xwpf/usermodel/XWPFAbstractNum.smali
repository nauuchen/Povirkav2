.class public Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;
.super Ljava/lang/Object;
.source "XWPFAbstractNum.java"


# instance fields
.field private ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

.field protected numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    .line 31
    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V
    .locals 0
    .param p1, "abstractNum"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 0
    .param p1, "ctAbstractNum"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .param p2, "numbering"    # Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    .line 41
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 42
    return-void
.end method


# virtual methods
.method public getAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    return-object v0
.end method

.method public getCTAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->ctAbstractNum:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    return-object v0
.end method

.method public getNumbering()Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    return-object v0
.end method

.method public setNumbering(Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;)V
    .locals 0
    .param p1, "numbering"    # Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 53
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFAbstractNum;->numbering:Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    .line 54
    return-void
.end method
