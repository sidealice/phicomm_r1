.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState$1;
.super Ljava/lang/Object;
.source "SceneStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState$1;->this$1:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState$1;->this$1:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->timeout()V

    .line 659
    return-void
.end method
