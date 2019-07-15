.class final Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    .line 428
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    .line 440
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->sendEmptyMessage(I)Z

    .line 435
    :cond_0
    return-void
.end method
