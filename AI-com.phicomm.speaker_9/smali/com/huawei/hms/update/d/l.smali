.class public Lcom/huawei/hms/update/d/l;
.super Lcom/huawei/hms/update/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/app/Dialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/hms/update/d/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/hms/update/d/l;->a:Landroid/content/Context;

    sget v2, Lcom/huawei/hms/sdk/R$layout;->hms_update_dialog:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/huawei/hms/sdk/R$id;->hms_update_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/huawei/hms/a/d;

    iget-object v4, p0, Lcom/huawei/hms/update/d/l;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/huawei/hms/a/d;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/huawei/hms/update/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/huawei/hms/a/d;->a(Ljava/lang/String;)Lcom/huawei/hms/a/d$a;

    move-result-object v3

    sget-object v4, Lcom/huawei/hms/a/d$a;->c:Lcom/huawei/hms/a/d$a;

    if-ne v3, v4, :cond_0

    sget v3, Lcom/huawei/hms/sdk/R$string;->hms_install_message:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/huawei/hms/sdk/R$string;->hms_install:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/huawei/hms/sdk/R$string;->hms_update_message:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/huawei/hms/sdk/R$string;->hms_update:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/huawei/hms/sdk/R$string;->hms_update_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/huawei/hms/update/d/m;

    invoke-direct {v1, p0}, Lcom/huawei/hms/update/d/m;-><init>(Lcom/huawei/hms/update/d/l;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/huawei/hms/sdk/R$string;->hms_cancel:I

    new-instance v2, Lcom/huawei/hms/update/d/n;

    invoke-direct {v2, p0}, Lcom/huawei/hms/update/d/n;-><init>(Lcom/huawei/hms/update/d/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
