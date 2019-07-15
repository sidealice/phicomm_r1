.class public Lorg/eclipse/paho/client/mqttv3/internal/o;
.super Ljava/lang/Object;
.source "MqttPersistentData.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/q;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII[BII)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->a:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->b:[B

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->c:I

    .line 27
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->d:I

    .line 30
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->e:[B

    .line 31
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->f:I

    .line 32
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->g:I

    .line 59
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->b:[B

    .line 61
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->c:I

    .line 62
    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->d:I

    .line 63
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->e:[B

    .line 64
    iput p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->f:I

    .line 65
    iput p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->g:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->b:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->c:I

    return v0
.end method

.method public d()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->e:[B

    return-object v0
.end method

.method public e_()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->e:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/o;->f:I

    return v0
.end method
