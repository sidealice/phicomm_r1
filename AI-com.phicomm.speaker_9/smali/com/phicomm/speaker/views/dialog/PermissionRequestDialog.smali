.class public Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;
.super Landroid/app/Dialog;
.source "PermissionRequestDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100136

    .line 36
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0087

    .line 42
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->setContentView(I)V

    const p1, 0x7f09018e

    .line 43
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->a:Landroid/widget/TextView;

    const p1, 0x7f090051

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->b:Landroid/widget/TextView;

    const p1, 0x7f090209

    .line 45
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->c:Landroid/widget/TextView;

    .line 46
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$1;-><init>(Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$2;-><init>(Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->setCancelable(Z)V

    return-void
.end method
