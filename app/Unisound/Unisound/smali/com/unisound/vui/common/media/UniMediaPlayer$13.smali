.class Lcom/unisound/vui/common/media/UniMediaPlayer$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

.field final synthetic val$stateListener:Lcom/unisound/vui/common/media/IMediaPlayerStateListener;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/media/UniMediaPlayer;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    iput-object p2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->val$stateListener:Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---->>playBeepSound onPrepared mMediaPlayer.isPlaying()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-static {v2}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$300(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->val$stateListener:Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-static {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$300(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$13;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-static {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$300(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method
