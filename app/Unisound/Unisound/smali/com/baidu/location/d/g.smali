.class Lcom/baidu/location/d/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/location/d/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/d/e;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    iput-object p2, p0, Lcom/baidu/location/d/g;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/baidu/location/d/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    invoke-static {v0}, Lcom/baidu/location/d/e;->a(Lcom/baidu/location/d/e;)V

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    invoke-virtual {v0}, Lcom/baidu/location/d/e;->a()V

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    iget v0, v0, Lcom/baidu/location/d/e;->i:I

    move-object v3, v2

    move v5, v0

    :goto_0
    if-lez v5, :cond_4

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    iget-object v0, v0, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    iget-object v0, v0, Lcom/baidu/location/d/e;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    move-object v4, v3

    move-object v3, v2

    :goto_2
    :try_start_1
    sget-object v8, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v9, "NetworkCommunicationException!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_3
    move v0, v6

    move-object v3, v4

    :goto_5
    if-eqz v0, :cond_16

    :cond_4
    if-gtz v5, :cond_17

    sget v0, Lcom/baidu/location/d/e;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/location/d/e;->o:I

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    iput-object v2, v0, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    invoke-virtual {v0, v6}, Lcom/baidu/location/d/e;->a(Z)V

    :goto_6
    return-void

    :cond_5
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    const-string v1, "POST"

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

    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/d/g;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Host"

    iget-object v3, p0, Lcom/baidu/location/d/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_19

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v8, "gzip"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_7
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/16 v8, 0x400

    :try_start_a
    new-array v8, v8, [B

    :goto_8
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    :catch_1
    move-exception v8

    move-object v12, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "utf-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, v8, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/baidu/location/d/g;->b:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/location/d/e;->m:[B

    :cond_9
    iget-object v8, p0, Lcom/baidu/location/d/g;->c:Lcom/baidu/location/d/e;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/baidu/location/d/e;->a(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_12
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v8, v4

    move-object v4, v3

    move v3, v7

    :goto_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    if-eqz v1, :cond_b

    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    :cond_b
    :goto_a
    if-eqz v8, :cond_c

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_c
    :goto_b
    if-eqz v4, :cond_d

    :try_start_d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :cond_d
    move v12, v3

    move-object v3, v0

    move v0, v12

    goto/16 :goto_5

    :catch_2
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v9, "close os IOException!"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_3
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v8, "close is IOException!"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_4
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v4, "close baos IOException!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v3

    move-object v3, v0

    move v0, v12

    goto/16 :goto_5

    :catch_5
    move-exception v0

    sget-object v0, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v8, "close os IOException!"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_6
    move-exception v0

    sget-object v0, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v3, "close is IOException!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_7
    move-exception v0

    sget-object v0, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v1, "close baos IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    move-object v3, v4

    goto/16 :goto_5

    :catch_8
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_c
    :try_start_e
    sget-object v8, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v9, "NetworkCommunicationError!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    if-eqz v1, :cond_f

    :try_start_f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :cond_f
    :goto_d
    if-eqz v4, :cond_10

    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :cond_10
    :goto_e
    if-eqz v3, :cond_11

    :try_start_11
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :cond_11
    move-object v3, v0

    move v0, v6

    goto/16 :goto_5

    :catch_9
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v8, "close os IOException!"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_a
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v4, "close is IOException!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_b
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v3, "close baos IOException!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    move v0, v6

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    move-object v3, v2

    move-object v4, v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_f
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v2, :cond_13

    :try_start_12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    :cond_13
    :goto_10
    if-eqz v4, :cond_14

    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :cond_14
    :goto_11
    if-eqz v3, :cond_15

    :try_start_14
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    :cond_15
    :goto_12
    throw v0

    :catch_c
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v2, "close os IOException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catch_d
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v2, "close is IOException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :catch_e
    move-exception v1

    sget-object v1, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v2, "close baos IOException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_16
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto/16 :goto_0

    :cond_17
    sput v6, Lcom/baidu/location/d/e;->o:I

    goto/16 :goto_6

    :catchall_1
    move-exception v3

    move-object v4, v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_f

    :catchall_2
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_f

    :catchall_3
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_f

    :catchall_4
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_f

    :catchall_5
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    move-object v13, v1

    move-object v1, v4

    move-object v4, v3

    move-object v3, v13

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v4, v2

    move-object v1, v3

    move-object v3, v2

    goto :goto_f

    :catch_f
    move-exception v3

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_c

    :catch_10
    move-exception v4

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_c

    :catch_11
    move-exception v3

    move-object v3, v2

    goto/16 :goto_c

    :catch_12
    move-exception v8

    goto/16 :goto_c

    :catch_13
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    move-object v0, v3

    move-object v3, v2

    goto/16 :goto_c

    :catch_14
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    move-object v4, v0

    move-object v0, v2

    goto/16 :goto_2

    :catch_15
    move-exception v3

    move-object v3, v2

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :catch_16
    move-exception v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :catch_17
    move-exception v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :cond_18
    move-object v4, v3

    goto/16 :goto_7

    :cond_19
    move v3, v6

    move-object v4, v2

    move-object v8, v2

    goto/16 :goto_9
.end method
