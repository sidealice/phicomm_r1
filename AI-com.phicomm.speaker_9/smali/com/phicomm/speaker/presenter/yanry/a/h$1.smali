.class Lcom/phicomm/speaker/presenter/yanry/a/h$1;
.super Lcom/phicomm/speaker/e/c/b;
.source "SingerMusicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/h;->b()V
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
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/h;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->b(Lcom/phicomm/speaker/presenter/yanry/a/h;)Lcom/phicomm/speaker/views/widget/RequestLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/presenter/yanry/a/h;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->b(Lcom/phicomm/speaker/presenter/yanry/a/h;)Lcom/phicomm/speaker/views/widget/RequestLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/MusicList;

    .line 61
    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/MusicList;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/music/bean/MusicList;->setImgUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/h;->a(Lcom/phicomm/speaker/presenter/yanry/a/h;Ljava/util/List;)Ljava/util/List;

    .line 64
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/h$1;->a:Lcom/phicomm/speaker/presenter/yanry/a/h;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/h;->c(Lcom/phicomm/speaker/presenter/yanry/a/h;)Lcom/zhy/a/a/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
