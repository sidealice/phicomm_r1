.class public abstract Lcom/lzy/okgo/b/a;
.super Ljava/lang/Object;
.source "AbsCallback.java"

# interfaces
.implements Lcom/lzy/okgo/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/c/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(JJFJ)V
    .locals 0

    return-void
.end method

.method public onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 67
    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onBefore(Lcom/lzy/okgo/e/b;)V
    .locals 0

    return-void
.end method

.method public onCacheError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onCacheSuccess(Ljava/lang/Object;Lokhttp3/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lokhttp3/Call;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public parseError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public upProgress(JJFJ)V
    .locals 0

    return-void
.end method
