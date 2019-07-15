.class public Lcom/umeng/commonsdk/statistics/noise/ImLatent;
.super Ljava/lang/Object;
.source "ImLatent.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;


# instance fields
.field private final LATENT_MAX:I

.field private final LATENT_WINDOW:I

.field private final _360HOURS_IN_MS:J

.field private final _36HOURS_IN_MS:J

.field private final _DEFAULT_HOURS:I

.field private final _DEFAULT_MAX_LATENT:I

.field private final _DEFAULT_MIN_HOURS:I

.field private final _DEFAULT_MIN_LATENT:I

.field private final _ONE_HOURS_IN_MS:J

.field private context:Landroid/content/Context;

.field private latentHour:J

.field private latentWindow:I

.field private mDelay:J

.field private mElapsed:J

.field private mLatentActivite:Z

.field private mLatentLock:Ljava/lang/Object;

.field private statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private storeHelper:Lcom/umeng/commonsdk/statistics/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x168

    .line 25
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_HOURS:I

    const/16 v0, 0x24

    .line 26
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_HOURS:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_LATENT:I

    const/16 v0, 0x708

    .line 28
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MAX_LATENT:I

    const-wide/32 v0, 0x36ee80

    .line 29
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_ONE_HOURS_IN_MS:J

    const-wide/32 v0, 0x4d3f6400

    .line 30
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_360HOURS_IN_MS:J

    const-wide/32 v2, 0x7b98a00

    .line 31
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_36HOURS_IN_MS:J

    const v2, 0x1b7740

    .line 33
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_MAX:I

    const/16 v2, 0xa

    .line 34
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_WINDOW:I

    .line 39
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 40
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 43
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    .line 62
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 54
    sget-object p1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 56
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDelayTime()J
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getElapsedTime()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    return-wide v0
.end method

.method public isLatentActivite()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public latentDeactivite()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 121
    :try_start_0
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 4

    const-string v0, "latent_hours"

    const/16 v1, 0x168

    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    move v0, v1

    :cond_0
    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    .line 147
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    const-string v0, "latent"

    const-string v1, "0"

    .line 148
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x708

    if-le p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    if-nez p1, :cond_5

    .line 159
    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    if-lez p1, :cond_4

    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    const v0, 0x1b7740

    if-le p1, v0, :cond_3

    goto :goto_0

    .line 162
    :cond_3
    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p1, 0xa

    .line 160
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    goto :goto_1

    .line 165
    :cond_5
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    :goto_1
    return-void
.end method

.method public shouldStartLatency()Z
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->isFirstRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    if-eqz v2, :cond_2

    .line 84
    monitor-exit v0

    return v1

    .line 86
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 87
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    move-result-wide v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    .line 91
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    cmp-long v0, v6, v2

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v3

    .line 95
    :try_start_1
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->random(ILjava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 96
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 97
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 98
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-wide/32 v3, 0x7b98a00

    cmp-long v0, v6, v3

    if-lez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v3, 0x0

    .line 104
    :try_start_2
    iput-wide v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 105
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 106
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 107
    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    return v1

    :catchall_2
    move-exception v1

    .line 86
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
