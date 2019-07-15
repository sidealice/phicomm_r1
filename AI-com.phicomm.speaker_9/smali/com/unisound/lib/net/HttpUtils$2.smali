.class final Lcom/unisound/lib/net/HttpUtils$2;
.super Lcom/lzy/okgo/b/c;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/net/HttpUtils;->getRequest(Ljava/lang/Object;Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lcom/unisound/lib/net/HttpGetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/unisound/lib/net/HttpGetCallBack;


# direct methods
.method constructor <init>(Lcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/unisound/lib/net/HttpUtils$2;->val$callBack:Lcom/unisound/lib/net/HttpGetCallBack;

    invoke-direct {p0}, Lcom/lzy/okgo/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    .line 102
    invoke-static {p2, p3}, Lcom/unisound/lib/net/HttpUtils;->access$200(Lokhttp3/Response;Ljava/lang/Exception;)I

    move-result p1

    .line 103
    iget-object p2, p0, Lcom/unisound/lib/net/HttpUtils$2;->val$callBack:Lcom/unisound/lib/net/HttpGetCallBack;

    invoke-static {p3, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->access$500(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpGetCallBack;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/lib/net/HttpUtils$2;->onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string p2, "HttpUtils"

    .line 97
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/unisound/lib/net/HttpUtils$2;->val$callBack:Lcom/unisound/lib/net/HttpGetCallBack;

    invoke-static {p3, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->access$400(Lokhttp3/Response;Ljava/lang/String;Lcom/unisound/lib/net/HttpGetCallBack;)V

    return-void
.end method
