.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->playIndex(IZ)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

.field final synthetic val$index:I

.field final synthetic val$startSelf:Z


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;IZ)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iput p2, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->val$index:I

    iput-boolean p3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->val$startSelf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->val$index:I

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->val$startSelf:Z

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/model/AbsPlayer;->playIndex(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 88
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
