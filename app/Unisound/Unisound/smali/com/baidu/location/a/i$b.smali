.class Lcom/baidu/location/a/i$b;
.super Lcom/baidu/location/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/location/a/i;


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/i;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/i$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a/i$b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/i$b;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/i$b;->h:Ljava/lang/String;

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    invoke-static {v0}, Lcom/baidu/location/a/i;->a(Lcom/baidu/location/a/i;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    invoke-static {v0}, Lcom/baidu/location/a/i;->b(Lcom/baidu/location/a/i;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/a/i$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ki=%s&sn=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    invoke-static {v4}, Lcom/baidu/location/a/i;->a(Lcom/baidu/location/a/i;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    invoke-static {v4}, Lcom/baidu/location/a/i;->b(Lcom/baidu/location/a/i;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/i$b;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/i$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/i$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/i$b;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/location/a/u;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/i$b;->a:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/a/i$b;->k:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->k:Ljava/util/Map;

    const-string v1, "up"

    iget-object v2, p0, Lcom/baidu/location/a/i$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
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

    iget-object v1, p0, Lcom/baidu/location/a/i$b;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/a/i$b;->b:Ljava/lang/String;

    sget-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/i$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 8

    const-wide/16 v6, 0x1

    const/16 v4, 0x3f

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/i$b;->j:Ljava/lang/String;

    sput-object v1, Lcom/baidu/location/a/i;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0, v1}, Lcom/baidu/location/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v2

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/baidu/location/a/h;->a()Lcom/baidu/location/a/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/location/a/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->g(I)V

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/m;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/location/a/m;->a()Lcom/baidu/location/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/m;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->c(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/baidu/location/a/i$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/c;->d()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/c;->e()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    iget-object v0, v0, Lcom/baidu/location/a/i;->d:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "HttpStatus error"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/a/i$b;->k:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/baidu/location/c;

    invoke-direct {v0}, Lcom/baidu/location/c;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/c;->d(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    iget-object v0, v0, Lcom/baidu/location/a/i;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "HttpStatus error"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    iget-object v1, v1, Lcom/baidu/location/a/i;->d:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/a/i$b;->c:Lcom/baidu/location/a/i;

    iget-object v0, v0, Lcom/baidu/location/a/i;->d:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "HttpStatus error"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
