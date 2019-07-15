.class public Lcom/alibaba/sdk/android/feedback/xblink/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "HttpConnector"


# instance fields
.field private b:I

.field private c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/alibaba/sdk/android/feedback/xblink/c/h;)V
    .locals 3

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->h()I

    move-result v0

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->e()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->f()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "Host"

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Cookie"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->d()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method private b(Lcom/alibaba/sdk/android/feedback/xblink/c/h;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;
    .locals 14

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a()V

    :cond_1
    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;-><init>()V

    const-string v2, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_7

    sget-object v2, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    const-string v9, "proxy or https"

    invoke-static {v2, v9}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_0 .. :try_end_0} :catch_23
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_0 .. :try_end_0} :catch_22
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/g/d;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    if-eqz v2, :cond_2

    new-array v2, v8, [Ljavax/net/ssl/TrustManager;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/g/d;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v9

    aput-object v9, v2, v7

    goto :goto_0

    :cond_2
    new-array v2, v8, [Ljavax/net/ssl/TrustManager;

    new-instance v9, Lcom/alibaba/sdk/android/feedback/xblink/g/a;

    invoke-direct {v9}, Lcom/alibaba/sdk/android/feedback/xblink/g/a;-><init>()V

    aput-object v9, v2, v7

    :goto_0
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v9

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v9, v5, v2, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v9}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_1 .. :try_end_1} :catch_23
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_1c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v9, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_1
    sget-object v9, Lcom/alibaba/sdk/android/feedback/xblink/b/b;->d:Landroid/app/Application;

    invoke-static {v9}, Lcom/alibaba/sdk/android/feedback/xblink/i/f;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https:proxy:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v10, Lcom/alibaba/sdk/android/feedback/xblink/g/b;

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v9

    const-string v12, "taobao_hybrid_4.5.1"

    invoke-direct {v10, v11, v9, v2, v12}, Lcom/alibaba/sdk/android/feedback/xblink/g/b;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v9, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    const-string v10, "https:proxy: none"

    invoke-static {v9, v10}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v5

    :goto_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v10, :cond_5

    invoke-virtual {v6, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v6, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_3
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/g/d;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v6, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_2
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_2 .. :try_end_2} :catch_23
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_6
    :try_start_3
    const-string v2, "Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v6, v2, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v6

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v0, v5

    move-object v2, v6

    goto/16 :goto_10

    :catch_1
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    move-object v5, v6

    goto/16 :goto_18

    :catch_2
    move-exception p1

    move-object v0, v5

    move-object v2, v6

    goto/16 :goto_13

    :catch_3
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    move-object v5, v6

    goto/16 :goto_1f

    :catch_4
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    move-object v5, v6

    goto/16 :goto_21

    :cond_7
    :try_start_4
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_4 .. :try_end_4} :catch_23
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_4 .. :try_end_4} :catch_22
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1b
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_4
    :try_start_5
    invoke-direct {p0, v2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a(Ljava/net/HttpURLConnection;Lcom/alibaba/sdk/android/feedback/xblink/c/h;)V

    iget-object v6, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    invoke-virtual {v6, v7}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(I)V

    :cond_8
    const-string v6, "post"

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->b()[B

    move-result-object v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "post data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->b()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->b()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "responeCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v9, 0x12c

    if-lt v6, v9, :cond_13

    const/16 v10, 0x190

    if-ge v6, v10, :cond_13

    const/16 v10, 0x130

    if-eq v6, v10, :cond_13

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->g()Z

    move-result v10

    if-eqz v10, :cond_13

    iget v10, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_c

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/c/g;

    const-string v0, "too many redirect"

    invoke-direct {p1, p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/g;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/c/c;Ljava/lang/String;)V

    throw p1

    :cond_c
    iget v10, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b:I

    const-string v10, "location"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v7, "http"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/net/URL;

    const-string v7, "http"

    invoke-direct {v1, v7, v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_d
    const/16 v0, 0x131

    if-eq v6, v0, :cond_10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a(Landroid/net/Uri;)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b(Lcom/alibaba/sdk/android/feedback/xblink/c/h;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    move-result-object p1
    :try_end_5
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_17
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_e

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    return-object p1

    :cond_10
    :try_start_7
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/c/h;

    invoke-direct {p1, v10}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b(Lcom/alibaba/sdk/android/feedback/xblink/c/h;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    move-result-object p1
    :try_end_7
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v3, :cond_11

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_7
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    return-object p1

    :cond_13
    :try_start_9
    invoke-virtual {v1, v6}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a(I)V

    :goto_8
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_20

    const/16 p1, 0xc8

    if-lt v6, p1, :cond_1a

    if-ge v6, v9, :cond_1a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    const/high16 v0, 0x500000

    if-le p1, v0, :cond_14

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Content-Length is too large:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/d;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/c/c;Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_9
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_17
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    const-string v8, "gzip"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_a .. :try_end_a} :catch_12
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_b .. :try_end_b} :catch_a
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v5, v6

    move-object v6, v8

    goto :goto_9

    :catch_7
    move-exception p1

    move-object v1, v5

    goto/16 :goto_12

    :catch_8
    move-exception p1

    goto/16 :goto_1a

    :catch_9
    move-exception p1

    move-object v1, v5

    goto/16 :goto_15

    :catch_a
    move-exception p1

    move-object v1, v5

    goto/16 :goto_17

    :cond_15
    :try_start_c
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_c .. :try_end_c} :catch_12
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_9
    const/16 v8, 0x800

    :try_start_d
    new-array v9, v8, [B

    move v10, p1

    move p1, v7

    :cond_16
    :goto_a
    invoke-virtual {v6, v9, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v11

    if-eq v11, v4, :cond_18

    invoke-virtual {v3, v9, v7, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v12, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v12, :cond_16

    add-int/2addr p1, v11

    if-le p1, v10, :cond_17

    move v10, p1

    :cond_17
    int-to-float v11, p1

    int-to-float v12, v10

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    invoke-virtual {v12, v11}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(I)V

    goto :goto_a

    :cond_18
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a([B)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    invoke-virtual {p1, v1, v7}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(Ljava/lang/Object;I)V
    :try_end_d
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_d .. :try_end_d} :catch_e
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_19
    move-object p1, v5

    move-object v5, v6

    goto :goto_b

    :catchall_1
    move-exception p1

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    goto/16 :goto_23

    :catch_b
    move-exception p1

    move-object v1, v6

    move-object v6, v5

    goto/16 :goto_12

    :catch_c
    move-exception p1

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    goto/16 :goto_1a

    :catch_d
    move-exception p1

    move-object v1, v6

    move-object v6, v5

    goto/16 :goto_15

    :catch_e
    move-exception p1

    move-object v1, v6

    move-object v6, v5

    goto/16 :goto_17

    :catchall_2
    move-exception p1

    move-object v6, v5

    goto/16 :goto_23

    :catch_f
    move-exception p1

    move-object v1, v5

    goto/16 :goto_11

    :catch_10
    move-exception p1

    move-object v6, v5

    goto/16 :goto_1a

    :catch_11
    move-exception p1

    move-object v1, v5

    goto/16 :goto_14

    :catch_12
    move-exception p1

    move-object v1, v5

    goto/16 :goto_16

    :cond_1a
    move-object p1, v5

    move-object v0, p1

    :goto_b
    if-eqz v5, :cond_1b

    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    goto :goto_c

    :catch_13
    move-exception v4

    sget-object v5, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_c
    if-eqz v0, :cond_1c

    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14

    goto :goto_d

    :catch_14
    move-exception v0

    sget-object v4, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_d
    if-eqz p1, :cond_1d

    :try_start_10
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_15

    goto :goto_e

    :catch_15
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_e
    if-eqz v3, :cond_1e

    :try_start_11
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_16

    goto :goto_f

    :catch_16
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_f
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    return-object v1

    :cond_20
    add-int/lit8 v8, v8, 0x1

    :try_start_12
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_17
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto/16 :goto_8

    :catchall_3
    move-exception p1

    move-object v0, v5

    :goto_10
    move-object v6, v0

    goto/16 :goto_23

    :catch_17
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    :goto_11
    move-object v6, v1

    :goto_12
    move-object v5, v2

    goto :goto_19

    :catch_18
    move-exception p1

    move-object v0, v5

    :goto_13
    move-object v6, v0

    goto/16 :goto_1a

    :catch_19
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    :goto_14
    move-object v6, v1

    :goto_15
    move-object v5, v2

    goto/16 :goto_20

    :catch_1a
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    :goto_16
    move-object v6, v1

    :goto_17
    move-object v5, v2

    goto/16 :goto_22

    :catchall_4
    move-exception p1

    move-object v0, v5

    move-object v2, v0

    move-object v6, v2

    goto/16 :goto_23

    :catch_1b
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    :goto_18
    move-object v6, v1

    :goto_19
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    const/4 v7, -0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "network exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(ILjava/lang/String;)V

    :cond_21
    sget-object v4, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_22
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/c/f;

    invoke-direct {p1, p0, v2}, Lcom/alibaba/sdk/android/feedback/xblink/c/f;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/c/c;Ljava/lang/String;)V

    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catch_1c
    move-exception p1

    move-object v0, v5

    move-object v2, v0

    move-object v6, v2

    :goto_1a
    :try_start_14
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    const/4 v4, -0x3

    const-string v7, "ssl handshake exception"

    invoke-virtual {v1, v4, v7}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(ILjava/lang/String;)V

    :cond_23
    invoke-virtual {p1}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-eqz p1, :cond_24

    :try_start_15
    throw p1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1d
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :catch_1d
    move-exception p1

    :try_start_16
    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/c/e;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/e;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/c/c;Ljava/lang/String;)V

    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :cond_24
    if-eqz v5, :cond_25

    :try_start_17
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1e

    goto :goto_1b

    :catch_1e
    move-exception p1

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_1b
    if-eqz v0, :cond_26

    :try_start_18
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1f

    goto :goto_1c

    :catch_1f
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_1c
    if-eqz v6, :cond_27

    :try_start_19
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_20

    goto :goto_1d

    :catch_20
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_1d
    if-eqz v3, :cond_28

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_21

    goto :goto_1e

    :catch_21
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    :goto_1e
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_29
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;-><init>()V

    return-object p1

    :catchall_5
    move-exception p1

    goto :goto_23

    :catch_22
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    :goto_1f
    move-object v6, v1

    :goto_20
    :try_start_1b
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    const/4 v4, -0x2

    const-string v7, "connect file is too large"

    invoke-virtual {v2, v4, v7}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(ILjava/lang/String;)V

    :cond_2a
    throw p1

    :catch_23
    move-exception p1

    move-object v0, v5

    move-object v1, v0

    :goto_21
    move-object v6, v1

    :goto_22
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    const-string v7, "too many redirect"

    invoke-virtual {v2, v4, v7}, Lcom/alibaba/sdk/android/feedback/xblink/c/b;->a(ILjava/lang/String;)V

    :cond_2b
    throw p1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :catchall_6
    move-exception p1

    move-object v2, v5

    move-object v5, v1

    :goto_23
    if-eqz v5, :cond_2c

    :try_start_1c
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_24

    goto :goto_24

    :catch_24
    move-exception v1

    sget-object v4, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_24
    if-eqz v0, :cond_2d

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_25

    goto :goto_25

    :catch_25
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_25
    if-eqz v6, :cond_2e

    :try_start_1e
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_26

    goto :goto_26

    :catch_26
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_26
    if-eqz v3, :cond_2f

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_27

    goto :goto_27

    :catch_27
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_27
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_30
    throw p1
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/feedback/xblink/c/h;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/h;Lcom/alibaba/sdk/android/feedback/xblink/c/b;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/sdk/android/feedback/xblink/c/h;Lcom/alibaba/sdk/android/feedback/xblink/c/b;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Http connect error, request is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->c:Lcom/alibaba/sdk/android/feedback/xblink/c/b;

    const/4 p2, 0x0

    iput p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->h()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->b(Lcom/alibaba/sdk/android/feedback/xblink/c/h;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/f; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/sdk/android/feedback/xblink/c/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_2
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 v1, p2, 0x2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_4
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a:Ljava/lang/String;

    const-string v2, "HttpConnector retry Sleep has been interrupted, go ahead"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_2
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;-><init>()V

    return-object p1
.end method
