.class Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;
.super Landroid/os/Handler;
.source "DlnaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer2;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->refreshCurPos()V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->startEngine()Z

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->restartEngine()Z

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$000()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    const-string v1, "do EXIT."

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$100(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
