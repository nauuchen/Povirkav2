.class public final Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
.super Ljava/lang/Object;
.source "HSSFIconMultiStateFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;


# instance fields
.field private final cfRule12Record:Lorg/apache/poi/hssf/record/CFRule12Record;

.field private final iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 1
    .param p1, "cfRule12Record"    # Lorg/apache/poi/hssf/record/CFRule12Record;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 37
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->cfRule12Record:Lorg/apache/poi/hssf/record/CFRule12Record;

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 39
    return-void
.end method


# virtual methods
.method public createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 3

    .line 80
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    new-instance v1, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v0

    return-object v0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 6

    .line 63
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getThresholds()[Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object v0

    .line 64
    .local v0, "t":[Lorg/apache/poi/hssf/record/cf/Threshold;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    .line 65
    .local v1, "ht":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 66
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    aput-object v3, v1, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->getThresholds()[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public isIconOnly()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isIconOnly()Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isReversed()Z

    move-result v0

    return v0
.end method

.method public setIconOnly(Z)V
    .locals 1
    .param p1, "only"    # Z

    .line 52
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconOnly(Z)V

    .line 53
    return-void
.end method

.method public setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
    .locals 1
    .param p1, "set"    # Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 45
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V

    .line 46
    return-void
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setReversed(Z)V

    .line 60
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
    .locals 3
    .param p1, "thresholds"    # [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;

    .line 72
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    .line 73
    .local v0, "t":[Lorg/apache/poi/hssf/record/cf/Threshold;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->getThreshold()Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V

    .line 77
    return-void
.end method
