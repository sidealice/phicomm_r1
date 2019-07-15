.class public Lcom/unisound/lib/self/mgr/SelfContractMgr;
.super Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;
.source "SelfContractMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/self/mgr/SelfContractMgr$SingleFactory;
    }
.end annotation


# static fields
.field public static final AUDITION_ALARM_RING:Ljava/lang/String; = "alarm_ring"

.field public static final AUDITION_MEMO_SOUND:Ljava/lang/String; = "memo_sound"

.field private static final EXCHANGE_SONG:Ljava/lang/String; = "\u4ea4\u63a5\u624b\u7eed"

.field public static final GENDER_CHILDREN:Ljava/lang/String; = "CHILDREN"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "FEMALE"

.field public static final GENDER_LZL:Ljava/lang/String; = "LZL"

.field public static final GENDER_MALE:Ljava/lang/String; = "MALE"

.field public static final GENDER_SWEET:Ljava/lang/String; = "SWEET"

.field private static final NEXT_SONG:Ljava/lang/String; = "\u4e0b\u4e00\u9996"

.field public static final OPERATION_TYPE_AUDITION:Ljava/lang/String; = "audition"

.field public static final OPERATION_TYPE_AUDITION_TTS_SPEAKER:Ljava/lang/String; = "auditionTtsSpeaker"

.field public static final OPERATION_TYPE_CHECK_DEVICE:Ljava/lang/String; = "checkDeviceStateManager"

.field public static final OPERATION_TYPE_GET_DEVICE_INFO:Ljava/lang/String; = "getDeviceInfoManager"

.field public static final OPERATION_TYPE_GET_LIGHT_STATUS:Ljava/lang/String; = "getLightingStatusManager"

.field public static final OPERATION_TYPE_MODIFY_DEVICE:Ljava/lang/String; = "modifyDeviceInfoManager"

.field public static final OPERATION_TYPE_MODIFY_DORMANT_STATUS:Ljava/lang/String; = "modifyDormantStatus"

.field public static final OPERATION_TYPE_MODIFY_LIGHT_STATUS:Ljava/lang/String; = "modifyDormantLightStatus"

.field public static final OPERATION_TYPE_MODIFY_TTS_PLAYER:Ljava/lang/String; = "modifyTtsPlayer"

.field public static final OPERATION_TYPE_MODIFY_WAKEUP_WORD:Ljava/lang/String; = "modifyWakeUpWord"

.field public static final OPERATION_TYPE_RESET_DEVICE:Ljava/lang/String; = "resetDevice"

.field private static final PRE_SONG:Ljava/lang/String; = "\u4e0a\u4e00\u9996"

.field public static final STATE_AUDIO:Ljava/lang/String; = "audio"

.field public static final STATE_MUSIC:Ljava/lang/String; = "music"

.field public static final STATE_NEWS:Ljava/lang/String; = "news"

.field public static final STATE_NONE:Ljava/lang/String; = "none"

.field private static final TAG:Ljava/lang/String; = "SelfContractMgr"


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/self/listener/ISelfContractCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    const-string v0, "selfDefinedManager"

    .line 145
    invoke-static {v0, p0}, Lcom/unisound/lib/msgcenter/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/lib/msgcenter/sessionlayer/SessionExecuteHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/lib/self/mgr/SelfContractMgr$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/unisound/lib/self/mgr/SelfContractMgr;-><init>()V

    return-void
.end method

.method private dispatchNoteControlCommand(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V
    .locals 4

    const-string v0, "SelfContractMgr"

    .line 176
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "SelfContractMgr"

    const-string v0, "dispatchNoteControlCommand command is null"

    .line 178
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/lib/msgcenter/bean/Accelerate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/msgcenter/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/k;

    const-string v1, "SelfContractMgr"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>dispatchNoteControlCommand operate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-class v0, Lcom/unisound/lib/self/bean/SelfContractBean;

    .line 185
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/JsonTool;->fromJson(Lcom/google/gson/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/self/bean/SelfContractBean;

    if-nez p1, :cond_1

    const-string p1, "SelfContractMgr"

    const-string v0, "dispatchNoteControlCommand get alarmReminder is null"

    .line 188
    invoke-static {p1, v0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v0

    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getSelfUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->setUdid(Ljava/lang/String;)V

    :cond_2
    const-string v0, "SelfContractMgr"

    .line 194
    invoke-static {p1}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/unisound/lib/self/mgr/SelfContractMgr;->removeWord(Lcom/unisound/lib/self/bean/SelfContractBean;)V

    .line 196
    iget-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/self/listener/ISelfContractCallBack;

    .line 198
    invoke-interface {v1, p1}, Lcom/unisound/lib/self/listener/ISelfContractCallBack;->onCallBack(Lcom/unisound/lib/self/bean/SelfContractBean;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/unisound/lib/self/mgr/SelfContractMgr;
    .locals 1

    .line 161
    sget-object v0, Lcom/unisound/lib/self/mgr/SelfContractMgr$SingleFactory;->instant:Lcom/unisound/lib/self/mgr/SelfContractMgr;

    return-object v0
.end method

.method private removeWord(Lcom/unisound/lib/self/bean/SelfContractBean;)V
    .locals 3

    .line 206
    :try_start_0
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getOperationType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDeviceInfoManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getWakeUpWord()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getWakeUpWord()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 210
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getWakeUpWord()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\u4e0a\u4e00\u9996"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u4e0b\u4e00\u9996"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u4ea4\u63a5\u624b\u7eed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/self/bean/SelfContractBean;->getContent()Lcom/unisound/lib/self/bean/SelfContractBean$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/lib/self/bean/SelfContractBean$Content;->getWakeUpWord()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SelfContractMgr"

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;

    .line 168
    invoke-direct {p0, p1}, Lcom/unisound/lib/self/mgr/SelfContractMgr;->dispatchNoteControlCommand(Lcom/unisound/lib/msgcenter/profile/DstServiceProfile;)V

    :goto_0
    return-void
.end method

.method public removeSelfContractListener(Lcom/unisound/lib/self/listener/ISelfContractCallBack;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSelfContractListener(Lcom/unisound/lib/self/listener/ISelfContractCallBack;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/unisound/lib/self/mgr/SelfContractMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
