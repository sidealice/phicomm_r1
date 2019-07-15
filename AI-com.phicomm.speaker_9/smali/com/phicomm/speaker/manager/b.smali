.class public Lcom/phicomm/speaker/manager/b;
.super Ljava/lang/Object;
.source "LogManager.java"


# direct methods
.method public static a()V
    .locals 1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/manager/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v1, 0xa00000

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 122
    invoke-static {}, Lcom/phicomm/speaker/manager/b;->d()V

    const-string p0, "testxlog"

    const-string v0, "Log file\'s size is bigger than 10M "

    .line 123
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_1
    new-instance v1, Lcom/phicomm/speaker/model/g;

    invoke-direct {v1}, Lcom/phicomm/speaker/model/g;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/manager/b$1;

    invoke-direct {v3}, Lcom/phicomm/speaker/manager/b$1;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Lcom/phicomm/speaker/model/g;->a(Ljava/io/File;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    const-string v0, "testxlog"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpload ing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/phicomm/speaker/manager/b;->b(Z)V

    return-void
.end method

.method static final synthetic b()V
    .locals 2

    const-string v0, "testxlog"

    const-string v1, "start business doInThread"

    .line 58
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/phicomm/speaker/f/ae;->c()V

    .line 60
    invoke-static {}, Lcom/phicomm/speaker/manager/b;->d()V

    .line 61
    invoke-static {}, Lcom/phicomm/speaker/manager/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/phicomm/speaker/manager/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Z)V
    .locals 7

    .line 148
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/phicomm/speaker/f/v;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 149
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    const-string v4, "testxlog"

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "afterUpload delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " * "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static c()V
    .locals 2

    .line 57
    const-class v0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/common/b;

    sget-object v1, Lcom/phicomm/speaker/manager/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d()V
    .locals 6

    .line 71
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/phicomm/speaker/f/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xlog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/f/v;->e()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    return-object v0

    .line 95
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/f/v;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PhiSpeaker2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Lcom/phicomm/speaker/f/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    .line 101
    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/f/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "testxlog"

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zipDir finish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 105
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method
