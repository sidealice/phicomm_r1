.class Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "ModifyPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ModifyPasswordActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ModifyPasswordActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;->a:Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/FxResponse;)V
    .locals 4

    const p1, 0x7f0f019f

    .line 58
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 59
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/manager/a;->f()V

    .line 60
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/f/c;->c()V

    .line 61
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;->a:Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;->a:Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    const-class v2, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "register_phone"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;->a:Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "8"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f011c

    .line 67
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 70
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ModifyPasswordActivity$1;->a:Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    const p2, 0x7f0f019e

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
