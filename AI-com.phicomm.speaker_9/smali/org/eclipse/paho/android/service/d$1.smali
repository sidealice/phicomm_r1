.class Lorg/eclipse/paho/android/service/d$1;
.super Lorg/eclipse/paho/android/service/d$a;
.source "MqttConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/client/mqttv3/n;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lorg/eclipse/paho/android/service/d;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    iput-object p3, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/d$1;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    .line 249
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "connect success!"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V
    .locals 3

    .line 255
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.errorMessage"

    .line 257
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 260
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect fail, call connect to reconnect.reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$1;->b:Lorg/eclipse/paho/android/service/d;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/d$1;->a:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/d;->b(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    return-void
.end method
