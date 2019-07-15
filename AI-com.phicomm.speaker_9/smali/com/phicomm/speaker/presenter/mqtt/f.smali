.class public Lcom/phicomm/speaker/presenter/mqtt/f;
.super Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;
.source "SpeakerRebootPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/mqtt/f$a;
    }
.end annotation


# instance fields
.field private c:Lcom/phicomm/speaker/presenter/b/f;

.field private d:Ljava/lang/String;

.field private e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/mqtt/f$a;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lcom/phicomm/speaker/presenter/mqtt/g;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/mqtt/g;-><init>(Lcom/phicomm/speaker/presenter/mqtt/f;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->g:Ljava/lang/Runnable;

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->f:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->c:Lcom/phicomm/speaker/presenter/b/f;

    .line 59
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    return-void
.end method

.method private f()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->c:Lcom/phicomm/speaker/presenter/b/f;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->c:Lcom/phicomm/speaker/presenter/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/presenter/b/f;->a(I)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->c:Lcom/phicomm/speaker/presenter/b/f;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->c:Lcom/phicomm/speaker/presenter/b/f;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/f;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/phicomm/speaker/d/a/a;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/f;->g()V

    .line 110
    invoke-virtual {p1}, Lcom/phicomm/speaker/d/a/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/mqtt/f$a;->a()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/f;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/f;->f()V

    const-wide/32 v0, 0xea60

    if-eqz p2, :cond_2

    const-string v2, "rebootStartTimestamp"

    const-wide/16 v3, 0x0

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/phicomm/speaker/f/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    if-eqz v2, :cond_2

    .line 78
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->a:Landroid/content/Context;

    const v0, 0x7f0f0179

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/phicomm/speaker/presenter/mqtt/f$a;->a(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->g:Ljava/lang/Runnable;

    sub-long v4, v0, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/mqtt/f;->c()V

    const-string v2, "device/%s/reboot/finish"

    const/4 v3, 0x1

    .line 86
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->d:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->d:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/presenter/mqtt/f;->e(Ljava/lang/String;)V

    if-nez p2, :cond_3

    const-string p2, "rebootStartTimestamp"

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "device/%s/reboot/request"

    .line 90
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/f;->d(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->f:Landroid/os/Handler;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method final synthetic b()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/mqtt/f;->g()V

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->e:Lcom/phicomm/speaker/presenter/mqtt/f$a;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->a:Landroid/content/Context;

    const v2, 0x7f0f0179

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/presenter/mqtt/f$a;->a(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/presenter/mqtt/MqttBasePresenter;->a()V

    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
