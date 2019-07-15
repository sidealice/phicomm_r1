.class Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;
.super Lin/srain/cube/views/ptr/b;
.source "RefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/refresh/RefreshLayout;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Lin/srain/cube/views/ptr/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;

    move-result-object v0

    check-cast p1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;->a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    :cond_0
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->c(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/b;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;

    move-result-object v0

    check-cast p1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;->a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    :cond_0
    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$1;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-static {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/b;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
