.class public Lcom/phicomm/speaker/f/l;
.super Ljava/lang/Object;
.source "GetPhotoUtils.java"


# direct methods
.method public static a(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/v;->c()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "\u521b\u5efa\u7167\u7247\u8def\u5f84\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e94\u7528\u8bfb\u5199\u6743\u9650\u6216\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 44
    invoke-static {p0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u521b\u5efa\u7167\u7247\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e94\u7528\u6743\u9650\u6216\u7a0d\u540e\u518d\u8bd5"

    .line 52
    invoke-static {v1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string v1, "\u521b\u5efa\u7167\u7247\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u5e94\u7528\u8bfb\u5199\u6743\u9650\u6216\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 56
    invoke-static {v1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 59
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/phicomm/speaker/f/o;->a(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "uri"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "intent"

    .line 61
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v1
.end method

.method public static a(Landroid/app/Activity;IILandroid/content/Intent;Lcom/phicomm/speaker/c/d;)V
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, -0x1

    if-ne p2, p0, :cond_1

    .line 192
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 194
    invoke-interface {p4, p0}, Lcom/phicomm/speaker/c/d;->b(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;IILandroid/net/Uri;Lcom/phicomm/speaker/c/d;)V
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, -0x1

    if-ne p2, p0, :cond_1

    if-eqz p4, :cond_1

    .line 176
    invoke-interface {p4, p3}, Lcom/phicomm/speaker/c/d;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .line 77
    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/n;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/CropImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "path"

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 80
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Lcom/phicomm/speaker/c/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/n;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 97
    :cond_2
    invoke-static {p0}, Ltop/zibin/luban/b;->a(Landroid/content/Context;)Ltop/zibin/luban/b$a;

    move-result-object p0

    .line 98
    invoke-virtual {p0, v0}, Ltop/zibin/luban/b$a;->a(Ljava/io/File;)Ltop/zibin/luban/b$a;

    move-result-object p0

    new-instance p1, Lcom/phicomm/speaker/f/l$1;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/f/l$1;-><init>(Lcom/phicomm/speaker/c/d;)V

    .line 99
    invoke-virtual {p0, p1}, Ltop/zibin/luban/b$a;->a(Ltop/zibin/luban/c;)Ltop/zibin/luban/b$a;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ltop/zibin/luban/b$a;->a()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/phicomm/speaker/c/d;)V
    .locals 6

    const-string p0, ""

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 131
    invoke-interface {p2, v1}, Lcom/phicomm/speaker/c/d;->a(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x64

    .line 139
    :try_start_2
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1

    .line 142
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/phicomm/speaker/f/d;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_2

    .line 151
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 157
    :goto_2
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    move-object p0, v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v0, v1

    move-object v1, p1

    move-object p1, v0

    .line 147
    :goto_4
    :try_start_4
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_4

    .line 151
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 157
    :goto_6
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 160
    :cond_5
    :goto_7
    invoke-interface {p2, p0}, Lcom/phicomm/speaker/c/d;->a(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p0

    :goto_8
    if-eqz p1, :cond_6

    .line 151
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception p1

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    .line 157
    :goto_a
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 158
    :cond_7
    :goto_b
    throw p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/o;->a()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;IILandroid/content/Intent;Lcom/phicomm/speaker/c/d;)V
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, -0x1

    if-ne p2, p0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 212
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/phicomm/speaker/c/d;->c(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
