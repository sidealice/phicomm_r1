.class Lcom/phicomm/speaker/presenter/yanry/a/e$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "MemoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/e;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
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
.field final synthetic a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/presenter/yanry/a/e;I)V

    .line 90
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public a(ILcom/unisound/lib/time/bean/NoteInfoBean;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 81
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->b(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/model/common/e;

    move-result-object p1

    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/NoteInfoBean;->getPageCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/e;->a(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->b:Lcom/phicomm/speaker/presenter/yanry/a/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/presenter/yanry/a/e;ZLcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Lcom/unisound/lib/time/bean/NoteInfoBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e$2;->a(ILcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method
