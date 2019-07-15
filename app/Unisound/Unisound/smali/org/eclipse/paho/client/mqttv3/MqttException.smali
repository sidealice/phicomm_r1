.class public Lorg/eclipse/paho/client/mqttv3/MqttException;
.super Ljava/lang/Exception;


# static fields
.field public static final REASON_CODE_BROKER_UNAVAILABLE:S = 0x3s

.field public static final REASON_CODE_CLIENT_ALREADY_DISCONNECTED:S = 0x7d65s

.field public static final REASON_CODE_CLIENT_CLOSED:S = 0x7d6fs

.field public static final REASON_CODE_CLIENT_CONNECTED:S = 0x7d64s

.field public static final REASON_CODE_CLIENT_DISCONNECTING:S = 0x7d66s

.field public static final REASON_CODE_CLIENT_DISCONNECT_PROHIBITED:S = 0x7d6bs

.field public static final REASON_CODE_CLIENT_EXCEPTION:S = 0x0s

.field public static final REASON_CODE_CLIENT_NOT_CONNECTED:S = 0x7d68s

.field public static final REASON_CODE_CLIENT_TIMEOUT:S = 0x7d00s

.field public static final REASON_CODE_CONNECTION_LOST:S = 0x7d6ds

.field public static final REASON_CODE_CONNECT_IN_PROGRESS:S = 0x7d6es

.field public static final REASON_CODE_FAILED_AUTHENTICATION:S = 0x4s

.field public static final REASON_CODE_INVALID_CLIENT_ID:S = 0x2s

.field public static final REASON_CODE_INVALID_MESSAGE:S = 0x7d6cs

.field public static final REASON_CODE_INVALID_PROTOCOL_VERSION:S = 0x1s

.field public static final REASON_CODE_MAX_INFLIGHT:S = 0x7dcas

.field public static final REASON_CODE_NOT_AUTHORIZED:S = 0x5s

.field public static final REASON_CODE_NO_MESSAGE_IDS_AVAILABLE:S = 0x7d01s

.field public static final REASON_CODE_SERVER_CONNECT_ERROR:S = 0x7d67s

.field public static final REASON_CODE_SOCKET_FACTORY_MISMATCH:S = 0x7d69s

.field public static final REASON_CODE_SSL_CONFIG_ERROR:S = 0x7d6as

.field public static final REASON_CODE_SUBSCRIBE_FAILED:S = 0x80s

.field public static final REASON_CODE_TOKEN_INUSE:S = 0x7dc9s

.field public static final REASON_CODE_UNEXPECTED_ERROR:S = 0x6s

.field public static final REASON_CODE_WRITE_TIMEOUT:S = 0x7d02s

.field private static final a:J = 0x12cL


# instance fields
.field private b:I

.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->b:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->b:I

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->b:I

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->b:I

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/o;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttException;->c:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
