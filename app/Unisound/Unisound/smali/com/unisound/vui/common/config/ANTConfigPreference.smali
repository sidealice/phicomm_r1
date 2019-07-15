.class public Lcom/unisound/vui/common/config/ANTConfigPreference;
.super Ljava/lang/Object;


# static fields
.field public static FUNCTION_WAKEUP_BENCHMARK:F

.field public static aecDebug:Z

.field public static aecEnable:Z

.field public static aecMicChannel:I

.field public static asrMaxDuration:I

.field public static asrVadTimeoutBackSil:I

.field public static asrVadTimeoutFrontSil:I

.field public static asrWechatMaxDuration:I

.field public static beepSize:I

.field public static debug:Z

.field public static effectWakeupBenchmark:F

.field public static isAsrRecognitionTest:Z

.field public static isWakeupAecTest:Z

.field public static isWakeupTest:Z

.field public static musicAec:I

.field public static oneshotAsrVadTimeoutBackSil:I

.field public static oneshotEnable:Z

.field public static oneshotVadBackSil:I

.field public static oneshotWakeupVadTimeoutBackSil:I

.field public static onlineVad:Z

.field public static recognizerScore:F

.field private static sDevAppServer:Ljava/lang/String;

.field private static sDevMsgServer:Ljava/lang/String;

.field private static sDevTRServer:Ljava/lang/String;

.field public static sMaxCountAlarm:I

.field public static sMaxCountCountDown:I

.field public static sMaxCountReminder:I

.field public static sVersionType:Ljava/lang/String;

.field public static saveRecognizerRecording:Z

.field public static saveTTSRecording:Z

.field public static saveWakeUpRecording:Z

.field public static sdkDebug:Z

.field public static ttsAec:I

.field public static wakeupBenchmark:F

.field public static wakeupBenchmarkForContinues:F

.field public static wakeupBenchmarkForMusicPlaying:F

.field public static wakeupBenchmarkForMusicPlayingThree:F

.field public static wakeupBenchmarkForMusicPlayingTwo:F

.field public static wakeupDurationForContinues:I

.field public static wakeupVadTimeoutBackSil:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x1388

    const/16 v4, 0x1f4

    const/16 v3, 0xc8

    const v2, -0x3e9b3333    # -14.3f

    const/4 v1, 0x0

    const v0, -0x3eb33333    # -12.8f

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->recognizerScore:F

    sput v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    sput v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForContinues:F

    const v0, -0x3e866666    # -15.6f

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlaying:F

    const v0, -0x3e733333    # -17.6f

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingTwo:F

    const v0, -0x3e6b3333    # -18.6f

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    const/high16 v0, -0x3f200000    # -7.0f

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->FUNCTION_WAKEUP_BENCHMARK:F

    sput v3, Lcom/unisound/vui/common/config/ANTConfigPreference;->beepSize:I

    sput v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutFrontSil:I

    const/16 v0, 0x320

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutBackSil:I

    sput v4, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotAsrVadTimeoutBackSil:I

    sput v3, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupVadTimeoutBackSil:I

    const/16 v0, 0x3e8

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotVadBackSil:I

    sput v4, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotWakeupVadTimeoutBackSil:I

    const/16 v0, 0x1b58

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrMaxDuration:I

    const/16 v0, 0x7530

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrWechatMaxDuration:I

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveRecognizerRecording:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveWakeUpRecording:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecEnable:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecDebug:Z

    sput v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecMicChannel:I

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotEnable:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->debug:Z

    const/16 v0, 0x80

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->ttsAec:I

    const/16 v0, 0x200

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->musicAec:I

    sput v5, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupDurationForContinues:I

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupAecTest:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->onlineVad:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveTTSRecording:Z

    sput-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->initPreference()V

    return-void
.end method

.method public static getAppServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevAppServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://106.38.55.5:19999/"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevAppServer:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "http://aios-home.hivoice.cn:19999/"

    goto :goto_0
.end method

.method public static getMsgCenterUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevMsgServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://106.38.55.5:18080"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevMsgServer:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://msg.pda.hivoice.cn:8080"

    goto :goto_0

    :cond_2
    const-string v0, "http://msg-pandora.hivoice.cn"

    goto :goto_0
.end method

.method public static getTRUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevTRServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "211.102.192.39:8089"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevTRServer:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "asrv3.hivoice.cn"

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/unisound/vui/common/config/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->initPreference()V

    new-instance v0, Lcom/unisound/vui/common/config/ANTConfigPreference$1;

    invoke-direct {v0}, Lcom/unisound/vui/common/config/ANTConfigPreference$1;-><init>()V

    invoke-static {v0}, Lcom/unisound/vui/common/config/a;->a(Lcom/unisound/vui/common/config/a$a;)V

    return-void
.end method

.method private static initPreference()V
    .locals 3

    const/16 v2, 0x1e

    const-string v0, "ANTConfigPreference"

    const-string v1, "initPreference"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recognizer_benchmark"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->recognizerScore:F

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->recognizerScore:F

    const-string v0, "wakeup_benchmark"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    const-string v0, "beep_size"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->beepSize:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->beepSize:I

    const-string v0, "asr_vad_timeout_front_sil"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutFrontSil:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutFrontSil:I

    const-string v0, "asr_vad_timeout_back_sil"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutBackSil:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrVadTimeoutBackSil:I

    const-string v0, "oneshot_asr_vad_timeout_back_sil"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotAsrVadTimeoutBackSil:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotAsrVadTimeoutBackSil:I

    const-string v0, "wakeup_vad_timeout_back_sil"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupVadTimeoutBackSil:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupVadTimeoutBackSil:I

    const-string v0, "oneshot_wakeup_vad_timeout_back_sil"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotWakeupVadTimeoutBackSil:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotWakeupVadTimeoutBackSil:I

    const-string v0, "oneshot_vad_back_sil"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotVadBackSil:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotVadBackSil:I

    const-string v0, "asr_max_duration"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrMaxDuration:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrMaxDuration:I

    const-string v0, "asr_wechat_max_duration"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrWechatMaxDuration:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->asrWechatMaxDuration:I

    const-string v0, "save_recognizer_recording"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveRecognizerRecording:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveRecognizerRecording:Z

    const-string v0, "save_wakeup_recording"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveWakeUpRecording:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveWakeUpRecording:Z

    const-string v0, "aec_enable"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecEnable:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecEnable:Z

    const-string v0, "aec_debug"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecDebug:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecDebug:Z

    const-string v0, "aec_mic_channel"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecMicChannel:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecMicChannel:I

    const-string v0, "oneshot_enable"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotEnable:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotEnable:Z

    const-string v0, "debug"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->debug:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->debug:Z

    const-string v0, "tts_aec"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->ttsAec:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->ttsAec:I

    const-string v0, "music_aec"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->musicAec:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->musicAec:I

    const-string v0, "wakeup_duration_for_continues"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupDurationForContinues:I

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupDurationForContinues:I

    const-string v0, "wakeup_benchmark_for_continues"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForContinues:F

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForContinues:F

    const-string v0, "wakeup_benchmark_for_music_playing"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlaying:F

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlaying:F

    const-string v0, "wakeup_benchmark_for_music_playing_two"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingTwo:F

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingTwo:F

    const-string v0, "wakeup_benchmark_for_music_playing_three"

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    const-string v0, "wakeup_test"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupTest:Z

    const-string v0, "wakeup_aec_test"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupAecTest:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isWakeupAecTest:Z

    const-string v0, "sdk_debug"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sdkDebug:Z

    const-string v0, "save_tts_recording"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveTTSRecording:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->saveTTSRecording:Z

    const-string v0, "asr_vad_online"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->onlineVad:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->onlineVad:Z

    const-string v0, "asr_recognition_test"

    sget-boolean v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    const-string v0, "version_type"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    const-string v0, "max_count_alarm"

    invoke-static {v0, v2}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountAlarm:I

    const-string v0, "max_count_reminder"

    invoke-static {v0, v2}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountReminder:I

    const-string v0, "max_count_count_down"

    invoke-static {v0, v2}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sMaxCountCountDown:I

    const-string v0, "devAppServer"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevAppServer:Ljava/lang/String;

    const-string v0, "devMsgServer"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevMsgServer:Ljava/lang/String;

    const-string v0, "devTRServer"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/unisound/vui/common/config/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sDevTRServer:Ljava/lang/String;

    return-void
.end method

.method public static isDev()Z
    .locals 2

    const-string v0, "develop"

    sget-object v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPreRelease()Z
    .locals 2

    const-string v0, "preRelease"

    sget-object v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRelease()Z
    .locals 2

    const-string v0, "release"

    sget-object v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->sVersionType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
