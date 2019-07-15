.class public Lcom/unisound/lib/push/hms/HwPushClient;
.super Lcom/huawei/hms/support/api/push/PushReceiver;

# interfaces
.implements Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;
.implements Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;
.implements Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;
.implements Lcom/unisound/lib/push/intf/IActivity;


# static fields
.field public static final OTHER_MSG:I = 0x105

.field public static final RECEIVE_NOTIFY_CLICK_MSG:I = 0x102

.field public static final RECEIVE_PUSH_MSG:I = 0x100

.field public static final RECEIVE_REGISTER_FAILED:I = 0x106

.field public static final RECEIVE_STATUS_MSG:I = 0x104

.field public static final RECEIVE_TAG_MSG:I = 0x103

.field public static final RECEIVE_TOKEN_MSG:I = 0x101

.field private static final REQUEST_RESOLVE_ERROR:I = 0x3e9

.field public static final TAG:Ljava/lang/String; = "HwPushClient"

.field private static callBack:Lcom/unisound/lib/push/intf/IMsgCallBack;

.field public static huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;


# instance fields
.field private context:Landroid/content/Context;

.field private contextActivity:Lcom/unisound/lib/push/hms/HwBaseActivity;

.field private mResolvingError:Z

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/support/api/push/PushReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/lib/push/hms/HwPushClient;->mResolvingError:Z

    new-instance v0, Lcom/unisound/lib/push/hms/HwPushClient$3;

    invoke-direct {v0, p0}, Lcom/unisound/lib/push/hms/HwPushClient$3;-><init>(Lcom/unisound/lib/push/hms/HwPushClient;)V

    iput-object v0, p0, Lcom/unisound/lib/push/hms/HwPushClient;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/unisound/lib/push/intf/IMsgCallBack;
    .locals 1

    sget-object v0, Lcom/unisound/lib/push/hms/HwPushClient;->callBack:Lcom/unisound/lib/push/intf/IMsgCallBack;

    return-object v0
.end method

.method private getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIntentUrl()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/unisound/lib/push/hms/HwPushClient;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/lib/push/R$string;->scheme:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/lib/push/R$string;->huawei_push_host:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/lib/push/hms/HwPushClient;->context:Landroid/content/Context;

    sget v3, Lcom/unisound/lib/push/R$string;->huawei_push_path:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?title=good news!&notice=this is a piece of custom action notification"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getState()V
    .locals 2

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HwPushClient"

    const-string v1, "get push state failed, HMS is disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/unisound/lib/push/hms/HwPushClient$2;

    invoke-direct {v0, p0}, Lcom/unisound/lib/push/hms/HwPushClient$2;-><init>(Lcom/unisound/lib/push/hms/HwPushClient;)V

    invoke-virtual {v0}, Lcom/unisound/lib/push/hms/HwPushClient$2;->start()V

    return-void
.end method

.method private getToken()V
    .locals 2

    invoke-static {}, Lcom/unisound/lib/push/hms/HwPushClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HwPushClient"

    const-string v1, "get token failed, HMS is disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/huawei/hms/support/api/push/HuaweiPush;->HuaweiPushApi:Lcom/huawei/hms/support/api/push/HuaweiPushApi;

    sget-object v1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-interface {v0, v1}, Lcom/huawei/hms/support/api/push/HuaweiPushApi;->getToken(Lcom/huawei/hms/support/api/client/ApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/unisound/lib/push/hms/HwPushClient$1;

    invoke-direct {v1, p0}, Lcom/unisound/lib/push/hms/HwPushClient$1;-><init>(Lcom/unisound/lib/push/hms/HwPushClient;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    return-void
.end method

.method public static isConnected()Z
    .locals 1

    sget-object v0, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setPassByMsg(Z)V
    .locals 2

    sget-object v0, Lcom/huawei/hms/support/api/push/HuaweiPush;->HuaweiPushApi:Lcom/huawei/hms/support/api/push/HuaweiPushApi;

    sget-object v1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-interface {v0, v1, p1}, Lcom/huawei/hms/support/api/push/HuaweiPushApi;->enableReceiveNormalMsg(Lcom/huawei/hms/support/api/client/ApiClient;Z)V

    return-void
.end method


# virtual methods
.method public initHwPush(Landroid/content/Context;Lcom/unisound/lib/push/intf/IMsgCallBack;)V
    .locals 1

    sput-object p2, Lcom/unisound/lib/push/hms/HwPushClient;->callBack:Lcom/unisound/lib/push/intf/IMsgCallBack;

    iput-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->context:Landroid/content/Context;

    new-instance p2, Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    invoke-direct {p2, p1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/huawei/hms/support/api/push/HuaweiPush;->PUSH_API:Lcom/huawei/hms/api/Api;

    invoke-virtual {p2, p1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addApi(Lcom/huawei/hms/api/Api;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addConnectionCallbacks(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addOnConnectionFailedListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->build()Lcom/huawei/hms/api/HuaweiApiClient;

    move-result-object p1

    sput-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->disconnect()V

    :cond_1
    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V

    const-string p1, "HwPushClient"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getIntent uri:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/unisound/lib/push/hms/HwPushClient;->getIntentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 5

    sget-object v0, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unisound/lib/push/hms/HwPushClient;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HwPushClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnected, IsConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",imei:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisound/lib/push/hms/HwPushClient;->getToken()V

    return-void
.end method

.method public onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 3

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFailed, ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/unisound/lib/push/hms/HwPushClient;->mResolvingError:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    const/16 v0, 0x106

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/lib/push/hms/HwPushClient;->showPushMessage(ILjava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->contextActivity:Lcom/unisound/lib/push/hms/HwBaseActivity;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->mResolvingError:Z

    iget-object v1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->contextActivity:Lcom/unisound/lib/push/hms/HwBaseActivity;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->resolveError(Landroid/app/Activity;IILcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;)V

    :cond_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionSuspended, cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", IsConnected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEvent(Landroid/content/Context;Lcom/huawei/hms/support/api/push/PushReceiver$Event;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->NOTIFICATION_OPENED:Lcom/huawei/hms/support/api/push/PushReceiver$Event;

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->NOTIFICATION_CLICK_BTN:Lcom/huawei/hms/support/api/push/PushReceiver$Event;

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/api/push/PushReceiver$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "pushNotifyId"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    const-string v0, "pushMsg"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/gson/d;

    invoke-direct {v2}, Lcom/google/gson/d;-><init>()V

    const-class v3, Lcom/google/gson/f;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/f;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->a(I)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->l()Lcom/google/gson/k;

    move-result-object v0

    const-string v1, "notice"

    invoke-virtual {v0, v1}, Lcom/google/gson/k;->a(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwPushClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x102

    invoke-virtual {p0, v1, v0}, Lcom/unisound/lib/push/hms/HwPushClient;->showPushMessage(ILjava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/push/PushReceiver;->onEvent(Landroid/content/Context;Lcom/huawei/hms/support/api/push/PushReceiver$Event;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPushMsg(Landroid/content/Context;[BLandroid/os/Bundle;)Z
    .locals 1

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Receive a Push pass-by message\uff1a "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p3, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HwPushClient"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x100

    new-instance p3, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p3, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/unisound/lib/push/hms/HwPushClient;->showPushMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPushState(Landroid/content/Context;Z)V
    .locals 1

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The current push status\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "Connected"

    goto :goto_0

    :cond_0
    const-string p2, "Disconnected"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HwPushClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "belongId"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get token and belongId successful, token = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",belongId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HwPushClient"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x101

    invoke-virtual {p0, p1, p2}, Lcom/unisound/lib/push/hms/HwPushClient;->showPushMessage(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 3

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFailed, ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->mResolvingError:Z

    return-void
.end method

.method public setContextActivity(Lcom/unisound/lib/push/hms/HwBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->contextActivity:Lcom/unisound/lib/push/hms/HwBaseActivity;

    iget-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->contextActivity:Lcom/unisound/lib/push/hms/HwBaseActivity;

    invoke-virtual {p1, p0}, Lcom/unisound/lib/push/hms/HwBaseActivity;->setActivityCallBack(Lcom/unisound/lib/push/intf/IActivity;)V

    return-void
.end method

.method public showPushMessage(ILjava/lang/String;)V
    .locals 3

    const-string v0, "HwPushClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPushMessage type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unInitHwPush(Landroid/content/Context;)V
    .locals 0

    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->disconnect()V

    :cond_0
    const/4 p1, 0x0

    sput-object p1, Lcom/unisound/lib/push/hms/HwPushClient;->callBack:Lcom/unisound/lib/push/intf/IMsgCallBack;

    return-void
.end method
