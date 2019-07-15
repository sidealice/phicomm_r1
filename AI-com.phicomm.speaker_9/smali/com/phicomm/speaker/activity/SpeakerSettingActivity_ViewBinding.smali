.class public Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "SpeakerSettingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/SpeakerSettingActivity;",
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

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Landroid/view/View;)V
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

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mRlChangeNet\' and method \'goToChangeNet\'"

    const v1, 0x7f0901e3

    .line 40
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlChangeNet\'"

    .line 41
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlChangeNet:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 43
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlChangeName\' and method \'goToChangeName\'"

    const v1, 0x7f0901e5

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlChangeName\'"

    .line 50
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlChangeName:Landroid/widget/RelativeLayout;

    .line 51
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlChangeIcon\' and method \'goToChangeIcon\'"

    const v1, 0x7f0901e2

    .line 58
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlChangeIcon\'"

    .line 59
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlChangeIcon:Landroid/widget/RelativeLayout;

    .line 60
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlUnBindIcon\' and method \'unBindDevice\'"

    const v1, 0x7f0901e7

    .line 67
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlUnBindIcon\'"

    .line 68
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlUnBindIcon:Landroid/widget/RelativeLayout;

    .line 69
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlReboot\' and method \'rebootDevice\'"

    const v1, 0x7f0901e4

    .line 76
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlReboot\'"

    .line 77
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlReboot:Landroid/widget/RelativeLayout;

    .line 78
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$5;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlSoundEffect\'"

    .line 85
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0901e6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlSoundEffect:Landroid/widget/RelativeLayout;

    const-string v0, "field \'mDormancySwitch\'"

    .line 86
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f090133

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    const-string v0, "field \'mAmbientlightView\'"

    const v1, 0x7f090213

    .line 87
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightView:Landroid/view/View;

    const-string v0, "field \'mAmbientlightSwitch\'"

    .line 88
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f090132

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    const-string v0, "field \'mTvSpeakerName\'"

    .line 89
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerName:Landroid/widget/TextView;

    const-string v0, "field \'mTvSpeakerSsid\'"

    .line 90
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902eb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerSsid:Landroid/widget/TextView;

    const-string v0, "field \'mTvSpeakerMac\'"

    .line 91
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerMac:Landroid/widget/TextView;

    const-string v0, "field \'mTvSpeakerVersion\'"

    .line 92
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f5

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVersion:Landroid/widget/TextView;

    const-string v0, "field \'mTvVersionNewUpdate\'"

    .line 93
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090305

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvVersionNewUpdate:Landroid/widget/TextView;

    const-string v0, "field \'mTvSpeakerIcon\'"

    .line 94
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09012e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerIcon:Landroid/widget/ImageView;

    const-string v0, "field \'mTvSpeakerVoice\'"

    .line 95
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVoice:Landroid/widget/TextView;

    const-string v0, "field \'tvWakeName\'"

    .line 96
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->tvWakeName:Landroid/widget/TextView;

    const-string v0, "field \'mBassSwitch\'"

    .line 97
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09012b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    const-string v0, "method \'goToSelectWakeupName\'"

    const v1, 0x7f09002a

    .line 98
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$6;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'goToChangeVoice\'"

    const v1, 0x7f0901e9

    .line 106
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$7;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'checkRomUpdateClick\'"

    const v1, 0x7f0901e8

    .line 114
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 116
    new-instance v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$8;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'recovery\'"

    const v1, 0x7f0902cd

    .line 122
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 123
    iput-object p2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 124
    new-instance v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$9;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    .line 135
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 137
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlChangeNet:Landroid/widget/RelativeLayout;

    .line 138
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlChangeName:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlChangeIcon:Landroid/widget/RelativeLayout;

    .line 140
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlUnBindIcon:Landroid/widget/RelativeLayout;

    .line 141
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlReboot:Landroid/widget/RelativeLayout;

    .line 142
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mRlSoundEffect:Landroid/widget/RelativeLayout;

    .line 143
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mDormancySwitch:Landroid/widget/CheckBox;

    .line 144
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightView:Landroid/view/View;

    .line 145
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mAmbientlightSwitch:Landroid/widget/CheckBox;

    .line 146
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerName:Landroid/widget/TextView;

    .line 147
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerSsid:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerMac:Landroid/widget/TextView;

    .line 149
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVersion:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvVersionNewUpdate:Landroid/widget/TextView;

    .line 151
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerIcon:Landroid/widget/ImageView;

    .line 152
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvSpeakerVoice:Landroid/widget/TextView;

    .line 153
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->tvWakeName:Landroid/widget/TextView;

    .line 154
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mBassSwitch:Landroid/widget/CheckBox;

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;->j:Landroid/view/View;

    return-void
.end method
