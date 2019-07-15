.class Lcom/alibaba/mtl/appmonitor/c;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/mtl/appmonitor/c;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Z = false


# instance fields
.field private d:I

.field private e:I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x2bf20

    .line 26
    iput v0, p0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    .line 94
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    .line 95
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    return-void
.end method

.method private static a(I)I
    .locals 1

    const v0, 0xfe6d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xffdd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(II)V
    .locals 13

    const-string v0, "CommitTask"

    const/4 v1, 0x1

    .line 59
    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setStatisticsInterval] eventId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " statisticsInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v2, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/c;

    const/16 v3, 0x3e8

    if-nez v2, :cond_0

    if-lez p1, :cond_3

    .line 64
    new-instance v2, Lcom/alibaba/mtl/appmonitor/c;

    mul-int/2addr v3, p1

    invoke-direct {v2, p0, v3}, Lcom/alibaba/mtl/appmonitor/c;-><init>(II)V

    .line 65
    sget-object p1, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CommitTask"

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post next eventId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": uploadTask.interval "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/alibaba/mtl/appmonitor/c;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object p1

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result p0

    iget v1, v2, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v3, v1

    invoke-virtual {p1, p0, v2, v3, v4}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    goto/16 :goto_1

    :cond_0
    if-lez p1, :cond_2

    .line 72
    iget v5, v2, Lcom/alibaba/mtl/appmonitor/c;->d:I

    mul-int/2addr p1, v3

    if-eq v5, p1, :cond_3

    .line 73
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v3

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/log/e/r;->f(I)V

    .line 74
    iput p1, v2, Lcom/alibaba/mtl/appmonitor/c;->d:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 76
    iget p1, v2, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v7, p1

    iget-wide v9, v2, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    sub-long v11, v5, v9

    sub-long v9, v7, v11

    const-wide/16 v7, 0x0

    cmp-long p1, v9, v7

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v9

    :goto_0
    const-string p1, "CommitTask"

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "post next eventId"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " next:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "  uploadTask.interval: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/alibaba/mtl/appmonitor/c;->d:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object p1

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result p0

    invoke-virtual {p1, p0, v2, v7, v8}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    .line 82
    iput-wide v5, v2, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    goto :goto_1

    :cond_2
    const-string p1, "CommitTask"

    .line 85
    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadTasks.size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object p1, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "CommitTask"

    .line 87
    new-array p1, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadTasks.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-static {p0, p1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static destroy()V
    .locals 6

    .line 51
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 52
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v5

    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/mtl/log/e/r;->f(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    return-void
.end method

.method static e()V
    .locals 5

    .line 111
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 112
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static init()V
    .locals 9

    .line 33
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    if-nez v0, :cond_2

    const-string v0, "CommitTask"

    const/4 v1, 0x1

    .line 34
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "init StatisticsAlarmEvent"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    .line 37
    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v3, v0, v4

    .line 38
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v5

    .line 40
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->c()I

    move-result v3

    .line 41
    new-instance v6, Lcom/alibaba/mtl/appmonitor/c;

    const/16 v7, 0x3e8

    mul-int/2addr v7, v3

    invoke-direct {v6, v5, v7}, Lcom/alibaba/mtl/appmonitor/c;-><init>(II)V

    .line 42
    sget-object v3, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v3

    invoke-static {v5}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v5

    iget v7, v6, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v7, v7

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_1
    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/c;->j:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CommitTask"

    const/4 v1, 0x2

    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "check&commit event:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/a/e;->a(I)V

    .line 103
    sget-object v0, Lcom/alibaba/mtl/appmonitor/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/c;->startTime:J

    const-string v0, "CommitTask"

    .line 105
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/c;->e:I

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/c;->a(I)I

    move-result v1

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/c;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
