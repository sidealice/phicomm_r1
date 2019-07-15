.class Lcom/phicomm/speaker/presenter/j$5;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/audio/bean/AudioCollectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;Z)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    iput-boolean p2, p0, Lcom/phicomm/speaker/presenter/j$5;->a:Z

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;Z)Z

    .line 579
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/i;->i()V

    .line 581
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j$5;->a:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 583
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->e(Lcom/phicomm/speaker/presenter/j;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 586
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->g(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILcom/unisound/lib/audio/bean/AudioCollectList;)V
    .locals 1

    .line 559
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;Z)Z

    .line 560
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 562
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCollectList;->getCollectAudio()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->d(Ljava/util/List;)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/i;->d(Ljava/util/List;)V

    .line 566
    :goto_0
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/j$5;->a:Z

    if-nez p1, :cond_1

    .line 567
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    goto :goto_1

    .line 569
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->e(Lcom/phicomm/speaker/presenter/j;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 570
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$5;->b:Lcom/phicomm/speaker/presenter/j;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/j;->g(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 556
    check-cast p2, Lcom/unisound/lib/audio/bean/AudioCollectList;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$5;->a(ILcom/unisound/lib/audio/bean/AudioCollectList;)V

    return-void
.end method
