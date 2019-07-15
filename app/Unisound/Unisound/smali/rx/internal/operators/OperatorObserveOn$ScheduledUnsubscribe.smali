.class final Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledUnsubscribe"
.end annotation


# instance fields
.field volatile unsubscribed:Z

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lrx/Scheduler$Worker;)V
    .locals 1
    .param p1, "worker"    # Lrx/Scheduler$Worker;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->unsubscribed:Z

    .line 228
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->worker:Lrx/Scheduler$Worker;

    .line 229
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->unsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe$1;-><init>(Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 247
    :cond_0
    return-void
.end method
