.class public final Lcom/unisound/lib/net/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final NET_ERROR:I = -0x271b

.field public static final NET_OTHER_ERROR:I = -0x270f

.field public static final NET_TIMEOUT:I = -0x271c

.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lokhttp3/Response;)Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/unisound/lib/net/HttpUtils;->parseData(Ljava/lang/String;Lokhttp3/Response;)Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lokhttp3/Response;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->callbackData(Lokhttp3/Response;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method static synthetic access$200(Lokhttp3/Response;Ljava/lang/Exception;)I
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/unisound/lib/net/HttpUtils;->getErrorCode(Lokhttp3/Response;Ljava/lang/Exception;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpCallBack;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->callBackFailedData(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method static synthetic access$400(Lokhttp3/Response;Ljava/lang/String;Lcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->callbackData(Lokhttp3/Response;Ljava/lang/String;Lcom/unisound/lib/net/HttpGetCallBack;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/unisound/lib/net/HttpUtils;->callBackFailedData(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpGetCallBack;)V

    return-void
.end method

.method static synthetic access$600(Ljava/io/IOException;)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/unisound/lib/net/HttpUtils;->getErrorcode(Ljava/io/IOException;)I

    move-result p0

    return p0
.end method

.method private static callBackFailedData(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpCallBack;)V
    .locals 3

    const-string v0, "HttpUtils"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",code:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 134
    invoke-interface {p2, p1, p0}, Lcom/unisound/lib/net/HttpCallBack;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static callBackFailedData(Ljava/lang/Exception;ILcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 3

    const-string v0, "HttpUtils"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",code:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 127
    invoke-interface {p2, p1, p0}, Lcom/unisound/lib/net/HttpGetCallBack;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static callbackData(Lokhttp3/Response;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 166
    invoke-interface {p2, p1}, Lcom/unisound/lib/net/HttpCallBack;->onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/unisound/lib/net/HttpCallBack;->onFail(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static callbackData(Lokhttp3/Response;Ljava/lang/String;Lcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 155
    invoke-interface {p2, p1}, Lcom/unisound/lib/net/HttpGetCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/unisound/lib/net/HttpGetCallBack;->onFail(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static cnacelHttpRequest(Ljava/lang/String;)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzy/okgo/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static getErrorCode(Ljava/lang/Exception;)I
    .locals 1

    .line 140
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/utils/SystemUitls;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    const/16 p0, -0x271c

    goto :goto_1

    :cond_1
    const/16 p0, -0x270f

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, -0x271b

    :goto_1
    return p0
.end method

.method private static getErrorCode(Lokhttp3/Response;Ljava/lang/Exception;)I
    .locals 3

    const-string v0, "HttpUtils"

    .line 109
    invoke-static {p0}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/unisound/lib/net/HttpUtils;->getErrorCode(Ljava/lang/Exception;)I

    move-result p0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const/16 p1, -0x270f

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1

    :goto_0
    const-string v0, "HttpUtils"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response.code():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p0, p1

    :goto_1
    return p0
.end method

.method private static getErrorcode(Ljava/io/IOException;)I
    .locals 1

    .line 249
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/utils/SystemUitls;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    const/16 p0, -0x271c

    goto :goto_1

    :cond_1
    const/16 p0, -0x270f

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p0, -0x271b

    :goto_1
    return p0
.end method

.method public static getRequest(Ljava/lang/Object;Ljava/lang/String;Lcom/lzy/okgo/model/HttpParams;Lcom/unisound/lib/net/HttpGetCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/model/HttpParams;",
            "Lcom/unisound/lib/net/HttpGetCallBack;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/lzy/okgo/a;->a(Ljava/lang/String;)Lcom/lzy/okgo/e/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lzy/okgo/e/d;->a(Ljava/lang/Object;)Lcom/lzy/okgo/e/b;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/e/d;

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/e/d;->a(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/e/b;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/e/d;

    new-instance p1, Lcom/unisound/lib/net/HttpUtils$2;

    invoke-direct {p1, p3}, Lcom/unisound/lib/net/HttpUtils$2;-><init>(Lcom/unisound/lib/net/HttpGetCallBack;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/e/d;->a(Lcom/lzy/okgo/b/a;)V

    return-void
.end method

.method private static parseData(Ljava/lang/String;Lokhttp3/Response;)Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "HttpUtils"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance p1, Lcom/unisound/lib/net/HttpUtils$3;

    invoke-direct {p1}, Lcom/unisound/lib/net/HttpUtils$3;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/unisound/lib/net/HttpUtils$3;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 179
    :try_start_0
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HttpUtils"

    const-string p1, "--->>postJsonRequest get response parse exception"

    .line 181
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static postJsonRequest(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lcom/unisound/lib/net/HttpCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/unisound/lib/net/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-static {p2}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "HttpUtils"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>postJsonRequest jsonContent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "---->>url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/lzy/okgo/a;->b(Ljava/lang/String;)Lcom/lzy/okgo/e/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lzy/okgo/e/g;->a(Ljava/lang/Object;)Lcom/lzy/okgo/e/b;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/e/g;

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/e/g;->a(Ljava/lang/String;)Lcom/lzy/okgo/e/a;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/e/g;

    new-instance p1, Lcom/unisound/lib/net/HttpUtils$1;

    invoke-direct {p1, p3}, Lcom/unisound/lib/net/HttpUtils$1;-><init>(Lcom/unisound/lib/net/HttpCallBack;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/e/g;->a(Lcom/lzy/okgo/b/a;)V

    return-void
.end method

.method public static postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Lcom/unisound/lib/usercenter/bean/UserCResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/unisound/lib/usercenter/bean/UserCResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HttpUtils"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>postUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const/4 v1, 0x0

    .line 199
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/lzy/okgo/a;->b(Ljava/lang/String;)Lcom/lzy/okgo/e/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lzy/okgo/e/g;->a(Ljava/lang/Object;)Lcom/lzy/okgo/e/b;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/e/g;

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/e/g;->b(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p0

    .line 203
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->d()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 206
    const-class p2, Lcom/unisound/lib/usercenter/bean/UserCResult;

    invoke-static {p1, p2}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/usercenter/bean/UserCResult;

    move-object v1, p1

    :cond_1
    const-string p1, "HttpUtils"

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 210
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method

.method public static postRequestWithParams(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/unisound/lib/net/HttpUserCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/unisound/lib/net/HttpUserCallBack;",
            ")V"
        }
    .end annotation

    const-string v0, "HttpUtils"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>postUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 228
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/lzy/okgo/a;->b(Ljava/lang/String;)Lcom/lzy/okgo/e/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/lzy/okgo/e/g;->a(Ljava/lang/Object;)Lcom/lzy/okgo/e/b;

    move-result-object p0

    check-cast p0, Lcom/lzy/okgo/e/g;

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/e/g;->b(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p0

    .line 232
    invoke-static {}, Lcom/lzy/okgo/a;->a()Lcom/lzy/okgo/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okgo/a;->d()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/unisound/lib/net/HttpUtils$4;

    invoke-direct {p1, p3}, Lcom/unisound/lib/net/HttpUtils$4;-><init>(Lcom/unisound/lib/net/HttpUserCallBack;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
