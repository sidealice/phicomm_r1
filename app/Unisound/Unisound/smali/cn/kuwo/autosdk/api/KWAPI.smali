.class public Lcn/kuwo/autosdk/api/KWAPI;
.super Ljava/lang/Object;


# static fields
.field private static final AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final CLOSE_DESKLYRIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.CLOSE_DESKLYRIC"

.field private static final CLOSE_TOAST:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

.field private static final ENDTYPE:Ljava/lang/String; = "ENDTYPE"

.field private static final EXIT_KWMUSICAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.EXITAPP"

.field private static final EXTRA:Ljava/lang/String; = "EXTRA"

.field private static final HAS_MV:Ljava/lang/String; = "hasMv"

.field private static final KEY_FULL_SCREEN:Ljava/lang/String; = "key_full_screen"

.field private static final KUWO_CARMUSIC_MEDIABUTTON_ACTION:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

.field private static final KUWO_KEY:Ljava/lang/String; = "kuwo_key"

.field private static final MUSIC:Ljava/lang/String; = "music"

.field private static final MUSIC_ALBUM:Ljava/lang/String; = "album"

.field private static final MUSIC_ARTISTID:Ljava/lang/String; = "artistid"

.field private static final MUSIC_NAME:Ljava/lang/String; = "name"

.field private static final MUSIC_RID:Ljava/lang/String; = "rid"

.field private static final MUSIC_SINGER:Ljava/lang/String; = "singer"

.field private static final MUSIC_SOURCE:Ljava/lang/String; = "source"

.field private static final MV_QUALITY:Ljava/lang/String; = "mvQuality"

.field private static final NoFoundAPP:Ljava/lang/String; = "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

.field private static final OPEN_DESKLYRIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.OPEN_DESKLYRIC"

.field private static final OPEN_TOAST:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

.field private static final PALY_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

.field private static final PLAYERSTATUS:Ljava/lang/String; = "PLAYERSTATUS"

.field private static final PLAYER_STATUS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

.field private static final PLAYMUSIC_ALBUM:Ljava/lang/String; = "play_music_album"

.field private static final PLAYMUSIC_ARTIST:Ljava/lang/String; = "play_music_artist"

.field private static final PLAYMUSIC_NAME:Ljava/lang/String; = "play_music_name"

.field private static final PLAY_END:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_END"

.field private static final SEARCH_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

.field private static final SET_FULL_SCREEN:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

.field private static final START_KWMUSICAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.STARTAPP"

.field private static mKey:Ljava/lang/String;

.field private static mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

.field private static final mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

.field private static final mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

.field private static mSearchMgr:Lcn/kuwo/autosdk/g;


# instance fields
.field private mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

.field private mPlayEndRegistered:Z

.field private mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

.field private mPlayerStatusRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    sput-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;-><init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;)V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;-><init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;)V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    iput-object v1, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    return-void
.end method

.method static synthetic access$0()Lcn/kuwo/autosdk/api/KWAPI;
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    return-object v0
.end method

.method static synthetic access$1(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayEndListener;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI;->getOnPlayEndListener()Lcn/kuwo/autosdk/api/OnPlayEndListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayerStatusListener;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI;->getOnPlayerStatusListener()Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    move-result-object v0

    return-object v0
.end method

.method private checkInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcn/kuwo/autosdk/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI;

    invoke-direct {v0}, Lcn/kuwo/autosdk/api/KWAPI;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    sput-object p1, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    return-object v0
.end method

.method private getOnPlayEndListener()Lcn/kuwo/autosdk/api/OnPlayEndListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

    return-object v0
.end method

.method private getOnPlayerStatusListener()Lcn/kuwo/autosdk/api/OnPlayerStatusListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    return-object v0
.end method

.method private registerPlayEndReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPlayerStatusReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/autosdk/h;

    invoke-direct {v0}, Lcn/kuwo/autosdk/h;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    :cond_0
    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    invoke-interface {v0, p1, p2, p3}, Lcn/kuwo/autosdk/g;->a(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V

    return-void
.end method

.method private unRegisterPlayEndReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPlayerStatusReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public changeSongList(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    const-string v2, "CHANGE_SONGLIST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public closeDeskLyric(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.CLOSE_DESKLYRIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public closeToast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public exitAPP(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.EXITAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public openDeskLyric(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.OPEN_DESKLYRIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public openToast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public playClientMusics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "singer"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playLocalMusic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playMusic(Landroid/content/Context;Lcn/kuwo/autosdk/bean/Music;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcn/kuwo/autosdk/bean/Music;->rid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rid"

    iget-wide v4, p2, Lcn/kuwo/autosdk/bean/Music;->rid:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "name"

    iget-object v3, p2, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "singer"

    iget-object v3, p2, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    iget-object v3, p2, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artistid"

    iget-wide v4, p2, Lcn/kuwo/autosdk/bean/Music;->artistId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "mvQuality"

    iget-object v3, p2, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hasMv"

    iget-boolean v3, p2, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "\u64ad\u653e\u7684\u6b4c\u66f2\u4fe1\u606f\u6709\u8bef\uff01"

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public registerPlayEndListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayEndListener;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayEndReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    :cond_0
    iput-object p2, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

    return-void
.end method

.method public registerPlayerStatusListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerStatusListener;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerStatusReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    :cond_0
    iput-object p2, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    return-void
.end method

.method public searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    invoke-direct {p0, p1, v0, p2}, Lcn/kuwo/autosdk/api/KWAPI;->searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V

    return-void
.end method

.method public setFullScreen(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_full_screen"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    invoke-virtual {p2}, Lcn/kuwo/autosdk/api/PlayMode;->getPlayMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    invoke-virtual {p2}, Lcn/kuwo/autosdk/api/PlayState;->getPlayState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startAPP(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "auto_play"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public unRegisterPlayEndListener(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayEndReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    :cond_0
    return-void
.end method

.method public unRegisterPlayerStatusListener(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayerStatusReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    :cond_0
    return-void
.end method
