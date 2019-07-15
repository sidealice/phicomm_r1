.class public Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "UserInfoRegisterActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/s;

.field private b:Lcom/phicomm/speaker/popup/b;

.field private d:Lcom/phicomm/speaker/popup/h;

.field rgSex:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901cd
    .end annotation
.end field

.field tvBirthday:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field tvJob:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090297
    .end annotation
.end field

.field tvSkip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e2
    .end annotation
.end field

.field tvSubmit:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)Lcom/phicomm/speaker/popup/b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b:Lcom/phicomm/speaker/popup/b;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->rgSex:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0901bc

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901c0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "1"

    return-object v0

    :cond_1
    const-string v0, "2"

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->finish()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b:Lcom/phicomm/speaker/popup/b;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/phicomm/speaker/popup/b;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b:Lcom/phicomm/speaker/popup/b;

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b:Lcom/phicomm/speaker/popup/b;

    const/16 v1, 0x7c3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/phicomm/speaker/popup/b;->a(III)V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b:Lcom/phicomm/speaker/popup/b;

    new-instance v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$2;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/c/a;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->b:Lcom/phicomm/speaker/popup/b;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 133
    new-instance v0, Lcom/phicomm/speaker/popup/h;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/h;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->d:Lcom/phicomm/speaker/popup/h;

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->d:Lcom/phicomm/speaker/popup/h;

    new-instance v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$3;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/h;->a(Lcom/phicomm/speaker/c/b;)V

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->d:Lcom/phicomm/speaker/popup/h;

    sget-object v1, Lcom/phicomm/speaker/popup/h;->a:[Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/popup/h;->a([Ljava/lang/String;I)V

    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->d:Lcom/phicomm/speaker/popup/h;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/h;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f01b9

    .line 60
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->e(I)V

    .line 61
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$1;-><init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->a:Lcom/phicomm/speaker/presenter/s;

    return-void
.end method

.method public a(I)V
    .locals 0

    const p1, 0x7f0f0139

    .line 176
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0060

    .line 55
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->j()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method tv_birthday()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090255
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->f()V

    return-void
.end method

.method tv_job()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090297
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->g()V

    return-void
.end method

.method tv_skip()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902e2
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->e()V

    return-void
.end method

.method tv_submit()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902f7
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvBirthday:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvJob:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 150
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v1, v4

    :cond_0
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setBirthday(Ljava/lang/String;)V

    const-string v1, ""

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v4

    :cond_1
    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setJob(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setSex(Ljava/lang/String;)V

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/presenter/s;->a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    return-void
.end method
