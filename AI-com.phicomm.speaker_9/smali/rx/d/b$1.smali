.class final Lrx/d/b$1;
.super Lrx/i;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/b;->a(Lrx/i;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;Lrx/i;)V
    .locals 0

    .line 221
    iput-object p2, p0, Lrx/d/b$1;->a:Lrx/i;

    invoke-direct {p0, p1}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 225
    iget-object v0, p0, Lrx/d/b$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lrx/d/b$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lrx/d/b$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->onNext(Ljava/lang/Object;)V

    return-void
.end method
