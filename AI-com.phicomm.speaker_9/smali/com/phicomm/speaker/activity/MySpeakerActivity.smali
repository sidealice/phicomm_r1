.class public Lcom/phicomm/speaker/activity/MySpeakerActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "MySpeakerActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/adapter/o;

.field private b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

.field private d:Lcom/phicomm/speaker/presenter/d;

.field private e:Lcom/phicomm/speaker/presenter/mqtt/a;

.field private f:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field private g:I

.field private h:J

.field mEmptyLl:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d6
    .end annotation
.end field

.field mFailLl:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d7
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901f1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 323
    iput-wide v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->h:J

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/MySpeakerActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->f:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->f:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->c(Z)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;I)V
    .locals 4

    .line 192
    new-instance v0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    .line 193
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f00a4

    .line 194
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f0f0240

    const/4 v2, 0x1

    .line 195
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getPic_url_normal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->b(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->a(Landroid/view/View;)V

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/adapter/o;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/MySpeakerActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->g:I

    return p0
.end method

.method private b(Z)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->d:Lcom/phicomm/speaker/presenter/d;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/d;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/adapter/o;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mEmptyLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mFailLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mEmptyLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mFailLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 168
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 169
    iget-object v1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 170
    new-instance v0, Lcom/phicomm/speaker/adapter/o;

    new-instance v1, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/adapter/o;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/adapter/o$b;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/presenter/d;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->d:Lcom/phicomm/speaker/presenter/d;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mEmptyLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->mFailLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 232
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.0.3403"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/MySpeakerActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity$4;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/b;->f(Lcom/phicomm/speaker/e/c/b;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->i()V

    .line 250
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/MySpeakerActivity$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity$5;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/b;->d(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->i()V

    .line 267
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/MySpeakerActivity$6;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity$6;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/b;->e(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f0176

    .line 77
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e(I)V

    const/16 v0, 0x8

    .line 78
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->g(I)V

    const v0, 0x7f080059

    .line 79
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->i(I)V

    .line 80
    new-instance v0, Lcom/phicomm/speaker/presenter/d;

    new-instance v1, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity$1;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/d;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/d;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->d:Lcom/phicomm/speaker/presenter/d;

    .line 121
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->d()V

    .line 122
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 125
    iget-object v3, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {v3, v0}, Lcom/phicomm/speaker/adapter/o;->a(Ljava/util/List;)V

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->f()V

    .line 128
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b(Z)V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 131
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v2, Lcom/phicomm/speaker/activity/MySpeakerActivity$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity$2;-><init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0048

    .line 72
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .line 164
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/base/BaseActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->j()V

    return-void
.end method

.method public deviceListUpdate(Lcom/phicomm/speaker/a/q;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MySpeakerActivity"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceListUpdate event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/q;->a()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/o;->a()V

    .line 300
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->f()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b:Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;

    invoke-virtual {v0}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->a()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    .line 158
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeviceOnLineChange(Lcom/phicomm/speaker/e/b/f;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 320
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/o;->a()V

    return-void
.end method

.method public onDormantChange(Lcom/phicomm/speaker/a/m;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MySpeakerActivity"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDormantChange event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->j()V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 336
    iget-wide v2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->h:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    return-void

    .line 339
    :cond_0
    iput-wide v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->h:J

    .line 340
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/o;->notifyDataSetChanged()V

    return-void
.end method

.method public onDormantGet(Lcom/phicomm/speaker/a/n;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MySpeakerActivity"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDormantGet event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/o;->notifyDataSetChanged()V

    return-void
.end method

.method public onOtaSuccessEvent(Lcom/phicomm/speaker/a/aa;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MySpeakerActivity"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaSuccessEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 310
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b(Z)V

    return-void
.end method

.method public reTryRequest()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901d7
        }
    .end annotation

    const-string v0, "MySpeakerActivity"

    const-string v1, "reTryRequest"

    .line 227
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 228
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->b(Z)V

    return-void
.end method
