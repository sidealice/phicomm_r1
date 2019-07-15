.class Lcom/baidu/location/a/c$c;
.super Lcom/baidu/location/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/a/c;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/c;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/c$c;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c$c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v0}, Lcom/baidu/location/a/c;->a(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v0}, Lcom/baidu/location/a/c;->b(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/a/c$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ki=%s&sn=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v4}, Lcom/baidu/location/a/c;->a(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v4}, Lcom/baidu/location/a/c;->b(Lcom/baidu/location/a/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/c$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/c$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/c$c;->k:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c$c;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/a/c$c;->a:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/c$c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/c$c;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, v1}, Lcom/baidu/location/c;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v1}, Lcom/baidu/location/a/c;->c(Lcom/baidu/location/a/c;)Lcom/baidu/location/h;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    iget-object v2, v2, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    iget-object v2, v2, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/location/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/Jni;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/a/c$c;->b:Lcom/baidu/location/a/c;

    invoke-static {v1}, Lcom/baidu/location/a/c;->d(Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/location/a/c$b;->a(Lcom/baidu/location/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/a/c$c;->k:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/c$c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0}, Lcom/baidu/location/c;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
