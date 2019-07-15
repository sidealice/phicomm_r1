.class public Lorg/eclipse/paho/client/mqttv3/internal/b/v;
.super Ljava/io/InputStream;
.source "MultiByteArrayInputStream.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>([BII[BII)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    .line 33
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->a:[B

    .line 34
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->d:[B

    .line 35
    iput p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->b:I

    .line 36
    iput p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->e:I

    .line 37
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->c:I

    .line 38
    iput p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->f:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->c:I

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->a:[B

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->b:I

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    goto :goto_0

    .line 44
    :cond_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->c:I

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->f:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 45
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->d:[B

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->e:I

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->c:I

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    :goto_0
    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    .line 52
    :cond_1
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/b/v;->g:I

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method
