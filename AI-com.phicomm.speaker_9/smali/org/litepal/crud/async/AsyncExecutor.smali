.class public abstract Lorg/litepal/crud/async/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# instance fields
.field private pendingTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/litepal/crud/async/AsyncExecutor;->pendingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/litepal/crud/async/AsyncExecutor;->pendingTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/litepal/crud/async/AsyncExecutor;->pendingTask:Ljava/lang/Runnable;

    return-void
.end method
