.class Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/RemotePlayer$3;->onMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

.field final synthetic val$playPositionInfo:Lcom/phicomm/speaker/player/model/PlayPositionInfo;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/RemotePlayer$3;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iput p2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->val$state:I

    iput-object p3, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->val$playPositionInfo:Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/RemotePlayer$3;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$600(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/RemotePlayer$3;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$600(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/RemotePlayer$3;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    iget v2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->val$state:I

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$1;->val$playPositionInfo:Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 120
    :cond_0
    return-void
.end method
