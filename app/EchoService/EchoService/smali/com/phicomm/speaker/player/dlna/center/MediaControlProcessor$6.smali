.class final Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$6;
.super Ljava/lang/Object;
.source "MediaControlProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->sendGetPositionBrocast(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor;->access$000()Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$IMediaControlListener;->onGetPositionCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/MediaControlProcessor$6;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
