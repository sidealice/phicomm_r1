.class Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;
.super Ljava/lang/Object;
.source "ForgotPwdCodeActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/views/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;I)I

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->c(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->g(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->h(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Lcom/phicomm/speaker/views/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->dismiss()V

    return-void
.end method
