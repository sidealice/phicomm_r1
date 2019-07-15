.class public Lcom/phicomm/speaker/model/common/b;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DefaultExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 14
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v7, 0x1

    const/16 v0, 0x200

    invoke-direct {v6, v0, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    const/16 v1, 0x20

    const v2, 0x7fffffff

    const-wide/16 v3, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 15
    invoke-virtual {p0, v7}, Lcom/phicomm/speaker/model/common/b;->allowCoreThreadTimeOut(Z)V

    return-void
.end method
