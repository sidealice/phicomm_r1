.class public Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "ChangeSexActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/ChangeSexActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/ChangeSexActivity;Landroid/view/View;)V
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

    const-string v0, "field \'mRlMale\' and method \'rl_male\'"

    const v1, 0x7f0901db

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlMale\'"

    .line 25
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mRlMale:Landroid/widget/RelativeLayout;

    .line 26
    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->b:Landroid/view/View;

    .line 27
    new-instance v1, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;Lcom/phicomm/speaker/activity/ChangeSexActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mIvMale\'"

    .line 33
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090108

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvMale:Landroid/widget/ImageView;

    const-string v0, "field \'mRlFemale\' and method \'rl_female\'"

    const v1, 0x7f0901d8

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRlFemale\'"

    .line 35
    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mRlFemale:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->c:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;Lcom/phicomm/speaker/activity/ChangeSexActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mIvFemale\'"

    .line 43
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900fd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvFemale:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/ChangeSexActivity;

    .line 49
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 51
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mRlMale:Landroid/widget/RelativeLayout;

    .line 52
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvMale:Landroid/widget/ImageView;

    .line 53
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mRlFemale:Landroid/widget/RelativeLayout;

    .line 54
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvFemale:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->b:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
