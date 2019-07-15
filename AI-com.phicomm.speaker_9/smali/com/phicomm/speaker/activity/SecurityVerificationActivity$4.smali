.class Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;
.super Ljava/lang/Object;
.source "SecurityVerificationActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/views/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/bean/Captcha;)V
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

    .line 149
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;I)I

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->c(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->e(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->f(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Lcom/phicomm/speaker/views/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->dismiss()V

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->requestFocus()Z

    return-void
.end method
