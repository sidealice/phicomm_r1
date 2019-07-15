.class final Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$5;
.super Ljava/lang/Object;
.source "MediaControlProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendSeekBrocast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$seekPos:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$5;->val$seekPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$5;->val$seekPos:I

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;->onSeekCommand(I)V

    .line 88
    :cond_0
    return-void
.end method
