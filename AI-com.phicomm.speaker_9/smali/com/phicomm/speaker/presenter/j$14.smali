.class Lcom/phicomm/speaker/presenter/j$14;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/music/bean/CurrentMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;Z)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/j$14;->a:Z

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j$14;->a:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 395
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->f()V

    :cond_1
    return-void
.end method

.method public a(ILcom/unisound/lib/music/bean/CurrentMusicInfo;)V
    .locals 0

    .line 376
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/j$14;->a:Z

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 380
    invoke-virtual {p2}, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->getResult()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->getResult()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->a(Ljava/util/List;)V

    goto :goto_1

    .line 381
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$14;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->a(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 373
    check-cast p2, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$14;->a(ILcom/unisound/lib/music/bean/CurrentMusicInfo;)V

    return-void
.end method
