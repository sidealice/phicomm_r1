.class Lcom/phicomm/speaker/player/model/BluetoothPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/BluetoothPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v5, -0x80000000

    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.a2dp.sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v4, p1, p2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$000(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Context;Landroid/content/Intent;)V

    .line 286
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 262
    :cond_1
    const-string v4, "android.bluetooth.a2dp.sink.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v4, p1, p2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$100(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :cond_2
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 266
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "name":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 268
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 276
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :cond_3
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .restart local v3    # "state":I
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 279
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
