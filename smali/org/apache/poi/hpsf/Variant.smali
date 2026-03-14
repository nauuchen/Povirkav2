.class public Lorg/apache/poi/hpsf/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# static fields
.field public static final LENGTH_0:Ljava/lang/Integer;

.field public static final LENGTH_2:Ljava/lang/Integer;

.field public static final LENGTH_4:Ljava/lang/Integer;

.field public static final LENGTH_8:Ljava/lang/Integer;

.field public static final LENGTH_UNKNOWN:Ljava/lang/Integer;

.field public static final LENGTH_VARIABLE:Ljava/lang/Integer;

.field private static final NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

.field public static final VT_ARRAY:I = 0x2000

.field public static final VT_BLOB:I = 0x41

.field public static final VT_BLOB_OBJECT:I = 0x46

.field public static final VT_BOOL:I = 0xb

.field public static final VT_BSTR:I = 0x8

.field public static final VT_BYREF:I = 0x4000

.field public static final VT_CARRAY:I = 0x1c

.field public static final VT_CF:I = 0x47

.field public static final VT_CLSID:I = 0x48

.field public static final VT_CY:I = 0x6

.field public static final VT_DATE:I = 0x7

.field public static final VT_DECIMAL:I = 0xe

.field public static final VT_DISPATCH:I = 0x9

.field public static final VT_EMPTY:I = 0x0

.field public static final VT_ERROR:I = 0xa

.field public static final VT_FILETIME:I = 0x40

.field public static final VT_HRESULT:I = 0x19

.field public static final VT_I1:I = 0x10

.field public static final VT_I2:I = 0x2

.field public static final VT_I4:I = 0x3

.field public static final VT_I8:I = 0x14

.field public static final VT_ILLEGAL:I = 0xffff

.field public static final VT_ILLEGALMASKED:I = 0xfff

.field public static final VT_INT:I = 0x16

.field public static final VT_LPSTR:I = 0x1e

.field public static final VT_LPWSTR:I = 0x1f

.field public static final VT_NULL:I = 0x1

.field public static final VT_PTR:I = 0x1a

.field public static final VT_R4:I = 0x4

.field public static final VT_R8:I = 0x5

.field public static final VT_RESERVED:I = 0x8000

.field public static final VT_SAFEARRAY:I = 0x1b

.field public static final VT_STORAGE:I = 0x43

.field public static final VT_STORED_OBJECT:I = 0x45

.field public static final VT_STREAM:I = 0x42

.field public static final VT_STREAMED_OBJECT:I = 0x44

.field public static final VT_TYPEMASK:I = 0xfff

.field public static final VT_UI1:I = 0x11

.field public static final VT_UI2:I = 0x12

.field public static final VT_UI4:I = 0x13

.field public static final VT_UI8:I = 0x15

.field public static final VT_UINT:I = 0x17

.field public static final VT_UNKNOWN:I = 0xd

.field public static final VT_USERDEFINED:I = 0x1d

.field public static final VT_VARIANT:I = 0xc

.field public static final VT_VECTOR:I = 0x1000

.field public static final VT_VERSIONED_STREAM:I = 0x49

.field public static final VT_VOID:I = 0x18

.field private static final numberToLength:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final numberToName:Ljava/util/Map;
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
    .locals 15

    .line 318
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->LENGTH_UNKNOWN:Ljava/lang/Integer;

    .line 323
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hpsf/Variant;->LENGTH_VARIABLE:Ljava/lang/Integer;

    .line 328
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hpsf/Variant;->LENGTH_0:Ljava/lang/Integer;

    .line 333
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/hpsf/Variant;->LENGTH_2:Ljava/lang/Integer;

    .line 338
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/apache/poi/hpsf/Variant;->LENGTH_4:Ljava/lang/Integer;

    .line 343
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Lorg/apache/poi/hpsf/Variant;->LENGTH_8:Ljava/lang/Integer;

    .line 345
    const/16 v10, 0x28

    new-array v10, v10, [[Ljava/lang/Object;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v2

    const-string v13, "VT_EMPTY"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    aput-object v3, v12, v4

    aput-object v12, v10, v2

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v3, v2

    const-string v12, "VT_NULL"

    aput-object v12, v3, v14

    aput-object v0, v3, v4

    aput-object v3, v10, v14

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v3, v2

    const-string v12, "VT_I2"

    aput-object v12, v3, v14

    aput-object v5, v3, v4

    aput-object v3, v10, v4

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v12, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_I4"

    aput-object v5, v3, v14

    aput-object v7, v3, v4

    aput-object v3, v10, v11

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v12, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_R4"

    aput-object v5, v3, v14

    aput-object v7, v3, v4

    aput-object v3, v10, v6

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_R8"

    aput-object v5, v3, v14

    aput-object v9, v3, v4

    const/4 v5, 0x5

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_CY"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/4 v5, 0x6

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_DATE"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/4 v5, 0x7

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_BSTR"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    aput-object v3, v10, v8

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_DISPATCH"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x9

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_ERROR"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0xa

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0xb

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_BOOL"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0xb

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0xc

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_VARIANT"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0xc

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0xd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_UNKNOWN"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0xd

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0xe

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_DECIMAL"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0xe

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_I1"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0xf

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_UI1"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x10

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_UI2"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x11

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_UI4"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x12

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_I8"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x13

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_UI8"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x14

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_INT"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x15

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x17

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_UINT"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x16

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x18

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_VOID"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x17

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_HRESULT"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x18

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x1a

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_PTR"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x19

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x1b

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_SAFEARRAY"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x1a

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x1c

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_CARRAY"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x1b

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x1d

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_USERDEFINED"

    aput-object v5, v3, v14

    aput-object v0, v3, v4

    const/16 v5, 0x1c

    aput-object v3, v10, v5

    new-array v3, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v5, "VT_LPSTR"

    aput-object v5, v3, v14

    aput-object v1, v3, v4

    const/16 v1, 0x1d

    aput-object v3, v10, v1

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x1f

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_LPWSTR"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x1e

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_FILETIME"

    aput-object v3, v1, v14

    aput-object v9, v1, v4

    const/16 v3, 0x1f

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x41

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_BLOB"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x20

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x42

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_STREAM"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x21

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x43

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_STORAGE"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x22

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x44

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_STREAMED_OBJECT"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x23

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x45

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_STORED_OBJECT"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x24

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x46

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_BLOB_OBJECT"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x25

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x47

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_CF"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v3, 0x26

    aput-object v1, v10, v3

    new-array v1, v11, [Ljava/lang/Object;

    const-wide/16 v5, 0x48

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "VT_CLSID"

    aput-object v3, v1, v14

    aput-object v0, v1, v4

    const/16 v0, 0x27

    aput-object v1, v10, v0

    sput-object v10, Lorg/apache/poi/hpsf/Variant;->NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

    .line 390
    new-instance v0, Ljava/util/HashMap;

    array-length v1, v10

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 391
    .local v0, "number2Name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    array-length v5, v10

    invoke-direct {v1, v5, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 393
    .local v1, "number2Len":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    sget-object v3, Lorg/apache/poi/hpsf/Variant;->NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

    .local v3, "arr$":[[Ljava/lang/Object;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 394
    .local v7, "nn":[Ljava/lang/Object;
    aget-object v8, v7, v2

    check-cast v8, Ljava/lang/Long;

    aget-object v9, v7, v14

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    aget-object v8, v7, v2

    check-cast v8, Ljava/lang/Long;

    aget-object v9, v7, v4

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v7    # "nn":[Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 397
    .end local v3    # "arr$":[[Ljava/lang/Object;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hpsf/Variant;->numberToName:Ljava/util/Map;

    .line 398
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hpsf/Variant;->numberToLength:Ljava/util/Map;

    .line 399
    .end local v0    # "number2Name":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v1    # "number2Len":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVariantLength(J)I
    .locals 2
    .param p0, "variantType"    # J

    .line 436
    sget-object v0, Lorg/apache/poi/hpsf/Variant;->numberToLength:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 437
    .local v0, "length":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/hpsf/Variant;->LENGTH_UNKNOWN:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getVariantName(J)Ljava/lang/String;
    .locals 10
    .param p0, "variantType"    # J

    .line 409
    move-wide v0, p0

    .line 410
    .local v0, "vt":J
    const-string v2, ""

    .line 411
    .local v2, "name":Ljava/lang/String;
    const-wide/16 v3, 0x1000

    and-long v5, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 412
    const-string v2, "Vector of "

    .line 413
    sub-long/2addr v0, v3

    goto :goto_0

    .line 414
    :cond_0
    const-wide/16 v3, 0x2000

    and-long v5, v0, v3

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    .line 415
    const-string v2, "Array of "

    .line 416
    sub-long/2addr v0, v3

    goto :goto_0

    .line 417
    :cond_1
    const-wide/16 v3, 0x4000

    and-long v5, v0, v3

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    .line 418
    const-string v2, "ByRef of "

    .line 419
    sub-long/2addr v0, v3

    .line 422
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/hpsf/Variant;->numberToName:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "unknown variant type"

    :goto_1
    return-object v3
.end method
