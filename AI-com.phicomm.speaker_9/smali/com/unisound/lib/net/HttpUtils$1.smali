.class final Lcom/unisound/lib/net/HttpUtils$1;
.super Lcom/lzy/okgo/b/c;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/net/HttpUtils;->postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/unisound/lib/net/HttpCallBack;


# direct methods
.method constructor <init>(Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/unisound/lib/net/HttpUtils$1;->val$callBack:Lcom/unisound/lib/net/HttpCallBack;

    invoke-direct {p0}, Lcom/lzy/okgo/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    .line 77
    invoke-static {p2, p3}, Lcom/unisound/lib/net/HttpUtils;->access$200(Lokhttp3/Response;Ljava/lang/Exception;)I

    move-result p1

    .line 78
    iget-object p2, p0, Lcom/unisound/lib/net/HttpUtils$1;->val$callBack:Lcom/unisound/lib/net/HttpCallBack;

    invoke-static {p3, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->access$300(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/lib/net/HttpUtils$1;->onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 72
    invoke-static {p1, p3}, Lcom/unisound/lib/net/HttpUtils;->access$000(Ljava/lang/String;Lokhttp3/Response;)Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/unisound/lib/net/HttpUtils$1;->val$callBack:Lcom/unisound/lib/net/HttpCallBack;

    invoke-static {p3, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->access$100(Lokhttp3/Response;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method
