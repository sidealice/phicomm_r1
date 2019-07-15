.class public Lcom/phicomm/speaker/views/q;
.super Landroid/app/Dialog;
.source "VolumeControlDialog.java"


# instance fields
.field private a:Lcom/phicomm/speaker/views/MySeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/c/c;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f1000b2

    .line 29
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/views/q;->b()V

    .line 31
    iget-object p1, p0, Lcom/phicomm/speaker/views/q;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/phicomm/speaker/views/q;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/phicomm/speaker/views/q;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/phicomm/speaker/views/q$1;

    invoke-direct {p2, p0, p3}, Lcom/phicomm/speaker/views/q$1;-><init>(Lcom/phicomm/speaker/views/q;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/phicomm/speaker/views/q;->c:Landroid/widget/TextView;

    new-instance p2, Lcom/phicomm/speaker/views/q$2;

    invoke-direct {p2, p0, p5}, Lcom/phicomm/speaker/views/q$2;-><init>(Lcom/phicomm/speaker/views/q;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/q;->setCancelable(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/q;->requestWindowFeature(I)Z

    .line 59
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0089

    .line 60
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/q;->setContentView(I)V

    const v0, 0x7f090206

    .line 61
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MySeekBar;

    iput-object v0, p0, Lcom/phicomm/speaker/views/q;->a:Lcom/phicomm/speaker/views/MySeekBar;

    const v0, 0x7f090047

    .line 62
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/q;->b:Landroid/widget/TextView;

    const v0, 0x7f090046

    .line 63
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/q;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/views/q;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MySeekBar;->getShowProgress()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/views/q;->a:Lcom/phicomm/speaker/views/MySeekBar;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/MySeekBar;->setShowProgress(I)V

    return-void
.end method
