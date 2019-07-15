.class public Lcom/kaolafm/sdk/client/KLClientAPI;
.super Ljava/lang/Object;
.source "KLClientAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EXIT:Ljava/lang/String; = "com.edog.action.app.exit"

.field public static final ACTION_APP_LAUNCH:Ljava/lang/String; = "com.edog.action.app.launch"

.field public static final ACTION_APP_SEARCH:Ljava/lang/String; = "com.edog.action.app.search"

.field public static final ACTION_CLIENT:Ljava/lang/String; = "com.kaolafm.sdk.client"

.field public static final ACTION_MUSIC_NEXT:Ljava/lang/String; = "com.edog.action.music.next"

.field public static final ACTION_MUSIC_PAUSE:Ljava/lang/String; = "com.edog.action.music.pause"

.field public static final ACTION_MUSIC_PLAY:Ljava/lang/String; = "com.edog.action.music.play"

.field public static final ACTION_MUSIC_PRE:Ljava/lang/String; = "com.edog.action.music.pre"

.field public static final EXTRA_IS_AUTOPLAY:Ljava/lang/String; = "extra_is_autoplay"

.field public static final EXTRA_KEYWORD:Ljava/lang/String; = "extra_keyword"

.field public static final EXTRA_KEY_EDOG_PAGE:Ljava/lang/String; = "com.edog.car.start.page"

.field public static final EXTRA_MUSIC:Ljava/lang/String; = "extra_music"

.field public static final EXTRA_PLAYLIST:Ljava/lang/String; = "extra_playlist"

.field public static final KEY_AUTO:Ljava/lang/String; = "auto"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final PACKAGE_NAME_EDOG:Ljava/lang/String; = "com.edog.car"

.field private static final PACKAGE_NAME_KAOLAFM:Ljava/lang/String; = "com.itings.myradio"

.field private static mInstance:Lcom/kaolafm/sdk/client/KLClientAPI;


# instance fields
.field private exitReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceConnection:Lcom/kaolafm/sdk/client/IServiceConnection;

.field private playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-direct {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;-><init>()V

    sput-object v0, Lcom/kaolafm/sdk/client/KLClientAPI;->mInstance:Lcom/kaolafm/sdk/client/KLClientAPI;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$22;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$22;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->exitReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;
    .locals 1
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    return-object v0
.end method

.method static synthetic access$002(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/IClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;
    .locals 0
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;
    .param p1, "x1"    # Lcom/kaolafm/sdk/client/IClientAPI;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kaolafm/sdk/client/KLClientAPI;)V
    .locals 0
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->registerExitReceiver()V

    return-void
.end method

.method static synthetic access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConnection:Lcom/kaolafm/sdk/client/IServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kaolafm/sdk/client/KLClientAPI;)V
    .locals 0
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unregisterExitReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/kaolafm/sdk/client/KLClientAPI;ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/kaolafm/sdk/client/SearchResultV2;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/PlayStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kaolafm/sdk/client/KLClientAPI;)V
    .locals 0
    .param p0, "x0"    # Lcom/kaolafm/sdk/client/KLClientAPI;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unBindService()V

    return-void
.end method

.method private bindService(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kaolafm.sdk.client"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    return-void
.end method

.method public static getInstance()Lcom/kaolafm/sdk/client/KLClientAPI;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kaolafm/sdk/client/KLClientAPI;->mInstance:Lcom/kaolafm/sdk/client/KLClientAPI;

    return-object v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    .line 80
    const-string v0, "phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "com.itings.myradio"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    .line 85
    :goto_0
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$1;

    invoke-direct {v0, p0, p3}, Lcom/kaolafm/sdk/client/KLClientAPI$1;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    .line 110
    invoke-direct {p0, p2}, Lcom/kaolafm/sdk/client/KLClientAPI;->bindService(Ljava/lang/String;)V

    .line 111
    return-void

    .line 83
    :cond_0
    const-string v0, "com.edog.car"

    iput-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-nez v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mKey:Ljava/lang/String;

    new-instance v2, Lcom/kaolafm/sdk/client/KLClientAPI$21;

    invoke-direct {v2, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$21;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-interface {p1}, Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;->onConnected()V

    goto :goto_0
.end method

.method private registerExitReceiver()V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->exitReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.kaolafm.auto.home.appExit.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    :cond_0
    return-void
.end method

.method private searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "count"    # I
    .param p5, "listener"    # Lcom/kaolafm/sdk/client/SearchResultV2;

    .prologue
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.edog.car"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 456
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x4f4d

    if-lt v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kaolafm/sdk/client/IClientAPI;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/ISearchResultV2;)V

    .line 489
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 459
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    new-instance v1, Lcom/kaolafm/sdk/client/KLClientAPI$11;

    invoke-direct {v1, p0, p5}, Lcom/kaolafm/sdk/client/KLClientAPI$11;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchResultV2;)V

    invoke-interface {v0, p2, v1}, Lcom/kaolafm/sdk/client/IClientAPI;->search(Ljava/lang/String;Lcom/kaolafm/sdk/client/ISearchResult;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 484
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 485
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 486
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v6

    .line 487
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 134
    iput-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConn:Landroid/content/ServiceConnection;

    .line 135
    iput-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    .line 137
    :cond_0
    return-void
.end method

.method private unregisterExitReceiver()V
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->exitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public backward()V
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$18;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$18;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 614
    return-void
.end method

.method public download()V
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$16;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$16;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 582
    return-void
.end method

.method public exitApp()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$3;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$3;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 173
    return-void
.end method

.method public forward()V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$17;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$17;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 598
    return-void
.end method

.method public getCurrentMusicInfo()Lcom/kaolafm/sdk/client/Music;
    .locals 3

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "result":Lcom/kaolafm/sdk/client/Music;
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v2, :cond_0

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v2}, Lcom/kaolafm/sdk/client/IClientAPI;->getCurrentMusicInfo()Lcom/kaolafm/sdk/client/Music;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :cond_0
    :goto_0
    return-object v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlayState()Lcom/kaolafm/sdk/client/PlayState;
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v2, :cond_1

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v2}, Lcom/kaolafm/sdk/client/IClientAPI;->getPlayState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 322
    .local v0, "code":I
    sget-object v2, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    invoke-virtual {v2}, Lcom/kaolafm/sdk/client/PlayState;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 323
    sget-object v2, Lcom/kaolafm/sdk/client/PlayState;->PLAYING:Lcom/kaolafm/sdk/client/PlayState;

    .line 328
    .end local v0    # "code":I
    :goto_0
    return-object v2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 319
    sget-object v2, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0

    .line 325
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "code":I
    :cond_0
    sget-object v2, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0

    .line 328
    .end local v0    # "code":I
    :cond_1
    sget-object v2, Lcom/kaolafm/sdk/client/PlayState;->PAUSED:Lcom/kaolafm/sdk/client/PlayState;

    goto :goto_0
.end method

.method public getProgress()J
    .locals 4

    .prologue
    .line 338
    const-wide/16 v2, 0x0

    .line 339
    .local v2, "result":J
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/IClientAPI;->getProgress()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 347
    :cond_0
    :goto_0
    return-wide v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRadioList(Lcom/kaolafm/sdk/client/RadioResult;)V
    .locals 1
    .param p1, "result"    # Lcom/kaolafm/sdk/client/RadioResult;

    .prologue
    .line 622
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$19;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$19;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/RadioResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 632
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/IClientAPI;->hasNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPre()Z
    .locals 2

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/IClientAPI;->hasPre()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 75
    return-void
.end method

.method public launchApp(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z

    .prologue
    .line 147
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$2;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$2;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Z)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/kaolafm/sdk/client/KLClientAPI;->unBindService()V

    .line 664
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$5;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$5;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 205
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$4;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/KLClientAPI$4;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 189
    return-void
.end method

.method public play(Lcom/kaolafm/sdk/client/Music;)V
    .locals 1
    .param p1, "music"    # Lcom/kaolafm/sdk/client/Music;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 497
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$12;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$12;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/Music;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 507
    return-void
.end method

.method public play(Lcom/kaolafm/sdk/client/SearchData;)V
    .locals 1
    .param p1, "searchData"    # Lcom/kaolafm/sdk/client/SearchData;

    .prologue
    .line 529
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$14;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$14;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchData;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 553
    return-void
.end method

.method public play(Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "playResult"    # Lcom/kaolafm/sdk/client/PlayResult;

    .prologue
    .line 556
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$15;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 566
    return-void
.end method

.method public play(Ljava/util/List;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kaolafm/sdk/client/Music;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/kaolafm/sdk/client/Music;>;"
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$13;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 526
    return-void
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->playNext(Lcom/kaolafm/sdk/client/PlayResult;)V

    .line 227
    return-void
.end method

.method public playNext(Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 1
    .param p1, "playResult"    # Lcom/kaolafm/sdk/client/PlayResult;

    .prologue
    .line 233
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$6;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$6;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 254
    return-void
.end method

.method public playPre()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->playPre(Lcom/kaolafm/sdk/client/PlayResult;)V

    .line 276
    return-void
.end method

.method public playPre(Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 1
    .param p1, "playResult"    # Lcom/kaolafm/sdk/client/PlayResult;

    .prologue
    .line 282
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$7;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$7;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 303
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->search(Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V

    .line 395
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/kaolafm/sdk/client/SearchResult;

    .prologue
    .line 404
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/kaolafm/sdk/client/KLClientAPI$9;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResult;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 414
    return-void
.end method

.method public searchAll(Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 6
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/kaolafm/sdk/client/SearchResultV2;

    .prologue
    const/4 v3, 0x0

    .line 422
    sget-object v1, Lcom/kaolafm/sdk/client/SearchType;->ALL:Lcom/kaolafm/sdk/client/SearchType;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    .line 423
    return-void
.end method

.method public searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 7
    .param p1, "type"    # Lcom/kaolafm/sdk/client/SearchType;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "count"    # I
    .param p5, "listener"    # Lcom/kaolafm/sdk/client/SearchResultV2;

    .prologue
    .line 445
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kaolafm/sdk/client/KLClientAPI$10;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 451
    return-void
.end method

.method public searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;Lcom/kaolafm/sdk/client/SearchResultV2;)V
    .locals 6
    .param p1, "type"    # Lcom/kaolafm/sdk/client/SearchType;
    .param p2, "keywords"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/kaolafm/sdk/client/SearchResultV2;

    .prologue
    .line 433
    const/4 v3, 0x1

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/KLClientAPI;->searchByType(Lcom/kaolafm/sdk/client/SearchType;Ljava/lang/String;IILcom/kaolafm/sdk/client/SearchResultV2;)V

    .line 434
    return-void
.end method

.method public setPlayListener(Lcom/kaolafm/sdk/client/PlayStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kaolafm/sdk/client/PlayStateListener;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;

    .line 374
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$8;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$8;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayStateListener;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 386
    return-void
.end method

.method public setServiceConnection(Lcom/kaolafm/sdk/client/IServiceConnection;)V
    .locals 0
    .param p1, "s"    # Lcom/kaolafm/sdk/client/IServiceConnection;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI;->mServiceConnection:Lcom/kaolafm/sdk/client/IServiceConnection;

    .line 120
    return-void
.end method

.method public switchChannel()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->switchChannel(Lcom/kaolafm/sdk/client/Radio;)V

    .line 639
    return-void
.end method

.method public switchChannel(Lcom/kaolafm/sdk/client/Radio;)V
    .locals 1
    .param p1, "radio"    # Lcom/kaolafm/sdk/client/Radio;

    .prologue
    .line 647
    new-instance v0, Lcom/kaolafm/sdk/client/KLClientAPI$20;

    invoke-direct {v0, p0, p1}, Lcom/kaolafm/sdk/client/KLClientAPI$20;-><init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/Radio;)V

    invoke-direct {p0, v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V

    .line 657
    return-void
.end method
