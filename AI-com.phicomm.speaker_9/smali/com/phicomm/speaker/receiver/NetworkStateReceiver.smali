.class public Lcom/phicomm/speaker/receiver/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field private static b:Ljava/lang/Boolean;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "NetworkStateReceiver"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 44
    :cond_0
    sget-object p2, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    .line 45
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/phicomm/speaker/a/y;

    sget-object v1, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/a/y;-><init>(Z)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result p2

    .line 49
    sget-object v0, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 50
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/phicomm/speaker/a/y;

    sget-object v1, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/a/y;-><init>(Z)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const-string p2, "connectivity"

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 56
    iget-boolean p2, p0, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 57
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p2, :cond_3

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/x;

    invoke-direct {p2}, Lcom/phicomm/speaker/a/x;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 60
    sget-boolean p1, Lcom/phicomm/speaker/PhApplication;->a:Z

    if-nez p1, :cond_3

    .line 61
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 62
    instance-of p2, p1, Lcom/phicomm/speaker/activity/SplashActivity;

    if-nez p2, :cond_3

    .line 63
    new-instance p2, Lcom/phicomm/speaker/manager/d;

    invoke-direct {p2, p1}, Lcom/phicomm/speaker/manager/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/manager/d;->a(Z)V

    :cond_3
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->a:Z

    .line 68
    invoke-static {}, Lcom/phicomm/speaker/f/u;->b()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/a/w;

    invoke-direct {v2}, Lcom/phicomm/speaker/a/w;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_5

    .line 73
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_5

    .line 74
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_5

    .line 75
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_5

    .line 76
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object p2

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p2, v1, :cond_4

    goto :goto_1

    .line 82
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/z;

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/a/z;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_2

    .line 79
    :cond_5
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/phicomm/speaker/a/z;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/a/z;-><init>(Z)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/z;

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/a/z;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_2

    .line 89
    :cond_7
    iput-boolean v0, p0, Lcom/phicomm/speaker/receiver/NetworkStateReceiver;->a:Z

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/z;

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/a/z;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
