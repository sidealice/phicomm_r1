.class Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "PersonalInformationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setBirthday(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvBirthday:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/e;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setJob(Ljava/lang/String;)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvJob:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/f;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Lcom/phicomm/speaker/bean/AccountDetailsBean;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    .line 140
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "test.portrait.phiwifi.com"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "test.portrait.phiwifi.com"

    const-string v1, "114.141.173.52"

    .line 145
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/views/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    .line 150
    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d4

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    new-instance v2, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 151
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 152
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvNickname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvSex:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getSex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvBirthday:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvJob:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getJob()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->mTvMobile:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->b(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getPhonenumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->c(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string p1, "0"

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/UploadBaseBean;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "0"

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/UploadBaseBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/ae;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/a/ae;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    const p2, 0x7f0f027c

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$1;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    const p2, 0x7f0f00dc

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
