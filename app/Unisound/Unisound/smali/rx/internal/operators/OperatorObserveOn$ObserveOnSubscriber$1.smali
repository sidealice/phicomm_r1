.class Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;)V
    .locals 0

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 110
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber$1;->this$0:Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber;->schedule()V

    .line 111
    return-void
.end method
