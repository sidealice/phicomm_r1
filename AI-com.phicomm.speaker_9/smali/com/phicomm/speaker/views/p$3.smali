.class Lcom/phicomm/speaker/views/p$3;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "VerifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/p;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/p;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/p;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;Z)V

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;Lcom/phicomm/speaker/bean/Captcha;)Lcom/phicomm/speaker/bean/Captcha;

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/views/p;->b(Lcom/phicomm/speaker/views/p;Lcom/phicomm/speaker/bean/Captcha;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;Z)V

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/p;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/views/n;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-static {v0}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;)Lcom/phicomm/speaker/views/p$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-static {v0}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;)Lcom/phicomm/speaker/views/p$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/views/p$a;->a()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;Z)V

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/views/p;Z)V

    .line 170
    iget-object p1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/p;->a(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/phicomm/speaker/views/p$3;->a:Lcom/phicomm/speaker/views/p;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/p;->a()V

    return-void
.end method
