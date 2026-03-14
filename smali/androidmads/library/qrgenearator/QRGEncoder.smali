.class public Landroidmads/library/qrgenearator/QRGEncoder;
.super Ljava/lang/Object;
.source "QRGEncoder.java"


# instance fields
.field private BLACK:I

.field private WHITE:I

.field private contents:Ljava/lang/String;

.field private dimension:I

.field private displayContents:Ljava/lang/String;

.field private encoded:Z

.field private format:Lcom/google/zxing/BarcodeFormat;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "dimension"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    .line 22
    const/high16 v0, -0x1000000

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 56
    iput p4, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    .line 22
    const/high16 v0, -0x1000000

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 47
    const-string v1, "TEXT_TYPE"

    invoke-direct {p0, p1, v0, v1}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dimension"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    .line 22
    const/high16 v0, -0x1000000

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    .line 23
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 51
    iput p3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    .line 52
    const-string v1, "TEXT_TYPE"

    invoke-direct {p0, p1, v0, v1}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    .line 53
    return-void
.end method

.method private encodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "type"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 67
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v1, :cond_0

    .line 68
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidmads/library/qrgenearator/QRGEncoder;->encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 71
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 73
    const-string v0, "Text"

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 75
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private encodeQRCodeContents(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "type"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "EMAIL_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "TEXT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "LOCATION_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "SMS_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "CONTACT_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "PHONE_TYPE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_11

    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_7

    .line 182
    :cond_1
    if-eqz p2, :cond_12

    .line 184
    const-string v0, "LAT"

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 185
    .local v0, "latitude":F
    const-string v2, "LONG"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 186
    .local v2, "longitude":F
    cmpl-float v3, v0, v1

    if-eqz v3, :cond_12

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_12

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 189
    const-string v1, "Location"

    iput-object v1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto/16 :goto_7

    .line 112
    .end local v0    # "latitude":F
    .end local v2    # "longitude":F
    :cond_2
    if-eqz p2, :cond_12

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v0, "newContents":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 116
    .local v1, "newDisplayContents":Ljava/lang/StringBuilder;
    const-string v2, "VCARD:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "name":Ljava/lang/String;
    const/16 v3, 0x3b

    if-eqz v2, :cond_3

    .line 120
    const-string v4, "N:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    const-string v4, "postal"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "address":Ljava/lang/String;
    const/16 v5, 0xa

    if-eqz v4, :cond_4

    .line 126
    const-string v6, "ADR:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_4
    new-instance v6, Ljava/util/HashSet;

    sget-object v7, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v7, v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 131
    .local v6, "uniquePhones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    sget-object v8, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_6

    .line 132
    sget-object v8, Landroidmads/library/qrgenearator/QRGContents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "phone":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 134
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v8    # "phone":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 137
    .end local v7    # "x":I
    :cond_6
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 138
    .restart local v8    # "phone":Ljava/lang/String;
    const-string v9, "TEL:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v8}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .end local v8    # "phone":Ljava/lang/String;
    goto :goto_3

    .line 143
    :cond_7
    new-instance v7, Ljava/util/HashSet;

    sget-object v8, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 144
    .local v7, "uniqueEmails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_4
    sget-object v9, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_9

    .line 145
    sget-object v9, Landroidmads/library/qrgenearator/QRGContents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "email":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 147
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v9    # "email":Ljava/lang/String;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 150
    .end local v8    # "x":I
    :cond_9
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 151
    .restart local v9    # "email":Ljava/lang/String;
    const-string v10, "EMAIL:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v9}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v9    # "email":Ljava/lang/String;
    goto :goto_5

    .line 155
    :cond_a
    const-string v8, "URL_KEY"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 158
    const-string v9, "URL:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_b
    const-string v9, "NOTE_KEY"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "note":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 164
    const-string v10, "NOTE:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v9}, Landroidmads/library/qrgenearator/QRGEncoder;->escapeVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_d

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 173
    const-string v3, "Contact"

    iput-object v3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_6

    .line 175
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 176
    iput-object v3, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 179
    .end local v0    # "newContents":Ljava/lang/StringBuilder;
    .end local v1    # "newDisplayContents":Ljava/lang/StringBuilder;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "address":Ljava/lang/String;
    .end local v6    # "uniquePhones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v7    # "uniqueEmails":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "note":Ljava/lang/String;
    :goto_6
    goto/16 :goto_7

    .line 104
    :cond_e
    invoke-direct {p0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    if-eqz p1, :cond_12

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 108
    const-string v0, "SMS"

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_7

    .line 96
    :cond_f
    invoke-direct {p0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    if-eqz p1, :cond_12

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 100
    const-string v0, "Phone"

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_7

    .line 88
    :cond_10
    invoke-direct {p0, p1}, Landroidmads/library/qrgenearator/QRGEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    if-eqz p1, :cond_12

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 92
    const-string v0, "E-Mail"

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    goto :goto_7

    .line 81
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 82
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->displayContents:Ljava/lang/String;

    .line 84
    const-string v0, "Text"

    iput-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    .line 194
    :cond_12
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4e09e475 -> :sswitch_5
        -0x27f26fe7 -> :sswitch_4
        0x2a45da80 -> :sswitch_3
        0x506b3984 -> :sswitch_2
        0x6a03370c -> :sswitch_1
        0x6d46ba1d -> :sswitch_0
    .end sparse-switch
.end method

.method private escapeVCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .line 245
    if-eqz p1, :cond_4

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x3b

    if-gez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 249
    .local v1, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 251
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 252
    .local v5, "c":C
    if-eq v5, v0, :cond_1

    if-ne v5, v2, :cond_2

    .line 253
    :cond_1
    const/16 v6, 0x5c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    .end local v1    # "length":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-object p1
.end method

.method private guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "contents"    # Ljava/lang/CharSequence;

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 230
    const-string v1, "UTF-8"

    return-object v1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 238
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 18

    .line 197
    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroidmads/library/qrgenearator/QRGEncoder;->encoded:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 200
    .local v0, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v3, v1, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroidmads/library/qrgenearator/QRGEncoder;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "encoding":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 202
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v0, v4

    .line 203
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    new-instance v5, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v5}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 206
    .local v5, "writer":Lcom/google/zxing/MultiFormatWriter;
    iget-object v6, v1, Landroidmads/library/qrgenearator/QRGEncoder;->contents:Ljava/lang/String;

    iget-object v7, v1, Landroidmads/library/qrgenearator/QRGEncoder;->format:Lcom/google/zxing/BarcodeFormat;

    iget v9, v1, Landroidmads/library/qrgenearator/QRGEncoder;->dimension:I

    move v8, v9

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 207
    .local v4, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 208
    .local v6, "width":I
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    move v15, v7

    .line 209
    .local v15, "height":I
    mul-int v7, v6, v15

    new-array v7, v7, [I

    move-object/from16 v16, v7

    .line 211
    .local v16, "pixels":[I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    if-ge v7, v15, :cond_4

    .line 212
    mul-int v8, v7, v6

    .line 213
    .local v8, "offset":I
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_1
    if-ge v9, v6, :cond_3

    .line 214
    add-int v10, v8, v9

    invoke-virtual {v4, v9, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidmads/library/qrgenearator/QRGEncoder;->getColorBlack()I

    move-result v11

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidmads/library/qrgenearator/QRGEncoder;->getColorWhite()I

    move-result v11

    :goto_2
    aput v11, v16, v10

    .line 213
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 211
    .end local v8    # "offset":I
    .end local v9    # "x":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 218
    .end local v7    # "y":I
    :cond_4
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v17, v7

    .line 219
    .local v17, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, v16

    move v10, v6

    move v13, v6

    move v14, v15

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-object v17

    .line 221
    .end local v0    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v5    # "writer":Lcom/google/zxing/MultiFormatWriter;
    .end local v6    # "width":I
    .end local v15    # "height":I
    .end local v16    # "pixels":[I
    .end local v17    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    return-object v2
.end method

.method public getColorBlack()I
    .locals 1

    .line 43
    iget v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    return v0
.end method

.method public getColorWhite()I
    .locals 1

    .line 39
    iget v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidmads/library/qrgenearator/QRGEncoder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setColorBlack(I)V
    .locals 0
    .param p1, "color"    # I

    .line 35
    iput p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->BLACK:I

    .line 36
    return-void
.end method

.method public setColorWhite(I)V
    .locals 0
    .param p1, "color"    # I

    .line 31
    iput p1, p0, Landroidmads/library/qrgenearator/QRGEncoder;->WHITE:I

    .line 32
    return-void
.end method
