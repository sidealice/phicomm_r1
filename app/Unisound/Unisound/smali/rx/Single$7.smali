.class Lrx/Single$7;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->subscribe()Lrx/Subscription;
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


# direct methods
.method constructor <init>(Lrx/Single;)V
    .locals 0

    .prologue
    .line 1371
    .local p0, "this":Lrx/Single$7;, "Lrx/Single.7;"
    iput-object p1, p0, Lrx/Single$7;->this$0:Lrx/Single;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1376
    .local p0, "this":Lrx/Single$7;, "Lrx/Single.7;"
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1380
    .local p0, "this":Lrx/Single$7;, "Lrx/Single.7;"
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p0, "this":Lrx/Single$7;, "Lrx/Single.7;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    return-void
.end method
