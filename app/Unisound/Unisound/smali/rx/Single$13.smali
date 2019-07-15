.class final Lrx/Single$13;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->defer(Ljava/util/concurrent/Callable;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$singleFactory:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1984
    iput-object p1, p0, Lrx/Single$13;->val$singleFactory:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1984
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$13;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1990
    .local p1, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    :try_start_0
    iget-object v2, p0, Lrx/Single$13;->val$singleFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    .local v0, "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-virtual {v0, p1}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 1998
    .end local v0    # "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    :goto_0
    return-void

    .line 1991
    :catch_0
    move-exception v1

    .line 1992
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1993
    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
