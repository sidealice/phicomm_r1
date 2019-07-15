.class public Lcom/phicomm/speaker/views/m;
.super Landroid/app/Dialog;
.source "LogoutDialog.java"


# static fields
.field private static c:Z


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/phicomm/speaker/c/c;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p4}, Lcom/phicomm/speaker/views/m;->a(I)V

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/phicomm/speaker/views/m;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/phicomm/speaker/views/m;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/m;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/phicomm/speaker/views/m$1;

    invoke-direct {p2, p0, p5}, Lcom/phicomm/speaker/views/m$1;-><init>(Lcom/phicomm/speaker/views/m;Lcom/phicomm/speaker/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/m;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/m;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b007f

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/m;->setContentView(I)V

    const v0, 0x7f0902a2

    .line 59
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/m;->a:Landroid/widget/TextView;

    const v0, 0x7f090047

    .line 60
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/m;->b:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/views/m;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/m;->setCancelable(Z)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/views/m;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/phicomm/speaker/views/m;->c:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/phicomm/speaker/views/m;->c:Z

    .line 75
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/phicomm/speaker/views/m;->c:Z

    .line 69
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
