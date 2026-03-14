.class public final enum Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;
.super Ljava/lang/Enum;
.source "MyModeQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/poverka/httpFileClient/util/MyModeQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum CHECK_CURRENT_STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum FINISH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum FLASH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum FLOW_RATE_SELECTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum PREPARE_MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum READ_ACTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum READ_DATE_TIME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum RESTORE_ACTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum RESTORE_FILES:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum RESTORE_SOCKET:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum SLEEP_TIMER:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum TEST_NAME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum TEST_PHOTO:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum UPDATE_FIRMWARE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum UPDATE_RESULTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

.field public static final enum UPDATE_TESTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 12
    new-instance v0, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->NONE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 13
    new-instance v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v3, "TEST_PHOTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->TEST_PHOTO:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 14
    new-instance v3, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v5, "READ_DATE_TIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->READ_DATE_TIME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 16
    new-instance v5, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v7, "FLASH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FLASH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 17
    new-instance v7, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v9, "CHECK_CURRENT_STATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->CHECK_CURRENT_STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 18
    new-instance v9, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v11, "STATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->STATE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 19
    new-instance v11, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v13, "TEST_NAME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->TEST_NAME:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 20
    new-instance v13, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v15, "READ_ACTION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->READ_ACTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 21
    new-instance v15, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v14, "PREPARE_MEASUREMENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->PREPARE_MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 22
    new-instance v14, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v12, "FLOW_RATE_SELECTION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FLOW_RATE_SELECTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 23
    new-instance v12, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v10, "MEASUREMENT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->MEASUREMENT:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 24
    new-instance v10, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v8, "FINISH"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->FINISH:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 25
    new-instance v8, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v6, "RESTORE_SOCKET"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_SOCKET:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 26
    new-instance v6, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v4, "RESTORE_FILES"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_FILES:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 27
    new-instance v4, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v2, "RESTORE_ACTION"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->RESTORE_ACTION:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 28
    new-instance v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v6, "UPDATE_FIRMWARE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_FIRMWARE:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 29
    new-instance v6, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v4, "SLEEP_TIMER"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->SLEEP_TIMER:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 30
    new-instance v4, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v2, "UPDATE_TESTS"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_TESTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 31
    new-instance v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const-string v6, "UPDATE_RESULTS"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->UPDATE_RESULTS:Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    .line 11
    const/16 v6, 0x13

    new-array v6, v6, [Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->$VALUES:[Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    return-object v0
.end method

.method public static values()[Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;
    .locals 1

    .line 11
    sget-object v0, Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->$VALUES:[Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    invoke-virtual {v0}, [Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/poverka/httpFileClient/util/MyModeQueue$RequestMode;

    return-object v0
.end method
