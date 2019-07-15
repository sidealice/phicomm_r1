.class Lcom/phicomm/speaker/player/model/NetPlayer4$12;
.super Ljava/lang/Object;
.source "NetPlayer4.java"

# interfaces
.implements Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$12;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;I)V
    .locals 2
    .param p1, "mediaPlayer"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 1104
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1105
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$12;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1300(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1107
    :cond_0
    return-void
.end method
