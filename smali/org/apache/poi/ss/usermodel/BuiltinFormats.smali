.class public final Lorg/apache/poi/ss/usermodel/BuiltinFormats;
.super Ljava/lang/Object;
.source "BuiltinFormats.java"


# static fields
.field public static final FIRST_USER_DEFINED_FORMAT_INDEX:I = 0xa4

.field private static final _formats:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 70
    const-string v0, "General"

    const-string v1, "0"

    const-string v2, "0.00"

    const-string v3, "#,##0"

    const-string v4, "#,##0.00"

    const-string v5, "\"$\"#,##0_);(\"$\"#,##0)"

    const-string v6, "\"$\"#,##0_);[Red](\"$\"#,##0)"

    const-string v7, "\"$\"#,##0.00_);(\"$\"#,##0.00)"

    const-string v8, "\"$\"#,##0.00_);[Red](\"$\"#,##0.00)"

    const-string v9, "0%"

    const-string v10, "0.00%"

    const-string v11, "0.00E+00"

    const-string v12, "# ?/?"

    const-string v13, "# ??/??"

    const-string v14, "m/d/yy"

    const-string v15, "d-mmm-yy"

    const-string v16, "d-mmm"

    const-string v17, "mmm-yy"

    const-string v18, "h:mm AM/PM"

    const-string v19, "h:mm:ss AM/PM"

    const-string v20, "h:mm"

    const-string v21, "h:mm:ss"

    const-string v22, "m/d/yy h:mm"

    const-string v23, "reserved-0x17"

    const-string v24, "reserved-0x18"

    const-string v25, "reserved-0x19"

    const-string v26, "reserved-0x1A"

    const-string v27, "reserved-0x1B"

    const-string v28, "reserved-0x1C"

    const-string v29, "reserved-0x1D"

    const-string v30, "reserved-0x1E"

    const-string v31, "reserved-0x1F"

    const-string v32, "reserved-0x20"

    const-string v33, "reserved-0x21"

    const-string v34, "reserved-0x22"

    const-string v35, "reserved-0x23"

    const-string v36, "reserved-0x24"

    const-string v37, "#,##0_);(#,##0)"

    const-string v38, "#,##0_);[Red](#,##0)"

    const-string v39, "#,##0.00_);(#,##0.00)"

    const-string v40, "#,##0.00_);[Red](#,##0.00)"

    const-string v41, "_(* #,##0_);_(* (#,##0);_(* \"-\"_);_(@_)"

    const-string v42, "_(\"$\"* #,##0_);_(\"$\"* (#,##0);_(\"$\"* \"-\"_);_(@_)"

    const-string v43, "_(* #,##0.00_);_(* (#,##0.00);_(* \"-\"??_);_(@_)"

    const-string v44, "_(\"$\"* #,##0.00_);_(\"$\"* (#,##0.00);_(\"$\"* \"-\"??_);_(@_)"

    const-string v45, "mm:ss"

    const-string v46, "[h]:mm:ss"

    const-string v47, "mm:ss.0"

    const-string v48, "##0.0E+0"

    const-string v49, "@"

    filled-new-array/range {v0 .. v49}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll()[Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getBuiltinFormat(Ljava/lang/String;)I
    .locals 7
    .param p0, "pFmt"    # Ljava/lang/String;

    .line 155
    const-string v0, "TEXT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "@"

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 157
    .local v0, "fmt":Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    .line 158
    .local v1, "i":I
    sget-object v2, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 159
    .local v5, "f":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 160
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    return v1

    .line 158
    .end local v5    # "f":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public static getBuiltinFormat(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .line 141
    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->_formats:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    aget-object v0, v0, p0

    return-object v0

    .line 142
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
