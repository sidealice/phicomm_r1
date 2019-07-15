.class Lcom/phicomm/speaker/player/model/DlnaPlayer$3;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer;->onError(Landroid/media/MediaPlayer;II)Z
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
    .line 129
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$000(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Lcom/easydlna/dlna/dlnaclient/PlayingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easydlna/dlna/dlnaclient/PlayingState;->reset()V

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$000(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Lcom/easydlna/dlna/dlnaclient/PlayingState;

    move-result-object v0

    const-string v1, "ERROR_OCCURRED"

    iput-object v1, v0, Lcom/easydlna/dlna/dlnaclient/PlayingState;->status:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    .line 135
    return-void
.end method
