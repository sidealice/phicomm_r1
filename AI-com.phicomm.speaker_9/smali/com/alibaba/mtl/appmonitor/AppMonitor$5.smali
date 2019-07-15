.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$5;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1204
    sget-object p1, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->c:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1205
    invoke-static {p2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/mtl/appmonitor/IMonitor;

    move-result-object p1

    sput-object p1, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    .line 1206
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1207
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1208
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    move-result-object p1

    new-instance p2, Lcom/alibaba/mtl/appmonitor/AppMonitor$5$1;

    invoke-direct {p2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$5$1;-><init>(Lcom/alibaba/mtl/appmonitor/AppMonitor$5;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1218
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1219
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1220
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string p1, "AppMonitor"

    const/4 v0, 0x1

    .line 1225
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[onServiceDisconnected]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1227
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1228
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 1228
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
