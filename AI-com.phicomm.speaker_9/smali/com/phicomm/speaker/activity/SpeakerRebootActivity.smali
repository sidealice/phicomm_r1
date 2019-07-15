.class public Lcom/phicomm/speaker/activity/SpeakerRebootActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SpeakerRebootActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Lcom/phicomm/speaker/presenter/mqtt/f;

.field private d:Landroid/os/Bundle;

.field ivRebootResult:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090116
    .end annotation
.end field

.field ivSpeakerReboot:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09012f
    .end annotation
.end field

.field rlTitle:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ea
    .end annotation
.end field

.field tvHint:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090292
    .end annotation
.end field

.field tvSure:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SpeakerRebootActivity;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivSpeakerReboot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivRebootResult:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->tvSure:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivRebootResult:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f080136

    goto :goto_0

    :cond_0
    const v1, 0x7f080135

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->tvHint:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const p1, 0x7f0f01fe

    goto :goto_1

    :cond_1
    const p1, 0x7f0f01fc

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivSpeakerReboot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->mIvBack:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/f;

    new-instance v2, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity$1;-><init>(Lcom/phicomm/speaker/activity/SpeakerRebootActivity;)V

    invoke-direct {v0, p0, p0, v2}, Lcom/phicomm/speaker/presenter/mqtt/f;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/mqtt/f$a;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->b:Lcom/phicomm/speaker/presenter/mqtt/f;

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->b:Lcom/phicomm/speaker/presenter/mqtt/f;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->d:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/presenter/mqtt/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0b005a

    .line 44
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->setContentView(I)V

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->d:Landroid/os/Bundle;

    return-void
.end method

.method public b()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method

.method public clickSure()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902f9
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->b:Lcom/phicomm/speaker/presenter/mqtt/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/f;->a()V

    return-void
.end method
