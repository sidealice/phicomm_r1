.class Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;
.super Ljava/util/TimerTask;
.source "AbstractTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;->this$0:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;->this$0:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;->this$0:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer$MyTimeTask;->this$0:Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    iget v2, v2, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->msgID:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
