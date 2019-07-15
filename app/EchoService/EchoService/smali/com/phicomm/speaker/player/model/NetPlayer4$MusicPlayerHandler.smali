.class final Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;
.super Landroid/os/Handler;
.source "NetPlayer4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MusicPlayerHandler"
.end annotation


# instance fields
.field private mFadeInVolume:F

.field private mFadeOutVolume:F

.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    .line 805
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 801
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    .line 806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0xa

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 810
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 847
    :goto_0
    return-void

    .line 812
    :pswitch_0
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    .line 813
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 814
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v6, v7}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 818
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setVolume(F)V

    goto :goto_0

    .line 816
    :cond_0
    iput v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    goto :goto_1

    .line 822
    :pswitch_1
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    .line 823
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 824
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6, v7}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 828
    :goto_2
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setVolume(F)V

    goto :goto_0

    .line 826
    :cond_1
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    goto :goto_2

    .line 832
    :pswitch_2
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    .line 833
    iput v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    .line 834
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setVolume(F)V

    goto :goto_0

    .line 838
    :pswitch_3
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$200(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 839
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeOutVolume:F

    .line 840
    iput v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->mFadeInVolume:F

    .line 841
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-static {v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setVolume(F)V

    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
