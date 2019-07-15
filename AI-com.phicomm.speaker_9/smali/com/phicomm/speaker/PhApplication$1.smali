.class Lcom/phicomm/speaker/PhApplication$1;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/PhApplication;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$1;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$1;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->a(Lcom/phicomm/speaker/PhApplication;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$1;->a:Lcom/phicomm/speaker/PhApplication;

    .line 118
    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->a(Lcom/phicomm/speaker/PhApplication;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SplashActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$1;->a:Lcom/phicomm/speaker/PhApplication;

    .line 119
    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->a(Lcom/phicomm/speaker/PhApplication;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LoginCloudActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 120
    sget v0, Lcom/phicomm/speaker/PhApplication;->b:I

    if-nez v0, :cond_3

    .line 121
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "request_time"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "last_request"

    const-wide/16 v4, 0x0

    .line 122
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, v7, v3

    if-gez v0, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 125
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/msgcenter/DataChannelManager;->getDataChannelManager(Landroid/content/Context;)Lcom/unisound/lib/msgcenter/DataChannelManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unisound/lib/msgcenter/DataChannelManager;->openDataChannel(Z)V

    :cond_2
    const-string v0, "DataChannel"

    const-string v1, "phicomm openDataChannelManager"

    .line 127
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
