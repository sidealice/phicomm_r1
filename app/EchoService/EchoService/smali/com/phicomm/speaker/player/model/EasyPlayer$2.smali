.class Lcom/phicomm/speaker/player/model/EasyPlayer$2;
.super Ljava/lang/Object;
.source "EasyPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/interfaces/PlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/EasyPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/EasyPlayer;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/interfaces/Player;
    .param p2, "state"    # I
    .param p3, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onMediaState, player: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MediaState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayerStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$300(Lcom/phicomm/speaker/player/model/EasyPlayer;)I

    move-result v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->PlayStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " playPositionInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0, p1, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$800(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0, p1, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$900(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_0

    .line 806
    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 807
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0, p1, p2, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$1000(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_0

    .line 808
    :cond_4
    if-nez p2, :cond_5

    .line 809
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0, p1, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$700(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_0

    .line 810
    :cond_5
    const/4 v0, 0x5

    if-eq p2, v0, :cond_6

    const/4 v0, 0x6

    if-eq p2, v0, :cond_6

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 813
    :cond_6
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0, p1, p2, p3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$1100(Lcom/phicomm/speaker/player/model/EasyPlayer;Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_0
.end method

.method public onReqNewPage(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onReqNewPage page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$2;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$400(Lcom/phicomm/speaker/player/model/EasyPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestNewPage(Landroid/content/Context;I)V

    .line 821
    return-void
.end method
