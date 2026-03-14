.class public Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;
.super Ljava/lang/Object;
.source "ExternalLinksTable.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/model/ExternalLinksTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExternalName"
.end annotation


# instance fields
.field private name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

.field final synthetic this$0:Lorg/apache/poi/xssf/model/ExternalLinksTable;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/xssf/model/ExternalLinksTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;)V
    .locals 0
    .param p2, "name"    # Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    .line 148
    iput-object p1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->this$0:Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    .line 150
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->getRefersTo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex()I
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->isSetSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->getSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 171
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->getSheetIndex()I

    move-result v0

    .line 161
    .local v0, "sheetId":I
    if-ltz v0, :cond_0

    .line 162
    iget-object v1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->this$0:Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getSheetNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 164
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isDeleted()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFunction(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->setName(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 3
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->setRefersTo(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setSheetIndex(I)V
    .locals 3
    .param p1, "sheetId"    # I

    .line 174
    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->setSheetId(J)V

    .line 175
    return-void
.end method
