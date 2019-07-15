.class public Lcom/phicomm/speaker/popup/g;
.super Ljava/lang/Object;
.source "GetPhotoPopup.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/phicomm/speaker/c/e;)V
    .locals 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/popup/g;->a:Landroid/app/Activity;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00d0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0902fa

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09028e

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090259

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v3, p1, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    .line 37
    iget-object p1, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance p1, Lcom/phicomm/speaker/popup/g$1;

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/popup/g$1;-><init>(Lcom/phicomm/speaker/popup/g;Lcom/phicomm/speaker/c/e;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance p1, Lcom/phicomm/speaker/popup/g$2;

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/popup/g$2;-><init>(Lcom/phicomm/speaker/popup/g;Lcom/phicomm/speaker/c/e;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance p1, Lcom/phicomm/speaker/popup/g$3;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/popup/g$3;-><init>(Lcom/phicomm/speaker/popup/g;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/phicomm/speaker/popup/g$4;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/popup/g$4;-><init>(Lcom/phicomm/speaker/popup/g;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 101
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 102
    iget-object p1, p0, Lcom/phicomm/speaker/popup/g;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const v0, 0x3f333333    # 0.7f

    .line 76
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/popup/g;->a(F)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
