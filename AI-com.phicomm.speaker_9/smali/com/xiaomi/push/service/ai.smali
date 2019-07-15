.class Lcom/xiaomi/push/service/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/push/service/ah;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ah;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/ai;->d:Lcom/xiaomi/push/service/ah;

    iput-object p2, p0, Lcom/xiaomi/push/service/ai;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/push/service/ai;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/ai;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/push/service/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/as;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/as;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ai;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/as;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/module/b;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->e()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/push/service/ai;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->a()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    iget-object v2, p0, Lcom/xiaomi/push/service/ai;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/as;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/as;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/as;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMPushService remove some geofence message failed. message_id:"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->d()[B

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, "Geo canBeShownMessage content null"

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/xiaomi/push/service/bf;->a([BJ)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "Geo canBeShownMessage intent null"

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/xiaomi/push/service/ai;->d:Lcom/xiaomi/push/service/ah;

    iget-object v4, v4, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v3, v6}, Lcom/xiaomi/push/service/bf;->a(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[BLandroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/xiaomi/push/service/ai;->d:Lcom/xiaomi/push/service/ah;

    iget-object v2, v2, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/as;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/as;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/as;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show some exit geofence message. then remove this message failed. message_id:"

    goto :goto_1

    :cond_5
    return-void
.end method
