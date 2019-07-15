.class public final Lcom/alibaba/mtl/log/e/e;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/e/e$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string v1, "true"

    .line 50
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/e/e$a;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/alibaba/mtl/log/e/e$a;"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p2

    .line 66
    new-instance v4, Lcom/alibaba/mtl/log/e/e$a;

    invoke-direct {v4}, Lcom/alibaba/mtl/log/e/e$a;-><init>()V

    .line 67
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    .line 74
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12

    if-eqz v5, :cond_1c

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 86
    :cond_1
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 88
    :cond_2
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eq v1, v8, :cond_4

    if-ne v1, v7, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v9, "GET"

    .line 93
    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v9, "POST"

    .line 91
    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_11

    :goto_1
    const/4 v9, 0x0

    .line 99
    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v10, 0x2710

    .line 100
    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v10, 0xea60

    .line 101
    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v10, "Connection"

    const-string v11, "close"

    .line 102
    invoke-virtual {v5, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string v10, "Accept-Encoding"

    const-string v11, "gzip,deflate"

    .line 104
    invoke-virtual {v5, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_5
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eq v1, v8, :cond_7

    if-ne v1, v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_7
    :goto_2
    if-ne v1, v8, :cond_8

    const-string v11, "Content-Type"

    const-string v12, "multipart/form-data; boundary=GJircTeP"

    .line 113
    invoke-virtual {v5, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-ne v1, v7, :cond_9

    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    .line 115
    invoke-virtual {v5, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    if-eqz v2, :cond_10

    .line 119
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_10

    .line 120
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 123
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    .line 124
    invoke-interface {v12, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/alibaba/mtl/log/e/g;->a()Lcom/alibaba/mtl/log/e/g;

    move-result-object v12

    invoke-virtual {v12, v13, v6}, Lcom/alibaba/mtl/log/e/g;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 128
    array-length v13, v12

    move v14, v9

    :goto_4
    if-ge v14, v13, :cond_e

    aget-object v15, v12, v14

    if-ne v1, v8, :cond_b

    .line 130
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, [B

    if-eqz v10, :cond_a

    :try_start_2
    const-string v7, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :try_start_3
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v15, v6, v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v16, 0x1

    :try_start_4
    aput-object v15, v6, v16

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 134
    invoke-virtual {v11, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v6, "\r\n"

    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    move/from16 v16, v6

    :goto_5
    move-object v6, v0

    .line 137
    invoke-static {v6}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    move/from16 v16, v6

    goto :goto_6

    :cond_b
    move/from16 v16, v6

    move v6, v7

    if-ne v1, v6, :cond_d

    .line 141
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 142
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 144
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 146
    invoke-static {v6}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 150
    :cond_c
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v6, v0

    .line 152
    invoke-static {v6}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    const/4 v7, 0x3

    goto/16 :goto_4

    :cond_e
    if-ne v1, v8, :cond_f

    :try_start_7
    const-string v2, "--GJircTeP--\r\n"

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 162
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 164
    :cond_f
    :goto_7
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v10, v2

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_11

    .line 167
    array-length v2, v10

    goto :goto_9

    :cond_11
    move v2, v9

    :goto_9
    const-string v6, "Content-Length"

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_a
    :try_start_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    if-eq v1, v8, :cond_12

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    :cond_12
    if-eqz v10, :cond_13

    .line 177
    array-length v1, v10

    if-lez v1, :cond_13

    .line 178
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 179
    :try_start_9
    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 180
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v10, v1

    goto/16 :goto_17

    :catch_6
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    goto/16 :goto_15

    :cond_13
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_14

    .line 188
    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 196
    :cond_14
    :goto_c
    :try_start_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v4, Lcom/alibaba/mtl/log/e/e$a;->E:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 199
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 204
    :goto_d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_15

    :try_start_c
    const-string v2, "gzip"

    .line 206
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 207
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto :goto_13

    :catch_9
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto :goto_11

    .line 209
    :cond_15
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_e
    move-object v10, v2

    .line 211
    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/16 v2, 0x800

    .line 212
    new-array v3, v2, [B

    .line 214
    :goto_f
    invoke-virtual {v10, v3, v9, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_16

    .line 215
    invoke-virtual {v1, v3, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_f

    :cond_16
    if-eqz v10, :cond_17

    .line 228
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 234
    :cond_17
    :goto_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 235
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/mtl/log/e/e$a;->e:[B

    goto :goto_1a

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 223
    :goto_11
    :try_start_f
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v10, :cond_18

    .line 228
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_18
    :goto_12
    return-object v4

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_13
    if-eqz v10, :cond_19

    .line 228
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_14

    :catch_d
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 231
    :cond_19
    :goto_14
    throw v1

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto :goto_18

    :catch_e
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    .line 183
    :goto_15
    :try_start_12
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v10, :cond_1a

    .line 188
    :try_start_13
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_16

    :catch_f
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_16
    return-object v4

    :catchall_4
    move-exception v0

    :goto_17
    move-object v1, v0

    :goto_18
    if-eqz v10, :cond_1b

    .line 188
    :try_start_14
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    .line 190
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 192
    :cond_1b
    :goto_19
    throw v1

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 96
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v4

    :cond_1c
    :goto_1a
    return-object v4

    :catch_12
    move-exception v0

    move-object v1, v0

    .line 80
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v4

    :catch_13
    move-exception v0

    move-object v1, v0

    .line 77
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v4
.end method
