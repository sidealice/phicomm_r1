.class Lorg/eclipse/paho/android/service/d$a;
.super Ljava/lang/Object;
.source "MqttConnection.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field final synthetic c:Lorg/eclipse/paho/android/service/d;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput-object p2, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/d$1;)V
    .locals 0

    .line 976
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/android/service/d$a;-><init>(Lorg/eclipse/paho/android/service/d;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 3

    .line 986
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/d;->b(Lorg/eclipse/paho/android/service/d;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/android/service/i;->a:Lorg/eclipse/paho/android/service/i;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V
    .locals 2

    .line 991
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.errorMessage"

    .line 992
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 997
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/paho/android/service/d$a;->c:Lorg/eclipse/paho/android/service/d;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/d;->b(Lorg/eclipse/paho/android/service/d;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/eclipse/paho/android/service/i;->b:Lorg/eclipse/paho/android/service/i;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/d$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/i;Landroid/os/Bundle;)V

    return-void
.end method
