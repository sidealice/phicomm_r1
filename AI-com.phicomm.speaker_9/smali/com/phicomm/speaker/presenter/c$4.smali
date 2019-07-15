.class Lcom/phicomm/speaker/presenter/c$4;
.super Lcom/phicomm/speaker/net/a/b;
.source "CloudAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/CloudAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/c$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CloudAccount;->getAccess_token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CloudAccount;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CloudAccount;->getAccess_token()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/c$4$1;

    invoke-direct {v2, p0, p1}, Lcom/phicomm/speaker/presenter/c$4$1;-><init>(Lcom/phicomm/speaker/presenter/c$4;Lcom/phicomm/speaker/bean/CloudAccount;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V

    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->f(Lcom/phicomm/speaker/presenter/c;)V

    .line 105
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    const-string v0, "0"

    const v1, 0x7f0f0150

    invoke-static {v1}, Lcom/phicomm/speaker/f/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/c$4;->a(Lcom/phicomm/speaker/bean/CloudAccount;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->e(Lcom/phicomm/speaker/presenter/c;)V

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
