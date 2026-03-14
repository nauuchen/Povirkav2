.class public Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;
.super Ljava/lang/Object;
.source "XSSFBuiltinTableStyle.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "XSSFBuiltinTypeStyleStyle"
.end annotation


# instance fields
.field private final builtIn:Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

.field private final style:Lorg/apache/poi/ss/usermodel/TableStyle;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;Lorg/apache/poi/ss/usermodel/TableStyle;)V
    .locals 0
    .param p1, "builtIn"    # Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;
    .param p2, "style"    # Lorg/apache/poi/ss/usermodel/TableStyle;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->builtIn:Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    .line 452
    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    .line 453
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->builtIn:Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    .locals 1
    .param p1, "type"    # Lorg/apache/poi/ss/usermodel/TableStyleType;

    .line 468
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object v0

    return-object v0
.end method

.method public isBuiltin()Z
    .locals 1

    .line 464
    const/4 v0, 0x1

    return v0
.end method
