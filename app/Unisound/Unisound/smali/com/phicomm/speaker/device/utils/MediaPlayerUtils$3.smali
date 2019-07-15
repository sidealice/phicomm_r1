.class Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;
.super Ljava/lang/Object;
.source "MediaPlayerUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->play(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    iput p2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 86
    const-string v0, "MediaPlayerUtils"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->access$000(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->access$100(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3$1;-><init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;)V

    iget v2, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->val$duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void
.end method
