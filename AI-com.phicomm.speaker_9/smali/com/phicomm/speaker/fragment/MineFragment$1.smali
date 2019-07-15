.class Lcom/phicomm/speaker/fragment/MineFragment$1;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "MineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/MineFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/MineFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iput-object p1, v0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    .line 121
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageUrl11: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object v1, v1, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "test.portrait.phiwifi.com"

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "test.portrait.phiwifi.com"

    const-string v1, "114.141.173.52"

    .line 127
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageUrl22: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/views/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    .line 132
    invoke-virtual {v1}, Lcom/phicomm/speaker/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d4

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 133
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v1, 0x0

    new-instance v2, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    iget-object v3, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    .line 134
    invoke-virtual {v3}, Lcom/phicomm/speaker/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/MineFragment;->mIvHeadPortrait:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/a/p;

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object v1, v1, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/a/p;-><init>(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object p1, p1, Lcom/phicomm/speaker/fragment/MineFragment;->mTvNickname:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/MineFragment;->d:Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Lcom/phicomm/speaker/fragment/MineFragment;)V

    goto :goto_0

    :cond_3
    const-string p1, "0"

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/fragment/MineFragment$1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Lcom/phicomm/speaker/fragment/MineFragment;)V

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$1;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    const p2, 0x7f0f00dc

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/fragment/MineFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
