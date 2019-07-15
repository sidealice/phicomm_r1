.class public Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;
.super Ljava/lang/Object;
.source "MatrixManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager$1;
    }
.end annotation


# static fields
.field protected static final QUARTER_ROTATION:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "MatrixManager"


# instance fields
.field protected currentRotation:I

.field protected currentScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

.field protected intrinsicVideoSize:Landroid/graphics/Point;

.field protected requestedModificationView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected requestedRotation:Ljava/lang/Integer;

.field protected requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    .line 16
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    .line 18
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 20
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 21
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected applyCenter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 131
    .local v0, "xScale":F
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 133
    .local v1, "yScale":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    .line 134
    return-void
.end method

.method protected applyCenterCrop(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 144
    .local v1, "xScale":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 146
    .local v2, "yScale":F
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 147
    .local v0, "scale":F
    div-float v1, v0, v1

    .line 148
    div-float v2, v0, v2

    .line 150
    invoke-virtual {p0, p1, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    .line 151
    return-void
.end method

.method protected applyCenterInside(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyCenter(Landroid/view/View;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyFitCenter(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected applyFitCenter(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 176
    .local v1, "xScale":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 178
    .local v2, "yScale":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 179
    .local v0, "scale":F
    div-float v1, v0, v1

    .line 180
    div-float v2, v0, v2

    .line 181
    invoke-virtual {p0, p1, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    .line 182
    return-void
.end method

.method protected applyFitXy(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p0, p1, v0, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    .line 193
    return-void
.end method

.method protected applyRequestedModifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 222
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->rotate(Landroid/view/View;I)V

    .line 225
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/View;Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)Z

    .line 230
    iput-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 234
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    .line 235
    return-void
.end method

.method public getCurrentRotation()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    goto :goto_0
.end method

.method public getCurrentScaleType()Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setIntrinsicVideoSize(II)V

    .line 27
    iput v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    .line 28
    return-void
.end method

.method public rotate(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 57
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    .line 76
    :goto_0
    return-void

    .line 61
    :cond_0
    div-int/lit8 v5, p2, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 62
    .local v1, "swapWidthHeight":Z
    :goto_1
    iget v5, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    move v0, v3

    .line 65
    .local v0, "currentWidthHeightSwapped":Z
    :goto_2
    if-eq v1, v0, :cond_1

    .line 66
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 67
    .local v2, "tempX":I
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 68
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 71
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, p1, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/View;Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)Z

    .line 74
    .end local v2    # "tempX":I
    :cond_1
    iput p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    .line 75
    int-to-float v3, p2

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .end local v0    # "currentWidthHeightSwapped":Z
    .end local v1    # "swapWidthHeight":Z
    :cond_2
    move v1, v4

    .line 61
    goto :goto_1

    .restart local v1    # "swapWidthHeight":Z
    :cond_3
    move v0, v4

    .line 62
    goto :goto_2
.end method

.method public scale(Landroid/view/View;Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scaleType"    # Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 86
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 88
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    .line 119
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_2

    .line 93
    :cond_1
    const-string v1, "MatrixManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply scale with a view size of ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_2
    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .line 98
    sget-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager$1;->$SwitchMap$com$phicomm$speaker$player$exomedia$core$video$scale$ScaleType:[I

    invoke-virtual {p2}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyCenter(Landroid/view/View;)V

    goto :goto_1

    .line 103
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyCenterCrop(Landroid/view/View;)V

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyCenterInside(Landroid/view/View;)V

    goto :goto_1

    .line 109
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyFitCenter(Landroid/view/View;)V

    goto :goto_1

    .line 112
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyFitXy(Landroid/view/View;)V

    goto :goto_1

    .line 115
    :pswitch_5
    invoke-virtual {p0, p1, v2, v2}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setIntrinsicVideoSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x1

    .line 35
    iget v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v1, v1, 0x5a

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_1

    .line 36
    .local v0, "currentWidthHeightSwapped":Z
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    move v1, p2

    :goto_1
    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 37
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    if-eqz v0, :cond_3

    .end local p1    # "width":I
    :goto_2
    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 39
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->applyRequestedModifications()V

    .line 42
    :cond_0
    return-void

    .line 35
    .end local v0    # "currentWidthHeightSwapped":Z
    .restart local p1    # "width":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "currentWidthHeightSwapped":Z
    :cond_2
    move v1, p1

    .line 36
    goto :goto_1

    :cond_3
    move p1, p2

    .line 37
    goto :goto_2
.end method

.method protected setScale(Landroid/view/View;FF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "xScale"    # F
    .param p3, "yScale"    # F

    .prologue
    const/4 v0, 0x1

    .line 204
    iget v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v0, :cond_1

    .line 205
    .local v0, "currentWidthHeightSwapped":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    move v1, p2

    .line 207
    .local v1, "scaleTemp":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float p2, v2, v3

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float p3, v2, v3

    .line 211
    .end local v1    # "scaleTemp":F
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 212
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 213
    return-void

    .line 204
    .end local v0    # "currentWidthHeightSwapped":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
