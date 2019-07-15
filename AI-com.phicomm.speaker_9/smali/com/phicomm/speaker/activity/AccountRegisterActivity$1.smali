.class Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "AccountRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    const v1, 0x7f0f0206

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V

    .line 85
    invoke-static {}, Lcom/phicomm/speaker/d/c;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->a(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->c(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V

    return-void
.end method
