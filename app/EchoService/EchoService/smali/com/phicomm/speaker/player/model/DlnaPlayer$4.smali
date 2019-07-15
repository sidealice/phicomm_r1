.class Lcom/phicomm/speaker/player/model/DlnaPlayer$4;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer;->Seek(I)I
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

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;I)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    iput p2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$400(Lcom/phicomm/speaker/player/model/DlnaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->val$time:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 165
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$500(Lcom/phicomm/speaker/player/model/DlnaPlayer;)V

    .line 171
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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
    .line 157
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$4;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
