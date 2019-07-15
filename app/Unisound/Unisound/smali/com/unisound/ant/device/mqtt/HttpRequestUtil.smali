.class public Lcom/unisound/ant/device/mqtt/HttpRequestUtil;
.super Ljava/lang/Object;
.source "HttpRequestUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    const/16 v0, 0x7530

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendGet(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 64
    :cond_0
    const/4 v11, 0x0

    .line 120
    :goto_0
    return-object v11

    .line 67
    :cond_1
    const/4 v4, 0x0

    .line 68
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 69
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v9, "result":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    .local v8, "realUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 75
    const-string v11, "GET"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    const-string v11, "accept"

    const-string v12, "*/*"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v11, "connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 79
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 81
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 82
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 84
    .local v10, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v10, :cond_2

    .line 87
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    .line 91
    invoke-virtual {v1, v6, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 104
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "realUrl":Ljava/net/URL;
    .end local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    if-eqz v4, :cond_3

    .line 109
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 111
    :cond_3
    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 113
    const/4 v1, 0x0

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 96
    .restart local v8    # "realUrl":Ljava/net/URL;
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 102
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 104
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 108
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 109
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 111
    :cond_7
    if-eqz v1, :cond_8

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 113
    const/4 v1, 0x0

    :cond_8
    move-object v4, v5

    .line 117
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 115
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 116
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 118
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 115
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "realUrl":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 116
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 108
    :goto_5
    if-eqz v4, :cond_9

    .line 109
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 111
    :cond_9
    if-eqz v1, :cond_a

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 113
    const/4 v1, 0x0

    .line 117
    :cond_a
    :goto_6
    throw v11

    .line 115
    :catch_4
    move-exception v3

    .line 116
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 107
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "realUrl":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public static sendGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x7530

    invoke-static {p0, v0, p1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    const/16 v0, 0x7530

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 178
    :cond_0
    const/4 v13, 0x0

    .line 245
    :goto_0
    return-object v13

    .line 181
    :cond_1
    const/4 v8, 0x0

    .line 182
    .local v8, "out":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    .line 183
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 184
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v11, "result":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, "realUrl":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 189
    const-string v13, "POST"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    const-string v13, "accept"

    const-string v14, "*/*"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v13, "connection"

    const-string v14, "close"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 195
    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 196
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 197
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 198
    .local v12, "value":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 199
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2

    if-eqz v12, :cond_2

    .line 201
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2

    .line 205
    invoke-virtual {v1, v6, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 226
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "realUrl":Ljava/net/URL;
    .end local v12    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u53d1\u9001POST\u8bf7\u6c42\u8fc7\u7a0b\u4e2d\u51fa\u9519\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 230
    :goto_3
    if-eqz v8, :cond_3

    .line 231
    :try_start_2
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_3
    if-eqz v4, :cond_4

    .line 234
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 236
    :cond_4
    if-eqz v1, :cond_5

    .line 237
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 238
    const/4 v1, 0x0

    .line 242
    :cond_5
    :goto_4
    throw v13

    .line 210
    .restart local v10    # "realUrl":Ljava/net/URL;
    :cond_6
    const/4 v13, 0x1

    :try_start_3
    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 211
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 214
    new-instance v9, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .end local v8    # "out":Ljava/io/PrintWriter;
    .local v9, "out":Ljava/io/PrintWriter;
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 221
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 224
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 226
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto :goto_2

    .line 230
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :cond_7
    if-eqz v9, :cond_8

    .line 231
    :try_start_6
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_8
    if-eqz v5, :cond_9

    .line 234
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 236
    :cond_9
    if-eqz v1, :cond_a

    .line 237
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 238
    const/4 v1, 0x0

    .line 245
    :cond_a
    :goto_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 240
    :catch_2
    move-exception v3

    .line 241
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 240
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v10    # "realUrl":Ljava/net/URL;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    :catch_3
    move-exception v3

    .line 241
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 229
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    .restart local v10    # "realUrl":Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .line 226
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto/16 :goto_2
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x7530

    invoke-static {p0, p1, v0, p2}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
