.class final Lrx/internal/operators/OperatorSwitch$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final id:I

.field private final parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILrx/internal/producers/ProducerArbiter;Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/internal/producers/ProducerArbiter;",
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .local p3, "parent":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 265
    iput p1, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:I

    .line 266
    iput-object p2, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 267
    iput-object p3, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    .line 268
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:I

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->complete(I)V

    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 282
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:I

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error(Ljava/lang/Throwable;I)V

    .line 283
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
    .line 277
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->parent:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->id:I

    invoke-virtual {v0, p1, v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emit(Ljava/lang/Object;ILrx/internal/operators/OperatorSwitch$InnerSubscriber;)V

    .line 278
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 272
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$InnerSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 273
    return-void
.end method
