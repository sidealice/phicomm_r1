.class public Lcom/phicomm/speaker/views/e;
.super Landroid/app/Dialog;
.source "ConfirmDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V
    .locals 0

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;ILcom/phicomm/speaker/c/c;)V
    .locals 7

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v6, p6

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/phicomm/speaker/views/e;->d:I

    const/4 p1, 0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/e;->a(I)V

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/phicomm/speaker/views/f;

    invoke-direct {p2, p0, p4}, Lcom/phicomm/speaker/views/f;-><init>(Lcom/phicomm/speaker/views/e;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/phicomm/speaker/views/e;->d:I

    const/4 p1, 0x2

    .line 80
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/e;->a(I)V

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/phicomm/speaker/views/g;

    invoke-direct {p2, p0, p6}, Lcom/phicomm/speaker/views/g;-><init>(Lcom/phicomm/speaker/views/e;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->c:Landroid/widget/TextView;

    new-instance p2, Lcom/phicomm/speaker/views/h;

    invoke-direct {p2, p0, p4}, Lcom/phicomm/speaker/views/h;-><init>(Lcom/phicomm/speaker/views/e;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/e;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/e;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b007f

    .line 110
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/e;->setContentView(I)V

    const v1, 0x7f0902a2

    .line 111
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/e;->a:Landroid/widget/TextView;

    const v1, 0x7f090047

    .line 112
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/e;->b:Landroid/widget/TextView;

    const v1, 0x7f090046

    .line 113
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/e;->c:Landroid/widget/TextView;

    const v1, 0x7f090310

    .line 114
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/views/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/views/e;->setCancelable(Z)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/views/e;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/phicomm/speaker/c/c;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1, p0, p2}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/e;->dismiss()V

    :goto_0
    return-void
.end method

.method final synthetic b(Lcom/phicomm/speaker/c/c;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1, p0, p2}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/e;->dismiss()V

    :goto_0
    return-void
.end method

.method final synthetic c(Lcom/phicomm/speaker/c/c;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1, p0, p2}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/e;->dismiss()V

    :goto_0
    return-void
.end method
