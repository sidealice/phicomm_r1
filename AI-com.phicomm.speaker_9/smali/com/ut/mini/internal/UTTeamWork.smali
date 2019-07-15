.class public Lcom/ut/mini/internal/UTTeamWork;
.super Ljava/lang/Object;
.source "UTTeamWork.java"


# static fields
.field private static a:Lcom/ut/mini/internal/UTTeamWork;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/internal/UTTeamWork;
    .locals 2

    const-class v0, Lcom/ut/mini/internal/UTTeamWork;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/ut/mini/internal/UTTeamWork;->a:Lcom/ut/mini/internal/UTTeamWork;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/ut/mini/internal/UTTeamWork;

    invoke-direct {v1}, Lcom/ut/mini/internal/UTTeamWork;-><init>()V

    sput-object v1, Lcom/ut/mini/internal/UTTeamWork;->a:Lcom/ut/mini/internal/UTTeamWork;

    .line 27
    :cond_0
    sget-object v1, Lcom/ut/mini/internal/UTTeamWork;->a:Lcom/ut/mini/internal/UTTeamWork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public closeAuto1010Track()V
    .locals 1

    .line 116
    invoke-static {}, Lcom/alibaba/mtl/log/c;->a()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c;->p()V

    return-void
.end method

.method public disableNetworkStatusChecker()V
    .locals 0

    return-void
.end method

.method public dispatchLocalHits()V
    .locals 0

    return-void
.end method

.method public getUtsid()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 100
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/a;->a()Lcom/alibaba/mtl/log/sign/IRequestAuth;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Lcom/alibaba/mtl/log/a;->a()Lcom/alibaba/mtl/log/sign/IRequestAuth;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/mtl/log/sign/IRequestAuth;->getAppkey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 103
    :goto_0
    invoke-static {}, Lcom/alibaba/mtl/log/b;->a()Lcom/alibaba/mtl/log/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/mtl/log/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 104
    sget-object v3, Lcom/alibaba/mtl/log/a;->B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 110
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public initialized()V
    .locals 0

    return-void
.end method

.method public saveCacheDataToLocal()V
    .locals 1

    .line 85
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/c;->G()V

    return-void
.end method

.method public setToAliyunOsPlatform()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/ut/mini/base/UTMIVariables;->getInstance()Lcom/ut/mini/base/UTMIVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/base/UTMIVariables;->setToAliyunOSPlatform()V

    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->turnOffRealTimeDebug()V

    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->turnOnRealTimeDebug(Ljava/util/Map;)V

    return-void
.end method
