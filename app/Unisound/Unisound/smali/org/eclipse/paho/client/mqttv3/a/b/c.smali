.class public Lorg/eclipse/paho/client/mqttv3/a/b/c;
.super Lorg/eclipse/paho/client/mqttv3/a/b/b;


# static fields
.field public static final a:Ljava/lang/String; = "Con"


# instance fields
.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(B[B)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/b/b;-><init>(B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/c;->t:Z

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/c;->s:I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/c;->t:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/c;->s:I

    return v0
.end method

.method protected c()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Con"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/a/b/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " session present:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/c;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " return code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/c;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
