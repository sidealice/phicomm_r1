.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$13;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

.field final synthetic val$playRequestInfo:Lcom/phicomm/speaker/player/model/PlayRequestInfo;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$13;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iput-object p2, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$13;->val$playRequestInfo:Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$13;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$13;->val$playRequestInfo:Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/AbsPlayer;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V

    .line 270
    return-void
.end method
