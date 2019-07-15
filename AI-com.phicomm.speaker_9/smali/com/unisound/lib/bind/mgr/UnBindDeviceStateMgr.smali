.class public Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "UnBindDeviceStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr$SingleFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnBindDeviceStateMgr"


# instance fields
.field private mChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/bind/listener/IUnBindDeviceStatelistener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    const-string v0, "unBinded"

    .line 30
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;-><init>()V

    return-void
.end method

.method private getHandMessage(Landroid/os/Message;)V
    .locals 0

    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    .line 88
    invoke-virtual {p0, p1}, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->disPatchDeviceStateUpdateCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V

    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;
    .locals 1

    .line 46
    sget-object v0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr$SingleFactory;->instant:Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;

    return-object v0
.end method


# virtual methods
.method public disPatchDeviceStateUpdateCommand(Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;)V
    .locals 4

    .line 97
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnBindDeviceStateMgr"

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>disPatchDeviceStateUpdateCommand command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    .line 100
    iget-object p1, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/bind/listener/IUnBindDeviceStatelistener;

    .line 102
    invoke-interface {v1, v0}, Lcom/unisound/lib/bind/listener/IUnBindDeviceStatelistener;->unBindStateChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->getHandMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public removeUnBindDeviceStatelistener(Lcom/unisound/lib/bind/listener/IUnBindDeviceStatelistener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUnBindDeviceStatelistener(Lcom/unisound/lib/bind/listener/IUnBindDeviceStatelistener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/unisound/lib/bind/mgr/UnBindDeviceStateMgr;->mChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
