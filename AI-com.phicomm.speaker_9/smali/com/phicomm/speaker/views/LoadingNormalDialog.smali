.class public Lcom/phicomm/speaker/views/LoadingNormalDialog;
.super Landroid/app/Dialog;
.source "LoadingNormalDialog.java"


# instance fields
.field private a:Lcom/phicomm/speaker/views/LoadingView;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x7f1000af

    .line 36
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    if-nez p2, :cond_0

    const p2, 0x7f0f0138

    .line 38
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f1000af

    .line 30
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    .line 32
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b0082

    .line 51
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->setContentView(I)V

    const v1, 0x7f09017c

    .line 52
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/LoadingView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    .line 53
    iget-object v1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/phicomm/speaker/views/LoadingView;->a(II)V

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHint(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    const v0, 0x7f0f0138

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a(Ljava/lang/String;)V

    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHint(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->a:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 69
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingNormalDialog;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
