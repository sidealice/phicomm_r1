.class public final Lcom/google/android/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;,
        Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;,
        Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;,
        Lcom/google/android/exoplayer2/upstream/Loader$Callback;,
        Lcom/google/android/exoplayer2/upstream/Loader$Loadable;,
        Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final DONT_RETRY:I = 0x2

.field public static final DONT_RETRY_FATAL:I = 0x3

.field public static final RETRY:I = 0x0

.field public static final RETRY_RESET_ERROR_COUNT:I = 0x1


# instance fields
.field private currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$LoadTask",
            "<+",
            "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;
    .param p1, "x1"    # Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/upstream/Loader;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 186
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError(I)V

    .line 226
    return-void
.end method

.method public maybeThrowError(I)V
    .locals 2
    .param p1, "minRetryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->fatalError:Ljava/io/IOException;

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    iget p1, v1, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .end local p1    # "minRetryCount":I
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->maybeThrowError(I)V

    .line 236
    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)Z

    .line 194
    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "callbackInvoked":Z
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->currentTask:Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->cancel(Z)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;-><init>(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 218
    return v0

    .line 213
    :cond_1
    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    .line 215
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J
    .locals 8
    .param p3, "defaultMinRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
            ">(TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback",
            "<TT;>;I)J"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "loadable":Lcom/google/android/exoplayer2/upstream/Loader$Loadable;, "TT;"
    .local p2, "callback":Lcom/google/android/exoplayer2/upstream/Loader$Callback;, "Lcom/google/android/exoplayer2/upstream/Loader$Callback<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 168
    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 170
    .local v6, "startTimeMs":J
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;-><init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;IJ)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    .line 171
    return-wide v6

    .line 168
    .end local v6    # "startTimeMs":J
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
