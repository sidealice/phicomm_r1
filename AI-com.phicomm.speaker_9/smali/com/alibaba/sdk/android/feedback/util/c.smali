.class public Lcom/alibaba/sdk/android/feedback/util/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Landroid/media/MediaRecorder;

.field private c:Z

.field private d:J

.field private e:Landroid/os/Handler;

.field private final f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

.field private final g:J

.field private final h:J

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/feedback/util/IWxCallback;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->d:J

    new-instance v0, Lcom/alibaba/sdk/android/feedback/util/e;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/feedback/util/e;-><init>(Lcom/alibaba/sdk/android/feedback/util/c;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->i:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    iput-wide p2, p0, Lcom/alibaba/sdk/android/feedback/util/c;->g:J

    mul-long/2addr p4, v0

    iput-wide p4, p0, Lcom/alibaba/sdk/android/feedback/util/c;->h:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->b:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Ljava/io/File;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {p0, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/feedback/util/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->c:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/util/c;->f()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/alibaba/sdk/android/feedback/util/IWxCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/feedback/util/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->b:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic d(Lcom/alibaba/sdk/android/feedback/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/util/c;->g()V

    return-void
.end method

.method private e()V
    .locals 8

    const-string v0, "ChattingRecorder"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->c:Z

    if-nez v0, :cond_0

    const-string v0, "ChattingRecorder"

    const-string v1, "not start"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->b:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->b:Landroid/media/MediaRecorder;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/sdk/android/feedback/util/c;->d:J

    sub-long v6, v2, v4

    iget-wide v2, p0, Lcom/alibaba/sdk/android/feedback/util/c;->h:J

    cmp-long v4, v6, v2

    if-gez v4, :cond_2

    const-string v0, "AudioRecordingFailed"

    const-string v1, "RecordTimeShort"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RecordTimeShort"

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/util/c;->b(Ljava/lang/String;)V

    const-string v0, "ChattingRecorder"

    const-string v1, "RecordTimeShort"

    :goto_1
    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Ljava/io/File;

    if-nez v2, :cond_3

    const-string v0, "AudioRecordingFailed"

    const-string v1, "createAudioFile fail"

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createAudioFile fail"

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/feedback/util/c;->b(Ljava/lang/String;)V

    const-string v0, "ChattingRecorder"

    const-string v1, "createAudioFile fail"

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    if-eqz v2, :cond_4

    const-string v2, "ChattingRecorder"

    const-string v3, "stopRecord callback"

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AudioRecordingSuccess"

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/feedback/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-wide/16 v3, 0x3e8

    div-long/2addr v6, v3

    long-to-int v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/feedback/util/IWxCallback;->onSuccess([Ljava/lang/Object;)V

    const-string v0, "ChattingRecorder"

    const-string v1, "onSuccess"

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/util/c;->d()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/sdk/android/feedback/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/util/c;->e()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/sdk/android/feedback/util/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/sdk/android/feedback/util/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 3

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/util/c;->f()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->f:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    const/4 v1, 0x0

    const-string v2, "recordExceptionCaught"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/util/IWxCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/sdk/android/feedback/util/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/util/c;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChattingRecorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/util/d;-><init>(Lcom/alibaba/sdk/android/feedback/util/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/c;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/feedback/util/c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/util/f;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/util/f;-><init>(Lcom/alibaba/sdk/android/feedback/util/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/util/g;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/util/g;-><init>(Lcom/alibaba/sdk/android/feedback/util/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/util/h;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/util/h;-><init>(Lcom/alibaba/sdk/android/feedback/util/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
