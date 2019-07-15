.class public Lorg/eclipse/paho/client/mqttv3/a/b/w;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/w;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/w;->a:J

    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/w;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/w;->b:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/w;->a:J

    return-wide v0
.end method
