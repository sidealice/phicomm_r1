.class Lcom/phicomm/speaker/presenter/c$8;
.super Lcom/phicomm/speaker/net/a/b;
.source "CloudAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/Captcha;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->q(Lcom/phicomm/speaker/presenter/c;)V

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/c;->a(Lcom/phicomm/speaker/bean/Captcha;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/phicomm/speaker/bean/Captcha;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/c$8;->a(Lcom/phicomm/speaker/bean/Captcha;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->p(Lcom/phicomm/speaker/presenter/c;)V

    .line 253
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$8;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
