.class final Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field chunk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final inner:Lrx/Scheduler$Worker;

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithTime;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .locals 1
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 226
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    .line 227
    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 229
    return-void
.end method


# virtual methods
.method emit()V
    .locals 3

    .prologue
    .line 293
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    monitor-enter p0

    .line 294
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 295
    monitor-exit p0

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 298
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 299
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0

    .line 299
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 267
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v2, :cond_0

    .line 269
    monitor-exit p0

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    .line 272
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 273
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 274
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 281
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->unsubscribe()V

    goto :goto_0

    .line 274
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 253
    monitor-exit p0

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 259
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->unsubscribe()V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 234
    .local v0, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 235
    :try_start_0
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v1, :cond_1

    .line 236
    monitor-exit p0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    if-ne v1, v2, :cond_2

    .line 240
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 243
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method scheduleExact()V
    .locals 7

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 290
    return-void
.end method
