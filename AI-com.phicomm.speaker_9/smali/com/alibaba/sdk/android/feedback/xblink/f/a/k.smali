.class public Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;
.super Lcom/alibaba/sdk/android/feedback/xblink/f/a;


# instance fields
.field private d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

.field private e:Lcom/alibaba/sdk/android/feedback/util/a;

.field private f:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/o;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/o;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->f:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/util/a;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;Lcom/alibaba/sdk/android/feedback/util/a;)Lcom/alibaba/sdk/android/feedback/util/a;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_2

    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_2

    :catch_2
    move-exception p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :goto_0
    :try_start_3
    const-string p3, "WXMediaPlayer"

    invoke-static {p3, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_2

    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_3
    move-exception p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    :goto_1
    :try_start_5
    const-string p3, "WXMediaPlayer"

    invoke-static {p3, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_2

    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string p2, "WXMediaPlayer"

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_3

    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception p2

    const-string p3, "WXMediaPlayer"

    invoke-static {p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->f:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    return-object p0
.end method

.method static synthetic d(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;)Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audioFile"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "WXMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WXMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WXMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alibaba/sdk/android/feedback/util/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    if-nez p2, :cond_1

    new-instance p2, Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/feedback/util/a;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    :cond_1
    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/util/a;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/feedback/util/a;->a()V

    :cond_2
    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->f:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/sdk/android/feedback/util/a;->a(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/l;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    const-string v0, "WXMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay fail, params: "

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

    :catch_0
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

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b(Lcom/alibaba/sdk/android/feedback/xblink/f/b;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->e:Lcom/alibaba/sdk/android/feedback/util/a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/util/a;->a()V

    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/k;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
