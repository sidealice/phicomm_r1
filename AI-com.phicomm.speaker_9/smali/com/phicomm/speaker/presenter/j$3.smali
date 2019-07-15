.class Lcom/phicomm/speaker/presenter/j$3;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->a(Lcom/phicomm/speaker/presenter/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 489
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 491
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->s()V

    :cond_0
    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->a(Lcom/phicomm/speaker/presenter/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 479
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$3;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->d()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 474
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$3;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
