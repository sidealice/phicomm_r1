.class Lrx/Single$10;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
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

.field final synthetic val$te:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/SingleSubscriber;)V
    .locals 0

    .prologue
    .line 1644
    .local p0, "this":Lrx/Single$10;, "Lrx/Single.10;"
    iput-object p1, p0, Lrx/Single$10;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$10;->val$te:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 1649
    .local p0, "this":Lrx/Single$10;, "Lrx/Single.10;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1653
    .local p0, "this":Lrx/Single$10;, "Lrx/Single.10;"
    iget-object v0, p0, Lrx/Single$10;->val$te:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 1654
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1658
    .local p0, "this":Lrx/Single$10;, "Lrx/Single.10;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Single$10;->val$te:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 1659
    return-void
.end method
