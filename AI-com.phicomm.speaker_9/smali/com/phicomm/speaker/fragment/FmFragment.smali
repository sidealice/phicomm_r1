.class public Lcom/phicomm/speaker/fragment/FmFragment;
.super Lcom/phicomm/speaker/base/a;
.source "FmFragment.java"


# instance fields
.field private c:Ljava/lang/String;

.field tvMessage:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/phicomm/speaker/fragment/FmFragment;
    .locals 4

    .line 29
    new-instance v0, Lcom/phicomm/speaker/fragment/FmFragment;

    invoke-direct {v0}, Lcom/phicomm/speaker/fragment/FmFragment;-><init>()V

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "category"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/fragment/FmFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0090

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 7

    .line 51
    new-instance v6, Lcom/phicomm/speaker/fragment/FmFragment$1;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FmFragment;->a:Landroid/view/View;

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FmFragment;->a:Landroid/view/View;

    const v1, 0x7f0901c8

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FmFragment;->a:Landroid/view/View;

    const v1, 0x7f0901c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/phicomm/speaker/fragment/FmFragment;->c:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/fragment/FmFragment$1;-><init>(Lcom/phicomm/speaker/fragment/FmFragment;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v6}, Lcom/phicomm/speaker/presenter/yanry/a/a;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FmFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FmFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FmFragment;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method
