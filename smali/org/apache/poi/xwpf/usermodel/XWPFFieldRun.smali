.class public Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
.super Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.source "XWPFFieldRun.java"


# instance fields
.field private field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 0
    .param p1, "field"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
    .param p2, "run"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .param p3, "p"    # Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 32
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 33
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    .line 34
    return-void
.end method


# virtual methods
.method public getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    return-object v0
.end method

.method public getFieldInstruction()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getInstr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFieldInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "instruction"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->setInstr(Ljava/lang/String;)V

    .line 47
    return-void
.end method
