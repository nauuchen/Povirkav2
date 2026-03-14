.class public Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
.super Ljava/lang/Object;
.source "PropertyIDMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final PID_APPNAME:I = 0x12

.field public static final PID_AUTHOR:I = 0x4

.field public static final PID_BEHAVIOUR:I = -0x7ffffffd

.field public static final PID_BYTECOUNT:I = 0x4

.field public static final PID_CATEGORY:I = 0x2

.field public static final PID_CCHWITHSPACES:I = 0x11

.field public static final PID_CHARCOUNT:I = 0x10

.field public static final PID_CODEPAGE:I = 0x1

.field public static final PID_COMMENTS:I = 0x6

.field public static final PID_COMPANY:I = 0xf

.field public static final PID_CONTENTSTATUS:I = 0x1b

.field public static final PID_CONTENTTYPE:I = 0x1a

.field public static final PID_CREATE_DTM:I = 0xc

.field public static final PID_DICTIONARY:I = 0x0

.field public static final PID_DIGSIG:I = 0x18

.field public static final PID_DOCPARTS:I = 0xd

.field public static final PID_DOCVERSION:I = 0x1d

.field public static final PID_EDITTIME:I = 0xa

.field public static final PID_HEADINGPAIR:I = 0xc

.field public static final PID_HIDDENCOUNT:I = 0x9

.field public static final PID_HYPERLINKSCHANGED:I = 0x16

.field public static final PID_KEYWORDS:I = 0x5

.field public static final PID_LANGUAGE:I = 0x1c

.field public static final PID_LASTAUTHOR:I = 0x8

.field public static final PID_LASTPRINTED:I = 0xb

.field public static final PID_LASTSAVE_DTM:I = 0xd

.field public static final PID_LINECOUNT:I = 0x5

.field public static final PID_LINKSDIRTY:I = 0x10

.field public static final PID_LOCALE:I = -0x80000000

.field public static final PID_MANAGER:I = 0xe

.field public static final PID_MAX:I = 0x1f

.field public static final PID_MMCLIPCOUNT:I = 0xa

.field public static final PID_NOTECOUNT:I = 0x8

.field public static final PID_PAGECOUNT:I = 0xe

.field public static final PID_PARCOUNT:I = 0x6

.field public static final PID_PRESFORMAT:I = 0x3

.field public static final PID_REVNUMBER:I = 0x9

.field public static final PID_SCALE:I = 0xb

.field public static final PID_SECURITY:I = 0x13

.field public static final PID_SLIDECOUNT:I = 0x7

.field public static final PID_SUBJECT:I = 0x3

.field public static final PID_TEMPLATE:I = 0x7

.field public static final PID_THUMBNAIL:I = 0x11

.field public static final PID_TITLE:I = 0x2

.field public static final PID_VERSION:I = 0x17

.field public static final PID_WORDCOUNT:I = 0xf

.field private static final documentSummaryInformationIdValues:[[Ljava/lang/Object;

.field private static documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

.field private static final fallbackIdValues:[[Ljava/lang/Object;

.field private static fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

.field private static final summaryInformationIdValues:[[Ljava/lang/Object;

.field private static summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;


# instance fields
.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 325
    const/16 v0, 0x12

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "PID_TITLE"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v7, "PID_SUBJECT"

    aput-object v7, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    const-string v8, "PID_AUTHOR"

    aput-object v8, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v4

    const-string v9, "PID_KEYWORDS"

    aput-object v9, v2, v6

    const/4 v9, 0x3

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v10, 0x6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v4

    const-string v11, "PID_COMMENTS"

    aput-object v11, v2, v6

    const/4 v11, 0x4

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v12, 0x7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v2, v4

    const-string v13, "PID_TEMPLATE"

    aput-object v13, v2, v6

    const/4 v13, 0x5

    aput-object v2, v0, v13

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v2, v4

    const-string v15, "PID_LASTAUTHOR"

    aput-object v15, v2, v6

    const/4 v15, 0x6

    aput-object v2, v0, v15

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v16, 0x9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v2, v4

    const-string v17, "PID_REVNUMBER"

    aput-object v17, v2, v6

    const/16 v17, 0x7

    aput-object v2, v0, v17

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v18, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v2, v4

    const-string v19, "PID_EDITTIME"

    aput-object v19, v2, v6

    const/16 v19, 0x8

    aput-object v2, v0, v19

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v20, 0xb

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v2, v4

    const-string v21, "PID_LASTPRINTED"

    aput-object v21, v2, v6

    const/16 v21, 0x9

    aput-object v2, v0, v21

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v22, 0xc

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v2, v4

    const-string v23, "PID_CREATE_DTM"

    aput-object v23, v2, v6

    const/16 v23, 0xa

    aput-object v2, v0, v23

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0xd

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_LASTSAVE_DTM"

    aput-object v24, v2, v6

    const/16 v24, 0xb

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0xe

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_PAGECOUNT"

    aput-object v24, v2, v6

    const/16 v24, 0xc

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0xf

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_WORDCOUNT"

    aput-object v24, v2, v6

    const/16 v24, 0xd

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_CHARCOUNT"

    aput-object v24, v2, v6

    const/16 v24, 0xe

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x11

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_THUMBNAIL"

    aput-object v24, v2, v6

    const/16 v24, 0xf

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x12

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_APPNAME"

    aput-object v24, v2, v6

    const/16 v24, 0x10

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x13

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_SECURITY"

    aput-object v24, v2, v6

    const/16 v24, 0x11

    aput-object v2, v0, v24

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationIdValues:[[Ljava/lang/Object;

    .line 352
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_DICTIONARY"

    aput-object v24, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_CODEPAGE"

    aput-object v24, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v24, "PID_CATEGORY"

    aput-object v24, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v5, v2, v4

    const-string v24, "PID_PRESFORMAT"

    aput-object v24, v2, v6

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v7, v2, v4

    const-string v24, "PID_BYTECOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v8, v2, v4

    const-string v24, "PID_LINECOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v13

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v10, v2, v4

    const-string v24, "PID_PARCOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v15

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v12, v2, v4

    const-string v24, "PID_SLIDECOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v17

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v14, v2, v4

    const-string v24, "PID_NOTECOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v19

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v16, v2, v4

    const-string v24, "PID_HIDDENCOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v21

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v18, v2, v4

    const-string v24, "PID_MMCLIPCOUNT"

    aput-object v24, v2, v6

    aput-object v2, v0, v23

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v20, v2, v4

    const-string v24, "PID_SCALE"

    aput-object v24, v2, v6

    const/16 v24, 0xb

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v22, v2, v4

    const-string v24, "PID_HEADINGPAIR"

    aput-object v24, v2, v6

    const/16 v24, 0xc

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0xd

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_DOCPARTS"

    aput-object v24, v2, v6

    const/16 v24, 0xd

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0xe

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_MANAGER"

    aput-object v24, v2, v6

    const/16 v24, 0xe

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0xf

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_COMPANY"

    aput-object v24, v2, v6

    const/16 v24, 0xf

    aput-object v2, v0, v24

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_LINKSDIRTY"

    aput-object v24, v2, v6

    const/16 v24, 0x10

    aput-object v2, v0, v24

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationIdValues:[[Ljava/lang/Object;

    .line 378
    const/16 v0, 0x1c

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_DICTIONARY"

    aput-object v24, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v2, v4

    const-string v24, "PID_CODEPAGE"

    aput-object v24, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v3, "PID_CATEGORY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v5, v2, v4

    const-string v3, "PID_PRESFORMAT"

    aput-object v3, v2, v6

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v7, v2, v4

    const-string v3, "PID_BYTECOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v11

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v8, v2, v4

    const-string v3, "PID_LINECOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v13

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v10, v2, v4

    const-string v3, "PID_PARCOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v15

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v12, v2, v4

    const-string v3, "PID_SLIDECOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v17

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v14, v2, v4

    const-string v3, "PID_NOTECOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v19

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v16, v2, v4

    const-string v3, "PID_HIDDENCOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v21

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v18, v2, v4

    const-string v3, "PID_MMCLIPCOUNT"

    aput-object v3, v2, v6

    aput-object v2, v0, v23

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v20, v2, v4

    const-string v3, "PID_SCALE"

    aput-object v3, v2, v6

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v22, v2, v4

    const-string v3, "PID_HEADINGPAIR"

    aput-object v3, v2, v6

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0xd

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_DOCPARTS"

    aput-object v3, v2, v6

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0xe

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_MANAGER"

    aput-object v3, v2, v6

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_COMPANY"

    aput-object v3, v2, v6

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_LINKSDIRTY"

    aput-object v3, v2, v6

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_CCHWITHSPACES"

    aput-object v3, v2, v6

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_HYPERLINKSCHANGED"

    aput-object v3, v2, v6

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x17

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_VERSION"

    aput-object v3, v2, v6

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x18

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_DIGSIG"

    aput-object v3, v2, v6

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x1a

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_CONTENTTYPE"

    aput-object v3, v2, v6

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x1b

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_CONTENTSTATUS"

    aput-object v3, v2, v6

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x1c

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_LANGUAGE"

    aput-object v3, v2, v6

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x1d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_DOCVERSION"

    aput-object v3, v2, v6

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v7, 0x1f

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_MAX"

    aput-object v3, v2, v6

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/32 v7, -0x80000000

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PID_LOCALE"

    aput-object v3, v2, v6

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/32 v2, -0x7ffffffd

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "PID_BEHAVIOUR"

    aput-object v2, v1, v6

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackIdValues:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>([[Ljava/lang/Object;)V
    .locals 7
    .param p1, "idValues"    # [[Ljava/lang/Object;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 424
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "arr$":[[Ljava/lang/Object;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 425
    .local v4, "idValue":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/Long;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .end local v4    # "idValue":[Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "arr$":[[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    .line 428
    return-void
.end method

.method public static declared-synchronized getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    .line 444
    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    .line 445
    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 447
    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 443
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFallbackProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    .line 455
    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    .line 456
    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 458
    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    .line 434
    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    .line 435
    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    .line 437
    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 527
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    .line 528
    .local v0, "s1":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v1

    .line 529
    .local v1, "s2":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 530
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 531
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 504
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->put(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Long;
    .param p2, "value"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Long;+Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 499
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
