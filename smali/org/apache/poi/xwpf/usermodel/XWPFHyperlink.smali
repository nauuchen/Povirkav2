.class public Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;
.super Ljava/lang/Object;
.source "XWPFHyperlink.java"


# instance fields
.field id:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->id:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->url:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlink;->url:Ljava/lang/String;

    return-object v0
.end method
