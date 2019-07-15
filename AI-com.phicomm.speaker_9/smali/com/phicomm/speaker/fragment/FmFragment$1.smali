.class Lcom/phicomm/speaker/fragment/FmFragment$1;
.super Lcom/phicomm/speaker/presenter/yanry/a/a;
.source "FmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/FmFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/FmFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/FmFragment;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/FmFragment$1;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/phicomm/speaker/presenter/yanry/a/a;-><init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/support/v7/widget/RecyclerView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FmFragment$1;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/fragment/FmFragment$1;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    invoke-virtual {v2}, Lcom/phicomm/speaker/fragment/FmFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "album_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album_title"

    .line 57
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getAlbum_title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album_cover"

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getCover_url_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album_info"

    .line 58
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioSecondList$ResultBean;->getAlbum_intro()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/fragment/FmFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FmFragment$1;->a:Lcom/phicomm/speaker/fragment/FmFragment;

    iget-object v0, v0, Lcom/phicomm/speaker/fragment/FmFragment;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
