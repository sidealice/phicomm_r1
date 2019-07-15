.class public Lcom/huawei/hms/update/d/i;
.super Lcom/huawei/hms/update/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/hms/update/d/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/huawei/hms/sdk/R$string;->hms_download_retry:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/huawei/hms/sdk/R$string;->hms_retry:I

    new-instance v2, Lcom/huawei/hms/update/d/j;

    invoke-direct {v2, p0}, Lcom/huawei/hms/update/d/j;-><init>(Lcom/huawei/hms/update/d/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/huawei/hms/sdk/R$string;->hms_cancel:I

    new-instance v2, Lcom/huawei/hms/update/d/k;

    invoke-direct {v2, p0}, Lcom/huawei/hms/update/d/k;-><init>(Lcom/huawei/hms/update/d/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
