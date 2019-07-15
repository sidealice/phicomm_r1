.class public Lcom/phicomm/speaker/activity/SpeakerSettingActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/phicomm/speaker/b/g;
.implements Lcom/phicomm/speaker/presenter/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/base/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/phicomm/speaker/b/g<",
        "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
        ">;",
        "Lcom/phicomm/speaker/presenter/b/f;"
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field private b:Lcom/phicomm/speaker/presenter/d;

.field private d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

.field private e:Lcom/phicomm/speaker/presenter/mqtt/e;

.field private f:Lcom/phicomm/speaker/presenter/mqtt/a;

.field private g:Lcom/phicomm/speaker/presenter/o;

.field private h:Z

.field private i:Z

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;

.field mAmbientlightSwitch:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090132
    .end annotation
.end field

.field mAmbientlightView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090213
    .end annotation
.end field

.field mBassSwitch:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012b
    .end annotation
.end field

.field mDormancySwitch:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090133
    .end annotation
.end field

.field mRlChangeIcon:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e2
    .end annotation
.end field

.field mRlChangeName:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e5
    .end annotation
.end field

.field mRlChangeNet:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e3
    .end annotation
.end field

.field mRlReboot:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e4
    .end annotation
.end field

.field mRlSoundEffect:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e6
    .end annotation
.end field

.field mRlUnBindIcon:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901e7
    .end annotation
.end field

.field mTvSpeakerIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012e
    .end annotation
.end field

.field mTvSpeakerMac:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f4
    .end annotation
.end field

.field mTvSpeakerName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e9
    .end annotation
.end field

.field mTvSpeakerSsid:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902eb
    .end annotation
.end field

.field mTvSpeakerVersion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f5
    .end annotation
.end field

.field mTvSpeakerVoice:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f0
    .end annotation
.end field

.field mTvVersionNewUpdate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090305
    .end annotation
.end field

.field tvWakeName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->h:Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j:[Ljava/lang/String;

    :cond_1
    const-string v1, "SWEET"

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    const-string v1, "FEMALE"

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_3
    const-string v1, "MALE"

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_4
    const-string v1, "CHILDREN"

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 255
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    return-object p1

    :cond_5
    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Lcom/phicomm/speaker/bean/RomUpdateBean;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V
    .locals 5

    .line 447
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getFw_ver()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f0193

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getVer_infos()Ljava/lang/String;

    move-result-object p1

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u66f4\u65b0\u5185\u5bb9\uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(Ljava/lang/String;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f022c

    .line 451
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f022d

    .line 452
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$11;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 453
    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    .line 479
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
    .locals 2

    .line 339
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerName:Landroid/widget/TextView;

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerMac:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_mac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVersion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-static {p0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getPic_url_normal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    const v0, 0x7f0801b7

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/presenter/d;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b:Lcom/phicomm/speaker/presenter/d;

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 289
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->h:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i()V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getHardware_version()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 293
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_type()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 294
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;

    invoke-direct {v7, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 292
    invoke-virtual/range {v1 .. v7}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/b;)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 498
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0178

    .line 499
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 502
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f0226

    .line 503
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/e;

    if-nez v0, :cond_2

    .line 507
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/e;

    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$13;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$13;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/e;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/mqtt/e$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/e;

    .line 524
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    new-instance v1, Lcom/phicomm/speaker/bean/mqtt/RecoveryPublishBean;

    invoke-direct {v1}, Lcom/phicomm/speaker/bean/mqtt/RecoveryPublishBean;-><init>()V

    const-string v2, "token"

    .line 526
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/bean/mqtt/RecoveryPublishBean;->setName(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v2

    const-string v3, "ACCESS_TOKEN"

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/bean/mqtt/RecoveryPublishBean;->setValue(Ljava/lang/String;)V

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/e;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/presenter/mqtt/e;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e()V

    return-void
.end method

.method private f()Z
    .locals 2

    .line 649
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.0.3403"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 2

    .line 654
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.0.3159"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 2

    .line 659
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0.0.3411"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private l()V
    .locals 2

    .line 664
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$5;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/b;->g(Lcom/phicomm/speaker/e/c/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i:Z

    const v1, 0x7f0f024c

    .line 140
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e(I)V

    .line 141
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->finish()V

    return-void

    :cond_0
    const-string v2, "data"

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 147
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->finish()V

    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/e/b;->d()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlReboot:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlSoundEffect:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    .line 165
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->k:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->k:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/e/a/a;->c(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    :cond_6
    new-instance v1, Lcom/phicomm/speaker/presenter/d;

    new-instance v2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$1;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/presenter/d;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/d;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b:Lcom/phicomm/speaker/presenter/d;

    .line 194
    new-instance v1, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    .line 195
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d()V

    .line 197
    new-instance v1, Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-direct {v1, p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 198
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$6;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$6;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 213
    new-instance v0, Lcom/phicomm/speaker/presenter/o;

    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$7;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/o;-><init>(Lcom/phicomm/speaker/presenter/b/o;Lcom/phicomm/speaker/presenter/b/f;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->g:Lcom/phicomm/speaker/presenter/o;

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->g:Lcom/phicomm/speaker/presenter/o;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/o;->c()V

    .line 229
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->l()V

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 232
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Lcom/phicomm/speaker/b/g;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 705
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b005b

    .line 134
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 356
    invoke-static {p0, p1}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/MqttDeviceInfo;)V
    .locals 2

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrent WakeUpWords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ,isGetWakeUpWord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    const v0, 0x7f0f00a7

    .line 721
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 723
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->tvWakeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVoice:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getTtsPlayer()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final synthetic a(Lcom/phicomm/speaker/presenter/mqtt/a$a;Landroid/view/View;)V
    .locals 2

    .line 633
    iget-object p2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f:Lcom/phicomm/speaker/presenter/mqtt/a;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lcom/phicomm/speaker/presenter/mqtt/a;->b(Ljava/lang/String;ILcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 634
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/MqttDeviceInfo;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 710
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j()V

    return-void
.end method

.method public checkRomUpdateClick()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e8
        }
    .end annotation

    .line 434
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0178

    .line 435
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    .line 438
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f0226

    .line 439
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->h:Z

    .line 443
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d()V

    return-void
.end method

.method public goToChangeIcon()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e2
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deviceid"

    .line 386
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "picgroupid"

    .line 387
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getPic_group_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 388
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goToChangeName()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e5
        }
    .end annotation

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deviceid"

    .line 378
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nickname"

    .line 379
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 380
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public goToChangeNet()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e3
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0055

    .line 353
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f004d

    .line 354
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f007e

    .line 355
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/b;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/b;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method public goToChangeVoice()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e9
        }
    .end annotation

    .line 366
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0226

    .line 367
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 370
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "speakerVoice"

    .line 371
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVoice:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method goToSelectWakeupName()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09002a
        }
    .end annotation

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 534
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 553
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVoice:Landroid/widget/TextView;

    const-string p2, "speakerVoice"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "SpeakerSettingActivity"

    const-string v0, "onActivityResult ICON_REQUEST_CODE"

    .line 545
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "newpicgrou"

    .line 546
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/net/resultbean/GroupPic;

    .line 547
    iget-object p3, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p3, p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setGroupPic(Lcom/phicomm/speaker/net/resultbean/GroupPic;)V

    .line 548
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    .line 550
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p3, Lcom/phicomm/speaker/a/q;

    invoke-direct {p3, p2}, Lcom/phicomm/speaker/a/q;-><init>(I)V

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "newname"

    .line 538
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-object p3, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p3, p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setDevice_nickname(Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    .line 542
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p3, Lcom/phicomm/speaker/a/q;

    invoke-direct {p3, p2}, Lcom/phicomm/speaker/a/q;-><init>(I)V

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAmbientGetChange(Lcom/phicomm/speaker/a/c;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "SpeakerSettingActivity"

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientLightGetEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 695
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 696
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/c;->a()I

    move-result p1

    if-nez p1, :cond_1

    .line 698
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAmbientLightChange(Lcom/phicomm/speaker/a/b;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "SpeakerSettingActivity"

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmbientLightChangeEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j()V

    if-eqz p1, :cond_1

    .line 683
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/b;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 684
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 685
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/b;->a()I

    move-result p1

    if-nez p1, :cond_1

    .line 686
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 563
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    xor-int/lit8 v0, p2, 0x1

    .line 564
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 565
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f0f0178

    .line 566
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SpeakerSettingActivity"

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged buttonView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    const-string p1, "SpeakerSettingActivity"

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged setLightingParam isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 573
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->g:Lcom/phicomm/speaker/presenter/o;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/o;->a(Z)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_3

    const-string p1, "SpeakerSettingActivity"

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged AmbientLight isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i()V

    .line 580
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$2;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$2;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/e/b;->h(Lcom/phicomm/speaker/e/c/b;)V

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i()V

    .line 594
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$3;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$3;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/e/b;->i(Lcom/phicomm/speaker/e/c/b;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_2

    .line 615
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 616
    new-instance p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$4;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$4;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 627
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 628
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0230

    .line 629
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f004d

    .line 630
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f007e

    .line 631
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/c;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/c;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 632
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    .line 636
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    .line 637
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 640
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f:Lcom/phicomm/speaker/presenter/mqtt/a;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/phicomm/speaker/presenter/mqtt/a;->b(Ljava/lang/String;ILcom/phicomm/speaker/presenter/mqtt/a$a;)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 262
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;->a()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/e;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/e;->a()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f:Lcom/phicomm/speaker/presenter/mqtt/a;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->f:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->g:Lcom/phicomm/speaker/presenter/o;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->g:Lcom/phicomm/speaker/presenter/o;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/o;->d()V

    .line 275
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 276
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/i;->b(Lcom/phicomm/speaker/b/g;)V

    return-void
.end method

.method public onOtaSuccessEvent(Lcom/phicomm/speaker/a/aa;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "SpeakerSettingActivity"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaSuccessEvent event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/aa;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->setRom_version(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    .line 284
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 733
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onStop()V

    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->i:Z

    return-void
.end method

.method public rebootDevice()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e4
        }
    .end annotation

    .line 393
    invoke-static {}, Lcom/phicomm/speaker/e/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0227

    .line 395
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f007e

    .line 396
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f004d

    .line 397
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$9;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 398
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00e5

    .line 413
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    :goto_0
    return-void
.end method

.method public recovery()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902cd
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0229

    .line 485
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f00b4

    .line 486
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f060048

    .line 487
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->c(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$12;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$12;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 488
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f004d

    .line 493
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    .line 494
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method public unBindDevice()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901e7
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0234

    .line 420
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0233

    .line 421
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f060048

    .line 422
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->c(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$10;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    .line 423
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f004d

    .line 428
    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    .line 429
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method
