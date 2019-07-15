.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$002(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;I)I

    .line 170
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->enter()V

    .line 171
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 176
    const-string v0, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicState process "

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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 180
    :sswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    .line 206
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    :sswitch_1
    const-string v0, "SceneStateMachine"

    const-string v1, "We may have had a failure on playing, recover to READY."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 189
    :sswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 194
    :sswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 199
    :sswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$MusicState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x10 -> :sswitch_0
        0x11 -> :sswitch_4
        0x13 -> :sswitch_3
        0x68 -> :sswitch_1
    .end sparse-switch
.end method
