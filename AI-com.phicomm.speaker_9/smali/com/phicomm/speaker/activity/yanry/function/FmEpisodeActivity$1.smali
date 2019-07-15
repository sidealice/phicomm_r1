.class Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;
.super Lcom/phicomm/speaker/presenter/yanry/a/d;
.source "FmEpisodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/widget/ListView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    iput-object p6, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/phicomm/speaker/presenter/yanry/a/d;-><init>(Lcom/phicomm/speaker/views/widget/RequestLayout;Lcom/phicomm/speaker/views/refresh/RefreshLayout;Landroid/widget/ListView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/unisound/lib/audio/bean/AudioCurrentInfo;IZ)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    new-instance v1, Lcom/phicomm/speaker/presenter/g;

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;)V

    new-instance v3, Lcom/phicomm/speaker/presenter/b/k;

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/presenter/b/k;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/presenter/g;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/h;)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;Lcom/phicomm/speaker/presenter/g;)Lcom/phicomm/speaker/presenter/g;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->b:Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/FmEpisodeActivity$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->isCollected()Z

    move-result v5

    move v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/phicomm/speaker/presenter/g;->a(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
