.class public Lcom/phicomm/speaker/popup/c;
.super Ljava/lang/Object;
.source "DeleteQuesAnsPopup.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/popup/c;->a:Landroid/app/Activity;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0b00ce

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    .line 37
    iget-object p1, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    const v1, 0x7f09027f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 38
    iget-object v1, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    const v2, 0x7f090259

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    .line 40
    iget-object v2, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance v2, Lcom/wangjie/shadowviewhelper/ShadowProperty;

    invoke-direct {v2}, Lcom/wangjie/shadowviewhelper/ShadowProperty;-><init>()V

    const/high16 v3, 0x77000000

    .line 44
    invoke-virtual {v2, v3}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowColor(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 45
    invoke-static {v3}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowDy(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    .line 46
    invoke-static {v3}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowRadius(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v2

    const/16 v3, 0x1111

    .line 47
    invoke-virtual {v2, v3}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowSide(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v2

    .line 48
    new-instance v3, Lcom/wangjie/shadowviewhelper/a;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v3, v2, v6, v5, v5}, Lcom/wangjie/shadowviewhelper/a;-><init>(Lcom/wangjie/shadowviewhelper/ShadowProperty;IFF)V

    .line 49
    iget-object v2, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v2, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    invoke-static {v2, v4, v0}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 62
    new-instance v0, Lcom/phicomm/speaker/popup/d;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/popup/d;-><init>(Lcom/phicomm/speaker/popup/c;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Lcom/phicomm/speaker/popup/e;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/popup/e;-><init>(Lcom/phicomm/speaker/popup/c;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/popup/c;->c:Landroid/view/View;

    return-object v0
.end method

.method final synthetic a(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/phicomm/speaker/popup/c;->b()V

    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/phicomm/speaker/popup/c;->b()V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/popup/c;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
