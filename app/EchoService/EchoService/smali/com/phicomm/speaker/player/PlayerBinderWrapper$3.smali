.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$3;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Lcom/phicomm/speaker/player/interfaces/PlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$3;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "state"    # I
    .param p3, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$3;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v1, p2, p3}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$300(Lcom/phicomm/speaker/player/PlayerBinderWrapper;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReqNewPage(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$3;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v1, p1}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$400(Lcom/phicomm/speaker/player/PlayerBinderWrapper;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
