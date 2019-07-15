.class Lcom/phicomm/speaker/player/model/DlnaPlayer$6;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer;->GetPosition()I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$700(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$700(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_1
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
    .line 231
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$6;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
