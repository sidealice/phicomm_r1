.class public final Lcom/phicomm/speaker/zxing/f;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/zxing/f$a;,
        Lcom/phicomm/speaker/zxing/f$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/f;->b:Landroid/app/Activity;

    .line 44
    new-instance p1, Lcom/phicomm/speaker/zxing/f$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/zxing/f$b;-><init>(Lcom/phicomm/speaker/zxing/f;Lcom/phicomm/speaker/zxing/f$1;)V

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/f;->c:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/phicomm/speaker/zxing/f;->d:Z

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/zxing/f;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/f;->f()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/zxing/f;)Landroid/app/Activity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/zxing/f;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/phicomm/speaker/zxing/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/f;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/f;->e:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/f;->f()V

    .line 51
    new-instance v0, Lcom/phicomm/speaker/zxing/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/zxing/f$a;-><init>(Lcom/phicomm/speaker/zxing/f;Lcom/phicomm/speaker/zxing/f$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/f;->e:Landroid/os/AsyncTask;

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/f;->e:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/f;->f()V

    .line 57
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/f;->d:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/f;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/f;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/phicomm/speaker/zxing/f;->d:Z

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/zxing/f;->a:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/f;->d:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/phicomm/speaker/zxing/f;->a:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/f;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/f;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/phicomm/speaker/zxing/f;->d:Z

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/f;->f()V

    return-void
.end method
