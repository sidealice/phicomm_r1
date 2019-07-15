.class Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;
.super Ljava/lang/Object;
.source "PhicommInitializeHandler.java"

# interfaces
.implements Lcom/unisound/vui/common/media/IMediaPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->playInitDoneTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerState(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;Z)Z

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->removeIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    .line 109
    :cond_0
    :goto_1
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 107
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->removeIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    goto :goto_1
.end method
