.class public Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "PhiLinkBindActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Lcom/phicomm/speaker/views/i;

.field private d:Landroid/graphics/drawable/AnimationDrawable;

.field private e:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

.field private f:Landroid/os/Handler;

.field private g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

.field private h:Z

.field private i:Ljava/lang/String;

.field mIvScan:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field mTvDownTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030a
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$1;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "philink"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBindError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method private a(J)V
    .locals 7

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->e:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->e:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->cancel()V

    .line 179
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;JJ)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->e:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvDownTime:Landroid/widget/TextView;

    const-string v1, "%ss"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->e:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/philink/planb/add_device/exit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {}, Lcom/phicomm/speaker/d/a;->a()Lcom/phicomm/speaker/d/a;

    move-result-object v0

    const-string v1, "{}"

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/phicomm/speaker/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    new-instance p1, Lcom/phicomm/speaker/presenter/mqtt/a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDev_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;)V

    .line 132
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/phicomm/speaker/activity/philink/PhiLinkSuccessActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 9

    .line 95
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v1

    const-string v2, "CLOUD_ACCOUNT_PHONE"

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    iget-object v2, v2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v2, v2, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->udid:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    .line 98
    invoke-virtual {v3}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDev_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    iget-object v4, v4, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v4, v4, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->model:Ljava/lang/String;

    iget-object v5, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    iget-object v5, v5, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v5, v5, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->hardware_version:Ljava/lang/String;

    iget-object v6, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    iget-object v6, v6, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

    iget-object v6, v6, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->rom_version:Ljava/lang/String;

    iget-object v7, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    .line 102
    invoke-virtual {v7}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getDevice_type()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;

    invoke-direct {v8, p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$2;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)V

    .line 95
    invoke-virtual/range {v0 .. v8}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/c;)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 7

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b:Lcom/phicomm/speaker/views/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b:Lcom/phicomm/speaker/views/i;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->d()V

    .line 150
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->h:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f007e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    const v0, 0x7f0f020b

    goto :goto_0

    .line 151
    :goto_1
    new-instance v0, Lcom/phicomm/speaker/views/i;

    const-string v3, ""

    new-instance v6, Lcom/phicomm/speaker/activity/philink/a;

    invoke-direct {v6, p0, v5}, Lcom/phicomm/speaker/activity/philink/a;-><init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Ljava/lang/String;)V

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/phicomm/speaker/views/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b:Lcom/phicomm/speaker/views/i;

    .line 166
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->b:Lcom/phicomm/speaker/views/i;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/i;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    const v0, 0x7f0f0178

    .line 68
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->i:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "bind_device"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->h:Z

    const-string v0, "\u8bbe\u5907\u4fe1\u606f\u4f20\u9012\u51fa\u9519"

    .line 72
    invoke-direct {p0, v1, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(ILjava/lang/String;)V

    return-void

    .line 75
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->f:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mIvScan:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->d:Landroid/graphics/drawable/AnimationDrawable;

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const-wide/32 v0, 0xea60

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(J)V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u6dfb\u52a0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->g:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1b58

    .line 81
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0064

    .line 62
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->setContentView(I)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    const p3, 0x7f0f020b

    .line 152
    invoke-virtual {p0, p3}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->h:Z

    .line 155
    iget-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const-wide/16 v0, 0x7530

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(J)V

    .line 157
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 162
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->finish()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->d:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->e:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->cancel()V

    .line 207
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
