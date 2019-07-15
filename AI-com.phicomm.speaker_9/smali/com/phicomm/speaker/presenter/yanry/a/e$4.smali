.class Lcom/phicomm/speaker/presenter/yanry/a/e$4;
.super Lcom/phicomm/speaker/e/c/b;
.source "MemoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;Lcom/unisound/lib/time/bean/NoteInfo;)V
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
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/e;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->c(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/presenter/b/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->c(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/presenter/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/j;->b()V

    :cond_0
    const-string v0, "delete memo fail: %s."

    const/4 v1, 0x1

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->c(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/presenter/b/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e$4;->a:Lcom/phicomm/speaker/presenter/yanry/a/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->c(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/presenter/b/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/j;->a()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e$4;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
