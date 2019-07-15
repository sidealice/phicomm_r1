.class Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$2;
.super Ljava/lang/Object;
.source "PermissionRequestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$2;->a:Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$2;->a:Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$2;->a:Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->dismiss()V

    return-void
.end method
