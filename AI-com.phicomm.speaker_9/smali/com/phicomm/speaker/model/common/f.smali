.class public abstract Lcom/phicomm/speaker/model/common/f;
.super Ljava/lang/Object;
.source "PendingAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 4

    monitor-enter p0

    .line 27
    :try_start_0
    iget v0, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    iget-object v1, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "setup fail, action is pending currently!"

    .line 28
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    .line 31
    const-class v0, Lcom/phicomm/speaker/model/common/d;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/d;

    .line 32
    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/model/common/d;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Lcom/phicomm/speaker/model/common/d;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "[%s-%s]setup: %s."

    const/4 v1, 0x3

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/phicomm/speaker/b/d;)V
    .locals 4

    monitor-enter p0

    .line 39
    :try_start_0
    iget v0, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    .line 40
    iget v1, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    iget-object v2, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/phicomm/speaker/b/d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    const-class p1, Lcom/phicomm/speaker/model/common/d;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/model/common/d;

    invoke-virtual {p1, p0}, Lcom/phicomm/speaker/model/common/d;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "[%s-%s]finish."

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget v3, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/model/common/f;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    throw p1
.end method

.method protected abstract a(Z)V
.end method

.method public c()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    iget-object v1, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/model/common/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v0, "[%s-%s]timeout."

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/phicomm/speaker/model/common/f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/model/common/f;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    throw v0
.end method
