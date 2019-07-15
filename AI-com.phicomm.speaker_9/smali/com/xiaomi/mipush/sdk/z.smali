.class public Lcom/xiaomi/mipush/sdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/ax$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax$a;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/xmpush/thrift/ae;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ae;-><init>()V

    sget-object v1, Lcom/xiaomi/xmpush/thrift/o;->i:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v1, v1, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "miid"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/channel/commonutils/android/h;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/e;->b()I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ae;->i()Ljava/util/Map;

    move-result-object v1

    const-string v2, "space_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/r;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 10

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_sync_miid_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {p1}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v1

    sget-object v8, Lcom/xiaomi/xmpush/thrift/e;->I:Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v8}, Lcom/xiaomi/xmpush/thrift/e;->a()I

    move-result v8

    const/16 v9, 0x5460

    invoke-virtual {v1, v8, v9}, Lcom/xiaomi/push/service/j;->a(II)I

    move-result v1

    cmp-long v8, v4, v2

    if-nez v8, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "last_sync_miid_time"

    invoke-interface {p1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    sub-long v2, v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v8, v2, v4

    if-lez v8, :cond_1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Landroid/content/Context;)Lcom/xiaomi/channel/commonutils/c/f;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/mipush/sdk/aa;

    invoke-direct {v3, p1}, Lcom/xiaomi/mipush/sdk/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f$a;I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/z;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
