.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$9;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->playNext(Z)Z
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

.field final synthetic val$startSelf:Z


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;Z)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$9;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iput-boolean p2, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$9;->val$startSelf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$9;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$9;->val$startSelf:Z

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/AbsPlayer;->playNext(Z)Z

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
    .line 184
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$9;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
