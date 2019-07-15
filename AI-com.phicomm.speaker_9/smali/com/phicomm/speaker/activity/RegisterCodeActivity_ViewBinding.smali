.class public Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "RegisterCodeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/RegisterCodeActivity;",
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
.method public constructor <init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;Landroid/view/View;)V
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

    const-string v0, "field \'mMyEtPhone\'"

    .line 26
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f090199

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mMyEtVerCode\'"

    .line 27
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f09019c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mTvGetVerCode\' and method \'tv_get_vercode\'"

    const v1, 0x7f09028f

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvGetVerCode\'"

    .line 29
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->b:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvNext\' and method \'tv_next\'"

    const v1, 0x7f0902b6

    .line 37
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvNext\'"

    .line 38
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvNext:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->c:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'tv_protocol\'"

    const v1, 0x7f0902c9

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->d:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    .line 59
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    .line 62
    iput-object v1, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;

    .line 63
    iput-object v1, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvNext:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->b:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->c:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
