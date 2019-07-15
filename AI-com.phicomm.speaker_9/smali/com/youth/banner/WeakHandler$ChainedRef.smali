.class Lcom/youth/banner/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field next:Lcom/youth/banner/WeakHandler$ChainedRef;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field prev:Lcom/youth/banner/WeakHandler$ChainedRef;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/locks/Lock;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 424
    iput-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 425
    new-instance p1, Lcom/youth/banner/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/youth/banner/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/youth/banner/WeakHandler$ChainedRef;)V
    .locals 1
    .param p1    # Lcom/youth/banner/WeakHandler$ChainedRef;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 446
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object p1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object v0, p1, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 453
    iput-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 454
    iput-object p0, p1, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public remove()Lcom/youth/banner/WeakHandler$WeakRunnable;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    :cond_1
    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->prev:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 438
    iput-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 442
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;

    return-object v0

    :catchall_0
    move-exception v0

    .line 440
    iget-object v1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 466
    iget-object v1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/youth/banner/WeakHandler$ChainedRef;->remove()Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 469
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->next:Lcom/youth/banner/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    :cond_1
    iget-object p1, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/youth/banner/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
