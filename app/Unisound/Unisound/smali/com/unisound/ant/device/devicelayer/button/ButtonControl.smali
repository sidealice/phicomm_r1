.class public Lcom/unisound/ant/device/devicelayer/button/ButtonControl;
.super Ljava/lang/Object;
.source "ButtonControl.java"


# instance fields
.field protected ctx:Lcom/unisound/vui/engine/ANTHandlerContext;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 28
    return-void
.end method

.method private varargs getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;
    .locals 7
    .param p1, "operatorAction"    # Ljava/lang/String;
    .param p2, "param"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/SettingExtIntent;",
            "Lnluparser/scheme/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 211
    .local v1, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/SettingExtIntent;Lnluparser/scheme/Result;>;"
    const-string v5, "\u4e0a\u4e00\u9996"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 212
    const-string v5, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 213
    const-string v5, "SETTING_EXEC"

    invoke-virtual {v1, v5}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 214
    new-instance v4, Lnluparser/scheme/Semantic;

    invoke-direct {v4}, Lnluparser/scheme/Semantic;-><init>()V

    .line 215
    .local v4, "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/SettingExtIntent;>;"
    new-instance v0, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {v0}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    .line 216
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v3, "operators":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    new-instance v2, Lnluparser/scheme/SettingIntent;

    invoke-direct {v2}, Lnluparser/scheme/SettingIntent;-><init>()V

    .line 218
    .local v2, "operator":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v2, p1}, Lnluparser/scheme/SettingIntent;->setOperator(Ljava/lang/String;)V

    .line 219
    if-eqz p2, :cond_0

    array-length v5, p2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 220
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setConfirm(Ljava/lang/String;)V

    .line 222
    :cond_0
    const-string v5, "OBJ_MEDIA_PLAYER"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setDeviceType(Ljava/lang/String;)V

    .line 223
    const-string v5, "ATTR_BUTTON"

    invoke-virtual {v2, v5}, Lnluparser/scheme/SettingIntent;->setOperands(Ljava/lang/String;)V

    .line 224
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v0, v3}, Lnluparser/scheme/SettingExtIntent;->setOperations(Ljava/util/List;)V

    .line 226
    invoke-virtual {v4, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 227
    invoke-virtual {v1, v4}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 228
    return-object v1
.end method


# virtual methods
.method public collectMusic(Z)V
    .locals 5
    .param p1, "isCollect"    # Z

    .prologue
    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "nlu":Lnluparser/scheme/NLU;
    if-eqz p1, :cond_0

    .line 69
    const-string v1, "ACT_BOOKMARK"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 78
    :goto_1
    return-void

    .line 71
    :cond_0
    const-string v1, "ACT_BOOKMARK"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CANCEL"

    aput-object v3, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enterAlertMode(Z)V
    .locals 4
    .param p1, "isOpen"    # Z

    .prologue
    .line 171
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 172
    .local v1, "nlu":Lnluparser/scheme/NLU;
    const-string v3, "\u8b66\u6212\u6a21\u5f0f"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 173
    const-string v3, "cn.yunzhisheng.scenemode"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 174
    new-instance v2, Lnluparser/scheme/Semantic;

    invoke-direct {v2}, Lnluparser/scheme/Semantic;-><init>()V

    .line 175
    .local v2, "semantic":Lnluparser/scheme/Semantic;
    new-instance v0, Lnluparser/scheme/SceneModeIntent;

    invoke-direct {v0}, Lnluparser/scheme/SceneModeIntent;-><init>()V

    .line 176
    .local v0, "intent":Lnluparser/scheme/SceneModeIntent;
    const-string v3, "alertMode"

    invoke-virtual {v0, v3}, Lnluparser/scheme/SceneModeIntent;->setSceneName(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Lnluparser/scheme/SceneModeIntent;->setOpen(Z)V

    .line 178
    invoke-virtual {v2, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 179
    invoke-virtual {v1, v2}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 180
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v3, "-->>ctx is null"

    invoke-static {v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enterNightMode()V
    .locals 4

    .prologue
    .line 188
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 189
    .local v1, "nlu":Lnluparser/scheme/NLU;
    const-string v3, "\u591c\u95f4\u6a21\u5f0f"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 190
    const-string v3, "cn.yunzhisheng.scenemode"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 191
    new-instance v2, Lnluparser/scheme/Semantic;

    invoke-direct {v2}, Lnluparser/scheme/Semantic;-><init>()V

    .line 192
    .local v2, "semantic":Lnluparser/scheme/Semantic;
    new-instance v0, Lnluparser/scheme/SceneModeIntent;

    invoke-direct {v0}, Lnluparser/scheme/SceneModeIntent;-><init>()V

    .line 193
    .local v0, "intent":Lnluparser/scheme/SceneModeIntent;
    const-string v3, "nightMode"

    invoke-virtual {v0, v3}, Lnluparser/scheme/SceneModeIntent;->setSceneName(Ljava/lang/String;)V

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lnluparser/scheme/SceneModeIntent;->setOpen(Z)V

    .line 195
    const-string v3, "23:00"

    invoke-virtual {v0, v3}, Lnluparser/scheme/SceneModeIntent;->setStartTime(Ljava/lang/String;)V

    .line 196
    const-string v3, "08:30"

    invoke-virtual {v0, v3}, Lnluparser/scheme/SceneModeIntent;->setStopTime(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 198
    invoke-virtual {v1, v2}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 199
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v3, "-->>ctx is null"

    invoke-static {v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public nextMusic()V
    .locals 3

    .prologue
    .line 31
    const-string v1, "ACT_NEXT"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 32
    .local v0, "nlu":Lnluparser/scheme/NLU;
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseMusic()V
    .locals 3

    .prologue
    .line 49
    const-string v1, "ACT_PAUSE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 50
    .local v0, "nlu":Lnluparser/scheme/NLU;
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playAudioListWithIndex(Ljava/lang/String;)V
    .locals 4
    .param p1, "audioListJson"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v1, "ACT_PLAY_AUDIO_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 145
    .local v0, "nlu":Lnluparser/scheme/NLU;
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMusic()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "ACT_PLAY"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 59
    .local v0, "nlu":Lnluparser/scheme/NLU;
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playMusicListWithIndex(Ljava/lang/String;)V
    .locals 4
    .param p1, "musicData"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v1, "ACT_PLAY_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 131
    .local v0, "nlu":Lnluparser/scheme/NLU;
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prevMusic()V
    .locals 3

    .prologue
    .line 40
    const-string v1, "ACT_PREV"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 41
    .local v0, "nlu":Lnluparser/scheme/NLU;
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startForbidenMic(Z)V
    .locals 5
    .param p1, "isOpen"    # Z

    .prologue
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startForbidenMic isOpen= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;)V

    .line 154
    new-instance v1, Lnluparser/scheme/NLU;

    invoke-direct {v1}, Lnluparser/scheme/NLU;-><init>()V

    .line 155
    .local v1, "nlu":Lnluparser/scheme/NLU;
    const-string v3, "\u7981\u7528Mic"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 156
    const-string v3, "cn.yunzhisheng.scenemode"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 157
    new-instance v2, Lnluparser/scheme/Semantic;

    invoke-direct {v2}, Lnluparser/scheme/Semantic;-><init>()V

    .line 158
    .local v2, "semantic":Lnluparser/scheme/Semantic;
    new-instance v0, Lnluparser/scheme/SceneModeIntent;

    invoke-direct {v0}, Lnluparser/scheme/SceneModeIntent;-><init>()V

    .line 159
    .local v0, "intent":Lnluparser/scheme/SceneModeIntent;
    const-string v3, "sleepMode"

    invoke-virtual {v0, v3}, Lnluparser/scheme/SceneModeIntent;->setSceneName(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p1}, Lnluparser/scheme/SceneModeIntent;->setOpen(Z)V

    .line 161
    invoke-virtual {v2, v0}, Lnluparser/scheme/Semantic;->setIntent(Lnluparser/scheme/Intent;)V

    .line 162
    invoke-virtual {v1, v2}, Lnluparser/scheme/NLU;->setSemantic(Lnluparser/scheme/Semantic;)V

    .line 163
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v3, "-->>ctx is null"

    invoke-static {v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchMusicPlayMode(Ljava/lang/String;)V
    .locals 8
    .param p1, "playMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 84
    const-string v5, "switchPlayMode"

    new-array v6, v7, [Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    .line 85
    .local v2, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/SettingExtIntent;Lnluparser/scheme/Result;>;"
    const-string v5, "\u5207\u6362\u64ad\u653e\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    .line 88
    .local v3, "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/SettingExtIntent;>;"
    if-nez v3, :cond_0

    .line 89
    new-instance v3, Lnluparser/scheme/Semantic;

    .end local v3    # "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/SettingExtIntent;>;"
    invoke-direct {v3}, Lnluparser/scheme/Semantic;-><init>()V

    .line 91
    .restart local v3    # "semantic":Lnluparser/scheme/Semantic;, "Lnluparser/scheme/Semantic<Lnluparser/scheme/SettingExtIntent;>;"
    :cond_0
    invoke-virtual {v3}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/SettingExtIntent;

    .line 92
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lnluparser/scheme/SettingExtIntent;

    .end local v0    # "intent":Lnluparser/scheme/SettingExtIntent;
    invoke-direct {v0}, Lnluparser/scheme/SettingExtIntent;-><init>()V

    .line 95
    .restart local v0    # "intent":Lnluparser/scheme/SettingExtIntent;
    :cond_1
    invoke-virtual {v0}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    if-nez v1, :cond_2

    .line 97
    new-instance v4, Lnluparser/scheme/SettingIntent;

    invoke-direct {v4}, Lnluparser/scheme/SettingIntent;-><init>()V

    .line 98
    .local v4, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v4, p1}, Lnluparser/scheme/SettingIntent;->setValue(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v4    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :goto_0
    iget-object v5, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v5, :cond_3

    .line 105
    iget-object v5, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 109
    :goto_1
    return-void

    .line 102
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnluparser/scheme/SettingIntent;

    invoke-virtual {v5, p1}, Lnluparser/scheme/SettingIntent;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    const-string v5, "-->>ctx is null"

    invoke-static {v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public switchTo(Ljava/lang/String;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "nlu":Lnluparser/scheme/NLU;
    const-string v1, "ACT_SWITCH"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->getControlNlu(Ljava/lang/String;[Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v1, "-->>ctx is null"

    invoke-static {v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
