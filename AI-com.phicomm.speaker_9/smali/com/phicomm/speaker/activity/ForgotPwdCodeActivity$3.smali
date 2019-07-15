.class Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "ForgotPwdCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d()V
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

    .line 107
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    const v0, 0x7f0f005e

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;->a:Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
