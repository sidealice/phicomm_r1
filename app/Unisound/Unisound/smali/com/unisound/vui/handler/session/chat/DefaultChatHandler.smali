.class public Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultChatHandler.java"

# interfaces
.implements Lcom/unisound/vui/common/media/IMediaPlayerStateListener;
.implements Lcom/unisound/vui/common/media/MusicPlayer$Callback;
.implements Lcom/unisound/vui/common/media/MusicPlayer$Renderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;",
        "Lcom/unisound/vui/common/media/IMediaPlayerStateListener;",
        "Lcom/unisound/vui/common/media/MusicPlayer$Callback;",
        "Lcom/unisound/vui/common/media/MusicPlayer$Renderer;"
    }
.end annotation


# static fields
.field private static final CHAT_STYLE_JOKE:Ljava/lang/String; = "joke"

.field private static final CHAT_STYLE_MAYBE_NOSIE:Ljava/lang/String; = "maybe_noise"

.field private static final CHAT_STYLE_POEM:Ljava/lang/String; = "poem"

.field private static final CHAT_STYLE_TRANSLATION:Ljava/lang/String; = "translation"

.field private static final CHAT_STYLE_UNKNOW:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "DefaultChatHandler"


# instance fields
.field private currentItemType:Lcom/unisound/vui/common/media/PlayItem$ItemType;

.field private isNeedPlayAudio:Z

.field private playChatState:I

.field private playUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/unisound/vui/common/media/UniExoPlayer;

.field private resourcesFormateError:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playUrls:Ljava/util/List;

    .line 43
    const/16 v0, -0x3e9

    iput v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playChatState:I

    .line 45
    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->resourcesFormateError:Z

    .line 49
    const-string v0, "session_chat"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->sessionName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playAudioResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playResource(Ljava/lang/String;)V

    return-void
.end method

.method private onChatEnd()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->reset()V

    .line 327
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 328
    return-void
.end method

.method private playAudioResource(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 245
    const-string v0, "DefaultChatHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudioResource url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    iput-boolean v3, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    .line 251
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p0, v3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V

    .line 252
    return-void
.end method

.method private playResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 308
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;->newInstance()Lcom/unisound/vui/common/media/UniExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    .line 310
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->registerCallback(Lcom/unisound/vui/common/media/MusicPlayer$Callback;)V

    .line 311
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/common/media/UniExoPlayer;->setRenderer(Lcom/unisound/vui/common/media/MusicPlayer$Renderer;)V

    .line 312
    sget-object v0, Lcom/unisound/vui/common/media/PlayItem$ItemType;->TYPE_AUDIO:Lcom/unisound/vui/common/media/PlayItem$ItemType;

    iput-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->currentItemType:Lcom/unisound/vui/common/media/PlayItem$ItemType;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    invoke-virtual {v0, p1, v2}, Lcom/unisound/vui/common/media/UniExoPlayer;->play(Ljava/lang/String;Z)V

    .line 315
    iput-boolean v2, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    .line 316
    return-void
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
    .line 32
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "cn.yunzhisheng.chat"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->eventReceived:Z

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "DefaultChatHandler"

    const-string v1, "doInterrupt"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 192
    const-string v0, "doOneShotInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 195
    :cond_0
    const/16 v0, -0x3e9

    iput v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playChatState:I

    .line 196
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->reset()V

    .line 198
    :cond_1
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
    .line 32
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 18
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super/range {p0 .. p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 63
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/unisound/vui/handler/session/chat/R$array;->tts_no_voice_input:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "nonsupportText":[Ljava/lang/String;
    invoke-static {v6}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "playContent":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 68
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/unisound/vui/util/UserPerferenceUtil;->getActuallyMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 69
    .local v5, "mainWakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 70
    .local v9, "str":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 71
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    .line 72
    const-string v8, "{\"local_asr\":[{\"engine_mode\":\"wakeup\",\"result_type\":\"full\",\"recognition_result\":\"  \u5c0f\u8baf\u5c0f\u8baf   \",\"score\":6.08,\"utteranceTime\":1230,\"outRecordingTime\":212210,\"delayTime\":280}]}"

    .line 74
    .local v8, "result":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v13

    const/16 v14, 0xc81

    invoke-interface {v13, v14, v8}, Lcom/unisound/vui/engine/ANTPipeline;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->reset()V

    .line 152
    .end local v5    # "mainWakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 80
    .restart local v5    # "mainWakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getStyle()Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "style":Ljava/lang/String;
    const-string v13, "DefaultChatHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "style = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  evt.getGeneral()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "url":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 84
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getAudio()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "audio":Ljava/lang/String;
    const-string v13, "joke"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 87
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$1;-><init>(Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;Ljava/lang/String;)V

    const-wide/16 v16, 0x320

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/unisound/vui/handler/session/chat/R$string;->tts_chat_play_positive:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    .end local v2    # "audio":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getExtraFlag()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "extraFlag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 124
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v13

    const-string v14, "start"

    .line 126
    invoke-virtual {v13, v14}, Lcom/unisound/ant/device/DeviceCenterHandler;->onSessionToSceneControl(Ljava/lang/String;)V

    .line 129
    .end local v4    # "extraFlag":Ljava/lang/String;
    .end local v5    # "mainWakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "style":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "text":Ljava/lang/String;
    const-string v13, "\u73b0\u5728\u51e0\u70b9"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u51e0\u70b9"

    .line 132
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u5728\u51e0\u70b9"

    .line 133
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u51e0\u70b9\u4e86"

    .line 134
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u5728\u51e0\u70b9\u4e86"

    .line 135
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u73b0\u5728\u51e0\u70b9\u4e86"

    .line 136
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u65f6\u95f4"

    .line 137
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u5728\u65f6\u95f4"

    .line 138
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u73b0\u5728\u65f6\u95f4"

    .line 139
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u73b0\u5728\u7684\u65f6\u95f4"

    .line 140
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u524d\u65f6\u95f4"

    .line 141
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "\u5f53\u524d\u65f6\u95f4"

    .line 142
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 144
    :cond_3
    :try_start_0
    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "content":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v3, v14

    const/4 v15, 0x0

    const/16 v16, 0x5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v3, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 150
    .end local v3    # "content":[Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    .end local v11    # "text":Ljava/lang/String;
    .restart local v2    # "audio":Ljava/lang/String;
    .restart local v5    # "mainWakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "style":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_5
    const-string v13, "translation"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 94
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playResource(Ljava/lang/String;)V

    .line 95
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_6
    const-string v13, "poem"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 99
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->resourcesFormateError:Z

    .line 101
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$2;-><init>(Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;Ljava/lang/String;)V

    const-wide/16 v16, 0x320

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/unisound/vui/handler/session/chat/R$string;->tts_chat_play_positive:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 107
    :cond_7
    const-string v13, "unknown"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 108
    sget v13, Lcom/unisound/vui/handler/session/chat/R$array;->tts_unsupport_answer:I

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 109
    :cond_8
    const-string v13, "maybe_noise"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 110
    sget v13, Lcom/unisound/vui/handler/session/chat/R$array;->tts_unsupport_answer:I

    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 112
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 115
    .end local v2    # "audio":Ljava/lang/String;
    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playAudioResource(Ljava/lang/String;)V

    .line 117
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/unisound/vui/handler/session/chat/R$string;->tts_chat_play_chat:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 119
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 146
    .end local v5    # "mainWakeupWord":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "style":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    .restart local v11    # "text":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto/16 :goto_2
.end method

.method public getRendererType()Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    .locals 3

    .prologue
    .line 287
    sget-object v1, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler$3;->$SwitchMap$com$unisound$vui$common$media$PlayItem$ItemType:[I

    iget-object v2, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->currentItemType:Lcom/unisound/vui/common/media/PlayItem$ItemType;

    invoke-virtual {v2}, Lcom/unisound/vui/common/media/PlayItem$ItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 298
    sget-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    .line 301
    .local v0, "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    :goto_0
    return-object v0

    .line 289
    .end local v0    # "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    :pswitch_0
    sget-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_MUSIC:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    .line 290
    .restart local v0    # "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    goto :goto_0

    .line 292
    .end local v0    # "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    :pswitch_1
    sget-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_AUDIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    .line 293
    .restart local v0    # "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    goto :goto_0

    .line 295
    .end local v0    # "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    :pswitch_2
    sget-object v0, Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;->TYPE_RADIO:Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;

    .line 296
    .restart local v0    # "rendererType":Lcom/unisound/vui/common/media/MusicPlayer$Renderer$RendererType;
    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->setPriority(I)V

    .line 54
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onOperateCommandChange(I)V
    .locals 3
    .param p1, "operate"    # I

    .prologue
    .line 264
    const-string v0, "DefaultChatHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperateCommandChange operate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 255
    const-string v0, "DefaultChatHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->onChatEnd()V

    .line 259
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    .line 261
    :cond_0
    return-void
.end method

.method public onPlayerError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v1, "DefaultChatHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayerError errorMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UnrecognizedInputFormatException"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->resourcesFormateError:Z

    .line 272
    iget-object v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    invoke-virtual {v1}, Lcom/unisound/vui/common/media/UniExoPlayer;->release()V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    .line 275
    sget v1, Lcom/unisound/vui/handler/session/chat/R$array;->tts_unsupport_answer:I

    iget-object v2, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 276
    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "playContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 283
    .end local v0    # "playContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->onChatEnd()V

    .line 281
    iget-object v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    const/16 v2, 0x83b

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0
.end method

.method public onPlayerState(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "playtag"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x83b

    const/4 v3, 0x0

    .line 214
    const-string v0, "DefaultChatHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerState  state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; playtag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;eventReceived :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput p1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playChatState:I

    .line 221
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playUrls:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 225
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    goto :goto_0

    .line 227
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->onChatEnd()V

    .line 230
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    .line 231
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 232
    const-string v0, "DefaultChatHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedPlayAudio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->start()V

    .line 235
    iput-boolean v3, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    goto :goto_0

    .line 237
    :cond_4
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->onChatEnd()V

    .line 240
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 160
    const-string v1, "DefaultChatHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTTSEventPlayingEnd-- eventReceived :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->eventReceived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isNeedPlayAudio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",playChatState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playChatState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->eventReceived:Z

    if-eqz v1, :cond_3

    .line 168
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->resourcesFormateError:Z

    if-eqz v1, :cond_1

    .line 169
    iput-boolean v4, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->resourcesFormateError:Z

    .line 170
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->onChatEnd()V

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    if-eqz v1, :cond_2

    .line 175
    iget v1, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playChatState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 176
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->start()V

    .line 177
    iput-boolean v4, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->onChatEnd()V

    goto :goto_0

    .line 184
    :cond_3
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V

    .line 202
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->player:Lcom/unisound/vui/common/media/UniExoPlayer;

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniExoPlayer;->stop()V

    .line 205
    :cond_0
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->isNeedPlayAudio:Z

    .line 207
    const/16 v0, -0x3e9

    iput v0, p0, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;->playChatState:I

    .line 208
    return-void
.end method
