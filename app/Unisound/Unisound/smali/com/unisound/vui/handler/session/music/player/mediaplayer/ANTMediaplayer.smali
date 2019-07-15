.class public Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;
.super Ljava/lang/Object;
.source "ANTMediaplayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Lcom/unisound/vui/handler/session/music/player/MusicPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$MediaplayerFactory;
    }
.end annotation


# static fields
.field private static final MEDIA_ERROR_UNKNOWN:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "ANTMediaplayer"


# instance fields
.field private bufferPercent:I

.field private callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

.field private final context:Landroid/content/Context;

.field private volatile currentPosition:I

.field private isPrepared:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playWhenReady:Z

.field private state:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->createMediaPlayerIfNeeded()V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createMediaPlayerIfNeeded()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    const-string v3, "ANTMediaplayer"

    const-string v4, "createMediaPlayerIfNeeded. needed? %b"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 158
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 162
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 163
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 164
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 165
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 166
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 170
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_1
.end method

.method private onStateChanged()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    iget v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;->onPlayStateChanged(I)V

    .line 304
    :cond_0
    return-void
.end method

.method private relaxResources(Z)V
    .locals 5
    .param p1, "releaseMediaPlayer"    # Z

    .prologue
    .line 180
    const-string v0, "ANTMediaplayer"

    const-string v1, "relaxResources. releaseMediaPlayer=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 187
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferPercent()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->bufferPercent:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->currentPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->playWhenReady:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->isPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 61
    iput p2, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->bufferPercent:I

    .line 62
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 85
    const-string v0, "ANTMediaplayer"

    const-string v1, "onCompletion from MediaPlayer"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 89
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 90
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    .line 117
    const-string v1, "ANTMediaplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media player error: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    if-eqz v1, :cond_1

    .line 119
    const-string v0, ""

    .line 120
    .local v0, "errorMessage":Ljava/lang/String;
    if-ne p2, v4, :cond_2

    .line 121
    sparse-switch p3, :sswitch_data_0

    .line 133
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_cache_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    invoke-interface {v1, v0}, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;->onPlayerError(Ljava/lang/String;)V

    .line 141
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->relaxResources(Z)V

    .line 142
    return v4

    .line 123
    .restart local v0    # "errorMessage":Ljava/lang/String;
    :sswitch_0
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_cache_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_cache_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    goto :goto_0

    .line 130
    :sswitch_2
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_format_no_supported:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 136
    :cond_2
    const/16 v1, -0x26

    if-ne p2, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_cache_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_2
        -0x3ec -> :sswitch_1
        -0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 98
    const-string v0, "ANTMediaplayer"

    const-string v1, "onPrepared from MediaPlayer"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->isPrepared:Z

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 101
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 102
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->playWhenReady:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 105
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 107
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 70
    const-string v0, "ANTMediaplayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekComplete from MediaPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->currentPosition:I

    .line 72
    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 75
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 77
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 241
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->currentPosition:I

    .line 244
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 245
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 246
    return-void
.end method

.method public play(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "playWhenReady"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 201
    iget v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 202
    :cond_0
    iput v4, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 203
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 204
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 234
    :goto_0
    return-void

    .line 206
    :cond_1
    iput-boolean p2, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->playWhenReady:Z

    .line 207
    iput-boolean v3, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->isPrepared:Z

    .line 208
    iput v3, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->bufferPercent:I

    .line 209
    invoke-direct {p0, v3}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->relaxResources(Z)V

    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->createMediaPlayerIfNeeded()V

    .line 214
    const/4 v1, 0x6

    iput v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 215
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 217
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 218
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ANTMediaplayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception playing song"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .line 294
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->relaxResources(Z)V

    .line 260
    return-void
.end method

.method public seekTo(J)V
    .locals 5
    .param p1, "position"    # J

    .prologue
    .line 263
    const-string v0, "ANTMediaplayer"

    const-string v1, "seekTo called with "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 266
    long-to-int v0, p1

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->currentPosition:I

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x6

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 270
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;

    .prologue
    .line 298
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 251
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->currentPosition:I

    .line 254
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->state:I

    .line 255
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;->onStateChanged()V

    .line 256
    return-void
.end method
