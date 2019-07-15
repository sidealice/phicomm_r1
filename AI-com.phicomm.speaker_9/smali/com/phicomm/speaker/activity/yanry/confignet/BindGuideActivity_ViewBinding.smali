.class public Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "BindGuideActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;Landroid/view/View;)V
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

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mTvAddSpeaker\' and method \'tv_bind_guide_next\'"

    const v1, 0x7f090253

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvAddSpeaker\'"

    .line 27
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mTvAddSpeaker:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->b:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvBack\' and method \'iv_bind_guide_back\'"

    const v1, 0x7f0900e0

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvBack\'"

    .line 36
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mTvBack:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->c:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mIvTips\' and method \'clickToEnterAp\'"

    const v1, 0x7f0900df

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mIvTips\'"

    .line 45
    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mIvTips:Landroid/widget/ImageView;

    .line 46
    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->d:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    .line 58
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mTvAddSpeaker:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mTvBack:Landroid/widget/ImageView;

    .line 62
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->mIvTips:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->b:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->c:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
