.class public Lcom/phicomm/speaker/views/CommonDialog;
.super Landroid/app/Dialog;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/CommonDialog$Builder;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/views/CommonDialog$Builder;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/views/CommonDialog;->e:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/views/CommonDialog;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0081

    .line 49
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog;->setContentView(I)V

    const v0, 0x7f0902a2

    .line 50
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f090047

    .line 51
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->b:Landroid/widget/Button;

    const v0, 0x7f090046

    .line 52
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->c:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v1, v1, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->e:Landroid/content/Context;

    const v2, 0x7f0f004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v1, v1, Lcom/phicomm/speaker/views/CommonDialog$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->e:Landroid/content/Context;

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v1, v1, Lcom/phicomm/speaker/views/CommonDialog$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->f:I

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget v2, v2, Lcom/phicomm/speaker/views/CommonDialog$Builder;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d:I

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/phicomm/speaker/views/CommonDialog;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget v2, v2, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->c:Landroid/widget/Button;

    new-instance v1, Lcom/phicomm/speaker/views/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/a;-><init>(Lcom/phicomm/speaker/views/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->c:Landroid/widget/Button;

    new-instance v1, Lcom/phicomm/speaker/views/b;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/b;-><init>(Lcom/phicomm/speaker/views/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :goto_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->b:Landroid/widget/Button;

    new-instance v1, Lcom/phicomm/speaker/views/c;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/c;-><init>(Lcom/phicomm/speaker/views/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->b:Landroid/widget/Button;

    new-instance v1, Lcom/phicomm/speaker/views/d;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/d;-><init>(Lcom/phicomm/speaker/views/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog;->dismiss()V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->h:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog;->dismiss()V

    return-void
.end method

.method final synthetic d(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/CommonDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/views/CommonDialog;->d:Lcom/phicomm/speaker/views/CommonDialog$Builder;

    iget-object v0, v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
