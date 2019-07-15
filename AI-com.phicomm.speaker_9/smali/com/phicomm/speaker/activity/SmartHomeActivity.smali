.class public Lcom/phicomm/speaker/activity/SmartHomeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SmartHomeActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/n;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SmartDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/phicomm/speaker/adapter/m;

.field devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008a
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private g:I

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SupportDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/phicomm/speaker/adapter/p;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c2
    .end annotation
.end field

.field refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c9
    .end annotation
.end field

.field scrollView:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fa
    .end annotation
.end field

.field supportRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const v0, 0x2bf20

    .line 56
    iput v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->g:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->h:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SmartHomeActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->g:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SmartHomeActivity;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Lcom/phicomm/speaker/presenter/n;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a:Lcom/phicomm/speaker/presenter/n;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 100
    new-instance v0, Lcom/phicomm/speaker/adapter/p;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->i:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/adapter/p;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->j:Lcom/phicomm/speaker/adapter/p;

    .line 101
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 102
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->supportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->supportRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->j:Lcom/phicomm/speaker/adapter/p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Lcom/phicomm/speaker/adapter/m;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->d:Lcom/phicomm/speaker/adapter/m;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 108
    new-instance v0, Lcom/phicomm/speaker/presenter/n;

    new-instance v1, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;-><init>(Lcom/phicomm/speaker/activity/SmartHomeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/n;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/n;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a:Lcom/phicomm/speaker/presenter/n;

    return-void
.end method

.method private f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SupportDeviceBean;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    const v1, 0x7f0800ed

    const v2, 0x7f0f023b

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/bean/SupportDeviceBean;-><init>(II)V

    .line 170
    new-instance v1, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    const v2, 0x7f0800e2

    const v3, 0x7f0f0045

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/bean/SupportDeviceBean;-><init>(II)V

    .line 171
    new-instance v2, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    const v3, 0x7f0800dd

    const v4, 0x7f0f0027

    invoke-direct {v2, v3, v4}, Lcom/phicomm/speaker/bean/SupportDeviceBean;-><init>(II)V

    .line 172
    new-instance v3, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    const v4, 0x7f0800e3

    const v5, 0x7f0f0047

    invoke-direct {v3, v4, v5}, Lcom/phicomm/speaker/bean/SupportDeviceBean;-><init>(II)V

    .line 173
    new-instance v4, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    const v5, 0x7f0800e7

    const v6, 0x7f0f00d1

    invoke-direct {v4, v5, v6}, Lcom/phicomm/speaker/bean/SupportDeviceBean;-><init>(II)V

    .line 174
    new-instance v5, Lcom/phicomm/speaker/bean/SupportDeviceBean;

    const v6, 0x7f0800ee

    const v7, 0x7f0f020d

    invoke-direct {v5, v6, v7}, Lcom/phicomm/speaker/bean/SupportDeviceBean;-><init>(II)V

    .line 175
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Lcom/phicomm/speaker/adapter/p;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->j:Lcom/phicomm/speaker/adapter/p;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f0120

    .line 69
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e(I)V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/phicomm/speaker/activity/SmartHomeActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/SmartHomeActivity$1;-><init>(Lcom/phicomm/speaker/activity/SmartHomeActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->b:Ljava/util/List;

    .line 80
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 83
    new-instance v0, Lcom/phicomm/speaker/adapter/m;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/adapter/m;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->d:Lcom/phicomm/speaker/adapter/m;

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->d:Lcom/phicomm/speaker/adapter/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    new-instance v1, Lcom/phicomm/speaker/activity/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/a;-><init>(Lcom/phicomm/speaker/activity/SmartHomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullDownRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;)V

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 94
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->d()V

    .line 95
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0059

    .line 64
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 3

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f:Ljava/lang/Runnable;

    iget v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->g:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a:Lcom/phicomm/speaker/presenter/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/n;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->j()V

    return-void
.end method

.method public devNoneContent()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09008a
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a:Lcom/phicomm/speaker/presenter/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/n;->a(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a:Lcom/phicomm/speaker/presenter/n;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/n;->b()V

    .line 207
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 187
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a:Lcom/phicomm/speaker/presenter/n;

    iget-boolean v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->h:Z

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/n;->a(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onStop()V

    return-void
.end method
