.class public Lcom/huawei/hms/update/d/o;
.super Lcom/huawei/hms/update/d/e;

# interfaces
.implements Lcom/huawei/hms/update/d/a/b;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/update/d/o;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/update/d/o;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/huawei/hms/update/d/p;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/p;-><init>(Lcom/huawei/hms/update/d/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/hms/update/d/o;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/hms/update/d/o;->a:Landroid/content/Context;

    sget v2, Lcom/huawei/hms/sdk/R$layout;->hms_download_dialog:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/huawei/hms/sdk/R$id;->hms_message_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/huawei/hms/update/d/o;->b:Landroid/widget/TextView;

    sget v2, Lcom/huawei/hms/sdk/R$id;->hms_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/huawei/hms/update/d/o;->c:Landroid/widget/ProgressBar;

    sget v2, Lcom/huawei/hms/sdk/R$id;->hms_cancel_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/huawei/hms/update/d/o;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/huawei/hms/update/d/o;->g()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/huawei/hms/update/d/o;->a(II)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 5

    iget-object v0, p0, Lcom/huawei/hms/update/d/o;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/update/d/o;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_1

    if-lez p2, :cond_1

    int-to-long v1, p1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    int-to-long p1, p2

    div-long/2addr v1, p1

    long-to-int p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object p2, p0, Lcom/huawei/hms/update/d/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/hms/update/d/o;->a:Landroid/content/Context;

    sget v2, Lcom/huawei/hms/sdk/R$string;->hms_downloading:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/huawei/hms/update/d/o;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    return-void
.end method
