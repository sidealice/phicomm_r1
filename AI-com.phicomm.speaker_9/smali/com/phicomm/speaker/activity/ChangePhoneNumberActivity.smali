.class public Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ChangePhoneNumberActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:Lcom/phicomm/speaker/presenter/c;

.field private e:Lcom/phicomm/speaker/presenter/s;

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/phicomm/speaker/views/p;

.field private i:Ljava/lang/Runnable;

.field mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090185
    .end annotation
.end field

.field mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090187
    .end annotation
.end field

.field mTvGetVerificationCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090290
    .end annotation
.end field

.field mTvNextStep:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 110
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->d:Lcom/phicomm/speaker/presenter/c;

    .line 129
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->e:Lcom/phicomm/speaker/presenter/s;

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 174
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->d:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->d:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->c()V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Lcom/phicomm/speaker/views/p;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->h:Lcom/phicomm/speaker/views/p;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 185
    new-instance v0, Lcom/phicomm/speaker/views/p;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    new-instance v2, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/views/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/views/p$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->h:Lcom/phicomm/speaker/views/p;

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->h:Lcom/phicomm/speaker/views/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->show()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->e:Lcom/phicomm/speaker/presenter/s;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/presenter/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f0151

    .line 205
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->b:Ljava/lang/String;

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

    .line 210
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return v1
.end method


# virtual methods
.method public a()V
    .locals 5

    const v0, 0x7f0f0056

    .line 78
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->e(I)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->g:Landroid/os/Handler;

    .line 80
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->d()V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvNextStep:Landroid/widget/TextView;

    const/16 v3, 0xd

    const/4 v4, 0x6

    invoke-static {v0, v3, v1, v4, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;-><init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "CHANGE_PHONE_NUMBER_CODE_TIME"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f:I

    .line 103
    iget v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0027

    .line 73
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public tv_get_verification_code()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090290
        }
    .end annotation

    const v0, 0x7f0f00dd

    .line 148
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0202

    .line 149
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f0151

    .line 153
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->e()V

    :cond_2
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

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetVerificationCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->b:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->g()V

    :cond_0
    return-void
.end method
