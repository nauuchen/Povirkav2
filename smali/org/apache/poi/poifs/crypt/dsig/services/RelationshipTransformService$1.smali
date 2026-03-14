.class final Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$1;
.super Ljava/security/Provider;
.source "RelationshipTransformService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService;->registerDsigProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # D
    .param p4, "x2"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method
