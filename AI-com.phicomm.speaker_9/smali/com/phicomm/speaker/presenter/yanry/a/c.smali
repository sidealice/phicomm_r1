.class public Lcom/phicomm/speaker/presenter/yanry/a/c;
.super Lcom/phicomm/speaker/e/c/b;
.source "FmCategoryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/audio/bean/CategoryBean;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field private b:Lcom/phicomm/speaker/model/a/a;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/model/a/a;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 23
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->b:Lcom/phicomm/speaker/model/a/a;

    const/16 p1, 0x11

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p2, p1, v0}, Lcom/phicomm/speaker/model/a/a;->a(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 29
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/e/a;->e(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    const-string v0, "get category fail: %s."

    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    .line 47
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public a(ILcom/unisound/lib/audio/bean/CategoryBean;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    if-eqz p2, :cond_1

    .line 36
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/CategoryBean;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->b:Lcom/phicomm/speaker/model/a/a;

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/CategoryBean$ResultBean;->getId()I

    move-result p2

    invoke-static {p2}, Lcom/phicomm/speaker/fragment/FmFragment;->a(I)Lcom/phicomm/speaker/fragment/FmFragment;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/phicomm/speaker/model/a/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/base/a;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/c;->b:Lcom/phicomm/speaker/model/a/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/a/a;->a()V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/unisound/lib/audio/bean/CategoryBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/c;->a(ILcom/unisound/lib/audio/bean/CategoryBean;)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/a/c;->a()V

    return-void
.end method
