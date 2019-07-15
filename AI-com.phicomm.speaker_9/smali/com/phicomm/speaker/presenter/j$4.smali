.class Lcom/phicomm/speaker/presenter/j$4;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Ljava/util/List<",
        "Lcom/unisound/lib/music/bean/MusicList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;Z)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/j$4;->a:Z

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;Z)Z

    .line 529
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/i;->h()V

    .line 531
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j$4;->a:Z

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 533
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->d(Lcom/phicomm/speaker/presenter/j;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 536
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->f(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 510
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$4;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 513
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;Z)Z

    .line 514
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 515
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->c(Ljava/util/List;)V

    .line 516
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/j$4;->a:Z

    if-nez p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->d(Lcom/phicomm/speaker/presenter/j;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$4;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/j;->f(Z)V

    :cond_1
    :goto_0
    return-void
.end method
