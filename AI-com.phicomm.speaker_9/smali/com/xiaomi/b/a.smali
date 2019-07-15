.class Lcom/xiaomi/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/service/ak$b;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/push/a/b$c;

    invoke-direct {v0}, Lcom/xiaomi/push/a/b$c;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a/b$c;->a(Ljava/lang/String;)Lcom/xiaomi/push/a/b$c;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a/b$c;->d(Ljava/lang/String;)Lcom/xiaomi/push/a/b$c;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a/b$c;->e(Ljava/lang/String;)Lcom/xiaomi/push/a/b$c;

    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/push/service/ak$b;->e:Z

    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_0

    :cond_3
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a/b$c;->b(Ljava/lang/String;)Lcom/xiaomi/push/a/b$c;

    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/a/b$c;->c(Ljava/lang/String;)Lcom/xiaomi/push/a/b$c;

    goto :goto_2

    :cond_4
    const-string v1, "XIAOMI-SASL"

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/xiaomi/b/b;

    invoke-direct {v1}, Lcom/xiaomi/b/b;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/ak$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/b;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/ak$b;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/b;->a(I)V

    iget-object v2, p0, Lcom/xiaomi/push/service/ak$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/b;->b(Ljava/lang/String;)V

    const-string v2, "BIND"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/b/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/b;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim]: bind id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "challenge"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    iget-object v4, p0, Lcom/xiaomi/push/service/ak$b;->c:Ljava/lang/String;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "chid"

    iget-object v4, p0, Lcom/xiaomi/push/service/ak$b;->h:Ljava/lang/String;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "from"

    iget-object v4, p0, Lcom/xiaomi/push/service/ak$b;->b:Ljava/lang/String;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    invoke-virtual {v1}, Lcom/xiaomi/b/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "to"

    const-string v4, "xiaomi.com"

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/xiaomi/push/service/ak$b;->e:Z

    if-eqz p1, :cond_5

    const-string p1, "kick"

    const-string v4, "1"

    :goto_3
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const-string p1, "kick"

    const-string v4, "0"

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lcom/xiaomi/push/service/ak$b;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "client_attrs"

    iget-object v4, p0, Lcom/xiaomi/push/service/ak$b;->f:Ljava/lang/String;

    :goto_5
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    const-string p1, "client_attrs"

    const-string v4, ""

    goto :goto_5

    :goto_6
    iget-object p1, p0, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "cloud_attrs"

    iget-object v4, p0, Lcom/xiaomi/push/service/ak$b;->g:Ljava/lang/String;

    :goto_7
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    const-string p1, "cloud_attrs"

    const-string v4, ""

    goto :goto_7

    :goto_8
    iget-object p1, p0, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    const-string v4, "XIAOMI-PASS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    const-string v4, "XMPUSH-PASS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_9

    :cond_8
    iget-object p0, p0, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    const-string p1, "XIAOMI-SASL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-object p0, v3

    goto :goto_a

    :cond_9
    :goto_9
    iget-object p1, p0, Lcom/xiaomi/push/service/ak$b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/xiaomi/push/service/ak$b;->i:Ljava/lang/String;

    invoke-static {p1, v3, v2, p0}, Lcom/xiaomi/channel/commonutils/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/a/b$c;->f(Ljava/lang/String;)Lcom/xiaomi/push/a/b$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/a/b$c;->c()[B

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Lcom/xiaomi/b/b;->a([BLjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/xiaomi/smack/a;->b(Lcom/xiaomi/b/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/smack/a;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/b/b;

    invoke-direct {v0}, Lcom/xiaomi/b/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/b/b;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/b/b;->a(I)V

    const-string p0, "UBND"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/smack/a;->b(Lcom/xiaomi/b/b;)V

    return-void
.end method
