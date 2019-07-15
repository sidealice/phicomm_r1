.class public Lcom/unisound/lib/push/constant/MqttConstant;
.super Ljava/lang/Object;


# static fields
.field private static autoReconnectInterval:I = 0x1388

.field private static autoReconnectMqtt:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoReconnectInterval()I
    .locals 1

    sget v0, Lcom/unisound/lib/push/constant/MqttConstant;->autoReconnectInterval:I

    return v0
.end method

.method public static isAutoReconnectMqtt()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/lib/push/constant/MqttConstant;->autoReconnectMqtt:Z

    return v0
.end method

.method public static setAutoReconnectInterval(I)V
    .locals 0

    sput p0, Lcom/unisound/lib/push/constant/MqttConstant;->autoReconnectInterval:I

    return-void
.end method

.method public static setAutoReconnectMqtt(Z)V
    .locals 0

    sput-boolean p0, Lcom/unisound/lib/push/constant/MqttConstant;->autoReconnectMqtt:Z

    return-void
.end method
