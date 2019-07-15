.class public Lcom/phicomm/speaker/activity/SecurityVerificationActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SecurityVerificationActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/phicomm/speaker/presenter/s;

.field private d:Lcom/phicomm/speaker/presenter/c;

.field private e:Lcom/phicomm/speaker/views/p;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Runnable;

.field mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090187
    .end annotation
.end field

.field mTvBindingPhone:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090254
    .end annotation
.end field

.field mTvNextStep:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b7
    .end annotation
.end field

.field mTvSendVerificationCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$1;-><init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->g:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/bean/Captcha;)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 3

    .line 149
    new-instance v0, Lcom/phicomm/speaker/views/p;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    new-instance v2, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$4;-><init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/phicomm/speaker/views/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/bean/Captcha;Lcom/phicomm/speaker/views/p$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->e:Lcom/phicomm/speaker/views/p;

    .line 158
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->e:Lcom/phicomm/speaker/views/p;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/p;->show()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->g:I

    return v0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->b:Lcom/phicomm/speaker/presenter/s;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/presenter/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->e()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)Lcom/phicomm/speaker/views/p;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->e:Lcom/phicomm/speaker/views/p;

    return-object p0
.end method

.method private f()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const v0, 0x7f0f01c7

    .line 180
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const v0, 0x7f0f0215

    .line 83
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->e(I)V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvNextStep:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v0, v4, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->f:Landroid/os/Handler;

    .line 87
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvBindingPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$2;-><init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->b:Lcom/phicomm/speaker/presenter/s;

    .line 103
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "SECURITY_VERIFICATION_CODE_TIME"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->g:I

    .line 104
    iget v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->g:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$3;-><init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->d:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0057

    .line 78
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 189
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/h;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/h;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    .line 191
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvBindingPhone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/h;->a()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public tv_next_step()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902b7
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->h:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->d()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f01c7

    .line 141
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    :goto_0
    return-void
.end method

.method public tv_send_verification_code()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902d4
        }
    .end annotation

    const v0, 0x7f0f0202

    .line 126
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f00dd

    .line 127
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->mTvSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->d:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->f()V

    return-void
.end method
