.class public Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;
.super Ljava/lang/Object;
.source "SharedWakeLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "memolog-SharedWakeLock"

.field private static sWakeLock:Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;


# instance fields
.field private mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, "appContext":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 19
    .local v1, "pm":Landroid/os/PowerManager;
    const v2, 0x3000001a

    const-string v3, "memolog-SharedWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    const/4 v2, 0x1

    const-string v3, "memolog-SharedWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->sWakeLock:Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->sWakeLock:Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->sWakeLock:Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->sWakeLock:Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquireFullWakeLock()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 39
    const-string v0, "memolog-SharedWakeLock"

    const-string v1, "Acquired Full WAKE_LOCK!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public acquirePartialWakeLock()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    const-string v0, "memolog-SharedWakeLock"

    const-string v1, "Acquired Partial WAKE_LOCK!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public releaseFullWakeLock()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 46
    const-string v0, "memolog-SharedWakeLock"

    const-string v1, "Released Full WAKE_LOCK!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public releasePartialWakeLock()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/utils/SharedWakeLock;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 60
    const-string v0, "memolog-SharedWakeLock"

    const-string v1, "Released Partial WAKE_LOCK!"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method
