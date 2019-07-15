.class Lcom/phicomm/speaker/presenter/yanry/a$1;
.super Lcom/phicomm/speaker/net/a/a;
.source "CustomWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sz check sensitive words error(%s): %s."

    const/4 v1, 0x2

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/b;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 2

    const-string p2, "check sensitive result: %s."

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/c;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->a:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/phicomm/speaker/presenter/yanry/c;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 49
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "failed"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 51
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V

    return v1
.end method

.method final synthetic c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$1;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
