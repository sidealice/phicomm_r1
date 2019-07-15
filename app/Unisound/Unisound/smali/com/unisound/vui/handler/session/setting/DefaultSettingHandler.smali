.class public Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultSettingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lnluparser/scheme/Intent;",
        ">",
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/Intent;",
        "Lnluparser/scheme/Result$NullResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ACT_DECREASE:I = 0x1

.field private static final ACT_INCREASE:I = 0x0

.field private static final ACT_MAX:I = 0x2

.field private static final ACT_MIN:I = 0x3

.field public static final ACT_PHICOMM_CLOSE_AMBIENTLIGHT:Ljava/lang/String; = "ACT_PHICOMM_CLOSE_AMBIENTLIGHT"

.field public static final ACT_PHICOMM_CLOSE_SOUNDEFFECT:Ljava/lang/String; = "ACT_PHICOMM_CLOSE_SOUNDEFFECT"

.field public static final ACT_PHICOMM_OPEN_AMBIENTLIGHT:Ljava/lang/String; = "ACT_PHICOMM_OPEN_AMBIENTLIGHT"

.field public static final ACT_PHICOMM_OPEN_SOUNDEFFECT:Ljava/lang/String; = "ACT_PHICOMM_OPEN_SOUNDEFFECT"

.field private static final ACT_SET:I = 0x4

.field private static final ACT_UNSET:I = 0x5

.field private static final DATA_TYPE_INT:Ljava/lang/String; = "int"

.field private static final DATA_TYPE_PERCENT:Ljava/lang/String; = "percent"

.field private static final GLOBAL_CMD:I = 0x2

.field private static final HEALTH_INFO:I = 0x3

.field private static final OBJ_AMBIENTLIGHT:Ljava/lang/String; = "AmbientLight"

.field private static final OBJ_SOUNDEFFECT:Ljava/lang/String; = "SoundEffect"

.field private static final SETTING:I = 0x0

.field private static final SETTING_AIR:I = 0x4

.field private static final SETTING_COMMON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultSettingHandler"


# instance fields
.field private isGlobalCancel:Z

.field private mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

.field private tempMainWakeup:Ljava/lang/String;

.field private tempSetOperands:Ljava/lang/String;

.field private type:I

.field private volumeOperation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/setting/SettingHandler;)V
    .locals 3
    .param p1, "settingHandler"    # Lcom/unisound/vui/handler/session/setting/SettingHandler;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 74
    iput-object p1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    .line 76
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    const-string v1, "ACT_INCREASE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    const-string v1, "ACT_DECREASE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    const-string v1, "ACT_MAX"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    const-string v1, "ACT_MIN"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    const-string v1, "ACT_SET"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    const-string v1, "ACT_UNSET"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private adjustVolume(II)V
    .locals 1
    .param p1, "volumeSet"    # I
    .param p2, "volume"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v0, -0x1

    .line 536
    packed-switch p1, :pswitch_data_0

    .line 567
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 538
    :pswitch_1
    if-eq p2, v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVoiceVolume(I)V

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeRaise()V

    goto :goto_0

    .line 545
    :pswitch_2
    if-eq p2, v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVoiceVolume(I)V

    goto :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeLower()V

    goto :goto_0

    .line 552
    :pswitch_3
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeMax()V

    goto :goto_0

    .line 555
    :pswitch_4
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeMin()V

    goto :goto_0

    .line 558
    :pswitch_5
    if-eq p2, v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVoiceVolume(I)V

    goto :goto_0

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private checkWakeupAndAnswer(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "wakeup"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v8, -0x1

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "answer":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 651
    sget v5, Lcom/unisound/vui/handler/session/setting/R$string;->tts_wakeupword_unsupport:I

    iget-object v6, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 652
    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 677
    .end local v0    # "answer":Ljava/lang/String;
    .local v1, "answer":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 655
    .end local v1    # "answer":Ljava/lang/String;
    .restart local v0    # "answer":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .line 656
    .local v4, "wordToCheck":Ljava/lang/String;
    sget v5, Lcom/unisound/vui/handler/session/setting/R$string;->tts_wakeupword_prefix:I

    iget-object v6, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 657
    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "wakeupwordPrefix":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 659
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 661
    :cond_1
    invoke-virtual {p0, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->matchWakeUpWord(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 662
    sget v5, Lcom/unisound/vui/handler/session/setting/R$string;->tts_wakeupword_unsupport:I

    iget-object v6, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 663
    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 664
    .end local v0    # "answer":Ljava/lang/String;
    .restart local v1    # "answer":Ljava/lang/String;
    goto :goto_0

    .line 666
    .end local v1    # "answer":Ljava/lang/String;
    .restart local v0    # "answer":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 667
    iget-object v5, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceNick(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "nickName":Ljava/lang/String;
    const-string v5, "DefaultSettingHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last nickName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " final newWord="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 670
    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 671
    :cond_3
    sget v5, Lcom/unisound/vui/handler/session/setting/R$string;->tts_wakeupword_duplicate:I

    iget-object v6, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 672
    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v8, v6}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 673
    .end local v0    # "answer":Ljava/lang/String;
    .restart local v1    # "answer":Ljava/lang/String;
    goto/16 :goto_0

    .line 675
    .end local v1    # "answer":Ljava/lang/String;
    .restart local v0    # "answer":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceNick(Landroid/content/Context;Ljava/lang/String;)V

    .line 676
    iput-object p1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempMainWakeup:Ljava/lang/String;

    move-object v1, v0

    .line 677
    .end local v0    # "answer":Ljava/lang/String;
    .restart local v1    # "answer":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private exitAfterEnterOtherSession()V
    .locals 1

    .prologue
    .line 595
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->reset()V

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    .line 599
    return-void
.end method

.method private fireToMusic(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "asr"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v0, 0x1

    .line 467
    const-string v1, "ACT_PAUSE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPauseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 496
    :goto_0
    return v0

    .line 472
    :cond_0
    const-string v1, "ACT_STOP"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicStopNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 477
    :cond_1
    const-string v1, "ACT_CLOSE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicCloseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 482
    :cond_2
    const-string v1, "ACT_PREV"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPrevNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 487
    :cond_3
    const-string v1, "ACT_NEXT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicNextNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 492
    :cond_4
    const-string v1, "ACT_RESUME"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 493
    iget-object v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPlayNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 496
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSettingIntent(Lnluparser/scheme/NLU;)Lnluparser/scheme/SettingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;)",
            "Lnluparser/scheme/SettingIntent;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    const/4 v1, 0x0

    .line 501
    .local v1, "settingIntent":Lnluparser/scheme/SettingIntent;
    const/4 v0, 0x0

    .line 502
    .local v0, "settingExtIntent":Lnluparser/scheme/SettingExtIntent;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v0

    .end local v0    # "settingExtIntent":Lnluparser/scheme/SettingExtIntent;
    check-cast v0, Lnluparser/scheme/SettingExtIntent;

    .line 505
    .restart local v0    # "settingExtIntent":Lnluparser/scheme/SettingExtIntent;
    :cond_0
    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {v0}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 507
    invoke-virtual {v0}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 508
    :cond_1
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v1

    .end local v1    # "settingIntent":Lnluparser/scheme/SettingIntent;
    check-cast v1, Lnluparser/scheme/SettingIntent;

    .line 512
    .restart local v1    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :goto_0
    return-object v1

    .line 510
    :cond_2
    invoke-virtual {v0}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "settingIntent":Lnluparser/scheme/SettingIntent;
    check-cast v1, Lnluparser/scheme/SettingIntent;

    .restart local v1    # "settingIntent":Lnluparser/scheme/SettingIntent;
    goto :goto_0
.end method

.method private handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ansewr"    # Ljava/lang/String;

    .prologue
    .line 425
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const-string v0, "DefaultSettingHandler"

    const-string v1, "handlePhicommSmartHomeProtocal: "

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    const-string v1, "ACT_PHICOMM_SMART_HOME"

    invoke-interface {v0, v1, p1}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method private isCancelOperate(Lnluparser/scheme/NLU;)Z
    .locals 9
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 626
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "serviceName":Ljava/lang/String;
    const-string v7, "cn.yunzhisheng.global.cmd"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 628
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/GlobalCmdIntent;

    .line 629
    .local v0, "intent":Lnluparser/scheme/GlobalCmdIntent;
    invoke-virtual {v0}, Lnluparser/scheme/GlobalCmdIntent;->getConfirm()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "operate":Ljava/lang/String;
    const-string v7, "CANCEL"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 645
    .end local v0    # "intent":Lnluparser/scheme/GlobalCmdIntent;
    .end local v2    # "operate":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 633
    :cond_1
    const-string v7, "cn.yunzhisheng.setting"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 634
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v7

    invoke-virtual {v7}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v4

    check-cast v4, Lnluparser/scheme/SettingExtIntent;

    .line 635
    .local v4, "settingExtIntent":Lnluparser/scheme/SettingExtIntent;
    if-eqz v4, :cond_2

    .line 636
    invoke-virtual {v4}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v1

    .line 637
    .local v1, "intents":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 638
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/SettingIntent;

    .line 639
    .local v0, "intent":Lnluparser/scheme/SettingIntent;
    if-eqz v0, :cond_2

    const-string v7, "CANCEL"

    invoke-virtual {v0}, Lnluparser/scheme/SettingIntent;->getConfirm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .end local v0    # "intent":Lnluparser/scheme/SettingIntent;
    .end local v1    # "intents":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    .end local v4    # "settingExtIntent":Lnluparser/scheme/SettingExtIntent;
    :cond_2
    move v5, v6

    .line 645
    goto :goto_0
.end method

.method private isGlobalCancelword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "recTxt"    # Ljava/lang/String;

    .prologue
    .line 687
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    iget-object v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/setting/R$string;->globle_cancel_bye:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "byeString":Ljava/lang/String;
    iget-object v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/setting/R$string;->globle_cancel_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "exitString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    :cond_0
    const/4 v2, 0x1

    .line 692
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPhicommSmartHome(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "operands"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v0, 0x1

    .line 433
    const-string v1, "DefaultSettingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhicommSmartHome: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "ATTR_MODE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const-string v1, "MODE_GUEST"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MODE_LEAVE_HOME"

    .line 436
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MODE_GO_HOME"

    .line 437
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MODE_MORNING"

    .line 438
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MODE_SLEEP"

    .line 439
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MODE_DINING"

    .line 440
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MODE_MOVIE"

    .line 441
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    const-string v1, "OBJ_LIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_LIGHT"

    .line 445
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_AC"

    .line 446
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_FAN"

    .line 447
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_CURTAIN"

    .line 448
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_HUMIDIFIER"

    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_DEHUMIDIFIER"

    .line 450
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_WATER_DISPENSER"

    .line 451
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_WATER_HEATER"

    .line 452
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_FRIDGE"

    .line 453
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_KITCHEN_VENTILAT"

    .line 454
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_OUTLET"

    .line 455
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_ROUTER"

    .line 456
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATTR_HOME_AIRQUALITY"

    .line 457
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OBJ_AIR_CLEANER"

    .line 458
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATTR_WIND_SPEED"

    .line 459
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isVolumeValid(I)Z
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 613
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMaxVolume()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    const-string v3, "DefaultSettingHandler"

    const-string v4, "acceptInboundEvent0"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v3, -0x1

    iput v3, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    .line 103
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "service":Ljava/lang/String;
    const-string v3, "cn.yunzhisheng.setting"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iput v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    .line 120
    :goto_0
    return v1

    .line 107
    :cond_0
    const-string v3, "cn.yunzhisheng.setting.common"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iput v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    goto :goto_0

    .line 110
    :cond_1
    const-string v3, "cn.yunzhisheng.global.cmd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    const/4 v2, 0x2

    iput v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    goto :goto_0

    .line 113
    :cond_2
    const-string v3, "cn.yunzhisheng.health.info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    const/4 v2, 0x3

    iput v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    goto :goto_0

    .line 116
    :cond_3
    const-string v3, "cn.yunzhisheng.setting.air"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    const/4 v2, 0x4

    iput v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    goto :goto_0

    :cond_4
    move v1, v2

    .line 120
    goto :goto_0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 516
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const-string v0, "DefaultSettingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInterrupt eventReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->interrupt(Ljava/lang/String;)V

    .line 520
    :cond_0
    return-void
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 25
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    invoke-super/range {p0 .. p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 148
    const-string v22, "DefaultSettingHandler"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "eventReceived type = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",evt"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "ansewr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->getSettingIntent(Lnluparser/scheme/NLU;)Lnluparser/scheme/SettingIntent;

    move-result-object v9

    .line 152
    .local v9, "intent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v9}, Lnluparser/scheme/SettingIntent;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 153
    .local v19, "value":Ljava/lang/String;
    invoke-virtual {v9}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v15

    .line 154
    .local v15, "operator":Ljava/lang/String;
    invoke-virtual {v9}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, "operands":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    .line 156
    const-string v22, "ATTR_VOLUME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 157
    invoke-virtual {v9}, Lnluparser/scheme/SettingIntent;->getDatatype()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "dataType":Ljava/lang/String;
    const-string v22, "ACT_SET"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 160
    const-string v22, "percent"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "int"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 161
    :cond_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v16, v22, v23

    .line 162
    .local v16, "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getMaxVolume()I

    move-result v10

    .line 163
    .local v10, "maxVolume":I
    const/16 v22, 0x1

    int-to-float v0, v10

    move/from16 v23, v0

    mul-float v23, v23, v16

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 164
    .local v20, "volume":I
    move/from16 v0, v20

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 165
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isVolumeValid(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 166
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 167
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_min:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->adjustVolume(II)V

    .line 414
    .end local v6    # "dataType":Ljava/lang/String;
    .end local v9    # "intent":Lnluparser/scheme/SettingIntent;
    .end local v10    # "maxVolume":I
    .end local v13    # "operands":Ljava/lang/String;
    .end local v15    # "operator":Ljava/lang/String;
    .end local v16    # "percent":F
    .end local v19    # "value":Ljava/lang/String;
    .end local v20    # "volume":I
    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 415
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_unsupport:I

    const/16 v23, -0x1

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 417
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 419
    :cond_3
    :goto_2
    return-void

    .line 168
    .restart local v6    # "dataType":Ljava/lang/String;
    .restart local v9    # "intent":Lnluparser/scheme/SettingIntent;
    .restart local v10    # "maxVolume":I
    .restart local v13    # "operands":Ljava/lang/String;
    .restart local v15    # "operator":Ljava/lang/String;
    .restart local v16    # "percent":F
    .restart local v19    # "value":Ljava/lang/String;
    .restart local v20    # "volume":I
    :cond_4
    move/from16 v0, v20

    if-ne v0, v10, :cond_5

    .line 169
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_max:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 171
    :cond_5
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_volume_set_ok:I

    const/16 v23, -0x1

    .line 172
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 176
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/unisound/vui/handler/session/setting/R$string;->tts_cant_help_you:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 180
    .end local v10    # "maxVolume":I
    .end local v16    # "percent":F
    .end local v20    # "volume":I
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/unisound/vui/handler/session/setting/R$string;->tts_cant_help_you:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 183
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 184
    .local v3, "act":I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v3, v0, :cond_b

    .line 185
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->isMaxMusicVolume()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 186
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_sorry_max:I

    const/16 v23, -0x1

    .line 187
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 186
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 217
    :cond_9
    :goto_3
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->adjustVolume(II)V

    goto/16 :goto_1

    .line 189
    :cond_a
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_max:I

    const/16 v23, -0x1

    .line 190
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 189
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 192
    :cond_b
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v3, v0, :cond_d

    .line 193
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->isMinMusicVolume()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 194
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_sorry_min:I

    const/16 v23, -0x1

    .line 195
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 194
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 197
    :cond_c
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_min:I

    const/16 v23, -0x1

    .line 198
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 197
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 200
    :cond_d
    if-nez v3, :cond_f

    .line 201
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->isMaxMusicVolume()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 202
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_sorry_max:I

    const/16 v23, -0x1

    .line 203
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 202
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 205
    :cond_e
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_increase:I

    const/16 v23, -0x1

    .line 206
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 205
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 208
    :cond_f
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_9

    .line 209
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->isMinMusicVolume()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 210
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_sorry_min:I

    const/16 v23, -0x1

    .line 211
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 210
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 213
    :cond_10
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_adjust_volume_decrease:I

    const/16 v23, -0x1

    .line 214
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 213
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 219
    .end local v3    # "act":I
    .end local v6    # "dataType":Ljava/lang/String;
    :cond_11
    const-string v22, "ATTR_MODE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const-string v22, "MODE_MUTE"

    .line 220
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperation:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 223
    .local v21, "volumeType":I
    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setMuteOff()V

    goto/16 :goto_1

    .line 225
    :cond_12
    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 226
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_volume_min:I

    const/16 v23, 0x0

    .line 227
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 226
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeMin()V

    .line 229
    const-string v22, "VolumeOpr"

    const-string v23, "--set volume min--"

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 231
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setMuteOn()V

    goto/16 :goto_1

    .line 235
    .end local v21    # "volumeType":I
    :cond_14
    const-string v22, "OBJ_LIGHT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 240
    .end local v9    # "intent":Lnluparser/scheme/SettingIntent;
    .end local v13    # "operands":Ljava/lang/String;
    .end local v15    # "operator":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    move/from16 v22, v0

    if-nez v22, :cond_3a

    .line 241
    invoke-direct/range {p0 .. p1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->getSettingIntent(Lnluparser/scheme/NLU;)Lnluparser/scheme/SettingIntent;

    move-result-object v18

    .line 242
    .local v18, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual/range {v18 .. v18}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v15

    .line 243
    .restart local v15    # "operator":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v13

    .line 244
    .restart local v13    # "operands":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    .line 246
    const-string v22, "ACT_BOOKMARK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 247
    const-string v22, "cn.yunzhisheng.setting.mp"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 248
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->exitAfterEnterOtherSession()V

    goto/16 :goto_2

    .line 251
    :cond_16
    const-string v22, "SETTING_EXEC"

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_32

    .line 252
    invoke-virtual/range {v18 .. v18}, Lnluparser/scheme/SettingIntent;->getConfirm()Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, "operate":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 254
    invoke-virtual/range {v18 .. v18}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v14

    .line 256
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "asr":Ljava/lang/String;
    const-string v22, "CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 259
    const-string v22, "\u53d6\u6d88"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 260
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v22

    invoke-static {v5}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicCloseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 262
    :cond_18
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 263
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_cancel:I

    const/16 v23, -0x1

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 264
    :cond_19
    const-string v22, "ACT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a

    const-string v22, "ACT_SET"

    .line 265
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a

    const-string v22, "ACT_CLOSE"

    .line 266
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a

    const-string v22, "ACT_RESTART"

    .line 267
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a

    const-string v22, "ACT_UNSET"

    .line 268
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1a

    const-string v22, "ACT_QUERY"

    .line 269
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 270
    :cond_1a
    invoke-virtual/range {v18 .. v18}, Lnluparser/scheme/SettingIntent;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "deviceType":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lnluparser/scheme/SettingIntent;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 272
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 273
    move-object v13, v7

    .line 275
    :cond_1b
    const-string v22, "ATTR_WAKEUP_WORD"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1c

    const-string v22, "ATTR_NAME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 276
    :cond_1c
    const-string v22, "DefaultSettingHandler"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "value origin ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->checkWakeupAndAnswer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 280
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v11, "newWordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempMainWakeup:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 283
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->updateCustomWakeupWord(Ljava/util/List;)V

    .line 284
    const-string v22, "DefaultSettingHandler"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateCustomWakeupWord : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempMainWakeup:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 287
    .end local v11    # "newWordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    goto/16 :goto_1

    .line 289
    :cond_1e
    const-string v22, "OBJ_WIFI"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1f

    const-string v22, "ATTR_ORDER_NO"

    .line 290
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1f

    const-string v22, "ATTR_ROW_NO"

    .line 291
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1f

    const-string v22, "ATTR_PAGE_NO"

    .line 292
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 293
    :cond_1f
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_unsupport:I

    const/16 v23, -0x1

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 294
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isPhicommSmartHome(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 297
    :cond_21
    const-string v22, "OBJ_BLUETOOTH"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 298
    const-string v22, "ACT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_OPEN_BLUETOOTH"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 301
    :cond_22
    const-string v22, "ACT_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_CLOSE_BLUETOOTH"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 306
    :cond_23
    const-string v22, "AmbientLight"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 307
    const-string v22, "ACT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_OPEN_AMBIENTLIGHT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 310
    :cond_24
    const-string v22, "ACT_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_CLOSE_AMBIENTLIGHT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 315
    :cond_25
    const-string v22, "SoundEffect"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 316
    const-string v22, "ACT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_OPEN_SOUNDEFFECT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 319
    :cond_26
    const-string v22, "ACT_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_CLOSE_SOUNDEFFECT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 324
    :cond_27
    const-string v22, "OBJ_SLEEP_MODE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    const-string v22, "ACT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    const-string v23, "ACT_PHICOMM_OPEN_SLEEP_MODE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 329
    :cond_28
    const-string v22, "OBJ_TTS_MODLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 330
    const-string v22, "ACT_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 332
    new-instance v12, Lnluparser/scheme/NLU;

    invoke-direct {v12}, Lnluparser/scheme/NLU;-><init>()V

    .line 333
    .local v12, "nlu":Lnluparser/scheme/NLU;
    const-string v22, "cn.yunzhisheng.setting.showsettingcenter"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 334
    const-string v22, "SETTING_COMMAND_CHANGE_TTS_MODLE"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 335
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto/16 :goto_1

    .line 337
    .end local v12    # "nlu":Lnluparser/scheme/NLU;
    :cond_29
    const-string v22, "OBJ_DIALOG"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 338
    const-string v22, "ACT_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 340
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v22

    invoke-static {v5}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicCloseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 341
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/unisound/vui/handler/session/setting/R$string;->tts_cancel:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 343
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 345
    :cond_2b
    const-string v22, "ACT_OPEN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2c

    const-string v22, "ACT_CLOSE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 346
    :cond_2c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2d

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 349
    :cond_2d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2e

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->fireToMusic(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->exitAfterEnterOtherSession()V

    goto/16 :goto_2

    .line 356
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancelword(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 357
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 358
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_cancel:I

    const/16 v23, -0x1

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 359
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 360
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 363
    .end local v7    # "deviceType":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_30
    const-string v22, "ACT_LAST"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 364
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_unsupport:I

    const/16 v23, -0x1

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 365
    :cond_31
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->fireToMusic(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->exitAfterEnterOtherSession()V

    goto/16 :goto_2

    .line 370
    .end local v5    # "asr":Ljava/lang/String;
    .end local v14    # "operate":Ljava/lang/String;
    :cond_32
    const-string v22, "SETTING_IOT"

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_33

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 374
    :cond_33
    const-string v22, "USER_COMMAND"

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_39

    .line 375
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_34

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v22

    const-string v23, " "

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 376
    .local v17, "result":Ljava/lang/String;
    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/unisound/vui/util/LocalizeDataUtil;->getCommandInfo(Ljava/lang/String;)Lcom/unisound/vui/util/entity/CommandInfo;

    move-result-object v8

    .line 377
    .local v8, "info":Lcom/unisound/vui/util/entity/CommandInfo;
    if-eqz v8, :cond_1

    .line 378
    const-string v22, "ACT_QUESTION_VERSION"

    invoke-virtual {v8}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_35

    .line 379
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v23

    sget v24, Lcom/unisound/vui/handler/session/setting/R$string;->tts_device_current_version:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v24, ":"

    .line 381
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 375
    .end local v8    # "info":Lcom/unisound/vui/util/entity/CommandInfo;
    .end local v17    # "result":Ljava/lang/String;
    :cond_34
    const-string v17, ""

    goto :goto_4

    .line 382
    .restart local v8    # "info":Lcom/unisound/vui/util/entity/CommandInfo;
    .restart local v17    # "result":Ljava/lang/String;
    :cond_35
    const-string v22, "ACT_PHICOMM_VERSION"

    invoke-virtual {v8}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_36

    const-string v22, "ACT_PHICOMM_OTA"

    .line 383
    invoke-virtual {v8}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_36

    const-string v22, "ACT_PHICOMM_BACKUP"

    .line 384
    invoke-virtual {v8}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_37

    .line 385
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->mSettingHandler:Lcom/unisound/vui/handler/session/setting/SettingHandler;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/unisound/vui/handler/session/setting/SettingHandler;->handleOrder(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 386
    :cond_37
    const-string v22, "ACT_PHICOMM_CHECK_ONLINE_STATE"

    invoke-virtual {v8}, Lcom/unisound/vui/util/entity/CommandInfo;->getOperator()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 387
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceOnlineState(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_38

    .line 388
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_device_online:I

    const/16 v23, -0x1

    .line 389
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 391
    :cond_38
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_device_offline:I

    const/16 v23, -0x1

    .line 392
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    .line 391
    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 396
    .end local v8    # "info":Lcom/unisound/vui/util/entity/CommandInfo;
    .end local v17    # "result":Ljava/lang/String;
    :cond_39
    const-string v22, "QUERY_SETTING"

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 398
    const-string v22, "ATTR_HOME_AIRQUALITY"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 403
    .end local v13    # "operands":Ljava/lang/String;
    .end local v15    # "operator":Ljava/lang/String;
    .end local v18    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3b

    .line 404
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v9

    check-cast v9, Lnluparser/scheme/GlobalCmdIntent;

    .line 405
    .local v9, "intent":Lnluparser/scheme/GlobalCmdIntent;
    invoke-virtual {v9}, Lnluparser/scheme/GlobalCmdIntent;->getConfirm()Ljava/lang/String;

    move-result-object v14

    .line 406
    .restart local v14    # "operate":Ljava/lang/String;
    const-string v22, "CANCEL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 407
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 408
    sget v22, Lcom/unisound/vui/handler/session/setting/R$string;->tts_cancel:I

    const/16 v23, -0x1

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 410
    .end local v9    # "intent":Lnluparser/scheme/GlobalCmdIntent;
    .end local v14    # "operate":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 411
    :cond_3c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->handlePhicommSmartHomeProtocal(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public exit(Z)V
    .locals 1
    .param p1, "isResume"    # Z

    .prologue
    .line 581
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 582
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->reset()V

    .line 583
    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 586
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->type:I

    .line 589
    return-void
.end method

.method protected bridge synthetic getInterruptType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->getInterruptType(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInterruptType(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isCancelOperate(Lnluparser/scheme/NLU;)Z

    move-result v0

    .line 618
    .local v0, "isCancelOperate":Z
    const-string v1, "DefaultSettingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInterruptType isCancelOperate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    if-eqz v0, :cond_0

    .line 620
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->getInterruptType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 622
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->getInterruptType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->setPriority(I)V

    .line 86
    return-void
.end method

.method public interrupt(Ljava/lang/String;)V
    .locals 1
    .param p1, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 602
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->isGlobalCancel:Z

    .line 604
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->reset()V

    .line 605
    return-void
.end method

.method public matchWakeUpWord(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 681
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const-string v2, "^[\\u4e00-\\u9fa5]{2,3}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 682
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 683
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 523
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->volumeOperator:Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    .line 524
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 570
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onDestroy(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 571
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v0, 0x1

    .line 528
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->eventReceived:Z

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->exit(Z)V

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    const/4 v1, 0x1

    .line 124
    const-string v2, "DefaultSettingHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWakeupEventSetWakeupwordDone eventReceived:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->eventReceived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->eventReceived:Z

    if-eqz v2, :cond_1

    .line 126
    const-string v2, "ATTR_WAKEUP_WORD"

    iget-object v3, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATTR_NAME"

    iget-object v3, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempSetOperands:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempMainWakeup:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/setting/R$string;->tts_wakeupword_set_success:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;->tempMainWakeup:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "mainWord":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 138
    .end local v0    # "mainWord":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v1

    goto :goto_0
.end method

.method protected reset()V
    .locals 0

    .prologue
    .line 574
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 575
    return-void
.end method

.method protected setDomainWakeUpWordList(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 143
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;, "Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler<TI;>;"
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 90
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc23

    if-ne v1, v2, :cond_0

    .line 91
    sget v1, Lcom/unisound/vui/handler/session/setting/R$string;->tts_wakeupword_set_fail:I

    const/4 v2, -0x1

    .line 92
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "setWakeupFail":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 96
    .end local v0    # "setWakeupFail":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 97
    return-void
.end method
