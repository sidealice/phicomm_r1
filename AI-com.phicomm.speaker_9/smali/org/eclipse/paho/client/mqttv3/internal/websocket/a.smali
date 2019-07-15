.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;

.field private static final b:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;-><init>()V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;

    .line 24
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;)V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->b:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->b:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;

    const-string v1, "akey"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->putByteArray(Ljava/lang/String;[B)V

    .line 28
    sget-object p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->b:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->b:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;

    const-string v1, "aKey"

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->putByteArray(Ljava/lang/String;[B)V

    .line 34
    sget-object p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;->b:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
