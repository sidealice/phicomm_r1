.class public Lcom/phicomm/speaker/player/PlayerVisualizer;
.super Ljava/lang/Object;
.source "PlayerVisualizer.java"


# static fields
.field private static final CHROMA_INCRE_STEP:F = 0.001f

.field public static final MUSIC_LIGHT_CHROMA:Ljava/lang/String; = "music_light_chroma"

.field public static final MUSIC_LIGHT_ENABLE:Ljava/lang/String; = "music_light_enable"

.field public static final MUSIC_LIGHT_LUMA:Ljava/lang/String; = "music_light_luma"

.field public static final MUSIC_LIGHT_MODE:Ljava/lang/String; = "music_light_mode"

.field public static final SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final SCALING_MODE_NORMALIZED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlayerVisualizer"


# instance fields
.field private amp1:F

.field private amp2:F

.field private amp3:F

.field private dataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mChromaGain:I

.field private mContext:Landroid/content/Context;

.field private mHue:F

.field private mLumaGain:I

.field private mScalingMode:I

.field private mSessionId:I

.field private mUserEnable:Z

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mVisualizerEnable:Z


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mSessionId:I

    .line 29
    iput v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mHue:F

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mChromaGain:I

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mLumaGain:I

    .line 33
    iput v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mScalingMode:I

    .line 34
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mUserEnable:Z

    .line 35
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizerEnable:Z

    .line 37
    iput v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp1:F

    .line 38
    iput v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp2:F

    .line 39
    iput v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp3:F

    .line 153
    new-instance v0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/PlayerVisualizer$1;-><init>(Lcom/phicomm/speaker/player/PlayerVisualizer;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->dataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 56
    iput-object p2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/phicomm/speaker/player/PlayerVisualizer;->loadParameters()V

    .line 58
    iput p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mSessionId:I

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/PlayerVisualizer;F)F
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;
    .param p1, "x1"    # F

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->move5Avg(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/PlayerVisualizer;)F
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;

    .prologue
    .line 14
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mHue:F

    return v0
.end method

.method static synthetic access$116(Lcom/phicomm/speaker/player/PlayerVisualizer;F)F
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;
    .param p1, "x1"    # F

    .prologue
    .line 14
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mHue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mHue:F

    return v0
.end method

.method static synthetic access$148(Lcom/phicomm/speaker/player/PlayerVisualizer;F)F
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;
    .param p1, "x1"    # F

    .prologue
    .line 14
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mHue:F

    rem-float/2addr v0, p1

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mHue:F

    return v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/PlayerVisualizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;

    .prologue
    .line 14
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mChromaGain:I

    return v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/PlayerVisualizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;

    .prologue
    .line 14
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mScalingMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/PlayerVisualizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;

    .prologue
    .line 14
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mLumaGain:I

    return v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/PlayerVisualizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerVisualizer;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mUserEnable:Z

    return v0
.end method

.method private loadParameters()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v2, "music_light_enable"

    invoke-static {v0, v2, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mUserEnable:Z

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v2, "music_light_mode"

    invoke-static {v0, v2, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mScalingMode:I

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_luma"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mLumaGain:I

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_chroma"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mChromaGain:I

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method private move5Avg(F)F
    .locals 2
    .param p1, "amp"    # F

    .prologue
    .line 42
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp2:F

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp1:F

    .line 43
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp3:F

    iput v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp2:F

    .line 44
    iput p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp3:F

    .line 45
    iget v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp1:F

    iget v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp2:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->amp3:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizerEnable:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const/16 v1, 0x207

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 93
    :cond_0
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizerEnable:Z

    .line 94
    const-wide/16 v0, 0x7fff

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/light/LedLight;->setColor(JI)V

    .line 95
    const-string v0, "PlayerVisualizer"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void
.end method

.method public enable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizerEnable:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const/16 v1, 0x207

    invoke-static {v0, v1, v4}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->requestLightEffect(Landroid/content/Context;IZ)V

    .line 64
    new-instance v0, Landroid/media/audiofx/Visualizer;

    iget v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mSessionId:I

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mScalingMode:I

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setScalingMode(I)I

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->dataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 73
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->getCaptureSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->getSamplingRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxCaptureRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scalingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->getScalingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mUserEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScalingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mScalingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLumaGain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mLumaGain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mChromaGain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mChromaGain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 81
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizerEnable:Z

    .line 82
    const-string v0, "PlayerVisualizer"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public getUserLightEnable()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mUserEnable:Z

    return v0
.end method

.method public setChromaGain(I)I
    .locals 3
    .param p1, "gain"    # I

    .prologue
    .line 126
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 127
    :cond_0
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid chroma gain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, -0x1

    .line 134
    :goto_0
    return v0

    .line 131
    :cond_1
    iput p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mChromaGain:I

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_chroma"

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 133
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set chrome gain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLumaGain(I)I
    .locals 3
    .param p1, "gain"    # I

    .prologue
    .line 115
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 116
    :cond_0
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid luma gain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, -0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_1
    iput p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mLumaGain:I

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_luma"

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set luma gain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScalingMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 138
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 139
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid scaling mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    .line 143
    :cond_0
    iput p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mScalingMode:I

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_mode"

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Visualizer;->setScalingMode(I)I

    .line 148
    :cond_1
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set scaling mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserLightEnable(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mUserEnable:Z

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 106
    :goto_0
    const-string v0, "PlayerVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set user light enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v3

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerVisualizer;->mContext:Landroid/content/Context;

    const-string v1, "music_light_enable"

    invoke-static {v0, v1, v3}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
