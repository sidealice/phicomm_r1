.class Lrx/Single$11;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->doOnError(Lrx/functions/Action1;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$onError:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 1860
    .local p0, "this":Lrx/Single$11;, "Lrx/Single.11;"
    iput-object p1, p0, Lrx/Single$11;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$11;->val$onError:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 1863
    .local p0, "this":Lrx/Single$11;, "Lrx/Single.11;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1867
    .local p0, "this":Lrx/Single$11;, "Lrx/Single.11;"
    iget-object v0, p0, Lrx/Single$11;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 1868
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1872
    .local p0, "this":Lrx/Single$11;, "Lrx/Single.11;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
