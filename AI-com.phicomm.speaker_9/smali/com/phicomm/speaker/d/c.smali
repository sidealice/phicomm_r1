.class public Lcom/phicomm/speaker/d/c;
.super Ljava/lang/Object;
.source "MyMqttUtil.java"


# direct methods
.method public static a()V
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v1

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/d/c$1;

    invoke-direct {v1}, Lcom/phicomm/speaker/d/c$1;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method

.method public static b()V
    .locals 3

    .line 36
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/d/c$2;

    invoke-direct {v1}, Lcom/phicomm/speaker/d/c$2;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/d/a;->b(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;)V

    return-void
.end method
