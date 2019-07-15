.class Lrx/Observable$17;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;I)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$bufferSize:I


# direct methods
.method constructor <init>(Lrx/Observable;I)V
    .locals 0

    .prologue
    .line 6468
    .local p0, "this":Lrx/Observable$17;, "Lrx/Observable.17;"
    iput-object p1, p0, Lrx/Observable$17;->this$0:Lrx/Observable;

    iput p2, p0, Lrx/Observable$17;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6468
    .local p0, "this":Lrx/Observable$17;, "Lrx/Observable.17;"
    invoke-virtual {p0}, Lrx/Observable$17;->call()Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/observables/ConnectableObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6471
    .local p0, "this":Lrx/Observable$17;, "Lrx/Observable.17;"
    iget-object v0, p0, Lrx/Observable$17;->this$0:Lrx/Observable;

    iget v1, p0, Lrx/Observable$17;->val$bufferSize:I

    invoke-virtual {v0, v1}, Lrx/Observable;->replay(I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
