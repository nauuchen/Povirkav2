.class public Lcom/poverka/httpFileClient/activity/ExitService;
.super Landroid/app/Service;
.source "ExitService.java"


# instance fields
.field mVerification:Lcom/poverka/httpFileClient/measurement/CounterVerification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! onTaskRemoved called !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 29
    invoke-virtual {p0}, Lcom/poverka/httpFileClient/activity/ExitService;->stopSelf()V

    .line 30
    return-void
.end method
