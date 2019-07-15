.class Lcom/phicomm/speaker/player/PlayerVisualizer$1;
.super Ljava/lang/Object;
.source "PlayerVisualizer.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/PlayerVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/PlayerVisualizer;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 11
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "fft"    # [B
    .param p3, "samplingRate"    # I

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "ampMax":F
    const/4 v5, 0x0

    .line 166
    .local v5, "move5Avg":F
    const/4 v3, 0x0

    .line 167
    .local v3, "freqIndexAtMaxAmp":I
    const/4 v2, 0x0

    .line 169
    .local v2, "brightness":F
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_1

    .line 170
    aget-byte v6, p2, v4

    int-to-double v6, v6

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p2, v8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-int v0, v6

    .line 171
    .local v0, "amp":I
    int-to-float v6, v0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    .line 172
    int-to-float v1, v0

    .line 173
    move v3, v4

    .line 169
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 179
    .end local v0    # "amp":I
    :cond_1
    iget-object v6, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-static {v6, v1}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$000(Lcom/phicomm/speaker/player/PlayerVisualizer;F)F

    move-result v5

    .line 180
    const/high16 v6, 0x43340000    # 180.0f

    div-float v2, v5, v6

    .line 182
    iget-object v6, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    iget-object v7, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-static {v7}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$200(Lcom/phicomm/speaker/player/PlayerVisualizer;)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3a83126f    # 0.001f

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$116(Lcom/phicomm/speaker/player/PlayerVisualizer;F)F

    .line 183
    iget-object v6, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$148(Lcom/phicomm/speaker/player/PlayerVisualizer;F)F

    .line 185
    iget-object v6, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-static {v6}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$300(Lcom/phicomm/speaker/player/PlayerVisualizer;)I

    move-result v6

    if-nez v6, :cond_2

    .line 186
    iget-object v6, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-static {v6}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$400(Lcom/phicomm/speaker/player/PlayerVisualizer;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    mul-float/2addr v2, v6

    .line 189
    :cond_2
    iget-object v6, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-static {v6}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$500(Lcom/phicomm/speaker/player/PlayerVisualizer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    const-wide/16 v6, 0x7fff

    const v8, 0xffffff

    iget-object v9, p0, Lcom/phicomm/speaker/player/PlayerVisualizer$1;->this$0:Lcom/phicomm/speaker/player/PlayerVisualizer;

    invoke-static {v9}, Lcom/phicomm/speaker/player/PlayerVisualizer;->access$100(Lcom/phicomm/speaker/player/PlayerVisualizer;)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10, v2}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v9

    and-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/phicomm/speaker/player/light/LedLight;->setColor(JI)V

    .line 194
    :goto_1
    return-void

    .line 192
    :cond_3
    const-wide/16 v6, 0x7fff

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/phicomm/speaker/player/light/LedLight;->setColor(JI)V

    goto :goto_1
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "waveform"    # [B
    .param p3, "samplingRate"    # I

    .prologue
    .line 158
    return-void
.end method
