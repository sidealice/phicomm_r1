.class Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;
.super Lcom/phicomm/speaker/presenter/b/i;
.source "FmEpisodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->a(Lcom/unisound/lib/audio/bean/AudioCurrentInfo;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;->a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    .line 73
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;->a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;->a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;->a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    const-class v2, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;->a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;->a:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/g;->a(Landroid/app/Activity;I)V

    return-void
.end method
