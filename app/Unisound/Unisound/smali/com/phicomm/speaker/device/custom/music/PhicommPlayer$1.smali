.class Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;
.super Ljava/lang/Object;
.source "PhicommPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->queryPlayItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

.field final synthetic val$finalType:I

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iput p2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;->val$finalType:I

    iput p3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;

    iget v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;->val$finalType:I

    iget v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;->val$page:I

    invoke-direct {v1, v2, v3}, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 405
    return-void
.end method
