.class Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/autosdk/api/KWAPI;->access$2(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PLAYERSTATUS"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->INIT:Lcn/kuwo/autosdk/api/PlayerStatus;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->PLAYING:Lcn/kuwo/autosdk/api/PlayerStatus;

    :cond_2
    :goto_1
    const-string v1, "play_music_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "play_music_artist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "play_music_album"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    new-instance v1, Lcn/kuwo/autosdk/bean/Music;

    invoke-direct {v1}, Lcn/kuwo/autosdk/bean/Music;-><init>()V

    iput-object v2, v1, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    iput-object v4, v1, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    iput-object v3, v1, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/autosdk/api/KWAPI;->access$2(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcn/kuwo/autosdk/api/OnPlayerStatusListener;->onPlayerStatus(Lcn/kuwo/autosdk/api/PlayerStatus;Lcn/kuwo/autosdk/bean/Music;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->BUFFERING:Lcn/kuwo/autosdk/api/PlayerStatus;

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->PAUSE:Lcn/kuwo/autosdk/api/PlayerStatus;

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/api/PlayerStatus;->STOP:Lcn/kuwo/autosdk/api/PlayerStatus;

    goto :goto_1
.end method
