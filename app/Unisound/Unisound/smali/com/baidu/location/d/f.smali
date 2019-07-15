.class Lcom/baidu/location/d/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/d/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-static {v0}, Lcom/baidu/location/d/e;->a(Lcom/baidu/location/d/e;)V

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-virtual {v0}, Lcom/baidu/location/d/e;->a()V

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iget v0, v0, Lcom/baidu/location/d/e;->i:I

    move-object v1, v2

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iget-object v3, v3, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    sget v1, Lcom/baidu/location/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v1, Lcom/baidu/location/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0x400

    :try_start_3
    new-array v7, v7, [B

    :goto_1
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v11, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    :goto_2
    :try_start_4
    sget-object v7, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v8, "NetworkCommunicationException!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    if-eqz v0, :cond_c

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move v0, v5

    move-object v1, v3

    :goto_4
    if-eqz v0, :cond_a

    :cond_2
    if-gtz v4, :cond_b

    sget v0, Lcom/baidu/location/d/e;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/location/d/e;->o:I

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iput-object v2, v0, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-virtual {v0, v5}, Lcom/baidu/location/d/e;->a(Z)V

    :goto_5
    return-void

    :cond_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v7, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/location/d/e;->a(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v7, v3

    move-object v3, v1

    move v1, v6

    :goto_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v7, :cond_5

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    :goto_7
    if-eqz v3, :cond_d

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_4

    :cond_6
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v1, v5

    move-object v3, v2

    move-object v7, v2

    goto :goto_6

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    move-object v1, v3

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v3, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_8
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_9
    if-eqz v2, :cond_9

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_9
    :goto_a
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_0

    :cond_b
    sput v5, Lcom/baidu/location/d/e;->o:I

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    move-object v12, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v1, v2

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_2

    :catch_8
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_2

    :catch_9
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_2

    :cond_c
    move v0, v5

    move-object v1, v3

    goto/16 :goto_4

    :cond_d
    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_4
.end method
