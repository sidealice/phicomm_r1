.class Lcom/phicomm/speaker/presenter/r$2;
.super Lcom/phicomm/speaker/net/a/b;
.source "UserDefinedQuesAnsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/r;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/CustumDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/r;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->e(Lcom/phicomm/speaker/presenter/r;)V

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/q;->a(Lcom/phicomm/speaker/bean/CustumDetailBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/r$2;->a(Lcom/phicomm/speaker/bean/CustumDetailBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->d(Lcom/phicomm/speaker/presenter/r;)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$2;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
