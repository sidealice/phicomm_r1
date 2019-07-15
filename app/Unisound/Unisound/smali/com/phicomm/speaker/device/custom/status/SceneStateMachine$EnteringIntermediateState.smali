.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnteringIntermediateState"
.end annotation


# instance fields
.field recoveryState:I

.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->recoveryState:I

    return-void
.end method


# virtual methods
.method setRecoveryState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 615
    iput p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->recoveryState:I

    .line 616
    const-string v0, "SceneStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit may have succeeded. if we failed to enter, we will recover to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->recoveryState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method timeout()V
    .locals 3

    .prologue
    .line 623
    const-string v0, "SceneStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering state timeout, recover to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->recoveryState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->recoveryState:I

    packed-switch v0, :pswitch_data_0

    .line 641
    :goto_0
    :pswitch_0
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->timeout()V

    .line 642
    return-void

    .line 626
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 629
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 632
    :pswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$3400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 635
    :pswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$7000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 638
    :pswitch_5
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$2700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$7100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
