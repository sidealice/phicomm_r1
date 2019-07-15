.class public Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MineFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/MineFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/MineFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

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

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/fragment/MineFragment;Landroid/view/View;)V
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    const-string v0, "field \'mIvHeadPortrait\'"

    .line 49
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mIvHeadPortrait:Landroid/widget/ImageView;

    const-string v0, "field \'mTvNickname\'"

    .line 50
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mTvNickname:Landroid/widget/TextView;

    const-string v0, "field \'mClSpeakerInfo\' and method \'cl_speaker_info\'"

    const v1, 0x7f09006e

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mClSpeakerInfo\'"

    .line 52
    const-class v3, Landroid/support/constraint/ConstraintLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mClSpeakerInfo:Landroid/support/constraint/ConstraintLayout;

    .line 53
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->b:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$1;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mIvSpeakerIcon\'"

    .line 60
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09012e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mIvSpeakerIcon:Landroid/widget/ImageView;

    const-string v0, "field \'mTvSpeakerName\'"

    .line 61
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    const-string v0, "field \'mIvWifi\'"

    .line 62
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090141

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mIvWifi:Landroid/widget/ImageView;

    const-string v0, "field \'mTvWifi\'"

    .line 63
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090309

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mTvWifi:Landroid/widget/TextView;

    const-string v0, "field \'mCladdSpeaker\'"

    .line 64
    const-class v1, Landroid/support/constraint/ConstraintLayout;

    const v2, 0x7f09006a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mCladdSpeaker:Landroid/support/constraint/ConstraintLayout;

    const-string v0, "field \'mTvAddSpeaker\' and method \'tv_add_speaker\'"

    const v1, 0x7f09024c

    .line 65
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvAddSpeaker\'"

    .line 66
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mTvAddSpeaker:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->c:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$7;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'rl_user_info\'"

    const v1, 0x7f0901ed

    .line 74
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->d:Landroid/view/View;

    .line 76
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$8;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_iot_skill\'"

    const v1, 0x7f090192

    .line 82
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->e:Landroid/view/View;

    .line 84
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$9;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_user_defined_q_a\'"

    const v1, 0x7f090197

    .line 90
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->f:Landroid/view/View;

    .line 92
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$10;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_reminder\'"

    const v1, 0x7f090196

    .line 98
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->g:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$11;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_memo\'"

    const v1, 0x7f090193

    .line 106
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->h:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$12;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_my_favorite\'"

    const v1, 0x7f090194

    .line 114
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->i:Landroid/view/View;

    .line 116
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$13;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_play_history\'"

    const v1, 0x7f090195

    .line 122
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->j:Landroid/view/View;

    .line 124
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$14;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'mtv_help_guide\' and method \'longHelp\'"

    const v1, 0x7f090191

    .line 130
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->k:Landroid/view/View;

    .line 132
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$2;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$3;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string v0, "method \'mtv_feedback\'"

    const v1, 0x7f090190

    .line 144
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->l:Landroid/view/View;

    .line 146
    new-instance v1, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$4;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'gotoAbout\' and method \'longAbout\'"

    const v1, 0x7f09018f

    .line 152
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 153
    iput-object p2, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->m:Landroid/view/View;

    .line 154
    new-instance v0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$5;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding$6;-><init>(Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;Lcom/phicomm/speaker/fragment/MineFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 174
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 175
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvNickname:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mClSpeakerInfo:Landroid/support/constraint/ConstraintLayout;

    .line 177
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvSpeakerIcon:Landroid/widget/ImageView;

    .line 178
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvSpeakerName:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvWifi:Landroid/widget/ImageView;

    .line 180
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvWifi:Landroid/widget/TextView;

    .line 181
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mCladdSpeaker:Landroid/support/constraint/ConstraintLayout;

    .line 182
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mTvAddSpeaker:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->b:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->c:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->d:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->e:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->f:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->g:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->h:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->i:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->j:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->k:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->l:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->m:Landroid/view/View;

    .line 211
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    return-void
.end method
