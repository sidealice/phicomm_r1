.class Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;
.super Ljava/lang/Object;
.source "PlayStatusTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/PlayStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/PlayStatusTracker;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/PlayStatusTracker;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;->this$0:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;->this$0:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;->this$0:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->access$000(Lcom/phicomm/speaker/player/model/PlayStatusTracker;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->access$100(Lcom/phicomm/speaker/player/model/PlayStatusTracker;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 271
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;->this$0:Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->access$200(Lcom/phicomm/speaker/player/model/PlayStatusTracker;)V

    .line 272
    return-void
.end method
