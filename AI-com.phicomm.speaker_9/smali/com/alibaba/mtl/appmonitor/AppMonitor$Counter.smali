.class public Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 667
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/IMonitor;->counter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 669
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b(Ljava/lang/Exception;)V

    move p0, v1

    :goto_0
    return p0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .line 684
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$3;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    .line 697
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 7

    .line 712
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 715
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 725
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setSampling(I)V
    .locals 1

    .line 637
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$2;-><init>(I)V

    .line 650
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1

    .line 615
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter$1;-><init>(I)V

    .line 629
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
