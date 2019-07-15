.class Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;
.super Ljava/lang/Object;
.source "SecurityVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/SecurityVerificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvSendVerificationCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    const v2, 0x7f0f0202

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvSendVerificationCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " S  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->b(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)I

    .line 70
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)I

    move-result v1

    const-string v2, "SECURITY_VERIFICATION_CODE_TIME"

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(ILjava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->c(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
