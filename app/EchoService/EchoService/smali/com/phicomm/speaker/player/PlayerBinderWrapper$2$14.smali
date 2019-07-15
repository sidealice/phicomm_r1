.class Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$14;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->startServer()V
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
    .line 277
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$14;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2$14;->this$1:Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    iget-object v0, v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;->this$0:Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/AbsPlayer;->startServer()V

    .line 281
    return-void
.end method
