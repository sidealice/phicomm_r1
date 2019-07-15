.class public Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;
.super Lcom/alibaba/sdk/android/feedback/xblink/f/a;


# static fields
.field private static d:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;-><init>()V

    return-void
.end method

.method private static a(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static declared-synchronized d()J
    .locals 9

    const-class v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/high16 v3, 0x5700000000000000L    # 1.2024538023802026E111

    const/16 v5, 0x10

    shl-long/2addr v1, v5

    const-wide/16 v5, -0x1

    and-long v7, v1, v5

    or-long v1, v3, v7

    sget-short v3, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;->d:S

    add-int/lit8 v4, v3, 0x1

    int-to-short v4, v4

    sput-short v4, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;->d:S

    invoke-static {v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;->a(S)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    or-long v5, v1, v3

    monitor-exit v0

    return-wide v5

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "msgId"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/b;)Z
    .locals 1

    const-string v0, "getMsgId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/t;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
