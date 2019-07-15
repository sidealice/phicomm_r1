.class public Lcom/unisound/common/az;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VprHttpClient : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "create filedir failure!"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/unisound/common/az;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x7530

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_9

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    :try_start_2
    invoke-static {v5}, Lcom/unisound/common/az;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v3, v4

    :goto_3
    const/4 v5, 0x2

    :try_start_5
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "VprHttpClient : "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "getVPRAudio wrong!"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_4
    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v4

    move-object v3, v4

    :goto_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v5, v4

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v1

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v4, v5

    move-object v8, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :cond_9
    move-object v3, v4

    move-object v5, v4

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
