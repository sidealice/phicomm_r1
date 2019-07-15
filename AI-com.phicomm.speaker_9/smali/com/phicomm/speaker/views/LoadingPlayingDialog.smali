.class public Lcom/phicomm/speaker/views/LoadingPlayingDialog;
.super Landroid/app/Dialog;
.source "LoadingPlayingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 28
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 29
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b0084

    .line 30
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->setContentView(I)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->setCancelable(Z)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 34
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
