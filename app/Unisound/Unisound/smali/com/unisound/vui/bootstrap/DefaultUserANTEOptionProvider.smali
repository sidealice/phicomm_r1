.class public Lcom/unisound/vui/bootstrap/DefaultUserANTEOptionProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/bootstrap/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public options()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/unisound/vui/engine/ANTEngineOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v5, 0x36

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "DefaultUserANTEOptionProvider"

    const-string v1, "DefaultUserANTEOptionProvider"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RESULT_FILTER:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_PRINT_TIME_LOG:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_PRINT_LOG:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_PRINT_ENGINE_LOG:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VOICE_FIELD:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_FOURMIC_CLOSE_4MICALGORITHM:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->OPT_SET_FIX_RESULT_NLU:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_NET_TIMEOUT:Lcom/unisound/vui/engine/ANTEngineOption;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->WAKEUP_OPT_THRESHOLD_VALUE:Lcom/unisound/vui/engine/ANTEngineOption;

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_DOMAIN:Lcom/unisound/vui/engine/ANTEngineOption;

    const-string v2, "song"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_SCENARIO:Lcom/unisound/vui/engine/ANTEngineOption;

    const-string v2, "musicDefault"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_ONESHOT_VADBACKSIL_TIME:Lcom/unisound/vui/engine/ANTEngineOption;

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotVadBackSil:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_FRONTSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutFrontSil:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_VAD_TIMEOUT_BACKSIL:Lcom/unisound/vui/engine/ANTEngineOption;

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutBackSil:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_RECOGNIZE_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_WAKEUP_MODEL_ID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_SERVICE_MODE:Lcom/unisound/vui/engine/ANTEngineOption;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_FRONT_SILENCE:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_BACK_SILENCE:Lcom/unisound/vui/engine/ANTEngineOption;

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_VOICE_VOLUME:Lcom/unisound/vui/engine/ANTEngineOption;

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->TTS_KEY_VOICE_SPEED:Lcom/unisound/vui/engine/ANTEngineOption;

    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->OPT_SET_FIX_RESULT_NLU_CONFIGPATH:Lcom/unisound/vui/engine/ANTEngineOption;

    const-string v2, "unidrive_nlu_offline.conf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->NLU_VER:Lcom/unisound/vui/engine/ANTEngineOption;

    const-string v2, "3.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_TEMP_RESULT_ENABLE:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_FRONT_RESET_CACHE_BYTE_TIME:Lcom/unisound/vui/engine/ANTEngineOption;

    sget v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->beepSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->ASR_OPT_WX_SERVICE:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
