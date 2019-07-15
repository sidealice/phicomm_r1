.class public Lcom/xiaomi/push/service/aq;
.super Lcom/xiaomi/channel/commonutils/c/f$a;


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/f$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/aq;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/push/service/aq;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/as;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/as;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/module/b;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->a()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, p0, Lcom/xiaomi/push/service/aq;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/as;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/as;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/as;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeofenceDbCleaner delete a geofence message failed message_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/b;->d()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/bf;->a([B)Lcom/xiaomi/xmpush/thrift/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/aq;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v4, v3}, Lcom/xiaomi/push/service/bf;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/ab;ZZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method
