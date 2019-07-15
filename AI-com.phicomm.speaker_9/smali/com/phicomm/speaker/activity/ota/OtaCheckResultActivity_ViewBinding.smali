.class public Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "OtaCheckResultActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;",
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
.method public constructor <init>(Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;Landroid/view/View;)V
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

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'viewNeedUpgrade\'"

    const v1, 0x7f09014d

    .line 25
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewNeedUpgrade:Landroid/view/View;

    const-string v0, "field \'tvOtaVersion\'"

    .line 26
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaVersion:Landroid/widget/TextView;

    const-string v0, "field \'tvOtaInfo\'"

    .line 27
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaInfo:Landroid/widget/TextView;

    const-string v0, "field \'tvSkip\' and method \'tv_skip\'"

    const v1, 0x7f0902e2

    .line 28
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvSkip\'"

    .line 29
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvSkip:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->b:Landroid/view/View;

    .line 31
    new-instance v1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'viewIsLatest\'"

    const v1, 0x7f09014c

    .line 37
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewIsLatest:Landroid/view/View;

    const-string v0, "method \'tv_upgrade_now\'"

    const v1, 0x7f090303

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->c:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'tv_sure\'"

    const v1, 0x7f0902f9

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->d:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;

    .line 59
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewNeedUpgrade:Landroid/view/View;

    .line 62
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaVersion:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvOtaInfo:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->tvSkip:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity;->viewIsLatest:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->b:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->c:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckResultActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
