.class public Lcom/youth/banner/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youth/banner/WeakHandler$ChainedRef;,
        Lcom/youth/banner/WeakHandler$WeakRunnable;,
        Lcom/youth/banner/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v0, Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/youth/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 31
    iput-object v2, p0, Lcom/youth/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 32
    new-instance v0, Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/youth/banner/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v0, Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/youth/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 46
    iput-object p1, p0, Lcom/youth/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 47
    new-instance v0, Lcom/youth/banner/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/youth/banner/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v0, Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/youth/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 56
    iput-object v2, p0, Lcom/youth/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 57
    new-instance v0, Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v0, Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/youth/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    .line 68
    iput-object p2, p0, Lcom/youth/banner/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 69
    new-instance v0, Lcom/youth/banner/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/youth/banner/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 346
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_0
    new-instance v0, Lcom/youth/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/youth/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/youth/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 349
    iget-object p1, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lcom/youth/banner/WeakHandler$ChainedRef;->insertAfter(Lcom/youth/banner/WeakHandler$ChainedRef;)V

    .line 350
    iget-object p1, v0, Lcom/youth/banner/WeakHandler$ChainedRef;->wrapper:Lcom/youth/banner/WeakHandler$WeakRunnable;

    return-object p1
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lcom/youth/banner/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/youth/banner/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/youth/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/youth/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/youth/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/youth/banner/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/youth/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/youth/banner/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/youth/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/youth/banner/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mRunnables:Lcom/youth/banner/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/youth/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/youth/banner/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/youth/banner/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/youth/banner/WeakHandler;->mExec:Lcom/youth/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youth/banner/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
