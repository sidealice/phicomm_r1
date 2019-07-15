.class public Lcom/xiaomi/channel/commonutils/android/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/a/a;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/a/a;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/g/d;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/g/d;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/OutputStream;)V

    return v0

    :cond_0
    move-object p2, v1

    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, 0x1

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/OutputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p2, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v1

    move-object v3, p2

    :goto_0
    move-object v1, p0

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, v1

    move-object v3, p2

    :goto_1
    :try_start_5
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/OutputStream;)V

    return v0

    :catchall_4
    move-exception p1

    move-object p0, v1

    :goto_2
    move-object v1, v3

    :goto_3
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/a/a;->a(Ljava/io/OutputStream;)V

    throw p1
.end method
