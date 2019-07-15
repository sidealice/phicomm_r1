.class public Lcom/unisound/ant/platform/smarthome/SmartExecutor;
.super Ljava/lang/Object;
.source "SmartExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;
    }
.end annotation


# static fields
.field public static final COMMAND_EXECUTE_FAIL:Ljava/lang/String; = "fail"

.field public static final COMMAND_EXECUTE_OK:Ljava/lang/String; = "ok"

.field private static final TAG:Ljava/lang/String; = "SmartExecutor"


# instance fields
.field private callBack:Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;

.field private ctx:Lcom/unisound/vui/engine/ANTHandlerContext;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 29
    return-void
.end method


# virtual methods
.method public executeCommand(Lcom/unisound/ant/platform/smarthome/bean/SmartAction;)V
    .locals 7
    .param p1, "action"    # Lcom/unisound/ant/platform/smarthome/bean/SmartAction;

    .prologue
    .line 50
    const-string v4, "SmartExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeCommand action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "ACT_PLAY"

    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getValue()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    if-nez v1, :cond_0

    .line 70
    .end local v1    # "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    :goto_0
    return-void

    .line 56
    .restart local v1    # "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    :cond_0
    new-instance v2, Lnluparser/scheme/NLU;

    invoke-direct {v2}, Lnluparser/scheme/NLU;-><init>()V

    .line 57
    .local v2, "nlu":Lnluparser/scheme/NLU;
    const-string v4, "cn.yunzhisheng.music"

    invoke-virtual {v2, v4}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 58
    const-string v4, "SEARCH_ARTIST"

    invoke-virtual {v2, v4}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 59
    new-instance v3, Lnluparser/scheme/MusicResult;

    invoke-direct {v3}, Lnluparser/scheme/MusicResult;-><init>()V

    .line 60
    .local v3, "result":Lnluparser/scheme/MusicResult;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lnluparser/scheme/MusicResult;->setCount(I)V

    .line 61
    invoke-virtual {v3, v1}, Lnluparser/scheme/MusicResult;->setMusicinfo(Ljava/util/List;)V

    .line 62
    new-instance v0, Lnluparser/scheme/Data;

    invoke-direct {v0}, Lnluparser/scheme/Data;-><init>()V

    .line 63
    .local v0, "data":Lnluparser/scheme/Data;
    invoke-virtual {v0, v3}, Lnluparser/scheme/Data;->setResult(Lnluparser/scheme/Result;)V

    .line 64
    invoke-virtual {v2, v0}, Lnluparser/scheme/NLU;->setData(Lnluparser/scheme/Data;)V

    .line 65
    iget-object v4, p0, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 68
    .end local v0    # "data":Lnluparser/scheme/Data;
    .end local v1    # "musics":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .end local v2    # "nlu":Lnluparser/scheme/NLU;
    .end local v3    # "result":Lnluparser/scheme/MusicResult;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->updateSmartDeviceState(Lcom/unisound/ant/platform/smarthome/bean/SmartAction;)V

    goto :goto_0
.end method

.method public executeCommands(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/platform/smarthome/bean/SmartAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/platform/smarthome/bean/SmartAction;>;"
    const-string v1, "SmartExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeCommands action size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;

    .line 42
    .local v0, "action":Lcom/unisound/ant/platform/smarthome/bean/SmartAction;
    invoke-virtual {p0, v0}, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->executeCommand(Lcom/unisound/ant/platform/smarthome/bean/SmartAction;)V

    goto :goto_0

    .line 44
    .end local v0    # "action":Lcom/unisound/ant/platform/smarthome/bean/SmartAction;
    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->callBack:Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;

    .line 37
    return-void
.end method

.method public updateSmartDeviceState(Lcom/unisound/ant/platform/smarthome/bean/SmartAction;)V
    .locals 4
    .param p1, "action"    # Lcom/unisound/ant/platform/smarthome/bean/SmartAction;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->callBack:Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;

    if-eqz v2, :cond_1

    .line 74
    new-instance v0, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;

    invoke-direct {v0}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;-><init>()V

    .line 75
    .local v0, "deviceStatus":Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;->setDeviceCode(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceExpr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;->setDeviceName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getRoom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;->setRoomName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;->setDeviceType(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getVendorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;->setVendorName(Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;

    invoke-direct {v1}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;-><init>()V

    .line 81
    .local v1, "paramter":Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;
    const-string v2, "OBJ_AC"

    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setObjAC(Ljava/lang/String;)V

    .line 83
    const-string v2, "28\u5ea6"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setAttrTemperature(Ljava/lang/String;)V

    .line 84
    const-string v2, "\u9001\u98ce\u6a21\u5f0f"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setAttrMode(Ljava/lang/String;)V

    .line 85
    const-string v2, "\u897f\u5357\u98ce"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setAttrWindDirection(Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;->setStateInfo(Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;)V

    .line 95
    iget-object v2, p0, Lcom/unisound/ant/platform/smarthome/SmartExecutor;->callBack:Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;

    const-string v3, "ok"

    invoke-interface {v2, v3, v0}, Lcom/unisound/ant/platform/smarthome/SmartExecutor$ExecutorCallBack;->onControlResult(Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V

    .line 97
    .end local v0    # "deviceStatus":Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;
    .end local v1    # "paramter":Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;
    :cond_1
    return-void

    .line 86
    .restart local v0    # "deviceStatus":Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;
    .restart local v1    # "paramter":Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;
    :cond_2
    const-string v2, "OBJ_LIGHT"

    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const-string v2, "20"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setAttrBrightness(Ljava/lang/String;)V

    .line 88
    const-string v2, "red"

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setAttrColor(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setObjLight(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v2, "OBJ_CURTAIN"

    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setAttrStatus(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/unisound/ant/platform/smarthome/bean/SmartAction;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/platform/smarthome/bean/SmartStateParamter;->setObjCurtain(Ljava/lang/String;)V

    goto :goto_0
.end method
