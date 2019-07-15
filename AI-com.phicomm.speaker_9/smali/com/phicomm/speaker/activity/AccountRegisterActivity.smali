.class public Lcom/phicomm/speaker/activity/AccountRegisterActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "AccountRegisterActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/phicomm/speaker/presenter/c;

.field mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09019a
    .end annotation
.end field

.field mTvSubmit:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->k()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 55
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity$1;-><init>(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->e:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/AccountRegisterActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->g()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 103
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->e:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->e:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->c()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->e:Lcom/phicomm/speaker/presenter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "CLOUD_ACCOUNT_PHONE"

    .line 121
    iget-object v1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 122
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->setResult(I)V

    .line 123
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->c()V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, "CLOUD_ACCOUNT_PHONE"

    .line 131
    iget-object v1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->setResult(I)V

    .line 133
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->c()V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "register_phone"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mTvSubmit:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v0, v4, v1}, Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V

    .line 49
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "register_phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->b:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ver_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->a:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b001c

    .line 43
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->j()V

    return-void
.end method

.method public tv_submit()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902f7
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->mMyEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getAllContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/AccountRegisterActivity;->e()V

    :cond_0
    return-void
.end method
