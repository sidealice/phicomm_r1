.class public Lorg/eclipse/paho/client/mqttv3/internal/q;
.super Lorg/eclipse/paho/client/mqttv3/internal/n;
.source "ResourceBundleCatalog.java"


# instance fields
.field private a:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/n;-><init>()V

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.messages"

    .line 27
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/q;->a:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method protected b(I)Ljava/lang/String;
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/q;->a:Ljava/util/ResourceBundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "MqttException"

    return-object p1
.end method
