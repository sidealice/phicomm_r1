.class public Lorg/eclipse/paho/client/mqttv3/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private b:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field private c:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

.field private f:Ljava/lang/Object;

.field private g:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private h:I


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->a:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->b:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->c:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->f:Ljava/lang/Object;

    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->g:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->b:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->a:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->b:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->b:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->a:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->c:Lorg/eclipse/paho/client/mqttv3/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/j;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->c:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->i()[Lorg/eclipse/paho/client/mqttv3/a/q;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->c:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->h()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    if-lt v2, v0, :cond_0

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->h:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v0

    if-ne v0, v3, :cond_4

    :cond_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->h:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/j;->a()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->c:Lorg/eclipse/paho/client/mqttv3/a/a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->c:Lorg/eclipse/paho/client/mqttv3/a/a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/a/j;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->h:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    :cond_5
    instance-of v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    :goto_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->j()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->g:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->g:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-interface {v0, v1, p2}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->d:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getResponse()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/u;->j()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->g:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->g:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/j;->e:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    :cond_1
    return-void
.end method
