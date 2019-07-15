.class Lcom/phicomm/speaker/presenter/c$1;
.super Lcom/phicomm/speaker/net/a/b;
.source "CloudAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/Authorization;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/Authorization;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->c(Lcom/phicomm/speaker/presenter/c;)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Authorization;->getAuthorizationcode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    const-string v0, "0"

    const v1, 0x7f0f014e

    invoke-static {v1}, Lcom/phicomm/speaker/f/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Authorization;->getAuthorizationcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Authorization;->getAuthorizationcode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/phicomm/speaker/bean/Authorization;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/c$1;->a(Lcom/phicomm/speaker/bean/Authorization;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->a(Lcom/phicomm/speaker/presenter/c;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$1;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
