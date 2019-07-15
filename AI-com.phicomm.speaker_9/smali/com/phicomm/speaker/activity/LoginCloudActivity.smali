.class public Lcom/phicomm/speaker/activity/LoginCloudActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "LoginCloudActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/c;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/phicomm/speaker/f/p;

.field private f:Ljava/lang/Integer;

.field mIvWelcome:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

.field mLlBottom:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015d
    .end annotation
.end field

.field mLlTop:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09016e
    .end annotation
.end field

.field mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019a
    .end annotation
.end field

.field mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019b
    .end annotation
.end field

.field mTvForgetPwd:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09028d
    .end annotation
.end field

.field mTvLogin:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09029e
    .end annotation
.end field

.field mTvRegister:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ce
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/LoginCloudActivity;)Ljava/lang/Integer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/LoginCloudActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->f:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->m()V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->g()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 122
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 125
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x3f2aaaab

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v0

    .line 126
    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mIvWelcome:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    sub-int/2addr v1, v0

    const/high16 v0, 0x42340000    # 45.0f

    .line 129
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v0

    .line 130
    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    .line 131
    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    .line 132
    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvLogin:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr v1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    .line 135
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v0

    .line 136
    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvForgetPwd:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    .line 137
    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvRegister:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;I)V

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvLogin:Landroid/widget/TextView;

    const v2, 0x3dae4c41

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/ad;->d(Landroid/view/View;I)V

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x3e59df52

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const v2, 0x3dd1284e

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvLogin:Landroid/widget/TextView;

    const v2, 0x3e29f0c0

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvForgetPwd:Landroid/widget/TextView;

    const v2, 0x3dd9df52

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvRegister:Landroid/widget/TextView;

    const v2, 0x3df4045c

    invoke-static {v2, v1}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/ad;->c(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->n()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 153
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "register_phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/MyEditText;->setContent(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/MyEditText;->setContent(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 168
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/LoginCloudActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity$2;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method private g()V
    .locals 4

    .line 204
    new-instance v0, Lcom/phicomm/speaker/views/e;

    const-string v1, "\u624b\u673a\u65f6\u95f4\u4e0e\u5317\u4eac\u4e0d\u4e00\u81f4"

    const-string v2, "\u8bbe\u7f6e"

    new-instance v3, Lcom/phicomm/speaker/activity/LoginCloudActivity$3;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity$3;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/e;->setCanceledOnTouchOutside(Z)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/e;->setCancelable(Z)V

    .line 215
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 243
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->m()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->l()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->c()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->startActivity(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->finish()V

    return-void
.end method

.method private o()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const v0, 0x7f0f014f

    .line 291
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 85
    new-instance v0, Lcom/phicomm/speaker/manager/d;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/manager/d;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/d;->a(Z)V

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v1, v0}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;ILandroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->d()V

    .line 88
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->f()V

    .line 89
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->e()V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mTvLogin:Landroid/widget/TextView;

    const/16 v3, 0xd

    const/4 v4, 0x6

    invoke-static {v0, v3, v1, v4, v2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 91
    new-instance v0, Lcom/phicomm/speaker/f/p;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/f/p;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->e:Lcom/phicomm/speaker/f/p;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->e:Lcom/phicomm/speaker/f/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/p;->a()V

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->e:Lcom/phicomm/speaker/f/p;

    new-instance v1, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;-><init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/f/p;->a(Lcom/phicomm/speaker/f/p$a;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const p1, 0x7f0f0139

    .line 300
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0043

    .line 80
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->j()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x259

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "mobile_phone"

    .line 279
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 281
    iget-object p2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/views/MyEditText;->setContent(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/MyEditText;->setContent(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 284
    invoke-static {}, Lcom/phicomm/speaker/f/q;->a()Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->e:Lcom/phicomm/speaker/f/p;

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/p;->b()V

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a:Lcom/phicomm/speaker/presenter/c;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->h()V

    :cond_0
    return-void
.end method

.method public tv_forget_pwd()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09028d
        }
    .end annotation

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/ForgotPwdCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tv_login()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09029e
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtUser:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->b:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getAllContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->d:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->k()V

    :cond_0
    return-void
.end method

.method public tv_register()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902ce
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x259

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
