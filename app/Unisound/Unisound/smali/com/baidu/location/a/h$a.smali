.class Lcom/baidu/location/a/h$a;
.super Lcom/baidu/location/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/a/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/baidu/location/a/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/h$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a/h$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/h$a;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/h$a;->e:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/h$a;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/h$a;->i:I

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/h$a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/h$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/h$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/h$a;->k:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    invoke-static {v0}, Lcom/baidu/location/a/h;->c(Lcom/baidu/location/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/a/h;->a(Lcom/baidu/location/a/h;Z)Z

    iput-object p1, p0, Lcom/baidu/location/a/h$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/location/a/h$a;->c:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/h$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/a/h$a;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/h$a;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/baidu/location/a/h$a;->d:Z

    if-eqz v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "content"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "imo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "imo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "imo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "mv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/location/a/h$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/location/Jni;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hst"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    invoke-static {v3}, Lcom/baidu/location/a/h;->a(Lcom/baidu/location/a/h;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "hstdata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    invoke-static {v1}, Lcom/baidu/location/a/h;->a(Lcom/baidu/location/a/h;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "hstdata"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "mac"

    iget-object v3, p0, Lcom/baidu/location/a/h$a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "hotspot"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    invoke-static {v0, v1}, Lcom/baidu/location/a/h;->a(Lcom/baidu/location/a/h;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/a/h$a;->k:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/h$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/h;->a(Lcom/baidu/location/a/h;Z)Z

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/baidu/location/a/h$a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/h$a;->a:Lcom/baidu/location/a/h;

    invoke-static {v0}, Lcom/baidu/location/a/h;->b(Lcom/baidu/location/a/h;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
