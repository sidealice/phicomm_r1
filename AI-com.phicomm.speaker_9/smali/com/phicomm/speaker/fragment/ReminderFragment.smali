.class public Lcom/phicomm/speaker/fragment/ReminderFragment;
.super Lcom/phicomm/speaker/base/a;
.source "ReminderFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/phicomm/speaker/presenter/yanry/a/g;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c2
    .end annotation
.end field

.field refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c8
    .end annotation
.end field

.field requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/phicomm/speaker/fragment/ReminderFragment;
    .locals 3

    .line 43
    new-instance v0, Lcom/phicomm/speaker/fragment/ReminderFragment;

    invoke-direct {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0091

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->b(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->g()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setCustomLoadingView(Lcom/phicomm/speaker/presenter/b/f;)V

    .line 77
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/g;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iget-object v3, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/yanry/a/g;-><init>(Lcom/phicomm/speaker/fragment/ReminderFragment;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Z)Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->c:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 71
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroy()V

    return-void
.end method

.method public onNetworkStatusChangeEvent(Lcom/phicomm/speaker/a/y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 97
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b()V

    :cond_0
    return-void
.end method

.method public onUpdate(Lcom/phicomm/speaker/a/ab;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 89
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ab;->a()Lcom/unisound/lib/time/bean/AlarmReminder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "refresh on event."

    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/ReminderFragment;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b()V

    :cond_0
    return-void
.end method
