.class public Landroidmads/library/qrgenearator/QRGContents;
.super Ljava/lang/Object;
.source "QRGContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidmads/library/qrgenearator/QRGContents$Type;,
        Landroidmads/library/qrgenearator/QRGContents$ImageType;
    }
.end annotation


# static fields
.field public static final EMAIL_KEYS:[Ljava/lang/String;

.field public static final EMAIL_TYPE_KEYS:[Ljava/lang/String;

.field public static final NOTE_KEY:Ljava/lang/String; = "NOTE_KEY"

.field public static final PHONE_KEYS:[Ljava/lang/String;

.field public static final PHONE_TYPE_KEYS:[Ljava/lang/String;

.field public static final URL_KEY:Ljava/lang/String; = "URL_KEY"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-string v0, "phone"

    const-string v1, "secondary_phone"

    const-string/jumbo v2, "tertiary_phone"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    .line 44
    const-string v0, "phone_type"

    const-string v1, "secondary_phone_type"

    const-string/jumbo v2, "tertiary_phone_type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidmads/library/qrgenearator/QRGContents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    .line 50
    const-string v0, "email"

    const-string v1, "secondary_email"

    const-string/jumbo v2, "tertiary_email"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    .line 55
    const-string v0, "email_type"

    const-string v1, "secondary_email_type"

    const-string/jumbo v2, "tertiary_email_type"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
