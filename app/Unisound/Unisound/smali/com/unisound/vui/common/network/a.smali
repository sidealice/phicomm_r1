.class public Lcom/unisound/vui/common/network/a;
.super Lcom/android/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<[B>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<[B>;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/vui/common/network/a;->setShouldCache(Z)Lcom/android/volley/Request;

    iput-object p3, p0, Lcom/unisound/vui/common/network/a;->b:Lcom/android/volley/Response$Listener;

    iput-object p5, p0, Lcom/unisound/vui/common/network/a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/common/network/a;->b:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/unisound/vui/common/network/a;->a([B)V

    return-void
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/common/network/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    .prologue
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/unisound/vui/common/network/a;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
