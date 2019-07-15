.class Lrx/Single$8;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$onSuccess:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 1412
    .local p0, "this":Lrx/Single$8;, "Lrx/Single.8;"
    iput-object p1, p0, Lrx/Single$8;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$8;->val$onSuccess:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1417
    .local p0, "this":Lrx/Single$8;, "Lrx/Single.8;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1421
    .local p0, "this":Lrx/Single$8;, "Lrx/Single.8;"
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1426
    .local p0, "this":Lrx/Single$8;, "Lrx/Single.8;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$8;->val$onSuccess:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 1427
    return-void
.end method
