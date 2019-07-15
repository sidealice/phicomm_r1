.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$002(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;I)I

    .line 383
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->enter()V

    .line 384
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 389
    const-string v0, "SceneStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothState process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 415
    :goto_0
    return v0

    .line 393
    :sswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 394
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    move v0, v2

    .line 415
    goto :goto_0

    .line 397
    :sswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 398
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 401
    :sswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 402
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 405
    :sswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 406
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 409
    :sswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$BluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 391
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x14 -> :sswitch_0
        0x6c -> :sswitch_4
    .end sparse-switch
.end method
