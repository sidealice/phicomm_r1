.class public final Lcom/phicomm/speaker/zxing/a;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private final b:Landroid/app/Activity;

.field private c:Landroid/media/MediaPlayer;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/a;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 7

    .line 90
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 98
    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 p1, 0x3

    .line 99
    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const p1, 0x3dcccccd    # 0.1f

    .line 101
    invoke-virtual {v6, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 102
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    return-object v6

    :catchall_0
    move-exception v0

    .line 96
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 105
    sget-object v0, Lcom/phicomm/speaker/zxing/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 2

    const-string v0, "preferences_play_beep"

    const/4 v1, 0x1

    .line 78
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "audio"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 82
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/zxing/a;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phicomm/speaker/zxing/a;->d:Z

    const-string v1, "preferences_vibrate"

    const/4 v2, 0x0

    .line 58
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/zxing/a;->e:Z

    .line 59
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/zxing/a;->a(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 55
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/a;->e:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/a;->c:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 125
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    monitor-enter p0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 115
    :try_start_0
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/a;->close()V

    .line 119
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 121
    monitor-exit p0

    return p1

    .line 112
    :goto_1
    monitor-exit p0

    throw p1
.end method
