.class public Lcom/phicomm/speaker/presenter/yanry/a/e;
.super Lcom/phicomm/speaker/model/common/a/e;
.source "MemoPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field private b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/NoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/time/bean/NoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/phicomm/speaker/base/BaseActivity;

.field private g:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/time/bean/NoteInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/phicomm/speaker/model/common/e;

.field private i:Landroid/view/View;

.field private j:Lcom/phicomm/speaker/adapter/c;

.field private k:Lcom/phicomm/speaker/presenter/b/j;

.field private l:Lcom/unisound/lib/time/bean/NoteInfo;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/base/BaseActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/e;-><init>()V

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/base/BaseActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V

    .line 64
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    .line 65
    new-instance p1, Lcom/phicomm/speaker/presenter/yanry/a/e$1;

    invoke-direct {p1, p0, p3}, Lcom/phicomm/speaker/presenter/yanry/a/e$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    .line 76
    new-instance p1, Lcom/phicomm/speaker/presenter/yanry/a/e$2;

    invoke-direct {p1, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->g:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/j;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/e;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->k:Lcom/phicomm/speaker/presenter/b/j;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/e;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->i:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/e$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/phicomm/speaker/presenter/yanry/a/e$3;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/phicomm/speaker/base/BaseActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .line 196
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->f:Lcom/phicomm/speaker/base/BaseActivity;

    .line 197
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 198
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 199
    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->c:Landroid/support/v7/widget/RecyclerView;

    .line 200
    new-instance v0, Lcom/phicomm/speaker/adapter/c;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/adapter/c;-><init>(Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->j:Lcom/phicomm/speaker/adapter/c;

    .line 201
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b008d

    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->i:Landroid/view/View;

    .line 202
    invoke-virtual {p2}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    invoke-virtual {p3, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 204
    invoke-virtual {p3, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V

    .line 205
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 206
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->j:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 207
    invoke-virtual {p2}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f00a7

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f0161

    .line 207
    invoke-static {p3, p2}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/e;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/e;ZLcom/unisound/lib/time/bean/NoteInfoBean;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(ZLcom/unisound/lib/time/bean/NoteInfoBean;)V

    return-void
.end method

.method private a(ZLcom/unisound/lib/time/bean/NoteInfoBean;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/NoteInfoBean;->getInfo()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 102
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/NoteInfo;

    .line 104
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/NoteInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/e;->b(Z)V

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z
    .locals 2

    .line 158
    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->getItemCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->c()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 160
    invoke-virtual {p2}, Lcom/phicomm/speaker/adapter/c;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    if-le p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/e;Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/model/common/e;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    return-object p0
.end method

.method private b(Z)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->j:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->notifyDataSetChanged()V

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->j:Lcom/phicomm/speaker/adapter/c;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->i:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const v0, 0x7f0800ca

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setFailImageResource(I)V

    .line 183
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/presenter/b/j;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->k:Lcom/phicomm/speaker/presenter/b/j;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    :cond_0
    const-string v0, "get memo list fail: %s."

    const/4 v1, 0x1

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/common/e;->d()I

    move-result p1

    if-nez p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0f0131

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/yanry/a/e;)Lcom/phicomm/speaker/views/widget/RequestLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    return-object p0
.end method


# virtual methods
.method protected a(I)I
    .locals 0

    const p1, 0x7f0b00af

    return p1
.end method

.method public a()V
    .locals 4

    .line 236
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "20"

    new-instance v3, Lcom/phicomm/speaker/presenter/yanry/a/e$5;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/presenter/yanry/a/e$5;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;Lcom/unisound/lib/time/bean/NoteInfo;)V
    .locals 2

    const v0, 0x7f0f0133

    .line 212
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->j(I)V

    .line 213
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object p1

    const-string v0, "deleteNote"

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a/e$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/yanry/a/e$4;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/phicomm/speaker/e/c;->a(Lcom/unisound/lib/time/bean/NoteInfo;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/model/common/a/f;I)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unisound/lib/time/bean/NoteInfo;

    const v0, 0x7f0902fb

    .line 335
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/NoteInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09027c

    .line 336
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/lib/time/bean/NoteInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object p1, p1, Lcom/phicomm/speaker/model/common/a/f;->itemView:Landroid/view/View;

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/a/f;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/presenter/yanry/a/f;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/unisound/lib/time/bean/NoteInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 4

    .line 299
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v1}, Lcom/phicomm/speaker/model/common/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "20"

    new-instance v3, Lcom/phicomm/speaker/presenter/yanry/a/e$7;

    invoke-direct {v3, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/a/e$7;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method final synthetic a(Lcom/unisound/lib/time/bean/NoteInfo;Landroid/view/View;)V
    .locals 3

    .line 338
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->l:Lcom/unisound/lib/time/bean/NoteInfo;

    .line 339
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->f:Lcom/phicomm/speaker/base/BaseActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->f:Lcom/phicomm/speaker/base/BaseActivity;

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "memo"

    .line 340
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2766

    .line 339
    invoke-virtual {p2, p1, v0}, Lcom/phicomm/speaker/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setShowLoading(Z)V

    .line 256
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 257
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/common/e;->b()V

    .line 258
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20"

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->g:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual {p1, v0, v1, v2}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 266
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->b:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 267
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->f:Lcom/phicomm/speaker/base/BaseActivity;

    .line 268
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->i:Landroid/view/View;

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->l:Lcom/unisound/lib/time/bean/NoteInfo;

    invoke-virtual {v1}, Lcom/unisound/lib/time/bean/NoteInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->h:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 277
    invoke-static {}, Lcom/phicomm/speaker/e/c;->a()Lcom/phicomm/speaker/e/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "20"

    new-instance v3, Lcom/phicomm/speaker/presenter/yanry/a/e$6;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/presenter/yanry/a/e$6;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/e;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/phicomm/speaker/e/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    :cond_0
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->b(Z)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->k:Lcom/phicomm/speaker/presenter/b/j;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 41
    check-cast p1, Lcom/phicomm/speaker/model/common/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Lcom/phicomm/speaker/model/common/a/f;I)V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/yanry/a/e;->a(Z)Z

    return-void
.end method
