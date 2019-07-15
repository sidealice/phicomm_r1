.class Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

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

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/autosdk/api/KWAPI;->access$1(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ENDTYPE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->END_COMPLETE:Lcn/kuwo/autosdk/api/PlayEndType;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->END_USER:Lcn/kuwo/autosdk/api/PlayEndType;

    :cond_2
    :goto_1
    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/autosdk/api/KWAPI;->access$1(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayEndListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/autosdk/api/OnPlayEndListener;->onPlayEnd(Lcn/kuwo/autosdk/api/PlayEndType;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/api/PlayEndType;->END_ERROR:Lcn/kuwo/autosdk/api/PlayEndType;

    goto :goto_1
.end method
