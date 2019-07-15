.class Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;
.super Ljava/lang/Object;
.source "RemotePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/RemotePlayer$3;->onReqNewPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/RemotePlayer$3;I)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iput p2, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/RemotePlayer$3;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$600(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;->this$1:Lcom/phicomm/speaker/player/model/RemotePlayer$3;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/RemotePlayer$3;->this$0:Lcom/phicomm/speaker/player/model/RemotePlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/RemotePlayer;->access$600(Lcom/phicomm/speaker/player/model/RemotePlayer;)Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/RemotePlayer$3$2;->val$page:I

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onReqNewPage(I)V

    .line 133
    :cond_0
    return-void
.end method
