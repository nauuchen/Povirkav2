.class public final enum Lorg/apache/poi/xssf/binary/XSSFBRecordType;
.super Ljava/lang/Enum;
.source "XSSFBRecordType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xssf/binary/XSSFBRecordType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginHeaderFooter:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSheet:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBeginSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellBlank:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellIsst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellRString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellReal:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellRk:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCellSt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtColInfo:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCommentAuthor:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtCommentText:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtEndSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaNum:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmlaString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtFmt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtRowHdr:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtSstItem:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtWsDim:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtWsProp:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field public static final enum BrtXf:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/binary/XSSFBRecordType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 31
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v1, "BrtCellBlank"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellBlank:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 32
    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v4, "BrtCellRk"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellRk:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 33
    new-instance v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v6, "BrtCellError"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 34
    new-instance v6, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v8, "BrtCellBool"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 35
    new-instance v8, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v10, "BrtCellReal"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellReal:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 36
    new-instance v10, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v12, "BrtCellSt"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellSt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 37
    new-instance v12, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v14, "BrtCellIsst"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellIsst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 38
    new-instance v14, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v13, "BrtFmlaString"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 39
    new-instance v13, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v15, "BrtFmlaNum"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaNum:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 40
    new-instance v15, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v11, "BrtFmlaBool"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaBool:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 41
    new-instance v11, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v9, "BrtFmlaError"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmlaError:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 42
    new-instance v9, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtRowHdr"

    invoke-direct {v9, v7, v5, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtRowHdr:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 43
    new-instance v7, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtCellRString"

    const/16 v3, 0xc

    const/16 v2, 0x3e

    invoke-direct {v7, v5, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCellRString:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 44
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBeginSheet"

    const/16 v3, 0xd

    move-object/from16 v16, v7

    const/16 v7, 0x81

    invoke-direct {v2, v5, v3, v7}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSheet:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 45
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtWsProp"

    const/16 v3, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x93

    invoke-direct {v5, v7, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtWsProp:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 46
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtWsDim"

    const/16 v3, 0xf

    move-object/from16 v18, v5

    const/16 v5, 0x94

    invoke-direct {v2, v7, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtWsDim:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 47
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtColInfo"

    const/16 v3, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x3c

    invoke-direct {v5, v7, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtColInfo:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 48
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtBeginSheetData"

    const/16 v3, 0x11

    move-object/from16 v20, v5

    const/16 v5, 0x91

    invoke-direct {v2, v7, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 49
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtEndSheetData"

    const/16 v3, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x92

    invoke-direct {v5, v7, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndSheetData:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 50
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtHLink"

    const/16 v3, 0x13

    move-object/from16 v22, v5

    const/16 v5, 0x1ee

    invoke-direct {v2, v7, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 51
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtBeginHeaderFooter"

    const/16 v3, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x1df

    invoke-direct {v5, v7, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginHeaderFooter:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 54
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtBeginCommentAuthors"

    const/16 v3, 0x15

    move-object/from16 v24, v5

    const/16 v5, 0x276

    invoke-direct {v2, v7, v3, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 55
    new-instance v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v7, "BrtEndCommentAuthors"

    const/16 v3, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x277

    invoke-direct {v5, v7, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCommentAuthors:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 56
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v3, "BrtCommentAuthor"

    const/16 v7, 0x17

    move-object/from16 v26, v5

    const/16 v5, 0x278

    invoke-direct {v2, v3, v7, v5}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCommentAuthor:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 57
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBeginComment"

    const/16 v7, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x27b

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 58
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtCommentText"

    const/16 v7, 0x19

    move-object/from16 v28, v3

    const/16 v3, 0x27d

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtCommentText:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 59
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtEndComment"

    const/16 v7, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x27c

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndComment:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 61
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtXf"

    const/16 v7, 0x1b

    move-object/from16 v30, v3

    const/16 v3, 0x2f

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtXf:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 62
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtFmt"

    const/16 v7, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x2c

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtFmt:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 63
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBeginFmts"

    const/16 v7, 0x1d

    move-object/from16 v32, v3

    const/16 v3, 0x267

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 64
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtEndFmts"

    const/16 v7, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x268

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndFmts:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 65
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBeginCellXFs"

    const/16 v7, 0x1f

    move-object/from16 v34, v3

    const/16 v3, 0x269

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 66
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtEndCellXFs"

    const/16 v7, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x26a

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCellXFs:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 67
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBeginCellStyleXFS"

    const/16 v7, 0x21

    move-object/from16 v36, v3

    const/16 v3, 0x272

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 68
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtEndCellStyleXFS"

    const/16 v7, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x273

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndCellStyleXFS:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 71
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtSstItem"

    const/16 v7, 0x23

    move-object/from16 v38, v3

    const/16 v3, 0x13

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtSstItem:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 72
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBeginSst"

    const/16 v7, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x9f

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBeginSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 73
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtEndSst"

    const/16 v7, 0x25

    move-object/from16 v40, v3

    const/16 v3, 0xa0

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtEndSst:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 75
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtBundleSh"

    const/16 v7, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x9c

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 77
    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "BrtAbsPath15"

    const/16 v7, 0x27

    move-object/from16 v42, v3

    const/16 v3, 0x817

    invoke-direct {v2, v5, v7, v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 82
    new-instance v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const-string v5, "Unimplemented"

    const/16 v7, 0x28

    move-object/from16 v43, v2

    const/4 v2, -0x1

    invoke-direct {v3, v5, v7, v2}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 28
    const/16 v2, 0x29

    new-array v2, v2, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v3, v2, v0

    sput-object v2, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->$VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    .line 88
    invoke-static {}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->values()[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 89
    .local v3, "type":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    sget-object v4, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v3    # "type":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "arr$":[Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->id:I

    .line 97
    return-void
.end method

.method public static lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 2
    .param p0, "id"    # I

    .line 104
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->TYPE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 105
    .local v0, "type":Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    if-nez v0, :cond_0

    .line 106
    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->Unimplemented:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object v1

    .line 108
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/xssf/binary/XSSFBRecordType;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->$VALUES:[Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->id:I

    return v0
.end method
