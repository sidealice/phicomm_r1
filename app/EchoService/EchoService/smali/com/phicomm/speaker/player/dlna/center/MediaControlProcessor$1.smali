.class final Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$1;
.super Ljava/lang/Object;
.source "MediaControlProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendPlayBrocast(Landroid/content/Context;Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$1;->val$mediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$1;->val$mediaInfo:Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;->onPlayCommand(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)V

    .line 44
    :cond_0
    return-void
.end method
