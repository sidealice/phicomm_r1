.class public Lorg/eclipse/paho/client/mqttv3/p;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# instance fields
.field private a:Z

.field private b:[B

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->a:Z

    .line 29
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->c:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->d:Z

    .line 31
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->e:Z

    .line 56
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/p;->a([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->a:Z

    .line 29
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->c:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->d:Z

    .line 31
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->e:Z

    .line 65
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/p;->a([B)V

    return-void
.end method

.method public static a(I)V
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 41
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/p;->e:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/p;->d()V

    if-nez p1, :cond_0

    .line 96
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 98
    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/p;->b:[B

    return-void
.end method

.method public a()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->b:[B

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/p;->d()V

    .line 181
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/p;->a(I)V

    .line 182
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/p;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/p;->d()V

    .line 126
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/p;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 232
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/p;->f:I

    return-void
.end method

.method protected d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 207
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->a:Z

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/p;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/p;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
