.class Lcom/phicomm/speaker/activity/LoginCloudActivity$3;
.super Ljava/lang/Object;
.source "LoginCloudActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/LoginCloudActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/LoginCloudActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$3;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    const-string p2, "onClickListener"

    .line 207
    invoke-static {p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 208
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.DATE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$3;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
