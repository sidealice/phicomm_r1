.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitingIntermediateState"
.end annotation


# instance fields
.field destState:I

.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->destState:I

    return-void
.end method


# virtual methods
.method setDestState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 649
    iput p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->destState:I

    .line 650
    const-string v0, "SceneStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after exiting doss we are going to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->destState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method
