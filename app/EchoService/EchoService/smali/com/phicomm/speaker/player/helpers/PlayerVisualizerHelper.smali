.class public Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;
.super Ljava/lang/Object;
.source "PlayerVisualizerHelper.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerVisualizer"

.field private static mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMsgManager:Landroid/os/MessageDispatchManager;

.field private mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

.field private mPlayingMusic:Z

.field private mUserEnable:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-direct {v0, v1, p1}, Lcom/phicomm/speaker/player/PlayerVisualizer;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->getUserLightEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    .line 28
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    .line 29
    const-string v0, "msgcenter"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mMsgManager:Landroid/os/MessageDispatchManager;

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mMsgManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPVHelper:Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    .line 78
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserEnable()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    return v0
.end method

.method public notifyMsg(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 44
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    monitor-enter p0

    .line 47
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    .line 48
    .local v0, "userEnable":Z
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerVisualizer userEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerVisualizer mUserEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 50
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    if-eq v1, v0, :cond_2

    .line 51
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    .line 52
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setUserLightEnable(Z)I

    .line 53
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayingMusic:Z

    if-eqz v1, :cond_3

    .line 54
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->enable()V

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mUserEnable:Z

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportAmbientLightStatus(Landroid/content/Context;IZ)V

    .line 60
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->disable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    .end local v0    # "userEnable":Z
    :pswitch_1
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setLumaGain(I)I

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setChromaGain(I)I

    goto :goto_0

    .line 69
    :pswitch_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->mPlayerVisualizer:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-virtual {v1, p3}, Lcom/phicomm/speaker/player/PlayerVisualizer;->setScalingMode(I)I

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
