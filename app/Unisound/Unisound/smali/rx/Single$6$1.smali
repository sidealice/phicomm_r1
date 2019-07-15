.class Lrx/Single$6$1;
.super Lrx/SingleSubscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$6;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<",
        "Lrx/Single",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single$6;

.field final synthetic val$child:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/Single$6;Lrx/SingleSubscriber;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lrx/Single$6$1;->this$0:Lrx/Single$6;

    iput-object p2, p0, Lrx/Single$6$1;->val$child:Lrx/SingleSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 707
    iget-object v0, p0, Lrx/Single$6$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 708
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 698
    check-cast p1, Lrx/Single;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$6$1;->onSuccess(Lrx/Single;)V

    return-void
.end method

.method public onSuccess(Lrx/Single;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "innerSingle":Lrx/Single;, "Lrx/Single<+TT;>;"
    iget-object v0, p0, Lrx/Single$6$1;->val$child:Lrx/SingleSubscriber;

    invoke-virtual {p1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 703
    return-void
.end method
