.class Lcom/phicomm/speaker/player/model/DlnaPlayer$8;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer;->Pause()I
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
    .line 297
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$8;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$8;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$900(Lcom/phicomm/speaker/player/model/DlnaPlayer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 297
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$8;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
