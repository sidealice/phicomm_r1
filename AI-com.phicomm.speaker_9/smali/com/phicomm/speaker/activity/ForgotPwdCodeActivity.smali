.class public Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ForgotPwdCodeActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:Lcom/phicomm/speaker/presenter/c;

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Lcom/phicomm/speaker/views/p;

.field private h:Ljava/lang/Runnable;

.field mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090199
    .end annotation
.end field

.field mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019c
    .end annotation
.end field

.field mTvGetVerCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028f
    .end annotation
.end field

.field mTvNext:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$1;-><init>(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 107
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$3;-><init>(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 170
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->c()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 181
    new-instance v0, Lcom/phicomm/speaker/views/p;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    new-instance v2, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$4;-><init>(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/views/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/views/p$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->show()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->k()V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)Lcom/phicomm/speaker/views/p;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ResetPwdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "register_phone"

    .line 206
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ver_code"

    .line 207
    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1f5

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private l()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0151

    .line 222
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f0164

    .line 230
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return v1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const v0, 0x7f0f0281

    .line 235
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return v1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->d()V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvNext:Landroid/widget/TextView;

    const/16 v3, 0xd

    const/4 v4, 0x6

    invoke-static {v0, v3, v1, v4, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity$2;-><init>(Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "FORGOT_PWD_CODE_TIME"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e:I

    .line 100
    iget v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0033

    .line 71
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 258
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->j()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1f5

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public tv_get_vercode()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09028f
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    .line 148
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->e()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public tv_next()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902b6
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->a:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->b:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;->g()V

    :cond_0
    return-void
.end method
