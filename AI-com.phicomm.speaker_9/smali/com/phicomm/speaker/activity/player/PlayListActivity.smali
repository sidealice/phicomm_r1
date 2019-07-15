.class public Lcom/phicomm/speaker/activity/player/PlayListActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "PlayListActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/g;
.implements Lcom/phicomm/speaker/presenter/b/h;


# instance fields
.field a:Lcom/phicomm/speaker/adapter/j;

.field private b:Lcom/phicomm/speaker/presenter/j;

.field private d:Lcom/phicomm/speaker/presenter/g;

.field devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090089
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation
.end field

.field llClose:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090162
    .end annotation
.end field

.field llContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090163
    .end annotation
.end field

.field llRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016c
    .end annotation
.end field

.field lvLoading:Lcom/phicomm/speaker/views/LoadingView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09017c
    .end annotation
.end field

.field lvMusic:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09017d
    .end annotation
.end field

.field pmvMode:Lcom/phicomm/speaker/views/PlayModeView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901af
    .end annotation
.end field

.field tvListExplain:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09029c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d:Lcom/phicomm/speaker/presenter/g;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/phicomm/speaker/presenter/g;->a(Ljava/lang/String;ZZZ)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->tvListExplain:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/j;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->h:Z

    return p1
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    const-string v2, "singleLoop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0239

    .line 259
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    const-string v2, "listLoop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f012b

    .line 261
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    const-string v2, "listShuffled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0f01fa

    .line 263
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    const-string v1, "("

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0277

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/j;->d(Z)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/j;->e(Z)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->k:Ljava/util/List;

    return-object p1
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->tvListExplain:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/j;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->g:Z

    return p1
.end method

.method private d(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    const-string v2, "singleLoop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0239

    .line 290
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    const-string v2, "listLoop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f012b

    .line 292
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    const-string v2, "listShuffled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0f01fa

    .line 294
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    const-string v1, "("

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0278

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->c(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 119
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isPlayingMusic"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    .line 121
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "height"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x3f733333    # 0.95f

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 123
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 125
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/PlayModeView;->a(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/phicomm/speaker/adapter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvMusic:Landroid/widget/ListView;

    iget-boolean v2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/adapter/j;-><init>(Landroid/content/Context;Landroid/widget/ListView;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvMusic:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    new-instance v0, Lcom/phicomm/speaker/presenter/j;

    new-instance v1, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;-><init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/j;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b:Lcom/phicomm/speaker/presenter/j;

    .line 181
    new-instance v0, Lcom/phicomm/speaker/presenter/g;

    new-instance v1, Lcom/phicomm/speaker/presenter/b/i;

    invoke-direct {v1}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/g;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/h;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d:Lcom/phicomm/speaker/presenter/g;

    .line 182
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Z)V

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvMusic:Landroid/widget/ListView;

    new-instance v1, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;-><init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d:Lcom/phicomm/speaker/presenter/g;

    new-instance v1, Lcom/phicomm/speaker/activity/player/e;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/e;-><init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/g;->a(Lcom/unisound/lib/mgr/ISwitchListListener;)V

    .line 220
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvLoading:Lcom/phicomm/speaker/views/LoadingView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/LoadingView;->setVisibility(I)V

    .line 328
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llClose:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public a(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 333
    invoke-super {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity;->b(ILandroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0051

    .line 114
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "switch_music"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 210
    iput-boolean v2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    .line 211
    iput-boolean v2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->h:Z

    .line 212
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "switch_audio"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iput-boolean v1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    .line 215
    iput-boolean v2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->h:Z

    .line 216
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->lvLoading:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llClose:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method clickCloseBtn()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090273
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->finish()V

    return-void
.end method

.method clickLoadListFailedLayout()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090089
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 360
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const v0, 0x7f0f0138

    .line 349
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 354
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->j()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 301
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->finish()V

    const v0, 0x7f01000e

    const v1, 0x7f010015

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 307
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->c()V

    .line 309
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d:Lcom/phicomm/speaker/presenter/g;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/g;->b()V

    .line 310
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceOnlineStateEvent(Lcom/phicomm/speaker/e/b/f;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 416
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/f;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPlayModeStickEvent(Lcom/phicomm/speaker/e/b/k;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 408
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/k;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/PlayModeView;->a(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->tvListExplain:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/k;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/j;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    .line 411
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/j;->b()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 410
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPlayingInfoStickyEvent(Lcom/phicomm/speaker/e/b/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 379
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->h:Z

    if-eqz v0, :cond_2

    .line 381
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->h:Z

    .line 383
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->g:Z

    .line 384
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->f:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Ljava/util/List;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->k:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->i:Z

    .line 393
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 396
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/j;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    :cond_3
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 401
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/j;->b(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSpeakerStopPlayEvent(Lcom/phicomm/speaker/e/b/m;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 370
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/m;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->e()V

    .line 372
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llRoot:Landroid/widget/LinearLayout;

    .line 319
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->finish()V

    .line 322
    :cond_1
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
