.class public final Landroidmads/library/qrgenearator/QRGContents$ImageType;
.super Ljava/lang/Object;
.source "QRGContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidmads/library/qrgenearator/QRGContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageType"
.end annotation


# static fields
.field public static IMAGE_JPEG:I

.field public static IMAGE_PNG:I

.field public static IMAGE_WEBP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_PNG:I

    .line 9
    const/4 v0, 0x1

    sput v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_JPEG:I

    .line 10
    const/4 v0, 0x2

    sput v0, Landroidmads/library/qrgenearator/QRGContents$ImageType;->IMAGE_WEBP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
