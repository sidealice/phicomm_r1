.class public Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ChangeSpeakerIconActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/adapter/n;

.field private b:Lcom/phicomm/speaker/presenter/d;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/phicomm/speaker/net/resultbean/GroupPic;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->f:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;Lcom/phicomm/speaker/net/resultbean/GroupPic;)Lcom/phicomm/speaker/net/resultbean/GroupPic;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->h:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/adapter/n;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a:Lcom/phicomm/speaker/adapter/n;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->f:I

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/net/resultbean/GroupPic;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->h:Lcom/phicomm/speaker/net/resultbean/GroupPic;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 89
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 90
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 91
    new-instance v0, Lcom/phicomm/speaker/adapter/n;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;-><init>(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/adapter/n;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/adapter/n$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a:Lcom/phicomm/speaker/adapter/n;

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/recyclerview/DividerGridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a:Lcom/phicomm/speaker/adapter/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/presenter/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->b:Lcom/phicomm/speaker/presenter/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f0223

    .line 50
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->e(I)V

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->d()V

    .line 52
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->finish()V

    return-void

    :cond_0
    const-string v1, "deviceid"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->d:Ljava/lang/String;

    const-string v1, "picgroupid"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->e:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/phicomm/speaker/presenter/d;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$1;-><init>(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/d;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/d;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->b:Lcom/phicomm/speaker/presenter/d;

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/d;->c()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0029

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
