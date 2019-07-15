.class public Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "LoginCloudActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/LoginCloudActivity;",
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
.method public constructor <init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;Landroid/view/View;)V
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

    const-string v0, "field \'mLlTop\'"

    .line 28
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09016e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlTop:Landroid/widget/LinearLayout;

    const-string v0, "field \'mLlBottom\'"

    .line 29
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09015d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlBottom:Landroid/widget/LinearLayout;

    const-string v0, "field \'mIvWelcome\'"

    .line 30
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090140

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mIvWelcome:Landroid/widget/ImageView;

    const-string v0, "field \'mMyEtUser\'"

    .line 31
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f09019b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mMyEtPwd\'"

    .line 32
    const-class v1, Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x7f09019a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyEditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const-string v0, "field \'mTvLogin\' and method \'tv_login\'"

    const v1, 0x7f09029e

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvLogin\'"

    .line 34
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvLogin:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->b:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvForgetPwd\' and method \'tv_forget_pwd\'"

    const v1, 0x7f09028d

    .line 42
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvForgetPwd\'"

    .line 43
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvForgetPwd:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->c:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvRegister\' and method \'tv_register\'"

    const v1, 0x7f0902ce

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mTvRegister\'"

    .line 52
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvRegister:Landroid/widget/TextView;

    .line 53
    iput-object p2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->d:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    .line 65
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 67
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlTop:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlBottom:Landroid/widget/LinearLayout;

    .line 69
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mIvWelcome:Landroid/widget/ImageView;

    .line 70
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    .line 71
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    .line 72
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvLogin:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvForgetPwd:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvRegister:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->b:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->c:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
