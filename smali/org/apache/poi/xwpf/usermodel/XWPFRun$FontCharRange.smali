.class public final enum Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
.super Ljava/lang/Enum;
.source "XWPFRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontCharRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum cs:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum eastAsia:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

.field public static final enum hAnsi:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1207
    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    .line 1208
    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v3, "cs"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->cs:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    .line 1209
    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v5, "eastAsia"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->eastAsia:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    .line 1210
    new-instance v5, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    const-string v7, "hAnsi"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->hAnsi:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    .line 1206
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1206
    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
    .locals 1

    .line 1206
    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    return-object v0
.end method
