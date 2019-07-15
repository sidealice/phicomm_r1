.class public Lcom/phicomm/speaker/fragment/HomeFragment;
.super Lcom/phicomm/speaker/base/a;
.source "HomeFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/e;
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

.field private d:Lcom/phicomm/speaker/presenter/e;

.field private e:I

.field private f:I

.field mBanner:Lcom/phicomm/speaker/views/banner/MyBanner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c0
    .end annotation
.end field

.field mErrorView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090152
    .end annotation
.end field

.field mLLAddSpeakerError:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014b
    .end annotation
.end field

.field mRecyclerLayoutView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090153
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900c1
    .end annotation
.end field

.field mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field mRlAddSpeaker:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d1
    .end annotation
.end field

.field mTvAddSpeaker:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024c
    .end annotation
.end field

.field mTvWarnTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090296
    .end annotation
.end field

.field mViewAddSpeaker:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09014a
    .end annotation
.end field

.field mViewHomeSpeaker:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090151
    .end annotation
.end field

.field mViewTitle:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090295
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    const/4 v0, 0x1

    .line 175
    iput v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    const/16 v0, 0x32

    .line 176
    iput v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->f:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/HomeFragment;)Lcom/phicomm/speaker/adapter/HomeChatAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    return-object p0
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "HomeFragment"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSpeakerView isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewAddSpeaker:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewHomeSpeaker:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewAddSpeaker:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewHomeSpeaker:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRlAddSpeaker:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mLLAddSpeakerError:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/fragment/HomeFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/fragment/HomeFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->f:I

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/fragment/HomeFragment;)Lcom/phicomm/speaker/presenter/e;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->d:Lcom/phicomm/speaker/presenter/e;

    return-object p0
.end method

.method private d(I)V
    .locals 2

    const-string v0, "HomeFragment"

    const-string v1, "showWarnTips"

    .line 222
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvWarnTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvWarnTip:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->d:Lcom/phicomm/speaker/presenter/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/e;->e()V

    .line 109
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/fragment/HomeFragment$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/HomeFragment$1;-><init>(Lcom/phicomm/speaker/fragment/HomeFragment;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    .line 134
    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/s;->c()V

    return-void
.end method

.method private h()V
    .locals 1

    .line 151
    new-instance v0, Lcom/phicomm/speaker/presenter/e;

    invoke-direct {v0, p0, p0}, Lcom/phicomm/speaker/presenter/e;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/e;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->d:Lcom/phicomm/speaker/presenter/e;

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->d:Lcom/phicomm/speaker/presenter/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/e;->c()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setResistance(F)V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    new-instance v1, Lcom/phicomm/speaker/fragment/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/fragment/HomeFragment$2;-><init>(Lcom/phicomm/speaker/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullDownRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;)V

    return-void
.end method

.method private j()V
    .locals 3

    const-string v0, "HomeFragment"

    const-string v1, "showErrorView"

    .line 214
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewAddSpeaker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewHomeSpeaker:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRlAddSpeaker:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mLLAddSpeakerError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvWarnTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private l()V
    .locals 2

    const-string v0, "HomeFragment"

    const-string v1, "showGetChatLogErrorView"

    .line 235
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 270
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 271
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 272
    new-instance v0, Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    .line 273
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->b()V

    .line 352
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0092

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->b(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/a/y;)V
    .locals 0

    .line 363
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 374
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->k()V

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f024a

    .line 371
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->d(I)V

    goto :goto_0

    .line 367
    :pswitch_1
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->k()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0178

    .line 379
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->d(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/a/b;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Lcom/phicomm/speaker/adapter/a/a/b;)V

    .line 303
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 304
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/e/b/f;)V
    .locals 0

    .line 429
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->k()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f024a

    .line 432
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->d(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/adapter/a/a/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "HomeFragment"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChatData mCurPageNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pageCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dataList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 315
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    move p2, v0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a(Ljava/util/List;)V

    .line 321
    iget v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    if-le v1, v2, :cond_1

    .line 322
    iget v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    if-ne v1, p2, :cond_0

    .line 323
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 324
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->n()V

    .line 325
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_1

    .line 330
    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    if-ne p1, p2, :cond_2

    .line 331
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 332
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->n()V

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_1

    .line 337
    :cond_3
    iget p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    if-lt p1, p2, :cond_4

    .line 338
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 339
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->n()V

    .line 343
    :cond_4
    :goto_1
    iget p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    if-gt p1, p2, :cond_5

    .line 344
    iget p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    .line 346
    :cond_5
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 347
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->c()V

    return-void
.end method

.method public a(ZLcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
    .locals 3

    const-string v0, "HomeFragment"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceChange isNewDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " phiDeviceInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 400
    :pswitch_0
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->j()V

    return-void

    .line 396
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/HomeFragment;->a(Z)V

    const p2, 0x7f0f024a

    .line 397
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/fragment/HomeFragment;->d(I)V

    goto :goto_0

    .line 391
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/HomeFragment;->a(Z)V

    .line 392
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->k()V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 404
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->a(Z)V

    .line 405
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->k()V

    return-void

    :goto_0
    if-eqz p1, :cond_0

    .line 410
    iput v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->e:I

    .line 411
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->a()V

    .line 412
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->notifyDataSetChanged()V

    .line 413
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 414
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->g()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mBanner:Lcom/phicomm/speaker/views/banner/MyBanner;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080082

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/views/banner/MyBanner;->a(Landroid/app/Activity;I)Lcom/phicomm/speaker/views/banner/MyBanner;

    move-result-object v0

    const-string v1, "home"

    .line 99
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/banner/MyBanner;->a(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->m()V

    .line 101
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->i()V

    .line 102
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->h()V

    .line 103
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->e()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->l()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->notifyDataSetChanged()V

    .line 358
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->c:Lcom/phicomm/speaker/adapter/HomeChatAdapter;

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/HomeChatAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->d:Lcom/phicomm/speaker/presenter/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/e;->d()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDetach()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onStart()V

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mBanner:Lcom/phicomm/speaker/views/banner/MyBanner;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/banner/MyBanner;->startAutoPlay()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 165
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mBanner:Lcom/phicomm/speaker/views/banner/MyBanner;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/banner/MyBanner;->stopAutoPlay()V

    return-void
.end method

.method public reTryGetLog()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090152
        }
    .end annotation

    .line 259
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 263
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "\u624b\u673a\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 265
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reTryNetRequest()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09014b
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->e()V

    return-void
.end method

.method tv_add_speaker()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09024c
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/base/BaseFragmentActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/base/BaseFragmentActivity;)V

    return-void
.end method
