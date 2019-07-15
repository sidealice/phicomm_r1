.class public Lcom/alibaba/sdk/android/feedback/util/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = -0x1

.field public static b:I


# instance fields
.field private c:Landroid/media/MediaPlayer;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/alibaba/sdk/android/feedback/util/a;->a:I

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/util/a;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->e:I

    sget v2, Lcom/alibaba/sdk/android/feedback/util/a;->a:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/alibaba/sdk/android/feedback/util/a;->e:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/util/b;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/util/b;-><init>(Lcom/alibaba/sdk/android/feedback/util/a;)V

    invoke-virtual {p2, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-static {p2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->d:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
