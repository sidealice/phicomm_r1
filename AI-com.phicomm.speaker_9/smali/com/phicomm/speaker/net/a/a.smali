.class public abstract Lcom/phicomm/speaker/net/a/a;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private a:Lcom/phicomm/speaker/views/m;

.field private b:Ljava/lang/Runnable;

.field private c:Landroid/os/Handler;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/net/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V
    .locals 1

    .line 338
    new-instance v0, Lcom/phicomm/speaker/net/a/a$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/phicomm/speaker/net/a/a$4;-><init>(Lcom/phicomm/speaker/net/a/a;Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 6

    .line 200
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "301"

    .line 201
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void

    .line 207
    :cond_0
    :try_start_0
    const-class v0, Lcom/phicomm/speaker/bean/FxResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/FxResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "305"

    .line 212
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/FxResponse;->getError()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/FxResponse;->getToken_status()I

    move-result v3

    .line 218
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/FxResponse;->getHttpCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 219
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    const-string v5, "200"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_2

    :cond_2
    const-string p1, "26"

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "30"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-lez v3, :cond_3

    goto :goto_1

    .line 224
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_2

    .line 222
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/FxResponse;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    :goto_2
    return-void
.end method

.method private a(Lokhttp3/Response;)V
    .locals 3

    .line 155
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "304"

    .line 157
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto/16 :goto_1

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 165
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "304"

    .line 166
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void

    :cond_1
    const-string v2, "<HTML>"

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "<HEAD>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "<BODY>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "<html>"

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "<head>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "<body>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v0, "301"

    .line 173
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void

    .line 177
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://accountsym.phicomm.com"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Lokhttp3/Response;)V

    return-void

    :cond_5
    const-string v2, "https://home.phicomm.com"

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Lokhttp3/Response;)V

    return-void

    .line 192
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/phicomm/speaker/net/a/a;->c(Ljava/lang/String;Lokhttp3/Response;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/net/a/a;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/phicomm/speaker/net/a/a;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/net/a/a;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/phicomm/speaker/net/a/a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/net/a/a;)Lcom/phicomm/speaker/views/m;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/phicomm/speaker/net/a/a;->a:Lcom/phicomm/speaker/views/m;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/net/a/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 359
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->f()V

    const/4 v0, 0x0

    .line 360
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setUserAccount(Ljava/lang/String;)V

    .line 361
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setFlushToken(Ljava/lang/String;)V

    const-string v1, "BaseCallback"

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoLogin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/views/m;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object v3

    const-string v1, "30"

    .line 365
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "10006"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u767b\u5f55\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 383
    invoke-virtual {p0, p1, p2, v0}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    const-string p1, "\u767b\u5f55\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 384
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/phicomm/speaker/d/c;->b()V

    .line 386
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/f/c;->c()V

    .line 387
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p1, v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    invoke-static {}, Lcom/phicomm/speaker/d/c;->b()V

    .line 367
    invoke-static {}, Lcom/phicomm/speaker/views/m;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BaseCallback"

    const-string p2, "LogoutDialog checkShow Return"

    .line 368
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f60\u7684\u5e10\u6237\u4e8e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/phicomm/speaker/manager/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u5728\u5176\u5b83\u8bbe\u5907\u4e0a\u767b\u5f55\u3002\u5982\u975e\u672c\u4eba\u64cd\u4f5c\uff0c\u767b\u5f55\u5bc6\u7801\u53ef\u80fd\u5df2\u6cc4\u9732\uff0c\u8bf7\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    new-instance p1, Lcom/phicomm/speaker/views/m;

    const-string v5, "\u786e\u5b9a"

    const/16 v6, 0x11

    new-instance v7, Lcom/phicomm/speaker/net/a/a$5;

    invoke-direct {v7, p0, v3}, Lcom/phicomm/speaker/net/a/a$5;-><init>(Lcom/phicomm/speaker/net/a/a;Landroid/app/Activity;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/phicomm/speaker/views/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/phicomm/speaker/c/c;)V

    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a;->a:Lcom/phicomm/speaker/views/m;

    .line 380
    iget-object p1, p0, Lcom/phicomm/speaker/net/a/a;->a:Lcom/phicomm/speaker/views/m;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/m;->show()V

    const-string p1, "BaseCallback"

    const-string p2, "LogoutDialog show"

    .line 381
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_1
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/d;)V

    const/4 p1, 0x0

    .line 390
    invoke-static {p1}, Lcom/unisound/lib/push/constant/MqttConstant;->setAutoReconnectMqtt(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 4

    .line 234
    :try_start_0
    const-class v0, Lcom/phicomm/speaker/bean/SzResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/SzResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/SzResponse;->getStatus()I

    move-result v0

    .line 242
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/SzResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/SzResponse;->getResult()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 246
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Lokhttp3/Request;)V

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x2713

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2714

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x2716

    if-ne v0, v1, :cond_3

    const-string v1, "BaseCallback"

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSzResponse result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-class v1, Lcom/phicomm/speaker/bean/LogoutReason;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/LogoutReason;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/LogoutReason;->getReason()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    goto :goto_2

    :cond_3
    const/16 p1, 0x2af9

    if-ne v0, p1, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/phicomm/speaker/net/a/a;->a()V

    goto :goto_2

    .line 258
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_2

    .line 249
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    :goto_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "BaseCallback"

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSzResponse Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "305"

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 5

    const/4 v0, 0x0

    .line 268
    :try_start_0
    const-class v1, Lcom/phicomm/speaker/bean/CommonResponse;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/CommonResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 270
    invoke-static {v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    const-string p1, "305"

    .line 273
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void

    .line 277
    :cond_0
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CommonResponse;->getError()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CommonResponse;->getToken_status()I

    move-result v2

    .line 279
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CommonResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CommonResponse;->getHttpCode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    .line 281
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    const-string v4, "200"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_2

    :cond_1
    const-string p1, "30"

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-lez v2, :cond_2

    goto :goto_1

    .line 286
    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, v0, v3, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_2

    .line 284
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, "handleOtherBind"

    .line 397
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 398
    new-instance v0, Lcom/phicomm/speaker/net/a/a$6;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/net/a/a$6;-><init>(Lcom/phicomm/speaker/net/a/a;)V

    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 298
    new-instance p3, Lcom/phicomm/speaker/net/a/a$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/phicomm/speaker/net/a/a$2;-><init>(Lcom/phicomm/speaker/net/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Lokhttp3/Request;)V
.end method

.method public a(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/net/a/a;->c:Landroid/os/Handler;

    .line 61
    :try_start_0
    new-instance v0, Lcom/phicomm/speaker/net/a/a$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/net/a/a$1;-><init>(Lcom/phicomm/speaker/net/a/a;Lokhttp3/Call;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/net/a/a;->b:Ljava/lang/Runnable;

    .line 71
    iget-object p1, p0, Lcom/phicomm/speaker/net/a/a;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/phicomm/speaker/net/a/a;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x283c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 1

    .line 322
    new-instance v0, Lcom/phicomm/speaker/net/a/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/net/a/a$3;-><init>(Lcom/phicomm/speaker/net/a/a;Ljava/lang/String;Lokhttp3/Request;)V

    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 120
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BaseCallback"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okhttp onFailure SocketTimeoutException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "303"

    .line 122
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    goto :goto_0

    :cond_0
    const-string v0, "BaseCallback"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okhttp onFailure OtherException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "301"

    .line 125
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;->b()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "304"

    const/4 v0, 0x0

    .line 141
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/net/a/a;->a(Lokhttp3/Response;)V

    .line 146
    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;->b()V

    return-void
.end method
