.class public Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;
.super Ljava/lang/Object;
.source "PhicommMusicController.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/impl/IMusicController;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMessageManager:Landroid/os/MessageDispatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    .line 31
    return-void
.end method

.method private getMusicJson(Lnluparser/scheme/MusicResult$Music;)Lcom/google/gson/JsonObject;
    .locals 3
    .param p1, "music"    # Lnluparser/scheme/MusicResult$Music;

    .prologue
    .line 56
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 57
    .local v0, "musicJson":Lcom/google/gson/JsonObject;
    const-string v1, "title"

    invoke-virtual {p1}, Lnluparser/scheme/MusicResult$Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "url"

    invoke-virtual {p1}, Lnluparser/scheme/MusicResult$Music;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method private setCircleMode()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 126
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER setCircleMode 7-4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 128
    return-void
.end method

.method private setOrderMode()V
    .locals 5

    .prologue
    .line 116
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER setOrderMode 7-2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 118
    return-void
.end method

.method private setRandomMode()V
    .locals 5

    .prologue
    .line 111
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER setRandomMode 7-1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 113
    return-void
.end method

.method private setSingleMode()V
    .locals 5

    .prologue
    .line 121
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER setSingleMode 7-3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 123
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 88
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER exit 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 90
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 82
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER pause 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 84
    return-void
.end method

.method public play()V
    .locals 5

    .prologue
    .line 76
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER play 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 78
    return-void
.end method

.method public playNext()V
    .locals 5

    .prologue
    .line 64
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER playNext 6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 66
    return-void
.end method

.method public playPrev()V
    .locals 5

    .prologue
    .line 70
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage MSG_TYPE_PLAYER playPrev 5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 72
    return-void
.end method

.method public playRandomMusic()V
    .locals 5

    .prologue
    .line 35
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    const-string v1, "sendMessage : MSG_TYPE_PLAYER playRandomMusic 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 37
    return-void
.end method

.method public playSpecifiedMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "singer"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public playSpecifiedMusic(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 47
    .local v1, "musicJsonArr":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/MusicResult$Music;

    .line 48
    .local v0, "music":Lnluparser/scheme/MusicResult$Music;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->getMusicJson(Lnluparser/scheme/MusicResult$Music;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 50
    .end local v0    # "music":Lnluparser/scheme/MusicResult$Music;
    :cond_0
    sget-object v2, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage MSG_TYPE_PLAYER playSpecifiedMusic 1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 52
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v6

    .line 51
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 53
    return-void
.end method

.method public setPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
    .locals 2
    .param p1, "playMode"    # Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .prologue
    .line 94
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController$1;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->setRandomMode()V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->setOrderMode()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->setSingleMode()V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommMusicController;->setCircleMode()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
