.class public abstract Lorg/apache/poi/util/POILogger;
.super Ljava/lang/Object;
.source "POILogger.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x7

.field public static final FATAL:I = 0x9

.field public static final INFO:I = 0x3

.field protected static final LEVEL_STRINGS:[Ljava/lang/String;

.field protected static final LEVEL_STRINGS_SHORT:[Ljava/lang/String;

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 36
    const-string v0, "?"

    const-string v1, "D"

    const-string v2, "?"

    const-string v3, "I"

    const-string v4, "?"

    const-string v5, "W"

    const-string v6, "?"

    const-string v7, "E"

    const-string v8, "?"

    const-string v9, "F"

    const-string v10, "?"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS_SHORT:[Ljava/lang/String;

    .line 38
    const-string v1, "?0?"

    const-string v2, "DEBUG"

    const-string v3, "?2?"

    const-string v4, "INFO"

    const-string v5, "?4?"

    const-string v6, "WARN"

    const-string v7, "?6?"

    const-string v8, "ERROR"

    const-string v9, "?8?"

    const-string v10, "FATAL"

    const-string v11, "?10+?"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected abstract _log(ILjava/lang/Object;)V
.end method

.method protected abstract _log(ILjava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public abstract check(I)Z
.end method

.method public abstract initialize(Ljava/lang/String;)V
.end method

.method public varargs log(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 96
    .local v1, "lastEx":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 97
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    aget-object v3, p2, v2

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 98
    aget-object v3, p2, v2

    move-object v1, v3

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    .line 100
    :cond_1
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "[\r\n]+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-nez v1, :cond_3

    .line 110
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/util/POILogger;->_log(ILjava/lang/Object;)V

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/poi/util/POILogger;->_log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    :goto_2
    return-void
.end method
