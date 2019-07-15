.class public Lcom/phicomm/speaker/player/EchoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EchoReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-string v0, "EchoReceiver"

    iput-object v0, p0, Lcom/phicomm/speaker/player/EchoReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private processBluetoothPairing(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/high16 v6, -0x80000000

    const/4 v8, 0x0

    .line 40
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 41
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 43
    .local v3, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EchoReceiver pairing device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 46
    const-string v4, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, "pairingKey":I
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%06d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "pairingKeyStr":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EchoReceiver pairing key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .end local v1    # "pairingKey":I
    .end local v2    # "pairingKeyStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private processBootCompleted()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/phicomm/speaker/player/EchoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "echoServiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/phicomm/speaker/player/EchoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/player/EchoReceiver;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/player/EchoReceiver;->processBootCompleted()V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/EchoReceiver;->processBluetoothPairing(Landroid/content/Intent;)V

    goto :goto_0
.end method
