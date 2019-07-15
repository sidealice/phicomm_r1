.class final Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;
.super Lrx/Subscriber;
.source "OperatorMapNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMapNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapNotificationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMapNotification$SingleEmitter",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final o:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final pa:Lrx/internal/producers/ProducerArbiter;

.field final synthetic this$0:Lrx/internal/operators/OperatorMapNotification;


# direct methods
.method private constructor <init>(Lrx/internal/operators/OperatorMapNotification;Lrx/internal/producers/ProducerArbiter;Lrx/Subscriber;)V
    .locals 1
    .param p2, "pa"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/producers/ProducerArbiter;",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    .local p3, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 63
    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->pa:Lrx/internal/producers/ProducerArbiter;

    .line 64
    iput-object p3, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->o:Lrx/Subscriber;

    .line 65
    new-instance v0, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    invoke-direct {v0, p3, p2, p0}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;-><init>(Lrx/Subscriber;Lrx/Producer;Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorMapNotification;Lrx/internal/producers/ProducerArbiter;Lrx/Subscriber;Lrx/internal/operators/OperatorMapNotification$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorMapNotification;
    .param p2, "x1"    # Lrx/internal/producers/ProducerArbiter;
    .param p3, "x2"    # Lrx/Subscriber;
    .param p4, "x3"    # Lrx/internal/operators/OperatorMapNotification$1;

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    invoke-direct {p0, p1, p2, p3}, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;-><init>(Lrx/internal/operators/OperatorMapNotification;Lrx/internal/producers/ProducerArbiter;Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method init()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->o:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 70
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-static {v2}, Lrx/internal/operators/OperatorMapNotification;->access$100(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func0;

    move-result-object v2

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offerAndComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->o:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-static {v2}, Lrx/internal/operators/OperatorMapNotification;->access$200(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offerAndComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->o:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->emitter:Lrx/internal/operators/OperatorMapNotification$SingleEmitter;

    iget-object v2, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->this$0:Lrx/internal/operators/OperatorMapNotification;

    invoke-static {v2}, Lrx/internal/operators/OperatorMapNotification;->access$300(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorMapNotification$SingleEmitter;->offer(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->o:Lrx/Subscriber;

    invoke-static {v0, v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>.MapNotificationSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 75
    return-void
.end method
