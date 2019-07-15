.class Lcom/phicomm/speaker/player/model/EasyPlayer$3$1;
.super Ljava/lang/Object;
.source "EasyPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/model/EasyPlayer$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$3;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/EasyPlayer$3;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$3$1;->this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/phicomm/speaker/player/model/EasyPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WAIT_EXTERNAL_CONNECT_TIMEOUT."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$3$1;->this$1:Lcom/phicomm/speaker/player/model/EasyPlayer$3;

    iget-object v0, v0, Lcom/phicomm/speaker/player/model/EasyPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->stopWaitingExternalConnect()Z

    .line 872
    return-void
.end method
