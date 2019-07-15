.class public Lcom/phicomm/speaker/views/i;
.super Landroid/app/Dialog;
.source "ConfirmWithTitleDialog.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/phicomm/speaker/c/c;)V
    .locals 6

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v4, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/views/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/phicomm/speaker/views/i;->a:I

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/i;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0080

    .line 36
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/i;->setContentView(I)V

    const v0, 0x7f0902a2

    .line 37
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0902fe

    .line 38
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090047

    .line 39
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/i;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/i;->setCancelable(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/i;->setCanceledOnTouchOutside(Z)V

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 46
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 49
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_2
    new-instance p1, Lcom/phicomm/speaker/views/j;

    invoke-direct {p1, p0, p5}, Lcom/phicomm/speaker/views/j;-><init>(Lcom/phicomm/speaker/views/i;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/phicomm/speaker/c/c;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, p0, p2}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/i;->dismiss()V

    :goto_0
    return-void
.end method
