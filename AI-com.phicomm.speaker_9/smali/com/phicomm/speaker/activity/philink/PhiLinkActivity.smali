.class public Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "PhiLinkActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/phicomm/speaker/presenter/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/util/List;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
    .locals 2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bind_device"

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "philink"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoBleGuide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/f/c;->a(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    .line 127
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->finish()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    new-instance v1, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$3;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    new-instance v0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$4;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$a;)V

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)Lcom/phicomm/speaker/presenter/m;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->e:Lcom/phicomm/speaker/presenter/m;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 50
    new-instance v0, Lcom/phicomm/speaker/presenter/m;

    new-instance v1, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$1;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/m;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/m;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->e:Lcom/phicomm/speaker/presenter/m;

    return-void
.end method

.method private e()V
    .locals 5

    .line 80
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "philink_device"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;

    .line 81
    invoke-static {v0}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 83
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_activity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->b:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "current_ssid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->d:Ljava/lang/String;

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/util/List;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->e()V

    .line 45
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->d()V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->e:Lcom/phicomm/speaker/presenter/m;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/m;->c()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0050

    .line 39
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->j()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->e:Lcom/phicomm/speaker/presenter/m;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/m;->d()V

    .line 158
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
