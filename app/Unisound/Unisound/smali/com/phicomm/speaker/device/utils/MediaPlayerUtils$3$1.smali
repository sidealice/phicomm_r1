.class Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3$1;
.super Ljava/lang/Object;
.source "MediaPlayerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3$1;->this$1:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3$1;->this$1:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;

    iget-object v0, v0, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils$3;->this$0:Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->stop()V

    .line 92
    return-void
.end method
