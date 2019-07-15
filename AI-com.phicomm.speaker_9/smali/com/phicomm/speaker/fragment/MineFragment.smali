.class public Lcom/phicomm/speaker/fragment/MineFragment;
.super Lcom/phicomm/speaker/base/a;
.source "MineFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field c:Lcom/phicomm/speaker/presenter/s;

.field d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

.field private e:Lcom/phicomm/speaker/presenter/mqtt/a;

.field private f:Lcom/phicomm/speaker/presenter/mqtt/a$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field mClSpeakerInfo:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006e
    .end annotation
.end field

.field mCladdSpeaker:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006a
    .end annotation
.end field

.field mIvHeadPortrait:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ff
    .end annotation
.end field

.field mIvSpeakerIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012e
    .end annotation
.end field

.field mIvWifi:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090141
    .end annotation
.end field

.field mTvAddSpeaker:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024c
    .end annotation
.end field

.field mTvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b8
    .end annotation
.end field

.field mTvSpeakerName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e9
    .end annotation
.end field

.field mTvWifi:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090309
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->g:Ljava/lang/String;

    const-string v0, ""

    .line 102
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeakerName phiDeviceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hasDevice()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 201
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerName phiDeviceInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 208
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/MineFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->d()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/fragment/MineFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvWifi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/fragment/MineFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    const v0, 0x7f0801b7

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/fragment/MineFragment;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->h:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 183
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v2, 0x7

    const-string v3, "****"

    .line 186
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvNickname:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0093

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment;->b(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 434
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->g()V

    return-void
.end method

.method public c()V
    .locals 5

    .line 112
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    const v1, 0x7f0800d4

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v3, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    .line 114
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/d;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 116
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v2, Lcom/phicomm/speaker/fragment/MineFragment$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/fragment/MineFragment$1;-><init>(Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-direct {v0, p0, v2}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->c:Lcom/phicomm/speaker/presenter/s;

    .line 153
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 154
    new-instance v0, Lcom/phicomm/speaker/fragment/MineFragment$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/fragment/MineFragment$2;-><init>(Lcom/phicomm/speaker/fragment/MineFragment;)V

    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->f:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method cl_speaker_info()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09006e
        }
    .end annotation

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public gotoAbout()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09018f
        }
    .end annotation

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public longAbout()Z
    .locals 3
    .annotation build Lbutterknife/OnLongClick;
        value = {
            0x7f09018f
        }
    .end annotation

    .line 419
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "http://172.31.34.233:8180/#/help"

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/f;->d(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method public longHelp()Z
    .locals 3
    .annotation build Lbutterknife/OnLongClick;
        value = {
            0x7f090191
        }
    .end annotation

    .line 406
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "http://172.31.34.233:8180/#/help"

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method mtv_feedback()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090190
        }
    .end annotation

    .line 388
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0178

    .line 389
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f08007b

    .line 391
    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->setBackIcon(I)V

    .line 392
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->openFeedbackActivity()V

    :goto_0
    return-void
.end method

.method public mtv_help_guide()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090191
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "https://home.phicomm.com/phispeaker/#/help"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/f;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public mtv_iot_skill()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090192
        }
    .end annotation

    .line 337
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public mtv_memo()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090193
        }
    .end annotation

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public mtv_my_favorite()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090194
        }
    .end annotation

    .line 362
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const v0, 0x7f0f0179

    .line 369
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f0f01c6

    .line 365
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public mtv_play_history()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090195
        }
    .end annotation

    return-void
.end method

.method public mtv_reminder()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090196
        }
    .end annotation

    .line 350
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public mtv_user_defined_q_a()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090197
        }
    .end annotation

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 193
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    .line 195
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroyView()V

    return-void
.end method

.method public onDeviceChange(Lcom/phicomm/speaker/e/b/d;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 233
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    .line 234
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hasDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/MineFragment;->f:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    invoke-virtual {p1, v1, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 238
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mClSpeakerInfo:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mCladdSpeaker:Landroid/support/constraint/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getPic_url_normal()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment;->b(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvWifi:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 242
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f00bb

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0252

    :goto_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->g:Ljava/lang/String;

    .line 243
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    .line 248
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mClSpeakerInfo:Landroid/support/constraint/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mCladdSpeaker:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method public onDeviceOnlineStateEvent(Lcom/phicomm/speaker/e/b/f;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvWifi:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/f;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 313
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f00bb

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0252

    :goto_0
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->g:Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/ae;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ae;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setImg(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "test.portrait.phiwifi.com"

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "test.portrait.phiwifi.com"

    const-string v1, "114.141.173.52"

    .line 261
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageUrl33: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/views/a/a;

    .line 266
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d4

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    new-instance v2, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    .line 267
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 268
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    :cond_2
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setBirthday(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/f;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setJob(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setNickname(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvNickname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setPhonenumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setSex(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public rl_user_info()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901ed
        }
    .end annotation

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account_details_bean"

    .line 320
    iget-object v2, p0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/a;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->c:Lcom/phicomm/speaker/presenter/s;

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment;->c:Lcom/phicomm/speaker/presenter/s;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/s;->c()V

    :cond_0
    return-void
.end method

.method tv_add_speaker()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09024c
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/base/BaseFragmentActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/base/BaseFragmentActivity;)V

    return-void
.end method
