.class public abstract Lcom/lzy/okgo/b/c;
.super Lcom/lzy/okgo/b/a;
.source "StringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/lzy/okgo/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertSuccess(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/b/c;->convertSuccess(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertSuccess(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/lzy/okgo/c/b;->a()Lcom/lzy/okgo/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/c/b;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v0
.end method
