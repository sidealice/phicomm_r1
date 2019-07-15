.class public Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;
.super Ljava/lang/Object;
.source "RingingPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memolog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public play(IZ)V
    .locals 1
    .param p1, "rawId"    # I
    .param p2, "looping"    # Z

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->play(IZLandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 57
    return-void
.end method

.method public play(IZLandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 8
    .param p1, "rawId"    # I
    .param p2, "looping"    # Z
    .param p3, "completeCallback"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 60
    iput-object p3, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 61
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 62
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaPlayer has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 71
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 72
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer$2;

    invoke-direct {v1, p0}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer$2;-><init>(Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 78
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 79
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 80
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v6

    .line 87
    .local v6, "e":Ljava/io/IOException;
    sget-object v0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 82
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 86
    :catch_2
    move-exception v6

    .line 87
    .local v6, "e":Ljava/io/IOException;
    sget-object v0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 85
    :try_start_4
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 88
    :goto_1
    throw v0

    .line 86
    :catch_3
    move-exception v6

    .line 87
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public play(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "toneUri"    # Landroid/net/Uri;
    .param p2, "isLooping"    # Z

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 37
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer$1;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer$1;-><init>(Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 43
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 44
    sget-object v1, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " memoRinging play uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 46
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 47
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 48
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 31
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 99
    :cond_1
    return-void
.end method
