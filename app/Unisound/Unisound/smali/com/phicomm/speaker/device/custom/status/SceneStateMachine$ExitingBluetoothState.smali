.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitingBluetoothState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 424
    const-string v1, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitingBluetoothState process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-super {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    :goto_0
    return v0

    .line 429
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 454
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :pswitch_1
    iget v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->destState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 433
    :pswitch_3
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 439
    :pswitch_5
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 442
    :pswitch_6
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 449
    :pswitch_7
    const-string v1, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybe useful to next state, defer msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method timeout()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 460
    const-string v0, "SceneStateMachine"

    const-string v1, "exiting BLUETOOTH timeout, if we\'re transitioning to ready we recover to BLUETOOTH, otherwise we will defer this to the next entering state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v0, "SceneStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->destState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->destState:I

    packed-switch v0, :pswitch_data_0

    .line 480
    :goto_0
    :pswitch_0
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->timeout()V

    .line 481
    return-void

    .line 465
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 469
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 472
    :pswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 473
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$4900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 476
    :pswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 477
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingBluetoothState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
