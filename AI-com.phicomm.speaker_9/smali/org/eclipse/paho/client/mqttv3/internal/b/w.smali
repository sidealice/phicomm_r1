.class public Lorg/eclipse/paho/client/mqttv3/internal/b/w;
.super Ljava/lang/Object;
.source "MultiByteInteger.java"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/w;->a:J

    .line 32
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/w;->b:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/w;->a:J

    return-wide v0
.end method
