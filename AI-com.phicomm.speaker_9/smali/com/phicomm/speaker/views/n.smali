.class public Lcom/phicomm/speaker/views/n;
.super Landroid/app/Dialog;
.source "MyDialogToast.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f1000af

    .line 27
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/views/n;->c:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/phicomm/speaker/views/n;->b:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/views/n;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/n;->setCancelable(Z)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/n;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/n;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0086

    .line 37
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/n;->setContentView(I)V

    const v0, 0x7f0902a2

    .line 38
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/n;->a:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/views/n;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static final synthetic a(ILcom/phicomm/speaker/views/n;)V
    .locals 2

    int-to-long v0, p0

    .line 54
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/n;->dismiss()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 50
    new-instance v0, Lcom/phicomm/speaker/views/n;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/n;->show()V

    .line 52
    const-class p0, Lcom/phicomm/speaker/model/common/b;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/model/common/b;

    new-instance p1, Lcom/phicomm/speaker/views/o;

    invoke-direct {p1, p2, v0}, Lcom/phicomm/speaker/views/o;-><init>(ILcom/phicomm/speaker/views/n;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/model/common/b;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
