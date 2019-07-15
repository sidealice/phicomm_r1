.class public Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;
.super Ljava/util/Timer;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarterTimer"
.end annotation


# instance fields
.field private volatile _cancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isDaemon"    # Z

    .prologue
    .line 169
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Z)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 171
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z

    .line 198
    invoke-super {p0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;J)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;JJ)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    :try_start_1
    invoke-super/range {p0 .. p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    invoke-super/range {p0 .. p5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl$StarterTimer;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 259
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
