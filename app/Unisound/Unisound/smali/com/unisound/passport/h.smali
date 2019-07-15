.class Lcom/unisound/passport/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallback;


# instance fields
.field a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/unisound/passport/d;


# direct methods
.method public constructor <init>(Lcom/unisound/passport/d;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/passport/h;->b:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/passport/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Doing an SSL Connect"

    invoke-static {v0}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    const-string v1, "ssl://"

    invoke-static {}, Lcom/unisound/passport/d;->b()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unisound/passport/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/unisound/passport/a/c;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/passport/h;->b:Ljava/lang/String;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    iget-object v2, p0, Lcom/unisound/passport/h;->b:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/passport/d;->e()Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v1, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v0, p0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-static {}, Lcom/unisound/passport/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "passw0rd"

    invoke-direct {p0, v1}, Lcom/unisound/passport/h;->a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setSocketFactory(Ljavax/net/SocketFactory;)V

    :cond_0
    invoke-static {}, Lcom/unisound/passport/d;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    invoke-static {}, Lcom/unisound/passport/d;->g()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    invoke-static {}, Lcom/unisound/passport/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    invoke-static {}, Lcom/unisound/passport/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    iget-object v1, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v1, v0, v4, p0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion()V

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "tcp://"

    invoke-static {}, Lcom/unisound/passport/d;->c()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/unisound/passport/h;->a([Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection established to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unisound/passport/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on topic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;J)J

    invoke-static {p1}, Lcom/unisound/passport/d;->d(Lcom/unisound/passport/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4b2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-static {v1}, Lcom/unisound/passport/d;->e(Lcom/unisound/passport/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "bks/ssl"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v1, "X509"

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttSecurityException KeyStoreException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttSecurityException CertificateException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttSecurityException FileNotFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttSecurityException IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttSecurityException NoSuchAlgorithmException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttSecurityException KeyManagementException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/unisound/passport/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/passport/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    const-string v1, "No connection to public to"

    invoke-static {v0, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish ==> topickName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/passport/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lcom/unisound/passport/d;->j()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {}, Lcom/unisound/passport/d;->k()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    const-string v1, "Connection errorNo connection"

    invoke-static {v0, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/unisound/passport/d;->j()[I

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v1, p1, v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/h;->a:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->d(Lcom/unisound/passport/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4b3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "connection close"

    invoke-static {v0}, Lcom/unisound/passport/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "connection close error"

    invoke-static {v0}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    const/16 v2, 0x579

    const/16 v3, 0x5df

    invoke-virtual {v0, v2, v3}, Lcom/unisound/passport/d;->a(II)V

    iget-object v2, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MqttException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, " NULL"

    goto :goto_1
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    const-string v1, "Loss of connectionconnection downed"

    invoke-static {v0, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->d(Lcom/unisound/passport/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4b1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->b(Lcom/unisound/passport/d;)V

    :cond_0
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .locals 0

    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    invoke-static {v1}, Lcom/unisound/passport/d;->d(Lcom/unisound/passport/d;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x515

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "messageId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "messageId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ack message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    const-string v1, "passport/ack"

    invoke-direct {p0, v1, v0}, Lcom/unisound/passport/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------onFailure-----------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/passport/h;->c:Lcom/unisound/passport/d;

    const-string v1, "---------------onSuccess-----------------"

    invoke-static {v0, v1}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    return-void
.end method
