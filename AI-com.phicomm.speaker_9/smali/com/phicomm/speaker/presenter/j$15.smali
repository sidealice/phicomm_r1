.class Lcom/phicomm/speaker/presenter/j$15;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/audio/bean/AudioCurrentList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;Z)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/j$15;->a:Z

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j$15;->a:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 430
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->g()V

    :cond_1
    return-void
.end method

.method public a(ILcom/unisound/lib/audio/bean/AudioCurrentList;)V
    .locals 0

    .line 411
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/j$15;->a:Z

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 415
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentList;->getResult()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentList;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentList;->getResult()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->b(Ljava/util/List;)V

    goto :goto_1

    .line 416
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$15;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->b(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p2, Lcom/unisound/lib/audio/bean/AudioCurrentList;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$15;->a(ILcom/unisound/lib/audio/bean/AudioCurrentList;)V

    return-void
.end method
