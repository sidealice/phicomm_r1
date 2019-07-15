.class public Lcom/phicomm/speaker/d/a/b;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lorg/eclipse/paho/client/mqttv3/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/f;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/phicomm/speaker/d/a/b;->a:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/phicomm/speaker/d/a/b;->b:I

    .line 16
    iput-object p3, p0, Lcom/phicomm/speaker/d/a/b;->c:Lorg/eclipse/paho/client/mqttv3/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/d/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/phicomm/speaker/d/a/b;->b:I

    return v0
.end method

.method public c()Lorg/eclipse/paho/client/mqttv3/f;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/d/a/b;->c:Lorg/eclipse/paho/client/mqttv3/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription{topic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/d/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/d/a/b;->c:Lorg/eclipse/paho/client/mqttv3/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
