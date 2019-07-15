.class final Lcom/unisound/lib/net/HttpUtils$4;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/net/HttpUtils;->postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/unisound/lib/net/HttpUserCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$httpUserCallBack:Lcom/unisound/lib/net/HttpUserCallBack;


# direct methods
.method constructor <init>(Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/unisound/lib/net/HttpUtils$4;->val$httpUserCallBack:Lcom/unisound/lib/net/HttpUserCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 234
    invoke-static {p2}, Lcom/unisound/lib/net/HttpUtils;->access$600(Ljava/io/IOException;)I

    move-result p1

    .line 235
    iget-object p2, p0, Lcom/unisound/lib/net/HttpUtils$4;->val$httpUserCallBack:Lcom/unisound/lib/net/HttpUserCallBack;

    if-eqz p2, :cond_0

    .line 236
    iget-object p2, p0, Lcom/unisound/lib/net/HttpUtils$4;->val$httpUserCallBack:Lcom/unisound/lib/net/HttpUserCallBack;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/unisound/lib/net/HttpUserCallBack;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object p1, p0, Lcom/unisound/lib/net/HttpUtils$4;->val$httpUserCallBack:Lcom/unisound/lib/net/HttpUserCallBack;

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/unisound/lib/net/HttpUtils$4;->val$httpUserCallBack:Lcom/unisound/lib/net/HttpUserCallBack;

    invoke-interface {p1, p2}, Lcom/unisound/lib/net/HttpUserCallBack;->onSuccess(Lokhttp3/Response;)V

    :cond_0
    return-void
.end method
