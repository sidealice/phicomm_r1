.class Lcom/phicomm/speaker/player/model/NetPlayer4$14;
.super Ljava/lang/Object;
.source "NetPlayer4.java"

# interfaces
.implements Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .locals 0

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$14;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/phicomm/speaker/player/model/MultiMediaPlayer;II)Z
    .locals 2
    .param p1, "player"    # Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1138
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 1139
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$14;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1500(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1143
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1140
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 1141
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$14;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1600(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
