.class Lcom/phicomm/speaker/presenter/yanry/a/e$7;
.super Lcom/phicomm/speaker/e/c/b;
.source "MemoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/time/bean/NoteInfoBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 312
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 313
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    :cond_0
    return-void
.end method

.method protected a(ILcom/unisound/lib/time/bean/NoteInfoBean;)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->d(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/views/widget/RequestLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 304
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->b(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/model/common/e;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/NoteInfoBean;->getPageCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/e;->a(Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/presenter/yanry/a/e;ZLcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p2, Lcom/unisound/lib/time/bean/NoteInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e$7;->a(ILcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method
