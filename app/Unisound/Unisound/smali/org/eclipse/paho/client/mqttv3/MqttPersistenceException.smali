.class public Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
.super Lorg/eclipse/paho/client/mqttv3/MqttException;


# static fields
.field public static final REASON_CODE_PERSISTENCE_IN_USE:S = 0x7dc8s

.field private static final a:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
