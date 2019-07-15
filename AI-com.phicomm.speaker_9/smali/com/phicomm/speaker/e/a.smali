.class public Lcom/phicomm/speaker/e/a;
.super Ljava/lang/Object;
.source "UniMusicManager.java"


# static fields
.field private static a:Lcom/phicomm/speaker/e/a;


# instance fields
.field private b:Lcom/unisound/lib/UnisMusicAssistant;

.field private c:Lcom/unisound/lib/music/MusicStateMgr;

.field private d:Lcom/unisound/lib/audio/AudioStateMgr;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->b()V

    .line 63
    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->c()V

    return-void
.end method

.method public static a()Lcom/phicomm/speaker/e/a;
    .locals 2

    .line 67
    sget-object v0, Lcom/phicomm/speaker/e/a;->a:Lcom/phicomm/speaker/e/a;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/phicomm/speaker/e/a;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/phicomm/speaker/e/a;->a:Lcom/phicomm/speaker/e/a;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/phicomm/speaker/e/a;

    invoke-direct {v1}, Lcom/phicomm/speaker/e/a;-><init>()V

    sput-object v1, Lcom/phicomm/speaker/e/a;->a:Lcom/phicomm/speaker/e/a;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/phicomm/speaker/e/a;->a:Lcom/phicomm/speaker/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/a;Ljava/lang/String;Lcom/unisound/lib/audio/bean/AudioInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Lcom/unisound/lib/audio/bean/AudioInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/a;Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    return-void
.end method

.method private a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/msgcenter/bean/MusicControlParam;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    const-string v1, "UniMusicManager"

    invoke-virtual {v0, v1, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->sendMusicControlCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/unisound/lib/audio/bean/AudioInfo;)V
    .locals 3

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4202fd57

    if-eq v1, v2, :cond_2

    const v2, 0x5ef346c7

    if-eq v1, v2, :cond_1

    const v2, 0x7fcc5bed

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "changePlayState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "changePlayMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "changeCollectState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 157
    :pswitch_0
    new-instance p1, Lcom/phicomm/speaker/e/b/c;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/c;-><init>(Lcom/unisound/lib/audio/bean/AudioInfo;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :pswitch_1
    new-instance p1, Lcom/phicomm/speaker/e/b/a;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/a;-><init>(Lcom/unisound/lib/audio/bean/AudioInfo;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    :pswitch_2
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 149
    new-instance p1, Lcom/phicomm/speaker/e/b/b;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/b;-><init>(Lcom/unisound/lib/audio/bean/AudioInfo;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V
    .locals 3

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xaa9d16

    if-eq v1, v2, :cond_3

    const v2, 0x4202fd57

    if-eq v1, v2, :cond_2

    const v2, 0x5ef346c7

    if-eq v1, v2, :cond_1

    const v2, 0x7fcc5bed

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "changePlayState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "changePlayMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "changeCollectState"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "changeVolume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 130
    :pswitch_0
    new-instance p1, Lcom/phicomm/speaker/e/b/i;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/i;-><init>(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 127
    :pswitch_1
    new-instance p1, Lcom/phicomm/speaker/e/b/g;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/g;-><init>(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :pswitch_2
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 120
    new-instance p1, Lcom/phicomm/speaker/e/b/h;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/e/b/h;-><init>(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/unisound/lib/music/MusicStateMgr;->getInstance()Lcom/unisound/lib/music/MusicStateMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/e/a;->c:Lcom/unisound/lib/music/MusicStateMgr;

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->c:Lcom/unisound/lib/music/MusicStateMgr;

    new-instance v1, Lcom/phicomm/speaker/e/a$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/a$1;-><init>(Lcom/phicomm/speaker/e/a;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/music/MusicStateMgr;->setMusicUpdateListener(Lcom/unisound/lib/msgcenter/listener/IMusicUpdate;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 89
    invoke-static {}, Lcom/unisound/lib/audio/AudioStateMgr;->getInstance()Lcom/unisound/lib/audio/AudioStateMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/e/a;->d:Lcom/unisound/lib/audio/AudioStateMgr;

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->d:Lcom/unisound/lib/audio/AudioStateMgr;

    new-instance v1, Lcom/phicomm/speaker/e/a$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/a$2;-><init>(Lcom/phicomm/speaker/e/a;)V

    invoke-virtual {v0, v1}, Lcom/unisound/lib/audio/AudioStateMgr;->setAudioUpdateListener(Lcom/unisound/lib/audio/callback/IAudioUpdate;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/msgcenter/bean/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisMusicAssistant;->getMusicPlayInfo(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Lcom/unisound/lib/mgr/ISwitchListListener;)V
    .locals 1

    .line 553
    invoke-static {}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->getInstance()Lcom/unisound/lib/mgr/PlayListSwitchMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->setSwitchListListener(Lcom/unisound/lib/mgr/ISwitchListListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->addCollectMusic(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/music/bean/CurrentMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/lib/UnisMusicAssistant;->getCurrentMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioSecondList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "get hot category(categoryId: %s, pageNo: %s, pageSize: %s)."

    const/4 v1, 0x3

    .line 456
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v3, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/unisound/lib/UnisMusicAssistant;->getAudioSecondList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/phicomm/speaker/e/c/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "play recommend audio: %s."

    const/4 v1, 0x1

    .line 325
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 327
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    const-string v1, "toRecommendList"

    .line 328
    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setAlbumId(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, v2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollectedList(Z)V

    .line 332
    invoke-virtual {v0, p5}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollected(Z)V

    if-eqz p6, :cond_0

    const-string p1, "time_desc"

    goto :goto_0

    :cond_0
    const-string p1, "time_asc"

    .line 333
    :goto_0
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setTimeAsc(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p3}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setPageNo(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p4}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setPageSize(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v0, p7}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 255
    new-instance p3, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {p3}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 256
    invoke-virtual {p3, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p3, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p3, p4}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 236
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 237
    new-instance p2, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    const-string v0, "toCollectionList"

    .line 238
    invoke-virtual {p2, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 242
    invoke-virtual {p2, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollectedList(Z)V

    .line 244
    invoke-virtual {p2, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollected(Z)V

    .line 245
    invoke-direct {p0, p2, p3}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentList;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "time_desc"

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    const-string p2, "time_asc"

    goto :goto_0

    :goto_1
    const-string p2, "get third list: albumId=%s, order=%s."

    const/4 v0, 0x2

    .line 471
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/UnisMusicAssistant;->getAudioThirdList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZLcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 217
    new-instance p3, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {p3}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    const-string v0, "switch"

    .line 218
    invoke-virtual {p3, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p3, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollectedList(Z)V

    .line 224
    invoke-virtual {p3, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollected(Z)V

    .line 225
    invoke-direct {p0, p3, p4}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 306
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 310
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 311
    array-length v3, p1

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_1

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 318
    iget-object p1, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->delCollectMusic(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public b(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;>;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisMusicAssistant;->getCollectMusicList(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public b(Lcom/unisound/lib/mgr/ISwitchListListener;)V
    .locals 1

    .line 565
    invoke-static {}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->getInstance()Lcom/unisound/lib/mgr/PlayListSwitchMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->removeSwitchListListener(Lcom/unisound/lib/mgr/ISwitchListListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/unisound/lib/UnisMusicAssistant;->delOneCollectMusic(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 271
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setPlayMode(Ljava/lang/String;)V

    const-string p2, "changeMode"

    .line 275
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v0, p3}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UniMusicManager"

    const-string v1, "cancelCollectAudio"

    .line 416
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 417
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x1

    .line 421
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 422
    array-length v4, p1

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_1

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 425
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 429
    new-instance p1, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 430
    invoke-virtual {p1, v2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1, v3}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollected(Z)V

    .line 432
    invoke-virtual {p1, v3}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setCollectedList(Z)V

    const-string v0, "cancelCollect"

    .line 433
    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public c(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioInfo;",
            ">;)V"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisMusicAssistant;->getAudioStatus(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;>;)V"
        }
    .end annotation

    .line 483
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    const-string v1, "17"

    const-string v2, "6"

    const-string v4, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/UnisMusicAssistant;->getHotMusicList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentList;",
            ">;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/lib/UnisMusicAssistant;->getCurrentAudioList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public d(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioCollectList;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/lib/UnisMusicAssistant;->getCollectAudioList(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 513
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 514
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    const-string v1, "toHotMusicList"

    .line 515
    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0, v0, p2}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;)V"
        }
    .end annotation

    .line 542
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/UnisMusicAssistant;->switchCommand(Z)V

    .line 543
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v2

    const-string v4, "6"

    const-string v6, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    .line 544
    invoke-direct {p0}, Lcom/phicomm/speaker/e/a;->d()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    .line 543
    invoke-virtual/range {v2 .. v8}, Lcom/unisound/lib/UnisMusicAssistant;->playSingerMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public e(Lcom/phicomm/speaker/e/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/CategoryBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "get category."

    const/4 v1, 0x0

    .line 442
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/phicomm/speaker/e/a;->b:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/UnisMusicAssistant;->getAudioFirstList(Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public f(Lcom/phicomm/speaker/e/c/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/e/c/b<",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 492
    invoke-static {}, Lcom/unisound/lib/UnisMusicAssistant;->getInstance()Lcom/unisound/lib/UnisMusicAssistant;

    move-result-object v0

    const-string v1, "6"

    const-string v2, "8"

    const-string v3, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/unisound/lib/UnisMusicAssistant;->getHotSingerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method
