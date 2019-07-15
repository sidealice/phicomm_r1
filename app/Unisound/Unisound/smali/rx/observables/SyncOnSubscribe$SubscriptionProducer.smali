.class Lrx/observables/SyncOnSubscribe$SubscriptionProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33dc0208097b2408L


# instance fields
.field private final actualSubscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private hasTerminated:Z

.field private onNextCalled:Z

.field private final parent:Lrx/observables/SyncOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 327
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 328
    iput-object p2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 329
    iput-object p3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;Lrx/observables/SyncOnSubscribe$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Lrx/observables/SyncOnSubscribe;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lrx/observables/SyncOnSubscribe$1;

    .prologue
    .line 315
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;-><init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;)V

    return-void
.end method

.method private doUnsubscribe()V
    .locals 2

    .prologue
    .line 366
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    iget-object v1, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/observables/SyncOnSubscribe;->onUnsubscribe(Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method private fastpath()V
    .locals 4

    .prologue
    .line 381
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-object v2, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 382
    .local v2, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 386
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 387
    invoke-direct {p0, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 403
    invoke-virtual {p1, p2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 404
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->unsubscribe()V

    goto :goto_0
.end method

.method private nextIteration(Lrx/observables/SyncOnSubscribe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/SyncOnSubscribe",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "parent":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lrx/observables/SyncOnSubscribe;->next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->state:Ljava/lang/Object;

    .line 438
    return-void
.end method

.method private slowPath(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v10, 0x0

    .line 409
    iget-object v6, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->parent:Lrx/observables/SyncOnSubscribe;

    .line 410
    .local v6, "p":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    .line 411
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-wide v4, p1

    .line 413
    .local v4, "numRequested":J
    :cond_0
    move-wide v2, v4

    .line 416
    .local v2, "numRemaining":J
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 417
    invoke-direct {p0, v6}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->nextIteration(Lrx/observables/SyncOnSubscribe;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 434
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->handleThrownError(Lrx/Subscriber;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 425
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v7, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v7, :cond_3

    .line 426
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 427
    :cond_3
    cmp-long v7, v2, v10

    if-nez v7, :cond_1

    .line 428
    neg-long v8, v4

    invoke-virtual {p0, v8, v9}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->addAndGet(J)J

    move-result-wide v4

    .line 429
    cmp-long v7, v4, v10

    if-gtz v7, :cond_0

    .line 433
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->tryUnsubscribe()Z

    goto :goto_0
.end method

.method private tryUnsubscribe()Z
    .locals 4

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, -0x1

    .line 357
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 358
    :cond_0
    invoke-virtual {p0, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->set(J)V

    .line 359
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 360
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 334
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 442
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 446
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 449
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->hasTerminated:Z

    .line 457
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 460
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->onNextCalled:Z

    .line 468
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->actualSubscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    const-wide/16 v2, 0x0

    .line 371
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 372
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 373
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->fastpath()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-direct {p0, p1, p2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->slowPath(J)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .line 340
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->get()J

    move-result-wide v0

    .line 341
    .local v0, "requestCount":J
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->doUnsubscribe()V

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_1
    const-wide/16 v2, -0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
