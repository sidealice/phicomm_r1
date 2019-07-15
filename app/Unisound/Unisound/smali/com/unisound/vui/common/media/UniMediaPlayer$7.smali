.class Lcom/unisound/vui/common/media/UniMediaPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/media/UniMediaPlayer;->playUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$7;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-string v0, "UniMediaPlayer"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$7;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$7;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-static {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$200(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$7;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-static {v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$100(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method
