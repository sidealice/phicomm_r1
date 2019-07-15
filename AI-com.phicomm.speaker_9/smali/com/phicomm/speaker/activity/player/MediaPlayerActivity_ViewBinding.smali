.class public Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "MediaPlayerActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'ivRoot\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09011f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivRoot:Landroid/widget/ImageView;

    const-string v0, "field \'rlTitle\'"

    .line 44
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0901ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlTitle:Landroid/widget/RelativeLayout;

    const-string v0, "field \'tvTitle\'"

    .line 45
    const-class v1, Lcom/phicomm/speaker/views/MyMarqueeTextView;

    const v2, 0x7f0902fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyMarqueeTextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    const-string v0, "field \'ivBack\'"

    .line 46
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivBack:Landroid/widget/ImageView;

    const-string v0, "field \'tvArtist\'"

    .line 47
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090251

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvArtist:Landroid/widget/TextView;

    const-string v0, "field \'vpTop\'"

    .line 48
    const-class v1, Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/player/PlayerViewPager;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const-string v0, "field \'clCenter\'"

    .line 49
    const-class v1, Landroid/support/constraint/ConstraintLayout;

    const v2, 0x7f09006b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->clCenter:Landroid/support/constraint/ConstraintLayout;

    const-string v0, "field \'ivIndicator1\'"

    .line 50
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090102

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator1:Landroid/widget/ImageView;

    const-string v0, "field \'ivIndicator2\'"

    .line 51
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090103

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator2:Landroid/widget/ImageView;

    const-string v0, "field \'ivStatus\'"

    .line 52
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09013b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivStatus:Landroid/widget/ImageView;

    const-string v0, "field \'rlBottom1\'"

    .line 53
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0901d3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlBottom1:Landroid/widget/RelativeLayout;

    const-string v0, "field \'ivLast\' and method \'iv_last\'"

    const v1, 0x7f090104

    .line 54
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ivLast\'"

    .line 55
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivLast:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->b:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'ivPlay\' and method \'iv_play\'"

    const v1, 0x7f090113

    .line 63
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ivPlay\'"

    .line 64
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivPlay:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->c:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'ivNext\' and method \'iv_next\'"

    const v1, 0x7f09010e

    .line 72
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ivNext\'"

    .line 73
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivNext:Landroid/widget/ImageView;

    .line 74
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->d:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'llBottom2\'"

    .line 81
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09015e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->llBottom2:Landroid/widget/LinearLayout;

    const-string v0, "field \'pmvMode\' and method \'iv_mode\'"

    const v1, 0x7f0901af

    .line 82
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'pmvMode\'"

    .line 83
    const-class v3, Lcom/phicomm/speaker/views/PlayModeView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/PlayModeView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    .line 84
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->e:Landroid/view/View;

    .line 85
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'ivFavorite\' and method \'iv_favorite\'"

    const v1, 0x7f0900fc

    .line 91
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ivFavorite\'"

    .line 92
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivFavorite:Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->f:Landroid/view/View;

    .line 94
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$5;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'ivList\' and method \'iv_list\'"

    const v1, 0x7f090106

    .line 100
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'ivList\'"

    .line 101
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivList:Landroid/widget/ImageView;

    .line 102
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->g:Landroid/view/View;

    .line 103
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$6;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'devNoneContent\'"

    .line 109
    const-class v1, Lcom/phicomm/speaker/views/DefaultExceptionView;

    const v2, 0x7f09008a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const-string v0, "field \'devLoadFailed\' and method \'dev_load_failed\'"

    const v1, 0x7f090088

    .line 110
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'devLoadFailed\'"

    .line 111
    const-class v3, Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 112
    iput-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->h:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$7;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'ivVolume\'"

    const v1, 0x7f09013e

    .line 119
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 120
    iput-object p2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->i:Landroid/view/View;

    .line 121
    new-instance v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$8;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    .line 132
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 134
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivRoot:Landroid/widget/ImageView;

    .line 135
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlTitle:Landroid/widget/RelativeLayout;

    .line 136
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvTitle:Lcom/phicomm/speaker/views/MyMarqueeTextView;

    .line 137
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivBack:Landroid/widget/ImageView;

    .line 138
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->tvArtist:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    .line 140
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->clCenter:Landroid/support/constraint/ConstraintLayout;

    .line 141
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator1:Landroid/widget/ImageView;

    .line 142
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivIndicator2:Landroid/widget/ImageView;

    .line 143
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivStatus:Landroid/widget/ImageView;

    .line 144
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->rlBottom1:Landroid/widget/RelativeLayout;

    .line 145
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivLast:Landroid/widget/ImageView;

    .line 146
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivPlay:Landroid/widget/ImageView;

    .line 147
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivNext:Landroid/widget/ImageView;

    .line 148
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->llBottom2:Landroid/widget/LinearLayout;

    .line 149
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->pmvMode:Lcom/phicomm/speaker/views/PlayModeView;

    .line 150
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivFavorite:Landroid/widget/ImageView;

    .line 151
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivList:Landroid/widget/ImageView;

    .line 152
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 153
    iput-object v1, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->b:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->c:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->d:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->e:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->f:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->g:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->h:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;->i:Landroid/view/View;

    return-void
.end method
