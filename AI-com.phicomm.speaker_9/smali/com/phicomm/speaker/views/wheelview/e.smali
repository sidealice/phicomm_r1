.class final Lcom/phicomm/speaker/views/wheelview/e;
.super Ljava/util/TimerTask;
.source "SmoothScrollTimerTask.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:Lcom/phicomm/speaker/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/wheelview/WheelView;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 14
    iput p2, p0, Lcom/phicomm/speaker/views/wheelview/e;->c:I

    const p1, 0x7fffffff

    .line 15
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 21
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 22
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->c:I

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    .line 25
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    .line 27
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 28
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    goto :goto_0

    .line 31
    :cond_1
    iput v1, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    .line 35
    :cond_2
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xbb8

    if-gt v0, v1, :cond_3

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    iget v4, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-boolean v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->p:Z

    if-nez v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->l:F

    .line 44
    iget-object v3, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v3, v3, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    .line 45
    iget-object v4, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v4}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getItemsCount()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v1, v1, Lcom/phicomm/speaker/views/wheelview/WheelView;->u:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, v0

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v1, v1, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    iget v3, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->t:I

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a()V

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget-object v0, v0, Lcom/phicomm/speaker/views/wheelview/WheelView;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    iget v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    iget v1, p0, Lcom/phicomm/speaker/views/wheelview/e;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/views/wheelview/e;->a:I

    :goto_1
    return-void
.end method
