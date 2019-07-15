.class public Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "FmEpisodeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/g;

.field private b:Lcom/phicomm/speaker/presenter/yanry/a/d;

.field cbOrder:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090057
    .end annotation
.end field

.field ivCover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f0
    .end annotation
.end field

.field recyclerView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c2
    .end annotation
.end field

.field refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c8
    .end annotation
.end field

.field requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field

.field tvSubtitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f8
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;)Lcom/phicomm/speaker/presenter/g;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a:Lcom/phicomm/speaker/presenter/g;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;Lcom/phicomm/speaker/presenter/g;)Lcom/phicomm/speaker/presenter/g;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a:Lcom/phicomm/speaker/presenter/g;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 9

    const v0, 0x7f0f0028

    .line 57
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->e(I)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album_cover"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 62
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->ivCover:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 65
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    iget-object v5, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iget-object v6, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->recyclerView:Landroid/widget/ListView;

    move-object v2, v0

    move-object v3, p0

    move-object v7, v8

    invoke-direct/range {v2 .. v8}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/d;

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/a/d;->b()V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->cbOrder:Landroid/widget/CheckBox;

    const v1, 0x7f0f018d

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->cbOrder:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0038

    .line 52
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->setContentView(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->cbOrder:Landroid/widget/CheckBox;

    if-eqz p2, :cond_0

    const v0, 0x7f0f018e

    goto :goto_0

    :cond_0
    const v0, 0x7f0f018d

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 103
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a/d;->a(Z)V

    .line 104
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->b:Lcom/phicomm/speaker/presenter/yanry/a/d;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/a/d;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a:Lcom/phicomm/speaker/presenter/g;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a:Lcom/phicomm/speaker/presenter/g;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/g;->b()V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
