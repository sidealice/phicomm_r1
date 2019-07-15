.class Lcom/phicomm/speaker/presenter/r$4;
.super Lcom/phicomm/speaker/net/a/b;
.source "UserDefinedQuesAnsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/r;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/r;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->i(Lcom/phicomm/speaker/presenter/r;)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/q;->a(Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p1, Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/r$4;->a(Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->h(Lcom/phicomm/speaker/presenter/r;)V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$4;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
