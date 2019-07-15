.class public Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "NoSpeakerFindActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;Landroid/view/View;)V
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

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mTvNext\' and method \'tv_no_speaker_find_try\'"

    const v1, 0x7f0902bd

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvNext\'"

    .line 25
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvNext:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->b:Landroid/view/View;

    .line 27
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvBack\' and method \'iv_no_speaker_find_back\'"

    const v1, 0x7f09010f

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvBack\'"

    .line 34
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvBack:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->c:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvTitle\'"

    .line 42
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902bc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v0, "field \'mTvTip\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902bb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTip:Landroid/widget/TextView;

    const-string v0, "field \'mIvGuide\'"

    .line 44
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090110

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mIvGuide:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;

    .line 50
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvNext:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvBack:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTitle:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mTvTip:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity;->mIvGuide:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->b:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/NoSpeakerFindActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
