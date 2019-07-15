.class public Lcom/unisound/vui/common/file/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "Pcm2WavUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeWavFile: recordingDir "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    monitor-enter p2

    move v5, v2

    move v1, v2

    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_f

    array-length v0, v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    new-instance v0, Lcom/unisound/vui/common/file/b;

    invoke-direct {v0}, Lcom/unisound/vui/common/file/b;-><init>()V

    add-int/lit8 v5, v1, 0x24

    iput v5, v0, Lcom/unisound/vui/common/file/b;->b:I

    iput v6, v0, Lcom/unisound/vui/common/file/b;->e:I

    iput-short v6, v0, Lcom/unisound/vui/common/file/b;->k:S

    iput-short v3, v0, Lcom/unisound/vui/common/file/b;->g:S

    iput-short v3, v0, Lcom/unisound/vui/common/file/b;->f:S

    const/16 v5, 0x3e80

    iput v5, v0, Lcom/unisound/vui/common/file/b;->h:I

    iget-short v5, v0, Lcom/unisound/vui/common/file/b;->g:S

    iget-short v6, v0, Lcom/unisound/vui/common/file/b;->k:S

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, v0, Lcom/unisound/vui/common/file/b;->j:S

    iget-short v5, v0, Lcom/unisound/vui/common/file/b;->j:S

    iget v6, v0, Lcom/unisound/vui/common/file/b;->h:I

    mul-int/2addr v5, v6

    iput v5, v0, Lcom/unisound/vui/common/file/b;->i:I

    iput v1, v0, Lcom/unisound/vui/common/file/b;->m:I

    :try_start_1
    invoke-virtual {v0}, Lcom/unisound/vui/common/file/b;->a()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v7, v0

    :goto_3
    if-eqz v7, :cond_e

    array-length v0, v7

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    :goto_4
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v5, v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v7, :cond_2

    const/4 v0, 0x0

    :try_start_4
    array-length v4, v7

    invoke-virtual {v1, v7, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_2
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    monitor-enter p2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v4, v2

    :goto_6
    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v7, v4

    goto :goto_3

    :cond_3
    move-object v0, v4

    goto :goto_5

    :cond_4
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :try_start_8
    const-string v0, "Pcm2WavUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeRecordFile: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_6
    :goto_7
    if-eqz v5, :cond_d

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    move v2, v3

    :cond_7
    :goto_8
    return v2

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catch_1
    move-exception v0

    move-object v4, v5

    :goto_9
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v1, :cond_8

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_8
    :goto_a
    if-eqz v4, :cond_7

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    goto :goto_8

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_b
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v1, :cond_9

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    :cond_9
    :goto_c
    if-eqz v5, :cond_7

    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_d
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v1, :cond_a

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    :cond_a
    :goto_e
    if-eqz v5, :cond_7

    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_f
    if-eqz v1, :cond_b

    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    :cond_b
    :goto_10
    if-eqz v5, :cond_c

    :try_start_17
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    :cond_c
    :goto_11
    throw v0

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v1, v4

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v5, v4

    goto :goto_f

    :catch_e
    move-exception v0

    move-object v1, v4

    goto :goto_d

    :catch_f
    move-exception v0

    goto :goto_d

    :catch_10
    move-exception v0

    move-object v1, v4

    goto :goto_b

    :catch_11
    move-exception v0

    goto :goto_b

    :catch_12
    move-exception v0

    move-object v1, v4

    goto/16 :goto_9

    :catch_13
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto/16 :goto_9

    :cond_d
    move v2, v3

    goto/16 :goto_8

    :cond_e
    move-object v6, v4

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto/16 :goto_2
.end method
