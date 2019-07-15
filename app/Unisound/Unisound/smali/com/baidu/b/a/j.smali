.class public Lcom/baidu/b/a/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/b/a/j;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const-string v1, "wifi"

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cmwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uniwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3gwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ctwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ctwap"

    goto :goto_0

    :cond_4
    const-string v0, "cmwap"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v2

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 12

    const/16 v11, 0xc8

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/16 v10, -0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https Post start,url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "httpsPost request paramters is null."

    invoke-static {v0}, Lcom/baidu/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/baidu/b/a/j;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/baidu/b/a/j;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v4

    if-ne v11, v4, :cond_14

    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v1, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    if-eq v8, v5, :cond_4

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    move v3, v4

    :goto_2
    :try_start_6
    sget-boolean v4, Lcom/baidu/b/a/d;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "httpsPost parse failed;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_1
    const/16 v4, -0xb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpsPost failed,IOException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v0, v7

    :goto_3
    if-eqz v6, :cond_3

    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_3
    :goto_4
    if-eqz v0, :cond_f

    if-eq v11, v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost failed,statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost failed,statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_5
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move v3, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move v3, v5

    :goto_6
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    throw v0
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catch_1
    move-exception v0

    move-object v2, v6

    :goto_7
    :try_start_c
    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_8
    const/16 v1, -0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "httpsPost failed,MalformedURLException:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v2, :cond_11

    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move v0, v7

    goto/16 :goto_4

    :catch_2
    move-exception v1

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    move v0, v7

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move v3, v5

    move-object v6, v2

    :goto_8
    :try_start_e
    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    const/16 v1, -0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpsPost failed,IOException:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v6, :cond_11

    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move v0, v7

    goto/16 :goto_4

    :catch_5
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    move v0, v7

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move v3, v5

    move-object v6, v2

    :goto_9
    :try_start_10
    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    const/16 v1, -0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpsPost failed,Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v6, :cond_11

    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    move v0, v7

    goto/16 :goto_4

    :catch_7
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    move v0, v7

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v2

    :goto_a
    if-eqz v6, :cond_e

    :try_start_12
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    :cond_e
    :goto_b
    throw v0

    :catch_8
    move-exception v1

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :cond_f
    iget-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "httpsPost failed,mResult is null"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const-string v0, "httpsPost failed,internal error"

    invoke-static {v5, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost success end,parse result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v6, v2

    goto :goto_a

    :catch_9
    move-exception v0

    move v3, v5

    goto :goto_9

    :catch_a
    move-exception v0

    move v3, v4

    goto/16 :goto_9

    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    move v3, v5

    goto/16 :goto_8

    :catch_d
    move-exception v0

    move v3, v4

    goto/16 :goto_8

    :catch_e
    move-exception v0

    goto/16 :goto_8

    :catch_f
    move-exception v0

    move v3, v5

    goto/16 :goto_7

    :catch_10
    move-exception v0

    move v3, v5

    move-object v2, v6

    goto/16 :goto_7

    :catch_11
    move-exception v0

    move v3, v4

    move-object v2, v6

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    move v3, v5

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    move v3, v4

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v3

    move v3, v4

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    goto/16 :goto_6

    :catch_12
    move-exception v0

    move-object v1, v2

    move v3, v5

    goto/16 :goto_2

    :catch_13
    move-exception v0

    move v3, v5

    goto/16 :goto_2

    :catch_14
    move-exception v0

    move v3, v4

    goto/16 :goto_2

    :cond_11
    move v0, v7

    goto/16 :goto_4

    :cond_12
    move v0, v7

    goto/16 :goto_3

    :cond_13
    move v3, v4

    goto/16 :goto_3

    :cond_14
    move-object v3, v2

    goto/16 :goto_5
.end method

.method private static b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljavax/net/ssl/HttpsURLConnection;
    .locals 8

    const/16 v7, -0xb

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/b/a/j;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/b/a/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v0, "Current network is not available."

    invoke-static {v0}, Lcom/baidu/b/a/d;->c(Ljava/lang/String;)V

    const/16 v0, -0xa

    const-string v2, "Current network is not available."

    invoke-static {v0, v2}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const-string v3, "cmwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "10.0.0.172"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "Auth server could not be parsed as a URL."

    invoke-static {v7, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "10.0.0.200"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_5
    const-string v0, "Init httpsurlconnection failed."

    invoke-static {v7, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private c(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/b/a/j;->c(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/b/a/j;->b()Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "syncConnect failed,httpsURLConnection is null"

    invoke-static {v0}, Lcom/baidu/b/a/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/baidu/b/a/j;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    iget-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a()Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "checkNetwork start"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/b/a/j;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "checkNetwork end"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
