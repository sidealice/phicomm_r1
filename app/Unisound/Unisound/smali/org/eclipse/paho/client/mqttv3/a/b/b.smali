.class public abstract Lorg/eclipse/paho/client/mqttv3/a/b/b;
.super Lorg/eclipse/paho/client/mqttv3/a/b/u;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected a()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
