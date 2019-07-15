.class public abstract Lcom/phicomm/speaker/presenter/yanry/a/d;
.super Lcom/phicomm/speaker/model/common/a/c;
.source "FmEpisodePresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/model/common/a/c<",
        "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/views/widget/RequestLayout;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentList;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/widget/ListView;

.field private g:Lcom/phicomm/speaker/model/common/e;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/c;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    .line 41
    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->f:Landroid/widget/ListView;

    .line 43
    invoke-virtual {p3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const/4 v0, 0x0

    const v1, 0x7f0b008d

    invoke-virtual {p4, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->c:Ljava/util/List;

    .line 45
    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/a/d$1;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/phicomm/speaker/presenter/yanry/a/d$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/d;Landroid/widget/ListView;Landroid/view/View;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    iput-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->g:Lcom/phicomm/speaker/model/common/e;

    .line 56
    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    const/4 p4, 0x1

    .line 57
    invoke-virtual {p2, p4}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 58
    invoke-virtual {p2, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V

    .line 59
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    new-instance p3, Lcom/phicomm/speaker/presenter/yanry/a/d$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/d$2;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/d;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->d:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/d;)Lcom/phicomm/speaker/model/common/e;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->g:Lcom/phicomm/speaker/model/common/e;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/d;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/yanry/a/d;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/yanry/a/d;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const p1, 0x7f0b00ae

    return p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->c:Ljava/util/List;

    return-object v0
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/g;Lcom/unisound/lib/audio/bean/AudioCurrentInfo;I)V
    .locals 5

    const p3, 0x7f0902fe

    .line 136
    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/model/common/a/g;->b(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p2}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getDuration()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    float-to-int p2, p2

    .line 138
    div-int/lit16 p3, p2, 0xe10

    .line 139
    rem-int/lit16 p2, p2, 0xe10

    const v0, 0x7f0902fb

    .line 140
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/g;->b(I)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p3, :cond_0

    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v2

    div-int/lit8 p3, p2, 0x3c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v1

    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p3, "%02d:%02d"

    new-array v0, v0, [Ljava/lang/Object;

    div-int/lit8 v3, p2, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p2, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/phicomm/speaker/presenter/yanry/a/d;->a(Lcom/phicomm/speaker/model/common/a/g;Lcom/unisound/lib/audio/bean/AudioCurrentInfo;I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 6

    .line 116
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->e:Z

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->g:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/model/common/e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "50"

    iget-object v5, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->d:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method protected abstract a(Lcom/unisound/lib/audio/bean/AudioCurrentInfo;IZ)V
.end method

.method public a(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->e:Z

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 7

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->h:Z

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->g:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->b()V

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->a:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 103
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->e:Z

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->g:Lcom/phicomm/speaker/model/common/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/common/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "50"

    iget-object v6, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->d:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual/range {v1 .. v6}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 163
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->f:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    if-ltz p3, :cond_1

    .line 164
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    return-void

    .line 168
    :cond_0
    div-int/lit8 p1, p3, 0x32

    .line 169
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    add-int/lit8 p1, p1, 0x1

    iget-boolean p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/d;->e:Z

    invoke-virtual {p0, p2, p1, p3}, Lcom/phicomm/speaker/presenter/yanry/a/d;->a(Lcom/unisound/lib/audio/bean/AudioCurrentInfo;IZ)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/yanry/a/d;->b()V

    return-void
.end method
