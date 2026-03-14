.class synthetic Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;
.super Ljava/lang/Object;
.source "XSLFTextShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTextShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

.field static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextAutofit:[I

.field static final synthetic $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 725
    invoke-static {}, Lorg/apache/poi/sl/usermodel/Placeholder;->values()[Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/poi/sl/usermodel/Placeholder;->BODY:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    sget-object v3, Lorg/apache/poi/sl/usermodel/Placeholder;->TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v3}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/Placeholder;->CENTERED_TITLE:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v4}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    sget-object v5, Lorg/apache/poi/sl/usermodel/Placeholder;->CONTENT:Lorg/apache/poi/sl/usermodel/Placeholder;

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/Placeholder;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    .line 695
    :goto_3
    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->values()[Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    :try_start_4
    sget-object v5, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->NOTES:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :goto_4
    :try_start_5
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v5, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->HALF_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :goto_5
    :try_start_6
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v5, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->QUARTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    :try_start_7
    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v5, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v5}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    :goto_8
    :try_start_9
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_BODY:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    :goto_9
    :try_start_a
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v3

    :goto_a
    :try_start_b
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextPlaceholder:[I

    sget-object v4, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    invoke-virtual {v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v3

    .line 544
    :goto_b
    invoke-static {}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->values()[Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextAutofit:[I

    :try_start_c
    sget-object v4, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NONE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    invoke-virtual {v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextAutofit:[I

    sget-object v3, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    invoke-virtual {v3}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    :try_start_e
    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTextShape$8;->$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextAutofit:[I

    sget-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->SHAPE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    return-void
.end method
