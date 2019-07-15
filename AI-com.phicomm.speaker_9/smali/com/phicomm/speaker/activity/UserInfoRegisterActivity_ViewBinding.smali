.class public Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "UserInfoRegisterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;",
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


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;Landroid/view/View;)V
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

    const-string v0, "field \'rgSex\'"

    .line 28
    const-class v1, Landroid/widget/RadioGroup;

    const v2, 0x7f0901cd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->rgSex:Landroid/widget/RadioGroup;

    const-string v0, "field \'tvBirthday\' and method \'tv_birthday\'"

    const v1, 0x7f090255

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvBirthday\'"

    .line 30
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvBirthday:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->b:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'tvJob\' and method \'tv_job\'"

    const v1, 0x7f090297

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvJob\'"

    .line 39
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvJob:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->c:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'tvSubmit\' and method \'tv_submit\'"

    const v1, 0x7f0902f7

    .line 47
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvSubmit\'"

    .line 48
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvSubmit:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->d:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'tvSkip\' and method \'tv_skip\'"

    const v1, 0x7f0902e2

    .line 56
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'tvSkip\'"

    .line 57
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvSkip:Landroid/widget/TextView;

    .line 58
    iput-object p2, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->e:Landroid/view/View;

    .line 59
    new-instance v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    .line 70
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 72
    iput-object v1, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->rgSex:Landroid/widget/RadioGroup;

    .line 73
    iput-object v1, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvBirthday:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvJob:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvSubmit:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvSkip:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->b:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->c:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->d:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity_ViewBinding;->e:Landroid/view/View;

    return-void
.end method
