.class public Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;
.super Lcom/alibaba/sdk/android/feedback/xblink/f/a;


# instance fields
.field d:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

.field private e:J

.field private f:Lcom/alibaba/sdk/android/feedback/util/c;

.field private g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->e:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->i:Z

    const-string v0, "stop"

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->j:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->d:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    return-object p0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->e:J

    sub-long v4, v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->e:J

    const-wide/16 v0, 0x3e8

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    const-string p2, "WXMediaRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record, call this method too frequent,  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "HY_FAILED"

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->i:Z

    if-eqz v0, :cond_2

    const-string p2, "WXMediaRecorder"

    const-string v0, "mIsStarted is true "

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "HY_FAILED"

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "maxTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "miniTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string p1, "WXMediaRecorder"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/sdk/android/feedback/util/c;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->d:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/sdk/android/feedback/util/c;-><init>(Lcom/alibaba/sdk/android/feedback/util/IWxCallback;JJ)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->f:Lcom/alibaba/sdk/android/feedback/util/c;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->f:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/util/c;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->i:Z

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catch_0
    :try_start_6
    const-string v0, "WXMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record fail, params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "javascript:window.WindVane.fireEvent(\'%s\', \'%s\');"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WXCommunication.onBroadcast"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "WXMediaRecorder"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/b;)Z
    .locals 2

    const-string v0, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "start"

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->j:Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "stop"

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->j:Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->c(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/io/File;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "EOF reached while trying to read the whole file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    throw p1
.end method

.method public declared-synchronized b(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->i:Z

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->f:Lcom/alibaba/sdk/android/feedback/util/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->f:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/util/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->i:Z

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->f:Lcom/alibaba/sdk/android/feedback/util/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->f:Lcom/alibaba/sdk/android/feedback/util/c;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/util/c;->c()V

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
