.class public abstract Lcom/unisound/vui/handler/session/music/AbstractPlayController;
.super Ljava/lang/Object;
.source "AbstractPlayController.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/PlayController;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field static final AUDIO_FOCUSED:I = 0x2

.field static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field static final AUDIO_NO_FOCUS_NO_DUCK:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field audioFocus:I

.field private audioManager:Landroid/media/AudioManager;

.field playOnFocusGain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    .line 29
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioManager:Landroid/media/AudioManager;

    .line 30
    return-void
.end method


# virtual methods
.method public giveUpAudioFocus()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    const-string v1, "giveUpAudioFocus"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    .line 79
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 7
    .param p1, "focusChange"    # I

    .prologue
    const/4 v6, -0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    sget-object v1, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAudioFocusChange. focusChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-ne p1, v2, :cond_1

    .line 40
    const/4 v1, 0x2

    iput v1, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->configMediaPlayerState()V

    .line 67
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x2

    if-eq p1, v1, :cond_2

    if-ne p1, v6, :cond_6

    .line 47
    :cond_2
    if-ne p1, v6, :cond_3

    move v0, v2

    .line 48
    .local v0, "canDuck":Z
    :goto_1
    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    iput v1, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    .line 52
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    iput-boolean v2, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->playOnFocusGain:Z

    .line 56
    sget-object v1, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    const-string v2, "onAudioFocusChange playOnFocusGain is true"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "canDuck":Z
    :cond_3
    move v0, v3

    .line 47
    goto :goto_1

    .restart local v0    # "canDuck":Z
    :cond_4
    move v1, v3

    .line 48
    goto :goto_2

    .line 58
    :cond_5
    iput-boolean v3, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->playOnFocusGain:Z

    .line 59
    sget-object v1, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    const-string v2, "onAudioFocusChange playOnFocusGain is false"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "canDuck":Z
    :cond_6
    sget-object v1, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    const-string v4, "onAudioFocusChange: Ignoring unsupported focusChange: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public tryToGetAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 85
    sget-object v1, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->TAG:Ljava/lang/String;

    const-string v2, "tryToGetAudioFocus"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v1, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    if-eq v1, v4, :cond_0

    .line 87
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 89
    .local v0, "result":I
    if-ne v0, v3, :cond_0

    .line 90
    iput v4, p0, Lcom/unisound/vui/handler/session/music/AbstractPlayController;->audioFocus:I

    .line 93
    .end local v0    # "result":I
    :cond_0
    return-void
.end method
