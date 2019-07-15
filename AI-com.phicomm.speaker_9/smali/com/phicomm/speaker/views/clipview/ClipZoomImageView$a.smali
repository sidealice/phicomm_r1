.class Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;
.super Ljava/lang/Object;
.source "ClipZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;FFF)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->b:F

    .line 134
    iput p3, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->d:F

    .line 135
    iput p4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->e:F

    .line 136
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getScale()F

    move-result p1

    iget p2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->b:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const p1, 0x3f88f5c3    # 1.07f

    .line 137
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->c:F

    goto :goto_0

    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    .line 139
    iput p1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->c:F

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->c:F

    iget v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->c:F

    iget v3, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->d:F

    iget v4, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->getScale()F

    move-result v0

    .line 153
    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->b:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->c:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->b:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 159
    :cond_2
    iget v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->b:F

    div-float/2addr v1, v0

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->d:F

    iget v3, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->e:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v0}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->d(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)V

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    invoke-static {v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->c(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView$a;->a:Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;->a(Lcom/phicomm/speaker/views/clipview/ClipZoomImageView;Z)Z

    :goto_0
    return-void
.end method
