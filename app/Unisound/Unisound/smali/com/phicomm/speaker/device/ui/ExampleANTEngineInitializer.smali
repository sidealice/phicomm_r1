.class public final Lcom/phicomm/speaker/device/ui/ExampleANTEngineInitializer;
.super Lcom/unisound/vui/engine/ANTEngineInitializer;
.source "ExampleANTEngineInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTEngineInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V
    .locals 14
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v7

    .line 56
    .local v7, "pipeline":Lcom/unisound/vui/engine/ANTPipeline;
    new-instance v10, Lnluparser/MixtureProcessor$Builder;

    invoke-direct {v10}, Lnluparser/MixtureProcessor$Builder;-><init>()V

    invoke-virtual {v10}, Lnluparser/MixtureProcessor$Builder;->build()Lnluparser/MixtureProcessor;

    move-result-object v5

    .line 57
    .local v5, "mixtureProcessor":Lnluparser/MixtureProcessor;
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v3

    .line 58
    .local v3, "deviceCenterMgr":Lcom/unisound/ant/device/DeviceCenterHandler;
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/filter/NLUDispatcher;

    invoke-direct {v12, v5}, Lcom/unisound/vui/handler/filter/NLUDispatcher;-><init>(Lnluparser/MixtureProcessor;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 59
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    invoke-direct {v12, v0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;-><init>(Landroid/content/Context;Lnluparser/MixtureProcessor;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 61
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;

    invoke-direct {v12, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 62
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;

    invoke-direct {v12, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 63
    new-instance v8, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    invoke-direct {v8}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;-><init>()V

    .line 64
    .local v8, "ringingHandler":Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
    new-instance v10, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;

    invoke-direct {v10, p1, v0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->setOnRingingListener(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;)V

    .line 65
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 67
    new-instance v4, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;

    invoke-direct {v4, v0}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, "lightListener":Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;

    invoke-direct {v12, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;-><init>(Lcom/unisound/vui/handler/session/light/LightListener;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 70
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    invoke-direct {v12, v4, v0}, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;-><init>(Lcom/unisound/vui/handler/session/light/LightListener;Landroid/content/Context;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 71
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;

    invoke-direct {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 72
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/SimpleSessionManager;

    invoke-direct {v12}, Lcom/unisound/vui/handler/SimpleSessionManager;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 73
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    invoke-virtual {v3, p1, v5}, Lcom/unisound/ant/device/DeviceCenterHandler;->associateEngine(Lcom/unisound/vui/engine/ANTEngine;Lnluparser/MixtureProcessor;)Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 74
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;

    invoke-direct {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 75
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    invoke-direct {v12, v0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 77
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;

    invoke-direct {v12, v0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 78
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;

    invoke-direct {v12}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 79
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;

    invoke-direct {v12}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 80
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    new-instance v13, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;

    invoke-direct {v13, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {v12, v13, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;-><init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;Landroid/content/Context;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 81
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v10

    sget-object v11, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v10, v11}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 82
    .local v9, "udid":Ljava/lang/String;
    new-instance v6, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-direct {v6, v0, v9, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/vui/engine/ANTEngine;)V

    .line 83
    .local v6, "phicommPlayer":Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    invoke-direct {v12, v6}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;-><init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 84
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicScheduleHandler;

    invoke-direct {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicScheduleHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 86
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;

    invoke-direct {v12}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 87
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;

    new-instance v13, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-direct {v13, v0, p1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    invoke-direct {v12, v13}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;-><init>(Lcom/unisound/vui/handler/session/setting/SettingHandler;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 88
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;

    invoke-direct {v12}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 90
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/DefaultGuideHandler;

    invoke-direct {v12}, Lcom/unisound/vui/handler/session/DefaultGuideHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 91
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;

    invoke-direct {v12}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 92
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;

    invoke-direct {v12}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 93
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;

    invoke-direct {v12, v0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 94
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-direct {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 95
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/unisound/vui/engine/ANTHandler;

    const/4 v11, 0x0

    new-instance v12, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;

    invoke-direct {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;-><init>()V

    aput-object v12, v10, v11

    invoke-interface {v7, v10}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 98
    new-instance v1, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;

    invoke-direct {v1, v0, p1, v6}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 99
    .local v1, "customApiManager":Lcom/phicomm/speaker/device/custom/api/CustomApiManager;
    new-instance v2, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;

    invoke-direct {v2, v8}, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;-><init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V

    .line 100
    .local v2, "customRingingProcessor":Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->addListener(ILcom/phicomm/speaker/device/custom/api/CustomApiListener;)V

    .line 101
    return-void
.end method
