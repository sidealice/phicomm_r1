.class public Lcom/unisound/sdk/cn;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/cn;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/cn;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/cn;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/cn;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/sdk/cn;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/unisound/sdk/cn;->b(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/cn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v1, "history"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "history"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/unisound/sdk/cn;->d:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "text"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/unisound/sdk/cn;->c:Ljava/lang/String;

    const-string v1, "general"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "general"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/unisound/sdk/cn;->b:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_0
    :goto_3
    return v0

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    :cond_3
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cn;->c:Ljava/lang/String;

    return-object v0
.end method
