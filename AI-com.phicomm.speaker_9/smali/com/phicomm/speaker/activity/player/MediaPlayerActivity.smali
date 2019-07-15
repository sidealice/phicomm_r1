.class public Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "MediaPlayerActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field clCenter:Landroid/support/constraint/ConstraintLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006b
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090088
    .end annotation
.end field

.field devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008a
    .end annotation
.end field

.field private e:Landroid/graphics/drawable/AnimationDrawable;

.field private f:Z

.field private g:Z

.field private h:Lcom/phicomm/speaker/presenter/j;

.field private i:Lcom/phicomm/speaker/presenter/mqtt/a;

.field ivBack:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900dd
    .end annotation
.end field

.field ivFavorite:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field ivIndicator1:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field ivIndicator2:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field ivLast:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090104
    .end annotation
.end field

.field ivList:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090106
    .end annotation
.end field

.field ivNext:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field ivPlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090113
    .end annotation
.end field

.field ivRoot:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09011f
    .end annotation
.end field

.field ivStatus:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09013b
    .end annotation
.end field

.field private j:Lcom/phicomm/speaker/presenter/f;

.field private k:I

.field private l:Ljava/lang/String;

.field llBottom2:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015e
    .end annotation
.end field

.field private m:Lcom/phicomm/speaker/views/dialog/b;

.field pmvMode:Lcom/phicomm/speaker/views/PlayModeView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901af
    .end annotation
.end field

.field rlBottom1:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d3
    .end annotation
.end field

.field rlTitle:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ea
    .end annotation
.end field

.field tvArtist:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090251
    .end annotation
.end field

.field tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field

.field vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09031b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const-string v0, "playing"

    .line 87
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a:Ljava/lang/String;

    const-string v0, "pause"

    .line 88
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    .line 158
    iput v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/views/LoadingDialog;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 395
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f0260

    .line 396
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "singleLoop"

    .line 397
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const p1, 0x7f0f0239

    .line 398
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "listLoop"

    .line 399
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const p1, 0x7f0f012b

    .line 400
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v2, "listShuffled"

    .line 401
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f01fa

    .line 402
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const p1, 0x7f0f0165

    .line 406
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->k(I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Z)V

    return-void
.end method

.method private a(Lcom/unisound/lib/audio/bean/AudioInfo;)V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setCurrentItem(I)V

    .line 596
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setNoScroll(Z)V

    .line 598
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setTvLyricsEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator1:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 604
    :goto_0
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Z)V

    const-string v0, ""

    .line 605
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 607
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c(Z)V

    .line 608
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getCurrentSongInfo()Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Ljava/lang/CharSequence;)V

    .line 613
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getCover_large()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->isCollected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Z)V

    .line 615
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    .line 618
    :cond_1
    iput-boolean v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    return-void
.end method

.method private a(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setNoScroll(Z)V

    .line 564
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setTvLyricsEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 570
    :goto_0
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Z)V

    if-eqz p1, :cond_1

    .line 572
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c(Z)V

    .line 573
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getCurrentSongInfo()Lcom/unisound/lib/msgcenter/bean/SongInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 577
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    .line 578
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f()Lcom/phicomm/speaker/presenter/j;

    move-result-object v0

    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;Z)V

    .line 579
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->getHdImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/SongInfo;->isCollected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Z)V

    .line 585
    :cond_1
    iput-boolean v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/MyMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->k:I

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/views/LoadingDialog;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c:Lcom/phicomm/speaker/views/LoadingDialog;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 441
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    invoke-virtual {v3, v2}, Lcom/phicomm/speaker/views/MyMarqueeTextView;->setVisibility(I)V

    .line 442
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvArtist:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v3, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setVisibility(I)V

    .line 444
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->clCenter:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/support/constraint/ConstraintLayout;->setVisibility(I)V

    .line 445
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlBottom1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->llBottom2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 448
    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivRoot:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/presenter/j;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/PlayModeView;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivList:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method private d(Z)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j:Lcom/phicomm/speaker/presenter/f;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e()V

    return-void
.end method

.method private f()Lcom/phicomm/speaker/presenter/j;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/phicomm/speaker/presenter/j;

    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/j;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivRoot:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 348
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 349
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$3;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pause"

    .line 657
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m()V

    .line 659
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivPlay:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "playing"

    .line 660
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 661
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->n()V

    .line 662
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivPlay:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/PlayModeView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 367
    new-instance v0, Lcom/phicomm/speaker/presenter/f;

    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$4;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/f;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/d/a$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j:Lcom/phicomm/speaker/presenter/f;

    .line 380
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j:Lcom/phicomm/speaker/presenter/f;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/f;->b(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j:Lcom/phicomm/speaker/presenter/f;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private k(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator1:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 242
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator2:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 238
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator2:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l()V
    .locals 7

    .line 471
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 472
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 474
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {p0, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ad;->b(Landroid/view/View;I)V

    .line 475
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 476
    invoke-static {p0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;)I

    move-result v1

    .line 477
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {p0, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 479
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x500

    .line 483
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    const/16 v4, 0x2500

    .line 486
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 487
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 489
    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    goto :goto_0

    .line 490
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 491
    invoke-static {p0}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;)V

    .line 496
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 498
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivBack:Landroid/widget/ImageView;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v1, 0x41d80000    # 27.0f

    .line 500
    invoke-static {p0, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v1

    .line 501
    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvArtist:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    sub-int/2addr v0, v1

    const v1, 0x3eeac790

    .line 506
    invoke-static {v1, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v1

    const v2, 0x3fa1f820

    .line 508
    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    sub-int/2addr v0, v2

    .line 511
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v3, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(I)V

    .line 513
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-static {v3, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    const v2, 0x3f8c4ec5

    .line 515
    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    .line 517
    iget-object v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getRlCd()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v3, v2, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;II)V

    .line 518
    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getIvCd()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;II)V

    .line 521
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->clCenter:Landroid/support/constraint/ConstraintLayout;

    const v2, 0x3e45ea7d

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    .line 522
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->clCenter:Landroid/support/constraint/ConstraintLayout;

    const v2, 0x3da37eed

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 524
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlBottom1:Landroid/widget/RelativeLayout;

    const v2, 0x3eca37ef

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    .line 525
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlBottom1:Landroid/widget/RelativeLayout;

    const v2, 0x3d5fbb29

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v3

    invoke-static {v1, v3}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 527
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->llBottom2:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v0

    invoke-static {v1, v0}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    return-void
.end method

.method private m()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->c()V

    .line 536
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method private n()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d()V

    .line 544
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private o()V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->e()V

    .line 552
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startFromMainActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f:Z

    .line 175
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c(Z)V

    .line 176
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l()V

    .line 178
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/MyMarqueeTextView;->setControlWhenWindowFocusChanged(Z)V

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/MyMarqueeTextView;->setFadingEdgeLength(I)V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 182
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f()Lcom/phicomm/speaker/presenter/j;

    .line 183
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f()Lcom/phicomm/speaker/presenter/j;

    move-result-object v0

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    const-class v3, Lcom/phicomm/speaker/e/b/l;

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/j;->a(Z)V

    .line 184
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g()V

    .line 185
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->k()V

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    new-instance v1, Lcom/phicomm/speaker/activity/player/b;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/b;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setOnClickLyricLoading(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->setCurrentItem(I)V

    .line 191
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->k(I)V

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$1;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 209
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x2710

    .line 784
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(ILandroid/content/DialogInterface$OnDismissListener;J)V

    return-void
.end method

.method public a(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 789
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(ILandroid/content/DialogInterface$OnDismissListener;J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0045

    .line 168
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f()Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->a()V

    .line 795
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j()V

    return-void
.end method

.method final synthetic b(I)V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i:Lcom/phicomm/speaker/presenter/mqtt/a;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l:Ljava/lang/String;

    new-instance v2, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$5;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$5;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;ILcom/phicomm/speaker/presenter/mqtt/a$a;)V

    return-void
.end method

.method final synthetic d()V
    .locals 0

    .line 816
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->finish()V

    return-void
.end method

.method dev_load_failed()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090088
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 777
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/j;->a(Z)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 412
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->finish()V

    .line 413
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x10a0000

    const v1, 0x7f01000d

    .line 414
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method ivVolume()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09013e
        }
    .end annotation

    .line 707
    invoke-static {}, Lcom/phicomm/speaker/e/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlBottom1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m:Lcom/phicomm/speaker/views/dialog/b;

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Lcom/phicomm/speaker/views/dialog/b;

    new-instance v2, Lcom/phicomm/speaker/activity/player/c;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/player/c;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/phicomm/speaker/views/dialog/b;-><init>(Landroid/content/Context;ILcom/phicomm/speaker/views/dialog/b$a;)V

    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m:Lcom/phicomm/speaker/views/dialog/b;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m:Lcom/phicomm/speaker/views/dialog/b;

    iget v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/dialog/b;->a(I)V

    .line 727
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m:Lcom/phicomm/speaker/views/dialog/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/dialog/b;->show()V

    :cond_1
    return-void
.end method

.method iv_favorite()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900fc
        }
    .end annotation

    .line 740
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/j;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivFavorite:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method iv_last()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090104
        }
    .end annotation

    .line 686
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method iv_list()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090106
        }
    .end annotation

    .line 759
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    .line 761
    invoke-virtual {v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getIvCd()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x3ee76276

    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getIvCd()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v1

    sub-int/2addr v0, v1

    .line 762
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 763
    const-class v2, Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "height"

    .line 764
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v2, Lcom/phicomm/speaker/e/b/k;

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 766
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/phicomm/speaker/e/b/k;

    iget-boolean v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    iget-object v4, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    invoke-virtual {v4}, Lcom/phicomm/speaker/views/PlayModeView;->getCurrentPlayMode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/phicomm/speaker/e/b/k;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->e(Ljava/lang/Object;)V

    const-string v0, "playMode"

    .line 767
    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/PlayModeView;->getCurrentPlayMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isPlayingMusic"

    .line 768
    iget-boolean v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 769
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f010014

    const v1, 0x7f01000f

    .line 770
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method iv_mode()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901af
        }
    .end annotation

    .line 733
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/PlayModeView;->getNextPlayMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method iv_next()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09010e
        }
    .end annotation

    .line 700
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method iv_play()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090113
        }
    .end annotation

    .line 693
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public onAudioCollectEvent(Lcom/phicomm/speaker/e/b/a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 851
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/a;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 853
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->isIsCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0026

    goto :goto_0

    :cond_0
    const v0, 0x7f0f004e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->isIsCollected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Z)V

    :cond_1
    return-void
.end method

.method public onAudioModeEvent(Lcom/phicomm/speaker/e/b/c;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b()V

    .line 873
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/c;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 875
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i(Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/k;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 877
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/k;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayMode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/e/b/k;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->e(Ljava/lang/Object;)V

    .line 878
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getPlayMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j:Lcom/phicomm/speaker/presenter/f;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/f;->a(Ljava/lang/String;I)V

    .line 422
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m:Lcom/phicomm/speaker/views/dialog/b;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->m:Lcom/phicomm/speaker/views/dialog/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/dialog/b;->dismiss()V

    .line 425
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 426
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->o()V

    .line 427
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyMarqueeTextView;->a()V

    .line 428
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->c()V

    .line 429
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a()V

    .line 430
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->j:Lcom/phicomm/speaker/presenter/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/f;->a()V

    .line 431
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDeviceOnlineStateEvent(Lcom/phicomm/speaker/e/b/f;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 884
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/f;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 885
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f024a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b()V

    const-string p1, "pause"

    .line 887
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onLyricsScrollEvent(Lcom/phicomm/speaker/a/u;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/u;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d(I)V

    .line 895
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/u;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(I)V

    return-void
.end method

.method public onMusicCollectEvent(Lcom/phicomm/speaker/e/b/g;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 842
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/g;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 844
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->isCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0026

    goto :goto_0

    :cond_0
    const v0, 0x7f0f004e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->isCollected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Z)V

    :cond_1
    return-void
.end method

.method public onMusicModeEvent(Lcom/phicomm/speaker/e/b/i;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b()V

    .line 861
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/i;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 863
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->i(Ljava/lang/String;)V

    .line 864
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/e/b/k;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 865
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/k;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayMode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/e/b/k;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->e(Ljava/lang/Object;)V

    .line 866
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getPlayMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicPlayStatusChangeEvent(Lcom/phicomm/speaker/a/v;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 900
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->g:Z

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/v;->a()Lcom/phicomm/speaker/bean/player/MusicPlayStatus;

    move-result-object p1

    .line 902
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->getMusic_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->getMusic_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 917
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b()V

    .line 918
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->d(I)V

    goto :goto_0

    .line 913
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->getPlay_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(J)V

    goto :goto_0

    .line 906
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a()V

    .line 909
    :pswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/MusicPlayStatus;->getPlay_time()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(J)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNetworkStatusChangeEvent(Lcom/phicomm/speaker/a/y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 805
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/y;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f0178

    .line 806
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    :cond_0
    return-void
.end method

.method public onPlayingInfoStickyEvent(Lcom/phicomm/speaker/e/b/l;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 826
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b()V

    .line 827
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->c()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/unisound/lib/msgcenter/bean/MusicInfo;)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->h:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->b()V

    .line 833
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b()V

    .line 835
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(I)V

    .line 836
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/l;->b()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/unisound/lib/audio/bean/AudioInfo;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 214
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e()V

    return-void
.end method

.method public onSpeakerStopPlayEvent(Lcom/phicomm/speaker/e/b/m;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 812
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/m;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b()V

    .line 814
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;

    if-eqz p1, :cond_0

    .line 815
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/phicomm/speaker/activity/player/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/player/d;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
