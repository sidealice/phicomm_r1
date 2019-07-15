.class Lcom/phicomm/speaker/player/model/DlnaPlayer$1;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$100(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Lcom/easydlna/dlna/dlnaclient/DMRClient;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$1;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$000(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Lcom/easydlna/dlna/dlnaclient/PlayingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->setStatus(Lcom/easydlna/dlna/dlnaclient/PlayingState;)I

    .line 58
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
