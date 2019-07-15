.class Lcom/phicomm/speaker/presenter/yanry/a/g$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "ReminderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g;-><init>(Lcom/phicomm/speaker/fragment/ReminderFragment;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/time/bean/TimeManageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field final synthetic b:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field final synthetic c:Lcom/phicomm/speaker/presenter/yanry/a/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Lcom/phicomm/speaker/views/widget/RequestLayout;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/model/common/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0131

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->b:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "get reminder data fail: %s."

    const/4 v1, 0x1

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public a(ILcom/unisound/lib/time/bean/TimeManageBean;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->c:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p2, Lcom/unisound/lib/time/bean/TimeManageBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/g$2;->a(ILcom/unisound/lib/time/bean/TimeManageBean;)V

    return-void
.end method
