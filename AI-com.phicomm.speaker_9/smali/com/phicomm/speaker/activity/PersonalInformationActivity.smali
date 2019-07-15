.class public Lcom/phicomm/speaker/activity/PersonalInformationActivity;
.super Lcom/phicomm/speaker/activity/GetPhotoActivity;
.source "PersonalInformationActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/e;
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field a:I

.field b:J

.field private d:Lcom/phicomm/speaker/presenter/s;

.field private e:Lcom/phicomm/speaker/presenter/c;

.field private f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

.field private g:Lcom/phicomm/speaker/popup/b;

.field private h:Lcom/phicomm/speaker/popup/h;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field mIvHeadPortrait:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ff
    .end annotation
.end field

.field mRlHeadPortrait:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d9
    .end annotation
.end field

.field mTvBirthday:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field mTvJob:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090297
    .end annotation
.end field

.field mTvMobile:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a9
    .end annotation
.end field

.field mTvNickname:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b8
    .end annotation
.end field

.field mTvSex:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/GetPhotoActivity;-><init>()V

    const-string v0, "1987-01-01"

    .line 83
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Lcom/phicomm/speaker/bean/AccountDetailsBean;)Lcom/phicomm/speaker/bean/AccountDetailsBean;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->k()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/presenter/s;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d:Lcom/phicomm/speaker/presenter/s;

    return-object p0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic g(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/presenter/c;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->e:Lcom/phicomm/speaker/presenter/c;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f0153

    .line 236
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "2"

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f00d0

    .line 238
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x0

    .line 210
    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->a(Ljava/util/List;)V

    .line 211
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->f()V

    .line 212
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "register_phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->c()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g:Lcom/phicomm/speaker/popup/b;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/phicomm/speaker/popup/b;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g:Lcom/phicomm/speaker/popup/b;

    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g:Lcom/phicomm/speaker/popup/b;

    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$3;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/c/a;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g:Lcom/phicomm/speaker/popup/b;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Ljava/lang/String;)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g:Lcom/phicomm/speaker/popup/b;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 287
    new-instance v0, Lcom/phicomm/speaker/popup/h;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/h;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h:Lcom/phicomm/speaker/popup/h;

    .line 288
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h:Lcom/phicomm/speaker/popup/h;

    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/h;->a(Lcom/phicomm/speaker/c/b;)V

    .line 299
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getJob()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 301
    :goto_0
    sget-object v1, Lcom/phicomm/speaker/popup/h;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 302
    sget-object v1, Lcom/phicomm/speaker/popup/h;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 303
    iget-object v2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getJob()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 309
    :goto_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h:Lcom/phicomm/speaker/popup/h;

    sget-object v2, Lcom/phicomm/speaker/popup/h;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/popup/h;->a([Ljava/lang/String;I)V

    .line 310
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h:Lcom/phicomm/speaker/popup/h;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/h;->a(Landroid/view/View;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 446
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/FactoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f01b9

    .line 94
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->e(I)V

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d:Lcom/phicomm/speaker/presenter/s;

    .line 170
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$2;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->e:Lcom/phicomm/speaker/presenter/c;

    .line 182
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_details_bean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/AccountDetailsBean;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d:Lcom/phicomm/speaker/presenter/s;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/s;->c()V

    goto/16 :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "test.portrait.phiwifi.com"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "test.portrait.phiwifi.com"

    const-string v2, "114.141.173.52"

    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_2
    invoke-static {p0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 195
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/views/a/a;

    .line 196
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d4

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v2, 0x0

    new-instance v3, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 197
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 198
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvSex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getSex()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvBirthday:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvJob:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getJob()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvMobile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getPhonenumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 479
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b004f

    .line 89
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->setContentView(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 469
    invoke-static {p0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p2

    new-instance v0, Lcom/phicomm/speaker/views/a/a;

    .line 471
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d4

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v1, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 472
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 473
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 474
    iget-object p2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d:Lcom/phicomm/speaker/presenter/s;

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Lcom/phicomm/speaker/presenter/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 484
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->j()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b_()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 464
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d()V

    return-void
.end method

.method public iv_back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900dd
        }
    .end annotation

    .line 415
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public ll_root()V
    .locals 9
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09016c
        }
    .end annotation

    .line 424
    iget v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    .line 425
    iput v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a:I

    .line 426
    iput-wide v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b:J

    .line 427
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->n()V

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 430
    iget-wide v5, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b:J

    cmp-long v0, v5, v1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 431
    iput-wide v3, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b:J

    .line 432
    iput v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a:I

    goto :goto_0

    .line 434
    :cond_1
    iget-wide v5, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b:J

    sub-long v7, v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v0, v7, v5

    if-lez v0, :cond_2

    .line 435
    iput-wide v3, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b:J

    .line 436
    iput v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a:I

    goto :goto_0

    .line 438
    :cond_2
    iput-wide v3, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b:J

    .line 439
    iget v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a:I

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 315
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 316
    invoke-super {p0}, Lcom/phicomm/speaker/activity/GetPhotoActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setNickname(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvNickname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setPhonenumber(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvMobile:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getPhonenumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setSex(Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvSex:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getSex()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 345
    invoke-super {p0, p1}, Lcom/phicomm/speaker/activity/GetPhotoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public rl_birthday()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901d2
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->l()V

    return-void
.end method

.method public rl_head_portrait()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901d9
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/phicomm/speaker/popup/g;

    invoke-direct {v0, p0, p0}, Lcom/phicomm/speaker/popup/g;-><init>(Landroid/app/Activity;Lcom/phicomm/speaker/c/e;)V

    .line 351
    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mRlHeadPortrait:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/g;->a(Landroid/view/View;)V

    return-void
.end method

.method public rl_job()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901da
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->m()V

    return-void
.end method

.method public rl_mobile()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901dc
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/BindingPhoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public rl_modify_password()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901dd
        }
    .end annotation

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ModifyPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v1, :cond_0

    const-string v1, "mobile"

    .line 386
    iget-object v2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getPhonenumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :cond_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public rl_sex()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e0
        }
    .end annotation

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ChangeSexActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v1, :cond_0

    const-string v1, "sex"

    .line 367
    iget-object v2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getSex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tv_exit()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090289
        }
    .end annotation

    .line 399
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0036

    .line 400
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f004d

    .line 401
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f007e

    .line 402
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$5;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    .line 403
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method public tv_nickname()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901de
        }
    .end annotation

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    if-eqz v1, :cond_0

    const-string v1, "nickname"

    .line 358
    iget-object v2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :cond_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
