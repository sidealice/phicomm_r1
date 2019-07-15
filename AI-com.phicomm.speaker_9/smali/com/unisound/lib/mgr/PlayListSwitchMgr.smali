.class public Lcom/unisound/lib/mgr/PlayListSwitchMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "PlayListSwitchMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/mgr/PlayListSwitchMgr$SingleFactory;
    }
.end annotation


# static fields
.field public static final SWITCH_AUDIO:Ljava/lang/String; = "switch_audio"

.field public static final SWITCH_BROADCAST:Ljava/lang/String; = "switch_broadcast"

.field public static final SWITCH_MUSIC:Ljava/lang/String; = "switch_music"

.field private static final TAG:Ljava/lang/String; = "PlayListSwitchMgr"


# instance fields
.field private mISwitchListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/mgr/ISwitchListListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->mISwitchListListeners:Ljava/util/List;

    const-string v0, "switchPlayList"

    .line 35
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/mgr/PlayListSwitchMgr$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/mgr/PlayListSwitchMgr;
    .locals 1

    .line 51
    sget-object v0, Lcom/unisound/lib/mgr/PlayListSwitchMgr$SingleFactory;->instant:Lcom/unisound/lib/mgr/PlayListSwitchMgr;

    return-object v0
.end method


# virtual methods
.method public disPatchPlayListCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 4

    .line 94
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListSwitchMgr"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>disPatchDeviceStateUpdateCommand command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "switchCurrentMusic"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "switchMusicCollectionList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "switchCurrentAudio"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "switchAudioCollectionList"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "switchCurrentAudio"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "switchAudioCollectionList"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_0
    const-string p1, "switch_broadcast"

    goto :goto_3

    :cond_4
    :goto_1
    const-string p1, "switch_audio"

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "switch_music"

    .line 107
    :goto_3
    iget-object v0, p0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->mISwitchListListeners:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->mISwitchListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/mgr/ISwitchListListener;

    .line 109
    invoke-interface {v1, p1}, Lcom/unisound/lib/mgr/ISwitchListListener;->onPlaylistChange(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    .line 81
    invoke-virtual {p0, p1}, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->disPatchPlayListCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    :goto_0
    return-void
.end method

.method public removeSwitchListListener(Lcom/unisound/lib/mgr/ISwitchListListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->mISwitchListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->mISwitchListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSwitchListListener(Lcom/unisound/lib/mgr/ISwitchListListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/unisound/lib/mgr/PlayListSwitchMgr;->mISwitchListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
