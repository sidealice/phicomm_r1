.class public Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;
.super Ljava/lang/Object;
.source "DefaultVolumeOperator.java"

# interfaces
.implements Lcom/unisound/ant/device/controlor/VolumeOperator;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultVolumeOperator"

.field private static final VOLUME_INTERVAL:I = 0x1

.field private static final VOLUME_MIN:I = 0x1

.field private static sInstance:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mMaxMusicVolume:Ljava/lang/Integer;

.field private mVolumeBeforeMuteOn:I

.field private mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/unisound/ant/device/listener/VolumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x7

    iput v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeBeforeMuteOn:I

    .line 30
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    return-void
.end method

.method private closeMute()V
    .locals 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 179
    :cond_0
    return-void
.end method

.method private fireVolumeChange()V
    .locals 8

    .prologue
    .line 182
    iget-object v3, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    .local v2, "volumeListenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/unisound/ant/device/listener/VolumeListener;>;"
    invoke-virtual {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getCurrentVolume()I

    move-result v0

    .line 184
    .local v0, "currentVolume":I
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMaxVolume()I

    move-result v1

    .line 185
    .local v1, "maxVolume":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/ant/device/listener/VolumeListener;

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/unisound/ant/device/listener/VolumeListener;->onVolumeChanged(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;)V

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->sInstance:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->sInstance:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->sInstance:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->sInstance:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMusicCurrentVolume()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private getMusicMaxVolume()I
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mMaxMusicVolume:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mMaxMusicVolume:Ljava/lang/Integer;

    .line 168
    :cond_0
    const-string v0, "DefaultVolumeOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxMusicVolume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mMaxMusicVolume:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mMaxMusicVolume:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getMusicMinVolume()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->sInstance:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    .line 36
    return-void
.end method

.method private setVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->closeMute()V

    .line 136
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMinVolume()I

    move-result v1

    .line 137
    .local v1, "musicMinVolume":I
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMaxVolume()I

    move-result v0

    .line 138
    .local v0, "musicMaxVolume":I
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 139
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->fireVolumeChange()V

    .line 142
    return-void
.end method


# virtual methods
.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMaxVolume()I

    move-result v0

    return v0
.end method

.method public isMaxMusicVolume()Z
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMaxVolume()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinMusicVolume()Z
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMinVolume()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/unisound/ant/device/listener/VolumeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/ant/device/listener/VolumeListener;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public setMuteOff()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "DefaultVolumeOperator"

    const-string v1, "setMuteOff"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeBeforeMuteOn:I

    invoke-direct {p0, v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 110
    return-void
.end method

.method public setMuteOn()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->closeMute()V

    .line 102
    const-string v0, "DefaultVolumeOperator"

    const-string v1, "setMuteOn"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    iput v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeBeforeMuteOn:I

    .line 104
    invoke-virtual {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeMin()V

    .line 105
    return-void
.end method

.method public setVoiceVolume(F)V
    .locals 3
    .param p1, "percent"    # F

    .prologue
    .line 118
    const-string v0, "DefaultVolumeOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceVolume percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMaxVolume()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 120
    return-void
.end method

.method public setVoiceVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 113
    const-string v0, "DefaultVolumeOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceVolume volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 115
    return-void
.end method

.method public setVolumeLower()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    .line 85
    .local v0, "volume":I
    add-int/lit8 v0, v0, -0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 87
    return-void
.end method

.method public setVolumeMax()V
    .locals 3

    .prologue
    .line 90
    const-string v1, "DefaultVolumeOperator"

    const-string v2, "setVolumeMax"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicMaxVolume()I

    move-result v0

    .line 92
    .local v0, "musicMaxVolume":I
    invoke-direct {p0, v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 93
    return-void
.end method

.method public setVolumeMin()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "DefaultVolumeOperator"

    const-string v1, "setVolumeMin"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 98
    return-void
.end method

.method public setVolumeRaise()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMusicCurrentVolume()I

    move-result v0

    .line 79
    .local v0, "volume":I
    add-int/lit8 v0, v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolume(I)V

    .line 81
    return-void
.end method

.method public unRegisterListener(Lcom/unisound/ant/device/listener/VolumeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unisound/ant/device/listener/VolumeListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->mVolumeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method
