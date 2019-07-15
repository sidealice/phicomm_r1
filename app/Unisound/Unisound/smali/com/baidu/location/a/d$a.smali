.class Lcom/baidu/location/a/d$a;
.super Lcom/baidu/location/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/a/d;


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/a/d$a;->b:Lcom/baidu/location/a/d;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/d$a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/d$a;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "http://loc.map.baidu.com/cc.php"

    iput-object v0, p0, Lcom/baidu/location/a/d$a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/d$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/d$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/d$a;->k:Ljava/util/Map;

    const-string v2, "q"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/d$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/a/d$a;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/d$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/d$a;->j:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "prod"

    sget-object v2, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/location/a/d$a;->b:Lcom/baidu/location/a/d;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/a/d;->a(Lcom/baidu/location/a/d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/a/d$a;->k:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/d$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
