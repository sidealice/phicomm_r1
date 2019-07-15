.class Lcom/unisound/vui/common/media/UniMediaPlayer$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$14;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    iput-object p2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$14;->val$stateListener:Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-string v0, "UniMediaPlayer"

    const-string v1, "---->>playBeepSound onCompletion"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$14;->val$stateListener:Lcom/unisound/vui/common/media/IMediaPlayerStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$14;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V

    :cond_0
    return-void
.end method
