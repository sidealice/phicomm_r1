.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$15;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->stopServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$15;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$15;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/AbsPlayer;->stopServer()V

    .line 292
    return-void
.end method
