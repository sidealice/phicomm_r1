.class public final Lrx/internal/util/BackpressureDrainManager;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "BackpressureDrainManager.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# instance fields
.field protected final actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

.field protected emitting:Z

.field protected exception:Ljava/lang/Throwable;

.field protected volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V
    .locals 0
    .param p1, "actual"    # Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 81
    return-void
.end method


# virtual methods
.method public final drain()V
    .locals 14

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    if-eqz v9, :cond_1

    .line 169
    monitor-exit p0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 172
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 173
    .local v8, "term":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v4

    .line 175
    .local v4, "n":J
    const/4 v7, 0x0

    .line 177
    .local v7, "skipFinal":Z
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 179
    .local v0, "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :goto_1
    const/4 v2, 0x0

    .line 180
    .local v2, "emitted":I
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gtz v9, :cond_2

    if-eqz v8, :cond_4

    .line 182
    :cond_2
    if-eqz v8, :cond_5

    .line 183
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v6

    .line 184
    .local v6, "o":Ljava/lang/Object;
    if-nez v6, :cond_3

    .line 185
    const/4 v7, 0x1

    .line 186
    iget-object v1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 187
    .local v1, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v1}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->complete(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 229
    if-nez v7, :cond_0

    .line 230
    monitor-enter p0

    .line 231
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 232
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 173
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "emitted":I
    .end local v4    # "n":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "skipFinal":Z
    .end local v8    # "term":Z
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 190
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .restart local v2    # "emitted":I
    .restart local v4    # "n":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "skipFinal":Z
    .restart local v8    # "term":Z
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_5

    .line 206
    .end local v6    # "o":Ljava/lang/Object;
    :cond_4
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 207
    :try_start_5
    iget-boolean v8, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 208
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    const/4 v3, 0x1

    .line 210
    .local v3, "more":Z
    :goto_3
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-nez v9, :cond_b

    .line 212
    if-nez v3, :cond_8

    if-nez v8, :cond_8

    .line 213
    const/4 v7, 0x1

    .line 214
    const/4 v9, 0x0

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 215
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 229
    if-nez v7, :cond_0

    .line 230
    monitor-enter p0

    .line 231
    const/4 v9, 0x0

    :try_start_6
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 232
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v9

    .line 194
    .end local v3    # "more":Z
    :cond_5
    :try_start_7
    invoke-interface {v0}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 195
    .restart local v6    # "o":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 198
    invoke-interface {v0, v6}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->accept(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result v9

    if-eqz v9, :cond_6

    .line 199
    const/4 v7, 0x1

    .line 229
    if-nez v7, :cond_0

    .line 230
    monitor-enter p0

    .line 231
    const/4 v9, 0x0

    :try_start_8
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 232
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v9

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v9

    .line 202
    :cond_6
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 205
    goto :goto_2

    .line 208
    .end local v6    # "o":Ljava/lang/Object;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 217
    .restart local v3    # "more":Z
    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    .line 226
    :cond_9
    :try_start_9
    monitor-exit p0

    goto :goto_1

    .end local v3    # "more":Z
    :catchall_4
    move-exception v9

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 229
    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v2    # "emitted":I
    :catchall_5
    move-exception v9

    if-nez v7, :cond_a

    .line 230
    monitor-enter p0

    .line 231
    const/4 v10, 0x0

    :try_start_b
    iput-boolean v10, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 232
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :cond_a
    throw v9

    .line 219
    .restart local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .restart local v2    # "emitted":I
    .restart local v3    # "more":Z
    :cond_b
    neg-int v9, v2

    int-to-long v10, v9

    :try_start_c
    invoke-virtual {p0, v10, v11}, Lrx/internal/util/BackpressureDrainManager;->addAndGet(J)J

    move-result-wide v4

    .line 220
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_c

    if-nez v3, :cond_9

    :cond_c
    if-eqz v8, :cond_d

    if-eqz v3, :cond_9

    .line 221
    :cond_d
    const/4 v7, 0x1

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 223
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 229
    if-nez v7, :cond_0

    .line 230
    monitor-enter p0

    .line 231
    const/4 v9, 0x0

    :try_start_d
    iput-boolean v9, p0, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 232
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v9

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v9

    .end local v0    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v2    # "emitted":I
    .end local v3    # "more":Z
    :catchall_7
    move-exception v9

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v9
.end method

.method public final isTerminated()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return v0
.end method

.method public final request(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide v8, 0x7fffffffffffffffL

    .line 131
    cmp-long v1, p1, v10

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->get()J

    move-result-wide v2

    .line 139
    .local v2, "r":J
    cmp-long v1, v2, v10

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 140
    .local v0, "mayDrain":Z
    :goto_1
    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    .line 156
    :goto_2
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_0

    .line 139
    .end local v0    # "mayDrain":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    .restart local v0    # "mayDrain":Z
    :cond_3
    cmp-long v1, p1, v8

    if-nez v1, :cond_4

    .line 144
    move-wide v4, p1

    .line 145
    .local v4, "u":J
    const/4 v0, 0x1

    .line 153
    :goto_3
    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/internal/util/BackpressureDrainManager;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 147
    .end local v4    # "u":J
    :cond_4
    sub-long v6, v8, p1

    cmp-long v1, v2, v6

    if-lez v1, :cond_5

    .line 148
    const-wide v4, 0x7fffffffffffffffL

    .restart local v4    # "u":J
    goto :goto_3

    .line 150
    .end local v4    # "u":J
    :cond_5
    add-long v4, v2, p1

    .restart local v4    # "u":J
    goto :goto_3
.end method

.method public final terminate()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 95
    return-void
.end method

.method public final terminate(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_0

    .line 105
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 108
    :cond_0
    return-void
.end method

.method public final terminateAndDrain()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 114
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 115
    return-void
.end method

.method public final terminateAndDrain(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 126
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 128
    :cond_0
    return-void
.end method
