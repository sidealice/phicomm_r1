.class final Lrx/internal/operators/OperatorScan$InitialProducer;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InitialProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field missedRequested:J

.field volatile producer:Lrx/Producer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 191
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    .line 196
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 197
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 199
    return-void

    .line 194
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method


# virtual methods
.method checkTerminated(ZZLrx/Subscriber;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TR;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    const/4 v1, 0x1

    .line 208
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    :goto_0
    return v1

    .line 211
    :cond_0
    if-eqz p1, :cond_2

    .line 212
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    .line 213
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    :cond_1
    if-eqz p2, :cond_2

    .line 218
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 222
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method emit()V
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    monitor-enter p0

    .line 287
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 289
    monitor-exit p0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emitLoop()V

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 18

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->child:Lrx/Subscriber;

    .line 298
    .local v2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    .line 299
    .local v11, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v9

    .line 300
    .local v9, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 302
    .local v14, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 304
    .local v12, "r":J
    :goto_0
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v16, v12, v16

    if-nez v16, :cond_1

    const/4 v8, 0x1

    .line 305
    .local v8, "max":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 306
    .local v3, "d":Z
    invoke-interface {v11}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 307
    .local v6, "empty":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 340
    :cond_0
    :goto_2
    return-void

    .line 304
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v8    # "max":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 310
    .restart local v3    # "d":Z
    .restart local v6    # "empty":Z
    .restart local v8    # "max":Z
    :cond_2
    const-wide/16 v4, 0x0

    .line 311
    .local v4, "e":J
    :goto_3
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-eqz v16, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 313
    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 314
    .local v10, "o":Ljava/lang/Object;
    if-nez v10, :cond_5

    const/4 v6, 0x1

    .line 315
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lrx/internal/operators/OperatorScan$InitialProducer;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 318
    if-eqz v6, :cond_6

    .line 333
    .end local v10    # "o":Ljava/lang/Object;
    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-eqz v16, :cond_4

    if-nez v8, :cond_4

    .line 334
    invoke-virtual {v14, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v12

    .line 337
    :cond_4
    monitor-enter p0

    .line 338
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 339
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->emitting:Z

    .line 340
    monitor-exit p0

    goto :goto_2

    .line 343
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 314
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 321
    :cond_6
    invoke-virtual {v9, v10}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 323
    .local v15, "v":Ljava/lang/Object;, "TR;"
    :try_start_1
    invoke-virtual {v2, v15}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    const-wide/16 v16, 0x1

    sub-long v12, v12, v16

    .line 330
    const-wide/16 v16, 0x1

    sub-long v4, v4, v16

    .line 331
    goto :goto_3

    .line 324
    :catch_0
    move-exception v7

    .line 325
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 326
    invoke-static {v7, v15}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 342
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v10    # "o":Ljava/lang/Object;
    .end local v15    # "v":Ljava/lang/Object;, "TR;"
    :cond_7
    const/16 v16, 0x0

    :try_start_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/OperatorScan$InitialProducer;->missed:Z

    .line 343
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 235
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 236
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->error:Ljava/lang/Throwable;

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->done:Z

    .line 229
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 230
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->queue:Ljava/util/Queue;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 205
    return-void
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v4, 0x0

    .line 240
    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    :cond_0
    cmp-long v3, p1, v4

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 245
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 246
    .local v2, "p":Lrx/Producer;
    if-nez v2, :cond_2

    .line 248
    iget-object v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v4

    .line 249
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 250
    if-nez v2, :cond_1

    .line 251
    iget-wide v0, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 252
    .local v0, "mr":J
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 254
    .end local v0    # "mr":J
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_2
    if-eqz v2, :cond_3

    .line 257
    invoke-interface {v2, p1, p2}, Lrx/Producer;->request(J)V

    .line 259
    :cond_3
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 261
    .end local v2    # "p":Lrx/Producer;
    :cond_4
    return-void

    .line 254
    .restart local v2    # "p":Lrx/Producer;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 10
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorScan$InitialProducer;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v8, 0x0

    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 269
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v3

    .line 270
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    if-eqz v2, :cond_1

    .line 271
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Can\'t set more than one Producer!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 274
    :cond_1
    :try_start_1
    iget-wide v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    .line 275
    .local v0, "mr":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->missedRequested:J

    .line 276
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$InitialProducer;->producer:Lrx/Producer;

    .line 277
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    .line 280
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 282
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorScan$InitialProducer;->emit()V

    .line 283
    return-void
.end method
