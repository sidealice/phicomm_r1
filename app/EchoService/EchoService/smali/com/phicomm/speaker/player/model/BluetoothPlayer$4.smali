.class Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;
.super Ljava/lang/Object;
.source "BluetoothPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/BluetoothPlayer;->processBluetoothA2dpPlayChanged(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/BluetoothPlayer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iput-object p2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPlayer device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " playing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPlayer ConnectState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$200(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$300(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$400(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$500(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$200(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$800(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$400(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$400(Lcom/phicomm/speaker/player/model/BluetoothPlayer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->access$402(Lcom/phicomm/speaker/player/model/BluetoothPlayer;I)I

    .line 383
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/BluetoothPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/BluetoothPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/BluetoothPlayer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v2}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
