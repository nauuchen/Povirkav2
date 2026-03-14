.class public final Lorg/apache/poi/sl/usermodel/Insets2D;
.super Ljava/lang/Object;
.source "Insets2D.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "top"    # D
    .param p3, "left"    # D
    .param p5, "bottom"    # D
    .param p7, "right"    # D

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    .line 64
    iput-wide p3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    .line 65
    iput-wide p5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    .line 66
    iput-wide p7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    .line 67
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/sl/usermodel/Insets2D;->clone()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 10

    .line 136
    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iget-wide v7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/sl/usermodel/Insets2D;

    .line 97
    .local v0, "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v4, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v4, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iget-wide v4, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-wide v4, v0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 100
    .end local v0    # "insets":Lorg/apache/poi/sl/usermodel/Insets2D;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 14

    .line 109
    iget-wide v0, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v2, v0

    .line 110
    .local v2, "sum1":D
    iget-wide v4, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-wide v6, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v4, v6

    .line 111
    .local v4, "sum2":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v10, v2, v8

    mul-double v10, v10, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v10, v0

    .line 112
    .local v10, "val1":D
    add-double v0, v4, v8

    mul-double v0, v0, v4

    div-double/2addr v0, v12

    add-double/2addr v0, v6

    .line 113
    .local v0, "val2":D
    add-double v6, v10, v0

    .line 114
    .local v6, "sum3":D
    add-double/2addr v8, v6

    mul-double v8, v8, v6

    div-double/2addr v8, v12

    add-double/2addr v8, v0

    double-to-int v8, v8

    return v8
.end method

.method public set(DDDD)V
    .locals 0
    .param p1, "top"    # D
    .param p3, "left"    # D
    .param p5, "bottom"    # D
    .param p7, "right"    # D

    .line 79
    iput-wide p1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    .line 80
    iput-wide p3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    .line 81
    iput-wide p5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    .line 82
    iput-wide p7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
