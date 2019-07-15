.class public Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "ConfigNetActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;",
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
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;Landroid/view/View;)V
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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'mTvCancel\' and method \'tv_config_net_cancel\'"

    const v1, 0x7f090277

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvCancel\'"

    .line 29
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvCancel:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->b:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlWifiName\' and method \'rl_config_net_ssid\'"

    const v1, 0x7f0901d5

    .line 37
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlWifiName\'"

    .line 38
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mRlWifiName:Landroid/widget/RelativeLayout;

    .line 39
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->c:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvWifiName\'"

    .line 46
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvWifiName:Landroid/widget/TextView;

    const-string v0, "field \'mLoading\'"

    .line 47
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900ed

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    const-string v0, "field \'mIvGotoWifiList\'"

    .line 48
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900ec

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mIvGotoWifiList:Landroid/widget/ImageView;

    const-string v0, "field \'mEtPwd\'"

    .line 49
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f090097

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mTvNoNeedPwd\'"

    .line 50
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090279

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvNoNeedPwd:Landroid/widget/TextView;

    const-string v0, "method \'tv_config_net_connect\'"

    const v1, 0x7f090278

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->d:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;

    .line 64
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 66
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvCancel:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mRlWifiName:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvWifiName:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    .line 70
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mIvGotoWifiList:Landroid/widget/ImageView;

    .line 71
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    .line 72
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvNoNeedPwd:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->b:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->c:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
