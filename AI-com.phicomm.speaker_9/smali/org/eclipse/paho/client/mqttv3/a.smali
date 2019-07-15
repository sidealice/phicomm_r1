.class public Lorg/eclipse/paho/client/mqttv3/a;
.super Ljava/lang/Object;
.source "BufferedMessage.java"


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

.field private b:Lorg/eclipse/paho/client/mqttv3/s;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    .line 32
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a;->b:Lorg/eclipse/paho/client/mqttv3/s;

    return-void
.end method


# virtual methods
.method public a()Lorg/eclipse/paho/client/mqttv3/internal/b/u;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a;->a:Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    return-object v0
.end method

.method public b()Lorg/eclipse/paho/client/mqttv3/s;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a;->b:Lorg/eclipse/paho/client/mqttv3/s;

    return-object v0
.end method
