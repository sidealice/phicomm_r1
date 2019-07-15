.class final Lcom/phicomm/speaker/views/wheelview/a;
.super Ljava/util/TimerTask;
.source "InertiaTimerTask.java"


# instance fields
.field a:F

.field final b:F

.field final c:Lcom/phicomm/speaker/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/wheelview/WheelView;F)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 14
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/a;->b:F

    const/high16 p1, 0x4f000000

    .line 15
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 20
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 21
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 22
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 23
    iput v2, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 25
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    goto :goto_0

    .line 28
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->b:F

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    .line 31
    :cond_2
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 36
    :cond_3
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 37
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v4, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v4, v4, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    sub-int/2addr v4, v0

    iput v4, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    .line 38
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-boolean v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    if-nez v3, :cond_7

    .line 39
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    .line 40
    iget-object v4, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v4, v4, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 41
    iget-object v5, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getItemsCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v6, v6, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 42
    iget-object v6, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v6, v6, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-double v6, v6

    float-to-double v8, v3

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    float-to-double v10, v4

    cmpg-double v3, v6, v10

    if-gez v3, :cond_4

    .line 43
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    add-int/2addr v3, v0

    int-to-float v4, v3

    goto :goto_1

    .line 44
    :cond_4
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-double v6, v3

    add-double/2addr v6, v8

    float-to-double v8, v5

    cmpl-double v3, v6, v8

    if-lez v3, :cond_5

    .line 45
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    add-int/2addr v3, v0

    int-to-float v5, v3

    .line 48
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    const/high16 v0, 0x42200000    # 40.0f

    .line 49
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    float-to-int v3, v4

    iput v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    goto :goto_2

    .line 51
    :cond_6
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v0, v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    float-to-int v3, v5

    iput v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    const/high16 v0, -0x3de00000    # -40.0f

    .line 53
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    .line 56
    :cond_7
    :goto_2
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 57
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    goto :goto_3

    .line 59
    :cond_8
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->a:F

    .line 61
    :goto_3
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/a;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
