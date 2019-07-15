.class public Lcom/phicomm/speaker/activity/RegisterCodeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "RegisterCodeActivity.java"

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

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity$1;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e:I

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/RegisterCodeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 105
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 182
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->c()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 193
    new-instance v0, Lcom/phicomm/speaker/views/p;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    new-instance v2, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity$4;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/views/p;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/views/p$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->show()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->k()V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Lcom/phicomm/speaker/views/p;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->g:Lcom/phicomm/speaker/views/p;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/AccountRegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "register_phone"

    .line 217
    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ver_code"

    .line 218
    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1f5

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private l()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0151

    .line 232
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0f0164

    .line 240
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return v1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b:Ljava/lang/String;

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

    .line 245
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return v1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f:Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d()V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvNext:Landroid/widget/TextView;

    const/16 v3, 0xd

    const/4 v4, 0x6

    invoke-static {v0, v3, v1, v4, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/activity/RegisterCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity$2;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "REGISTER_CODE_TIME"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e:I

    .line 98
    iget v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 263
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0054

    .line 69
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1f5

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->h:Ljava/lang/Runnable;

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

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mTvGetVerCode:Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e()V

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

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtPhone:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->a:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->mMyEtVerCode:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->g()V

    :cond_0
    return-void
.end method

.method public tv_protocol()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902c9
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ProtocolActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
