.class public Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "PersonalInformationActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/PersonalInformationActivity;",
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

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Landroid/view/View;)V
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

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mRlHeadPortrait\' and method \'rl_head_portrait\'"

    const v1, 0x7f0901d9

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlHeadPortrait\'"

    .line 42
    const-class v3, Landroid/support/constraint/ConstraintLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mRlHeadPortrait:Landroid/support/constraint/ConstraintLayout;

    .line 43
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->b:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mIvHeadPortrait\'"

    .line 50
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mIvHeadPortrait:Landroid/widget/ImageView;

    const-string v0, "field \'mTvNickname\'"

    .line 51
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvNickname:Landroid/widget/TextView;

    const-string v0, "field \'mTvSex\'"

    .line 52
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvSex:Landroid/widget/TextView;

    const-string v0, "field \'mTvBirthday\'"

    .line 53
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090255

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvBirthday:Landroid/widget/TextView;

    const-string v0, "field \'mTvJob\'"

    .line 54
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090297

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvJob:Landroid/widget/TextView;

    const-string v0, "field \'mTvMobile\'"

    .line 55
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvMobile:Landroid/widget/TextView;

    const-string v0, "method \'tv_nickname\'"

    const v1, 0x7f0901de

    .line 56
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->c:Landroid/view/View;

    .line 58
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'rl_sex\'"

    const v1, 0x7f0901e0

    .line 64
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->d:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'rl_birthday\'"

    const v1, 0x7f0901d2

    .line 72
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->e:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$5;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'rl_job\'"

    const v1, 0x7f0901da

    .line 80
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->f:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$6;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'rl_modify_password\'"

    const v1, 0x7f0901dd

    .line 88
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->g:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$7;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'rl_mobile\'"

    const v1, 0x7f0901dc

    .line 96
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->h:Landroid/view/View;

    .line 98
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$8;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'tv_exit\'"

    const v1, 0x7f090289

    .line 104
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->i:Landroid/view/View;

    .line 106
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$9;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'iv_back\'"

    const v1, 0x7f0900dd

    .line 112
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->j:Landroid/view/View;

    .line 114
    new-instance v1, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$10;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'ll_root\'"

    const v1, 0x7f09016c

    .line 120
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 121
    iput-object p2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->k:Landroid/view/View;

    .line 122
    new-instance v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    .line 133
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 135
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mRlHeadPortrait:Landroid/support/constraint/ConstraintLayout;

    .line 136
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 137
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvNickname:Landroid/widget/TextView;

    .line 138
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvSex:Landroid/widget/TextView;

    .line 139
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvBirthday:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvJob:Landroid/widget/TextView;

    .line 141
    iput-object v1, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvMobile:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->b:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->c:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->d:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->e:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->f:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->g:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->h:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->i:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->j:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity_ViewBinding;->k:Landroid/view/View;

    return-void
.end method
