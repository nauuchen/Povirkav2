.class public Lorg/apache/poi/hssf/dev/BiffDrawingToXml;
.super Ljava/lang/Object;
.source "BiffDrawingToXml.java"


# static fields
.field private static final EXCLUDE_WORKBOOK_RECORDS:Ljava/lang/String; = "-exclude-workbook"

.field private static final SHEET_INDEXES_PARAM:Ljava/lang/String; = "-sheet-indexes"

.field private static final SHEET_NAME_PARAM:Ljava/lang/String; = "-sheet-name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 47
    aget-object v1, p1, v0

    .line 48
    .local v1, "param":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    return v0

    .line 46
    .end local v1    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "-sheet-indexes"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 80
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 83
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    .line 84
    .local v2, "sheetParam":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "sheets":[Ljava/lang/String;
    move-object v4, v3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 86
    .local v7, "sheet":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v7    # "sheet":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "sheetParam":Ljava/lang/String;
    .end local v3    # "sheets":[Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sheet list value was not specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_1
    return-object v0
.end method

.method private static getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;
    .locals 6
    .param p0, "params"    # [Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "-sheet-name"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    .line 63
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 66
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    .line 67
    .local v3, "sheetName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "sheetPos":I
    if-eq v2, v4, :cond_0

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "specified sheet name has not been found in xls file"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v4    # "sheetPos":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sheet name param value was not specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getInputFileName([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # [Ljava/lang/String;

    .line 106
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static getOutputFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".xml"

    if-eqz v0, :cond_0

    .line 111
    const-string v0, ".xls"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;
    .locals 4
    .param p0, "params"    # [Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v1

    .line 98
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static isExcludeWorkbookRecords([Ljava/lang/String;)Z
    .locals 2
    .param p0, "params"    # [Ljava/lang/String;

    .line 56
    const-string v0, "-exclude-workbook"

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    array-length v0, p0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: BiffDrawingToXml [options] inputWorkbook"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -exclude-workbook            exclude workbook-level records"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -sheet-indexes   <indexes>   output sheets with specified indexes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -sheet-namek  <names>        output sheets with specified name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getInputFileName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "inp":Ljava/io/FileInputStream;
    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getOutputFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->isExcludeWorkbookRecords([Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v1, v4, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 131
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 132
    return-void
.end method

.method public static writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V
    .locals 15
    .param p0, "fos"    # Ljava/io/OutputStream;
    .param p1, "xlsWorkbook"    # Ljava/io/InputStream;
    .param p2, "excludeWorkbookRecords"    # Z
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v0, "workbook":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    .line 137
    .local v2, "internalWorkbook":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/16 v3, 0xeb

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 139
    .local v3, "r":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v4, "builder":Ljava/lang/StringBuilder;
    const-string v5, "<workbook>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v5, "\t"

    .line 142
    .local v5, "tab":Ljava/lang/String;
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->decode()V

    .line 144
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v6

    .line 145
    .local v6, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ddf/EscherRecord;

    .line 146
    .local v8, "record":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v8, v5}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    .end local v6    # "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "record":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object v7

    .line 150
    .local v7, "sheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 151
    .local v9, "i":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v10

    .line 152
    .local v10, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-eqz v10, :cond_1

    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<sheet"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/apache/poi/hssf/record/EscherAggregate;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "</sheet"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .end local v9    # "i":Ljava/lang/Integer;
    .end local v10    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_1
    goto :goto_1

    .line 158
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v8, "</workbook>\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    move-object v9, p0

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 160
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 161
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 162
    return-void
.end method
