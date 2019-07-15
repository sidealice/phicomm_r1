.class Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$1;
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

    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$1;->a:Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog$1;->a:Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/dialog/PermissionRequestDialog;->dismiss()V

    return-void
.end method
