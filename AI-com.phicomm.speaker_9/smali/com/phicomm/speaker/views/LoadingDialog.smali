.class public Lcom/phicomm/speaker/views/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# static fields
.field public static a:J = 0x7530L


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/phicomm/speaker/views/LoadingView;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x7f1000af

    .line 47
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->b:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/phicomm/speaker/views/l;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/l;-><init>(Lcom/phicomm/speaker/views/LoadingDialog;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->e:Ljava/lang/Runnable;

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->d:Landroid/content/Context;

    if-nez p2, :cond_0

    const p2, 0x7f0f0138

    .line 49
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/LoadingDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f1000af

    .line 41
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->b:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/phicomm/speaker/views/k;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/k;-><init>(Lcom/phicomm/speaker/views/LoadingDialog;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->e:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->d:Landroid/content/Context;

    .line 43
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/views/LoadingDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/LoadingDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingDialog;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b0082

    .line 73
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingDialog;->setContentView(I)V

    const v1, 0x7f09017c

    .line 74
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/LoadingView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    .line 75
    iget-object v1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/phicomm/speaker/views/LoadingView;->a(II)V

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHint(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method final synthetic a()V
    .locals 1

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IJ)V
    .locals 1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->d:Landroid/content/Context;

    const v0, 0x7f0f0138

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 99
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/views/LoadingDialog;->a(Ljava/lang/String;J)V

    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHint(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 110
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHint(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->c:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setLoadingHintVisibility(I)V

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/views/LoadingDialog;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/views/LoadingDialog;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
