.class public Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "MainTestActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/device/ui/MainTestActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/phicomm/speaker/device/ui/MainTestActivity;Ljava/lang/Object;)V
    .locals 7
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/phicomm/speaker/device/ui/MainTestActivity;, "TT;"
    const v6, 0x7f0a0020

    const v5, 0x7f0a001f

    const v4, 0x7f0a001e

    const v3, 0x7f0a001d

    const v2, 0x7f0a001c

    .line 11
    const-string v1, "field \'btAlterMode\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'btAlterMode\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btAlterMode:Landroid/widget/Button;

    .line 13
    new-instance v1, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$1;-><init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'btCollectMusic\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'btCollectMusic\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btCollectMusic:Landroid/widget/Button;

    .line 23
    new-instance v1, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$2;-><init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-string v1, "field \'btEnterAsr\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'btEnterAsr\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btEnterAsr:Landroid/widget/Button;

    .line 33
    new-instance v1, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$3;-><init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-string v1, "field \'btNightMode\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'btNightMode\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btNightMode:Landroid/widget/Button;

    .line 43
    new-instance v1, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$4;-><init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-string v1, "field \'btGetUnread\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'btGetUnread\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btGetUnread:Landroid/widget/Button;

    .line 53
    new-instance v1, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$5;-><init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0a0021

    const-string v2, "field \'btHistory\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f0a0021

    const-string v2, "field \'btHistory\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btHistory:Landroid/widget/Button;

    .line 63
    new-instance v1, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder$6;-><init>(Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/phicomm/speaker/device/ui/MainTestActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/phicomm/speaker/device/ui/MainTestActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/phicomm/speaker/device/ui/MainTestActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder<TT;>;"
    .local p1, "target":Lcom/phicomm/speaker/device/ui/MainTestActivity;, "TT;"
    const/4 v0, 0x0

    .line 74
    iput-object v0, p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btAlterMode:Landroid/widget/Button;

    .line 75
    iput-object v0, p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btCollectMusic:Landroid/widget/Button;

    .line 76
    iput-object v0, p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btEnterAsr:Landroid/widget/Button;

    .line 77
    iput-object v0, p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btNightMode:Landroid/widget/Button;

    .line 78
    iput-object v0, p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btGetUnread:Landroid/widget/Button;

    .line 79
    iput-object v0, p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btHistory:Landroid/widget/Button;

    .line 80
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;, "Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/phicomm/speaker/device/ui/MainTestActivity;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/ui/MainTestActivity$$ViewBinder;->unbind(Lcom/phicomm/speaker/device/ui/MainTestActivity;)V

    return-void
.end method
