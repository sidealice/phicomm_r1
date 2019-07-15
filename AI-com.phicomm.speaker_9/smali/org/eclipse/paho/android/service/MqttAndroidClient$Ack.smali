.class public final enum Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;
.super Ljava/lang/Enum;
.source "MqttAndroidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttAndroidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

.field public static final enum AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

.field public static final enum MANUAL_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 89
    new-instance v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    const-string v1, "AUTO_ACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    .line 95
    new-instance v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    const-string v1, "MANUAL_ACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->MANUAL_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    const/4 v0, 0x2

    .line 84
    new-array v0, v0, [Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    sget-object v1, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->AUTO_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->MANUAL_ACK:Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->$VALUES:[Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;
    .locals 1

    .line 84
    const-class v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;
    .locals 1

    .line 84
    sget-object v0, Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->$VALUES:[Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    invoke-virtual {v0}, [Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/paho/android/service/MqttAndroidClient$Ack;

    return-object v0
.end method
