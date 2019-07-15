.class public Lcom/phicomm/speaker/device/utils/TTSUtils;
.super Ljava/lang/Object;
.source "TTSUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchSpeaker(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "speaker"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;

    invoke-direct {v0, p0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "provider":Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 30
    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendSweetPath()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "ttsModelFile":Ljava/lang/String;
    :goto_1
    invoke-static {p0, p2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setUserTTSModelType(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v2

    sget-object v3, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_SWITCH_BACKEND_MODEL_PATH:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v2, v3, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->setOption(Lcom/unisound/vui/engine/ANTEngineOption;Ljava/lang/Object;)Z

    .line 50
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v2

    const-string v3, "switchTtsPlayer"

    invoke-interface {v2, v3}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 51
    return-void

    .line 28
    .end local v1    # "ttsModelFile":Ljava/lang/String;
    :sswitch_0
    const-string v3, "FEMALE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "MALE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "CHILDREN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "SWEET"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "LZL"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 33
    :pswitch_0
    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendStandarPath()Ljava/lang/String;

    move-result-object v1

    .line 34
    .restart local v1    # "ttsModelFile":Ljava/lang/String;
    goto :goto_1

    .line 36
    .end local v1    # "ttsModelFile":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendMalePath()Ljava/lang/String;

    move-result-object v1

    .line 37
    .restart local v1    # "ttsModelFile":Ljava/lang/String;
    goto :goto_1

    .line 39
    .end local v1    # "ttsModelFile":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendChildPath()Ljava/lang/String;

    move-result-object v1

    .line 40
    .restart local v1    # "ttsModelFile":Ljava/lang/String;
    goto :goto_1

    .line 42
    .end local v1    # "ttsModelFile":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendSweetPath()Ljava/lang/String;

    move-result-object v1

    .line 43
    .restart local v1    # "ttsModelFile":Ljava/lang/String;
    goto :goto_1

    .line 45
    .end local v1    # "ttsModelFile":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v0}, Lcom/unisound/vui/bootstrap/DefaultLocalConfigurationProvider;->getTTSBackendLZLPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ttsModelFile":Ljava/lang/String;
    goto :goto_1

    .line 28
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e6fb201 -> :sswitch_2
        0x1287e -> :sswitch_4
        0x23fe0d -> :sswitch_1
        0x4ba36d0 -> :sswitch_3
        0x7b638f4c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
