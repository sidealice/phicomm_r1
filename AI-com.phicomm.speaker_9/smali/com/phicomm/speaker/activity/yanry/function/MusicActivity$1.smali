.class Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;
.super Lcom/phicomm/speaker/presenter/yanry/a/h;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;Landroid/content/Context;Lcom/phicomm/speaker/views/widget/RequestLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/phicomm/speaker/presenter/yanry/a/h;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/views/widget/RequestLayout;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private d()V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    new-instance v1, Lcom/phicomm/speaker/presenter/g;

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;)V

    new-instance v3, Lcom/phicomm/speaker/presenter/b/k;

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/presenter/b/k;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/presenter/g;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/h;)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;Lcom/phicomm/speaker/presenter/g;)Lcom/phicomm/speaker/presenter/g;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/unisound/lib/music/bean/MusicList;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->d()V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->d()V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;)Lcom/phicomm/speaker/presenter/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/SingerBean$SingerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
