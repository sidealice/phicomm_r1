.class public Lcom/phicomm/speaker/player/dlna/center/DMRCenter;
.super Ljava/lang/Object;
.source "DMRCenter.java"

# interfaces
.implements Lcom/phicomm/speaker/player/dlna/jni/PlatinumReflection$ActionReflectionListener;
.implements Lcom/phicomm/speaker/player/dlna/center/IDMRAction;


# static fields
.field public static final CUR_MEDIA_TYPE_MUSCI:I = 0x1

.field public static final CUR_MEDIA_TYPE_PICTURE:I = 0x3

.field public static final CUR_MEDIA_TYPE_VIDEO:I = 0x2

.field private static final DELAYTIME:I = 0xc8

.field private static final MSG_SEND_STOPCMD:I = 0x4

.field private static final MSG_START_MUSICPLAY:I = 0x1

.field private static final MSG_START_PICPLAY:I = 0x2

.field private static final MSG_START_VIDOPLAY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DMRCenter"

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurMediaInfoType:I

.field private mHandler:Landroid/os/Handler;

.field private mImageMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

.field private mMusicMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

.field private mVideoMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    .line 270
    new-instance v0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter$1;-><init>(Lcom/phicomm/speaker/player/dlna/center/DMRCenter;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/dlna/center/DMRCenter;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/dlna/center/DMRCenter;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->startPlayMusic(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/dlna/center/DMRCenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/dlna/center/DMRCenter;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/phicomm/speaker/player/dlna/util/CommonLog;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-object v0
.end method

.method private clearDelayMsg()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearDelayMsg(I)V

    .line 255
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearDelayMsg(I)V

    .line 256
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearDelayMsg(I)V

    .line 257
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearDelayMsg(I)V

    .line 258
    return-void
.end method

.method private clearDelayMsg(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method

.method private clearState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mMusicMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 233
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mVideoMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 234
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mImageMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 235
    return-void
.end method

.method private delayToPlayMusic(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 4
    .param p1, "mediaInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearDelayMsg()V

    .line 243
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private delayToStop()V
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearDelayMsg()V

    .line 250
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    return-void
.end method

.method private startPlayMusic(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p1, "mediaInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 295
    sget-object v0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "startPlayMusic"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->d(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendPlayBrocast(Landroid/content/Context;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 297
    return-void
.end method


# virtual methods
.method public isAudioFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".flv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoFormat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onActionInvoke(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 39
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 66
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v1, "unrognized cmd!!!"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 41
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderAvTransport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :pswitch_2
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderPlay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderPause(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderStop(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderSeek(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderSetMute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderSetVolume(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderGetPosition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 64
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->onRenderGetVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onRenderAvTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 104
    if-nez p2, :cond_0

    .line 105
    sget-object v1, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    const-string v2, "meteData = null!!!"

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 110
    :cond_1
    sget-object v1, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", it\'s invalid..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "DMRCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p2}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModelFactory;->createFromMetaData(Ljava/lang/String;)Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    move-result-object v0

    .line 115
    .local v0, "mediaInfo":Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->setUrl(Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isAudioItem(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const-string v1, "DMRCenter"

    const-string v2, "music"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mMusicMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 119
    iput v5, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isVideoItem(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    const-string v1, "DMRCenter"

    const-string v2, "video"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mVideoMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 123
    iput v4, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    goto :goto_0

    .line 124
    :cond_4
    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isImageItem(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    const-string v1, "DMRCenter"

    const-string v2, "picture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mImageMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 127
    iput v6, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    goto/16 :goto_0

    .line 130
    :cond_5
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->isVideoFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    const-string v1, "DMRCenter"

    const-string v2, "--video"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mVideoMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 133
    iput v4, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    goto/16 :goto_0

    .line 134
    :cond_6
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->isAudioFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    const-string v1, "DMRCenter"

    const-string v2, "--music"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mMusicMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 137
    iput v5, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    goto/16 :goto_0

    .line 138
    :cond_7
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->isImageFormat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    const-string v1, "DMRCenter"

    const-string v2, "--picture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mImageMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .line 141
    iput v6, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    goto/16 :goto_0

    .line 143
    :cond_8
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    const-string v2, "unSupport media type!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onRenderGetPosition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendGetPositionBrocast(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->formatTimeFromMSInt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRenderGetVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getCurrentVolume(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public onRenderPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendPauseBrocast(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method public onRenderPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "DMRCenter"

    const-string v1, "onRenderPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mCurMediaInfoType:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mMusicMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mMusicMediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->delayToPlayMusic(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 158
    :goto_1
    invoke-direct {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->clearState()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendStartBrocast(Landroid/content/Context;)V

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRenderSeek(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "seekPos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    const-string v2, "DMRCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-static {p1}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->parseSeekTime(Ljava/lang/String;)I

    move-result v1

    .line 181
    const-string v2, "DMRCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===>pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendSeekBrocast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRenderSetMute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 191
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->setVolumeMute(Landroid/content/Context;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->setVolumeUnmute(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRenderSetVolume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    .line 201
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 202
    .local v2, "volume":I
    const/16 v3, 0x65

    if-ge v2, v3, :cond_1

    .line 204
    if-ne v2, v4, :cond_2

    .line 205
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getCurrentVolume(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    .line 206
    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    .line 207
    const/16 v2, 0x64

    .line 215
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->setCurrentVolume(ILandroid/content/Context;)V

    .line 220
    .end local v2    # "volume":I
    :cond_1
    :goto_1
    return-void

    .line 209
    .restart local v2    # "volume":I
    :cond_2
    if-nez v2, :cond_0

    .line 210
    iget-object v3, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getCurrentVolume(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    .local v0, "currentVolume":I
    if-le v0, v4, :cond_0

    .line 212
    add-int/lit8 v2, v0, -0x5

    goto :goto_0

    .line 217
    .end local v0    # "currentVolume":I
    .end local v2    # "volume":I
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onRenderStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->delayToStop()V

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/player/dlna/center/DMRCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendStopBorocast(Landroid/content/Context;)V

    .line 172
    return-void
.end method
