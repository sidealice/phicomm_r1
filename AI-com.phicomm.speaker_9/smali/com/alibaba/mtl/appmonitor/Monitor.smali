.class public Lcom/alibaba/mtl/appmonitor/Monitor;
.super Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;
.source "Monitor.java"


# instance fields
.field private b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/Monitor;->b:Landroid/app/Application;

    return-void
.end method

.method private a(I)Lcom/alibaba/mtl/appmonitor/a/f;
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/a/f;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public alarm_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public alarm_commitFail1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alarm_commitFail2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alarm_commitSuccess1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alarm_commitSuccess2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alarm_setSampling(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->setSampling(I)V

    return-void
.end method

.method public alarm_setStatisticsInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Alarm;->setStatisticsInterval(I)V

    return-void
.end method

.method public counter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public counter_commit1(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public counter_commit2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public counter_setSampling(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;->setSampling(I)V

    return-void
.end method

.method public counter_setStatisticsInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Counter;->setStatisticsInterval(I)V

    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->destroy()V

    return-void
.end method

.method public enableLog(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->enableLog(Z)V

    return-void
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Monitor;->b:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->init(Landroid/app/Application;)V

    return-void
.end method

.method public offlinecounter_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$OffLineCounter;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public offlinecounter_commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$OffLineCounter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public offlinecounter_setSampling(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$OffLineCounter;->setSampling(I)V

    return-void
.end method

.method public offlinecounter_setStatisticsInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$OffLineCounter;->setStatisticsInterval(I)V

    return-void
.end method

.method public register1(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    return-void
.end method

.method public register2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    return-void
.end method

.method public register3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    return-void
.end method

.method public register4(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setRequestAuthInfo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSampling(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setSampling(I)V

    return-void
.end method

.method public setStatisticsInterval1(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(I)V

    return-void
.end method

.method public setStatisticsInterval2(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/appmonitor/Monitor;->a(I)Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object p1

    .line 54
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    return-void
.end method

.method public stat_begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->begin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stat_checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public stat_commit1(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public stat_commit2(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;D)V

    return-void
.end method

.method public stat_commit3(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Monitor"

    const/4 v1, 0x1

    .line 241
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[stat_commit3]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-void
.end method

.method public stat_end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stat_setSampling(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->setSampling(I)V

    return-void
.end method

.method public stat_setStatisticsInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate$Stat;->setStatisticsInterval(I)V

    return-void
.end method

.method public transaction_begin(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/TransactionDelegate;->begin(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V

    return-void
.end method

.method public transaction_end(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {p1, p2}, Lcom/alibaba/mtl/appmonitor/TransactionDelegate;->end(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V

    return-void
.end method

.method public triggerUpload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->triggerUpload()V

    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->turnOffRealTimeDebug()V

    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->turnOnRealTimeDebug(Ljava/util/Map;)V

    return-void
.end method

.method public updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static/range {p1 .. p9}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V

    return-void
.end method
