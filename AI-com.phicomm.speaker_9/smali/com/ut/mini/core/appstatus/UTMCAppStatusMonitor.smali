.class public Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
.super Ljava/lang/Object;
.source "UTMCAppStatusMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;


# instance fields
.field private J:I

.field private P:Z

.field private a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    .line 19
    iput-boolean v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->P:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->d:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    return-void
.end method

.method private N()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/log/e/r;->f(I)V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->P:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
    .locals 2

    const-class v0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-direct {v1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;-><init>()V

    sput-object v1, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    .line 34
    :cond_0
    sget-object v1, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 63
    invoke-interface {v2, p1, p2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 65
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 72
    invoke-interface {v2, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 81
    invoke-interface {v2, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 83
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 90
    invoke-interface {v2, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 92
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 99
    invoke-interface {v2, p1, p2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->N()V

    .line 108
    iget p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    .line 110
    iget-boolean p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->P:Z

    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 114
    invoke-interface {v2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onSwitchForeground()V

    goto :goto_0

    .line 116
    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->P:Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 123
    iget p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    .line 124
    iget p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->J:I

    if-nez p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->N()V

    .line 128
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object p1

    const/16 v0, 0xb

    new-instance v1, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;-><init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public registerAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterAppStatusCallbacks(Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
