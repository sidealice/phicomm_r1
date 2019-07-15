.class public Lcom/phicomm/speaker/views/dialog/b;
.super Landroid/app/Dialog;
.source "MediaVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/dialog/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/views/MySeekBar;

.field private b:Lcom/phicomm/speaker/views/dialog/b$a;

.field private c:Landroid/os/Handler;

.field private final d:J

.field private e:I

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/phicomm/speaker/views/dialog/b$a;)V
    .locals 2

    const v0, 0x7f1000af

    .line 38
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x7d0

    .line 27
    iput-wide v0, p0, Lcom/phicomm/speaker/views/dialog/b;->d:J

    .line 33
    new-instance p1, Lcom/phicomm/speaker/views/dialog/c;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/views/dialog/c;-><init>(Lcom/phicomm/speaker/views/dialog/b;)V

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/b;->f:Ljava/lang/Runnable;

    .line 39
    iput-object p3, p0, Lcom/phicomm/speaker/views/dialog/b;->b:Lcom/phicomm/speaker/views/dialog/b$a;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/b;->c:Landroid/os/Handler;

    .line 41
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/dialog/b;->b(I)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/b;->setCancelable(Z)V

    return-void
.end method

.method private b(I)V
    .locals 3

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/b;->requestWindowFeature(I)Z

    const v0, 0x7f0b0085

    .line 47
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/dialog/b;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const p1, 0x3f733333    # 0.95f

    .line 52
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 53
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 55
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f1000be

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const p1, 0x7f090206

    .line 56
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/views/MySeekBar;

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/b;->a:Lcom/phicomm/speaker/views/MySeekBar;

    .line 57
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/b;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {p1, p0}, Lcom/phicomm/speaker/views/MySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MySeekBar;->getShowProgress()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MySeekBar;->getShowMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MySeekBar;->getShowMin()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 96
    iput p1, p0, Lcom/phicomm/speaker/views/dialog/b;->e:I

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/MySeekBar;->setShowProgress(I)V

    return-void
.end method

.method final synthetic b()V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/views/dialog/b;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget v0, p0, Lcom/phicomm/speaker/views/dialog/b;->e:I

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->b:Lcom/phicomm/speaker/views/dialog/b$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->b:Lcom/phicomm/speaker/views/dialog/b$a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/dialog/b;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/views/dialog/b$a;->a(I)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/b;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/b;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/b;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/phicomm/speaker/views/dialog/b;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 4

    .line 79
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/views/dialog/b;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
