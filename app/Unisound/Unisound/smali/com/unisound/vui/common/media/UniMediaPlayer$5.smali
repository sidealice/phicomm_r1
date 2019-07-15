.class Lcom/unisound/vui/common/media/UniMediaPlayer$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/media/UniMediaPlayer;->playUrl(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$5;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const-string v0, "UniMediaPlayer"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$5;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    const/16 v1, -0x3e9

    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V

    const/4 v0, 0x0

    return v0
.end method
