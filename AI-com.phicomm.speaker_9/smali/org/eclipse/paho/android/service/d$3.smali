.class Lorg/eclipse/paho/android/service/d$3;
.super Lorg/eclipse/paho/android/service/d$a;
.source "MqttConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/d;->f()V
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

    .line 1069
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    iput-object p3, p0, Lorg/eclipse/paho/android/service/d$3;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/d$1;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 2

    .line 1074
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "Reconnect Success!"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "DeliverBacklog when reconnect."

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$3;->a:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V
    .locals 2

    .line 1081
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.errorMessage"

    .line 1083
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1087
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/d;->b(Lorg/eclipse/paho/android/service/d;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/d$3;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    .line 1090
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$3;->b:Lorg/eclipse/paho/android/service/d;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/d$3;->a:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/d;->b(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    return-void
.end method
