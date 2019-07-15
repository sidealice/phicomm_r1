.class public Lcom/alibaba/mtl/appmonitor/a/b;
.super Lcom/alibaba/mtl/appmonitor/a/d;
.source "CountEvent.java"


# instance fields
.field public count:I

.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->a()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "count"

    .line 25
    iget v2, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 26
    iget-wide v2, p0, Lcom/alibaba/mtl/appmonitor/a/b;->e:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catch_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(D)V
    .locals 2

    monitor-enter p0

    .line 17
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->e:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->e:D

    .line 18
    iget p1, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized fill([Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/d;->fill([Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->e:D

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method
