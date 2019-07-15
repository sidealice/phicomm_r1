.class Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;
.super Ljava/lang/Object;
.source "PhiLinkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-static {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-static {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;->a()V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$1;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->dismiss()V

    return-void
.end method
