.class public Lcom/unisound/common/u;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7530

    invoke-static {p0, v0}, Lcom/unisound/common/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const-string v5, ""

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v1, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, ""
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v5

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    :try_start_6
    const-string v1, "{}"
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v5

    move-object v2, v3

    move-object v4, v3

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v5

    move-object v2, v3

    move-object v4, v3

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_9

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_b
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_9
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_4

    :catch_a
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catch_b
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catch_c
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_3

    :catch_d
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unisound/common/u;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7530

    invoke-static {p0, p1, v0}, Lcom/unisound/common/u;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v1, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, ""

    move-object v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_2
    const-string v1, "{}"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Error"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Lcom/unisound/common/u;->b(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;[BI)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
