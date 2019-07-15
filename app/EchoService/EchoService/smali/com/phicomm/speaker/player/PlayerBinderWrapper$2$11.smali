.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$11;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/phicomm/speaker/player/model/PlayAllStates;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$11;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/phicomm/speaker/player/model/PlayAllStates;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$11;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/AbsPlayer;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$11;->call()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v0

    return-object v0
.end method
