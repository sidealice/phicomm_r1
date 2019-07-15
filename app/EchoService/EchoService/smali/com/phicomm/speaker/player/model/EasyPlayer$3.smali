.class Lcom/phicomm/speaker/player/model/EasyPlayer$3;
.super Landroid/os/Handler;
.source "EasyPlayer.java"


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
    .line 862
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/EasyPlayer$3;->this$0:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 865
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 876
    :goto_0
    return-void

    .line 867
    :pswitch_0
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/model/EasyPlayer$3$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/EasyPlayer$3$1;-><init>(Lcom/phicomm/speaker/player/model/EasyPlayer$3;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
