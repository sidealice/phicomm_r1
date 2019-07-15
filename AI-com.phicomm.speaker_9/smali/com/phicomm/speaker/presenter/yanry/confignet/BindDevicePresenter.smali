.class public abstract Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;
.super Ljava/lang/Object;
.source "BindDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/model/confignet/ApClient;

.field private b:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

.field private c:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

.field private d:J

.field private e:I

.field private f:Z

.field private g:Lcom/phicomm/speaker/model/common/f;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Landroid/content/Context;)V

    .line 89
    new-instance p1, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 181
    const-class v0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/d;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/model/common/d;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(I)Z
    .locals 1

    const/16 v0, -0x271b

    if-eq p1, v0, :cond_1

    const/16 v0, -0x271c

    if-eq p1, v0, :cond_1

    const-string v0, "303"

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_1

    const-string v0, "302"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_1

    const-string v0, "301"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e:I

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/common/f;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    const v0, 0x61a8e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b(I)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/model/confignet/ApClient;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    return-object p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    return-object p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e:I

    return p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/common/f;->a(J)V

    .line 125
    const-class v0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/b;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/a;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()Z
    .locals 2

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->j:Z

    .line 147
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->j()V

    .line 148
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->j:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 154
    :try_start_1
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 156
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 158
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->i:Z

    return v0
.end method

.method private declared-synchronized j()V
    .locals 2

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/b;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/b;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 165
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(IZ)V
.end method

.method public a(Lcom/phicomm/speaker/bean/confignet/WifiInfo;Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V
    .locals 4

    const-string v0, "start binding..."

    const/4 v1, 0x0

    .line 105
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    .line 107
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->c:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    const p1, 0x7fffffff

    .line 108
    iput p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->e:I

    .line 109
    iput-boolean v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->f:Z

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d:J

    .line 111
    const-class p1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/h;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h()V

    return-void
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    const-string v0, "rebind."

    const/4 v1, 0x0

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/confignet/ApClient;->d()V

    return-void
.end method

.method final synthetic e()Z
    .locals 8

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    new-instance v2, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$a;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter$1;)V

    .line 169
    iget-wide v3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d:J

    cmp-long v5, v0, v3

    const/4 v3, 0x0

    if-ltz v5, :cond_0

    .line 170
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-wide v4, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d:J

    sub-long v6, v4, v0

    const-string v0, "hold on %sms."

    const/4 v1, 0x1

    .line 173
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-class v0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/d;

    invoke-virtual {v0, v2, v6, v7}, Lcom/phicomm/speaker/model/common/d;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v3
.end method

.method final synthetic f()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    invoke-virtual {v1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->b:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    if-eqz v0, :cond_2

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a:Lcom/phicomm/speaker/model/confignet/ApClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/confignet/ApClient;->a(Z)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->g:Lcom/phicomm/speaker/model/common/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/confignet/c;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/c;-><init>(Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/f;->a(Lcom/phicomm/speaker/b/d;)V

    :cond_3
    :goto_0
    return-void
.end method

.method final synthetic g()Z
    .locals 2

    const-string v0, "bind fail on network unavailable."

    const/4 v1, 0x0

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a()V

    const/4 v0, 0x1

    return v0
.end method
