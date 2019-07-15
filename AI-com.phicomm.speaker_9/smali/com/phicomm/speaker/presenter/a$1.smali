.class Lcom/phicomm/speaker/presenter/a$1;
.super Lcom/phicomm/speaker/net/a/b;
.source "AppPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/IntroductionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/a;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/IntroductionBean;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/a;->c(Lcom/phicomm/speaker/presenter/a;)V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/a;->b(Lcom/phicomm/speaker/presenter/a;)Lcom/phicomm/speaker/presenter/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/a;->b(Lcom/phicomm/speaker/presenter/a;)Lcom/phicomm/speaker/presenter/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/a;->a(Lcom/phicomm/speaker/bean/IntroductionBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/phicomm/speaker/bean/IntroductionBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/a$1;->a(Lcom/phicomm/speaker/bean/IntroductionBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/a;->a(Lcom/phicomm/speaker/presenter/a;)V

    .line 32
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/a;->b(Lcom/phicomm/speaker/presenter/a;)Lcom/phicomm/speaker/presenter/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a$1;->a:Lcom/phicomm/speaker/presenter/a;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/a;->b(Lcom/phicomm/speaker/presenter/a;)Lcom/phicomm/speaker/presenter/b/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
