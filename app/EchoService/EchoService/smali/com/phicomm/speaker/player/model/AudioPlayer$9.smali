.class Lcom/phicomm/speaker/player/model/AudioPlayer$9;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/AudioPlayer;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$9;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 896
    invoke-static {}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startMediaPlayerIfPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$9;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$000(Lcom/phicomm/speaker/player/model/AudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$9;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$900(Lcom/phicomm/speaker/player/model/AudioPlayer;)V

    .line 901
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/AudioPlayer$9;->this$0:Lcom/phicomm/speaker/player/model/AudioPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/AudioPlayer;->access$1400(Lcom/phicomm/speaker/player/model/AudioPlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
