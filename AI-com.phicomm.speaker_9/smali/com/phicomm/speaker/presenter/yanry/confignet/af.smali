.class public Lcom/phicomm/speaker/presenter/yanry/confignet/af;
.super Ljava/lang/Object;
.source "WifiPagingHandler.java"


# instance fields
.field private a:I

.field private b:Lorg/json/JSONArray;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 3

    .line 36
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->c:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a:I

    .line 39
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->b:Lorg/json/JSONArray;

    .line 42
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "page_size"

    const/16 v2, 0x1e

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "page_number"

    iget v2, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->b:Lorg/json/JSONArray;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "data"

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->b:Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    const-string p1, "data"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v2, v1

    .line 27
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->b:Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    iget p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a:I

    .line 32
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->b:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->b:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v4, "total"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ge v3, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {p2, p1, v1}, Lcom/phicomm/speaker/b/h;->a(Lorg/json/JSONArray;Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->c:Z

    return v0
.end method
