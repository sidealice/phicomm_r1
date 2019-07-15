.class public Lcom/alibaba/mtl/log/a/e;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# direct methods
.method public static f()I
    .locals 3

    .line 131
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 135
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v0, "SYSTEM"

    .line 136
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SYSTEM"

    .line 137
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cdb"

    .line 138
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cdb"

    .line 139
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :catch_0
    :cond_0
    return v2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 8

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v1, "SYSTEM"

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SystemConfig"

    const/4 v2, 0x2

    .line 37
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "server system config "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "SYSTEM"

    .line 38
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p0, :cond_5

    :try_start_1
    const-string v0, "bg_interval"

    .line 54
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bg_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/alibaba/mtl/log/a/a;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    const-string v0, "fg_interval"

    .line 69
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fg_interval"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/alibaba/mtl/log/a/a;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :try_start_3
    const-string v0, "SystemConfig"

    .line 83
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "UTDC.bSendToNewLogStore:"

    aput-object v3, v1, v5

    sget-boolean v3, Lcom/alibaba/mtl/log/a;->r:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "SystemConfig"

    .line 84
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Config.BACKGROUND_PERIOD:"

    aput-object v3, v1, v5

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "SystemConfig"

    .line 85
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Config.FOREGROUND_PERIOD:"

    aput-object v2, v1, v5

    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v0, "discard"

    .line 88
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "discard"

    .line 89
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 91
    sput-boolean v4, Lcom/alibaba/mtl/log/a/a;->A:Z

    .line 92
    invoke-static {}, Lcom/alibaba/mtl/log/d/a;->a()Lcom/alibaba/mtl/log/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/d/a;->stop()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    .line 94
    sput-boolean v5, Lcom/alibaba/mtl/log/a/a;->A:Z

    .line 95
    invoke-static {}, Lcom/alibaba/mtl/log/d/a;->a()Lcom/alibaba/mtl/log/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/d/a;->start()V

    goto :goto_0

    .line 98
    :cond_3
    sget-boolean v0, Lcom/alibaba/mtl/log/a/a;->A:Z

    if-eqz v0, :cond_4

    .line 99
    sput-boolean v5, Lcom/alibaba/mtl/log/a/a;->A:Z

    .line 100
    invoke-static {}, Lcom/alibaba/mtl/log/d/a;->a()Lcom/alibaba/mtl/log/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/d/a;->start()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    :goto_0
    :try_start_5
    const-string v0, "cdb"

    .line 107
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cdb"

    .line 108
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 109
    invoke-static {}, Lcom/alibaba/mtl/log/a/e;->f()I

    move-result v0

    if-le p0, v0, :cond_5

    .line 110
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object p0

    new-instance v0, Lcom/alibaba/mtl/log/a/e$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/a/e$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/log/e/r;->b(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_3
    move-exception p0

    const-string v0, "SystemConfig"

    const-string v1, "updateconfig"

    .line 123
    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :catch_4
    :cond_5
    :goto_1
    return-void
.end method
