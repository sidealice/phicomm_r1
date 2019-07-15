.class public Lcom/phicomm/speaker/activity/ChangeSexActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ChangeSexActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/s;

.field private b:I

.field private d:I

.field mIvFemale:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fd
    .end annotation
.end field

.field mIvMale:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090108
    .end annotation
.end field

.field mRlFemale:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d8
    .end annotation
.end field

.field mRlMale:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901db
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangeSexActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/ChangeSexActivity;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 109
    new-instance v0, Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;-><init>()V

    .line 110
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setSex(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/s;->a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/ChangeSexActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b:I

    return p0
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvMale:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvFemale:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvMale:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvFemale:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvMale:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->mIvFemale:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f0216

    .line 57
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->e(I)V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sex"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b:I

    .line 63
    :goto_0
    iget v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b:I

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b(I)V

    .line 65
    new-instance v0, Lcom/phicomm/speaker/presenter/s;

    new-instance v1, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/ChangeSexActivity$1;-><init>(Lcom/phicomm/speaker/activity/ChangeSexActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/s;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->a:Lcom/phicomm/speaker/presenter/s;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0028

    .line 52
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->j()V

    return-void
.end method

.method rl_female()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901d8
        }
    .end annotation

    const/4 v0, 0x2

    .line 123
    iput v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    .line 124
    iget v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b(I)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method rl_male()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901db
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    iput v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    .line 117
    iget v0, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->b(I)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/phicomm/speaker/activity/ChangeSexActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/ChangeSexActivity;->a(Ljava/lang/String;)V

    return-void
.end method
