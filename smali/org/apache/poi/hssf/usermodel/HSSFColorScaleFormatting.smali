.class public final Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
.super Ljava/lang/Object;
.source "HSSFColorScaleFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;


# instance fields
.field private final cfRule12Record:Lorg/apache/poi/hssf/record/CFRule12Record;

.field private final colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 1
    .param p1, "cfRule12Record"    # Lorg/apache/poi/hssf/record/CFRule12Record;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->cfRule12Record:Lorg/apache/poi/hssf/record/CFRule12Record;

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    .line 41
    return-void
.end method


# virtual methods
.method public createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 3

    .line 85
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    new-instance v1, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getColors()[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v0

    .line 52
    .local v0, "colors":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    .line 53
    .local v1, "hcolors":[Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 54
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    aput-object v3, v1, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getColors()[Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->getColors()[Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method public getNumControlPoints()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getNumControlPoints()I

    move-result v0

    return v0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 6

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getThresholds()[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object v0

    .line 68
    .local v0, "t":[Lorg/apache/poi/hssf/record/cf/Threshold;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    .line 69
    .local v1, "ht":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 70
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    aput-object v3, v1, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->getThresholds()[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object v0

    return-object v0
.end method

.method public setColors([Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 3
    .param p1, "colors"    # [Lorg/apache/poi/ss/usermodel/Color;

    .line 59
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 60
    .local v0, "cr":[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 61
    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getExtendedColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    .line 64
    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 1
    .param p1, "num"    # I

    .line 47
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setNumControlPoints(I)V

    .line 48
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
    .locals 4
    .param p1, "thresholds"    # [Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;

    .line 76
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 77
    .local v0, "t":[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 78
    aget-object v2, p1, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    .line 79
    .local v2, "hssfT":Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->getThreshold()Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    aput-object v3, v0, v1

    .line 77
    .end local v2    # "hssfT":Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;->colorFormatting:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V

    .line 82
    return-void
.end method
