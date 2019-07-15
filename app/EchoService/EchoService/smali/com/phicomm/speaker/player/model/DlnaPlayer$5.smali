.class Lcom/phicomm/speaker/player/model/DlnaPlayer$5;
.super Ljava/lang/Object;
.source "DlnaPlayer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/DlnaPlayer;->SetDataSource(Ljava/lang/String;)I
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

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/DlnaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    iput-object p2, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;->this$0:Lcom/phicomm/speaker/player/model/DlnaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;->val$uri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/model/DlnaPlayer;->access$600(Lcom/phicomm/speaker/player/model/DlnaPlayer;Ljava/lang/String;)I

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
    .line 184
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/DlnaPlayer$5;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
