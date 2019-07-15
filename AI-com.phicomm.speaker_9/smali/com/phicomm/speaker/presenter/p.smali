.class public Lcom/phicomm/speaker/presenter/p;
.super Ljava/lang/Object;
.source "UnisoundPresenter.java"

# interfaces
.implements Lcom/unisound/lib/listener/IMqttStateListener;


# static fields
.field private static a:Lcom/phicomm/speaker/presenter/p;


# instance fields
.field private b:Lcom/phicomm/speaker/presenter/j;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/phicomm/speaker/presenter/p;

    invoke-direct {v0}, Lcom/phicomm/speaker/presenter/p;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/presenter/p;->a:Lcom/phicomm/speaker/presenter/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/p;)Lcom/phicomm/speaker/presenter/j;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/p;->b:Lcom/phicomm/speaker/presenter/j;

    return-object p0
.end method

.method public static a()Lcom/phicomm/speaker/presenter/p;
    .locals 1

    .line 43
    sget-object v0, Lcom/phicomm/speaker/presenter/p;->a:Lcom/phicomm/speaker/presenter/p;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/msgcenter/bean/MusicInfo;
    .locals 2

    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getCurrentSongInfo()Lcom/unisound/lib/msgcenter/bean/SongInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    return-object v0
.end method

.method public static a(Lcom/phicomm/speaker/e/b/l;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 161
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/e/b/l;

    .line 162
    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "pause"

    .line 164
    invoke-virtual {p1, v1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->setPlayState(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/e/b/l;

    .line 90
    invoke-static {p0, v0}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1, p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->setPlayMode(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    invoke-static {p0, v0}, Lcom/phicomm/speaker/presenter/p;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->setPlayMode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 2

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/e/b/l;

    .line 70
    invoke-static {p0, v0}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getCurrentSongInfo()Lcom/unisound/lib/msgcenter/bean/SongInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->setCollected(Z)V

    return-void

    .line 75
    :cond_0
    invoke-static {p0, v0}, Lcom/phicomm/speaker/presenter/p;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getCurrentSongInfo()Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->setCollected(Z)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/audio/bean/AudioInfo;
    .locals 2

    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getCurrentSongInfo()Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    return-object v0
.end method

.method public static b()V
    .locals 2

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/e/b/l;

    .line 178
    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/p;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/b/l;)Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "pause"

    .line 180
    invoke-virtual {p1, v1}, Lcom/unisound/lib/audio/bean/AudioInfo;->setPlayState(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 182
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 145
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/e/d;->a(Lcom/unisound/lib/listener/IMqttStateListener;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 152
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/e/d;->b(Lcom/unisound/lib/listener/IMqttStateListener;)V

    return-void
.end method

.method public onAudioCollectEvent(Lcom/phicomm/speaker/e/b/a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 233
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/a;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->isIsCollected()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAudioInfoChangeEvent(Lcom/phicomm/speaker/e/b/b;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/b;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 211
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/e/b/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/e/b/m;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getCurrentSongInfo()Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/p;->b(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/b;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/e/b/l;-><init>(Lcom/unisound/lib/audio/bean/AudioInfo;)V

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/p;->a(Lcom/phicomm/speaker/e/b/l;)V

    return-void
.end method

.method public onAudioModeEvent(Lcom/phicomm/speaker/e/b/c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 249
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/c;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDeviceChange(Lcom/phicomm/speaker/e/b/d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 257
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/p;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 262
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/p;->c:Ljava/lang/String;

    return-void
.end method

.method public onLoginSucceed(Lcom/phicomm/speaker/a/t;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 268
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    return-void
.end method

.method public onMqttConnect()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/p;->b:Lcom/phicomm/speaker/presenter/j;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/phicomm/speaker/presenter/j;

    new-instance v1, Lcom/phicomm/speaker/presenter/p$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/p$1;-><init>(Lcom/phicomm/speaker/presenter/p;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/presenter/j;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/p;->b:Lcom/phicomm/speaker/presenter/j;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/p;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/j;->a(Z)V

    return-void
.end method

.method public onMqttConnectFailed()V
    .locals 0

    return-void
.end method

.method public onMqttDisConnected()V
    .locals 0

    return-void
.end method

.method public onMusicCollectEvent(Lcom/phicomm/speaker/e/b/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 225
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/g;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->isCollected()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onMusicInfoChangeEvent(Lcom/phicomm/speaker/e/b/h;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 189
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/h;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 193
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/e/b/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/e/b/m;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getCurrentSongInfo()Lcom/unisound/lib/msgcenter/bean/SongInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getControlCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/h;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/e/b/l;-><init>(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/p;->a(Lcom/phicomm/speaker/e/b/l;)V

    return-void
.end method

.method public onMusicModeEvent(Lcom/phicomm/speaker/e/b/i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 241
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/i;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayMode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
