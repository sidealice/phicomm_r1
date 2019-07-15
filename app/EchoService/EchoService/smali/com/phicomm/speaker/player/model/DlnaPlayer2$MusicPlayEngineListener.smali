.class Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;
.super Ljava/lang/Object;
.source "DlnaPlayer2.java"

# interfaces
.implements Lcom/phicomm/speaker/player/dlna/player/PlayerEngineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicPlayEngineListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2;
    .param p2, "x1"    # Lcom/phicomm/speaker/player/model/DlnaPlayer2$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;-><init>(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V

    return-void
.end method


# virtual methods
.method public onTrackPause(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 4
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->stopTimer()V

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendPauseStateEvent(Landroid/content/Context;)V

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onTrackPlay(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 4
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->startTimer()V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendPlayStateEvent(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onTrackPlayComplete(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 226
    invoke-static {}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$000()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    const-string v1, "onTrackPlayComplete"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$600(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->stop()Z

    .line 228
    return-void
.end method

.method public onTrackPrepareComplete(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->stopTimer()V

    .line 212
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$600(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->getDuration()I

    move-result v0

    .line 213
    .local v0, "duration":I
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendDurationEvent(Landroid/content/Context;I)V

    .line 214
    return-void
.end method

.method public onTrackPrepareSync(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->stopTimer()V

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendTranstionEvent(Landroid/content/Context;)V

    .line 207
    return-void
.end method

.method public onTrackStop(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->stopTimer()V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/center/DLNAGenaEventBrocastFactory;->sendStopStateEvent(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$502(Lcom/phicomm/speaker/player/model/DlnaPlayer2;Z)Z

    .line 192
    return-void
.end method

.method public onTrackStreamError(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 218
    invoke-static {}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$000()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    const-string v1, "onTrackStreamError"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$300(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/AbstractTimer;->stopTimer()V

    .line 220
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$600(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/dlna/player/MusicPlayEngineImpl;->stop()Z

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer2$MusicPlayEngineListener;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer2;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer2;->access$100(Lcom/phicomm/speaker/player/model/DlnaPlayer2;)V

    .line 222
    return-void
.end method
