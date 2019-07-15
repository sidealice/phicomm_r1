.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnteringNetConfigState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 283
    const-string v1, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EnteringNetConfigState process "

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

    .line 285
    invoke-super {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    :goto_0
    return v0

    .line 288
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 293
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :pswitch_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringNetConfigState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$2700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$2800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method
