.class public Lcom/phicomm/speaker/activity/VoiceCommandActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "VoiceCommandActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/phicomm/speaker/presenter/t;

.field private d:I

.field devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008a
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/zhy/a/a/c/b;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    const/16 v0, 0x14

    .line 49
    iput v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    return v0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 108
    new-instance v0, Lcom/phicomm/speaker/presenter/t;

    new-instance v1, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/t;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/s;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b:Lcom/phicomm/speaker/presenter/t;

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->g:Lcom/zhy/a/a/c/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    const v0, 0x7f0f0129

    .line 61
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->f:Ljava/util/List;

    .line 64
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 67
    new-instance v0, Lcom/phicomm/speaker/adapter/s;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/adapter/s;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 69
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    const v4, 0x7f0b008d

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    new-instance v1, Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/s;->a(Lcom/phicomm/speaker/c/f;)V

    .line 85
    new-instance v1, Lcom/zhy/a/a/c/b;

    invoke-direct {v1, v0}, Lcom/zhy/a/a/c/b;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->g:Lcom/zhy/a/a/c/b;

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->g:Lcom/zhy/a/a/c/b;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zhy/a/a/c/b;->a(Landroid/view/View;)Lcom/zhy/a/a/c/b;

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->g:Lcom/zhy/a/a/c/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    new-instance v1, Lcom/phicomm/speaker/activity/d;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/d;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullDownRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;)V

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    new-instance v1, Lcom/phicomm/speaker/activity/e;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/e;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 102
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d()V

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b:Lcom/phicomm/speaker/presenter/t;

    iget v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    iget v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/presenter/t;->a(ZII)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0061

    .line 56
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 3

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b:Lcom/phicomm/speaker/presenter/t;

    iget v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    iget v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/phicomm/speaker/presenter/t;->a(ZII)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->j()V

    return-void
.end method

.method final synthetic b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 3

    const/4 p1, 0x1

    .line 92
    iput p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    .line 93
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b:Lcom/phicomm/speaker/presenter/t;

    iget v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    iget v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/phicomm/speaker/presenter/t;->a(ZII)V

    return-void
.end method

.method public devNoneContent()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09008a
        }
    .end annotation

    const/4 v0, 0x1

    .line 195
    iput v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    .line 196
    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b:Lcom/phicomm/speaker/presenter/t;

    iget v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d:I

    iget v3, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/phicomm/speaker/presenter/t;->a(ZII)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
