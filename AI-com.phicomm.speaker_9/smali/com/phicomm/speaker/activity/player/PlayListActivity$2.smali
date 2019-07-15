.class Lcom/phicomm/speaker/activity/player/PlayListActivity$2;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/player/PlayListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/player/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 186
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->c(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/j;->c()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 189
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/adapter/j;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/music/bean/MusicList;

    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 191
    iget-object p2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/adapter/j;->c(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/unisound/lib/music/bean/MusicList;->isIsCollected()Z

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/j;->d()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 197
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/adapter/j;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 199
    iget-object p2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a:Lcom/phicomm/speaker/adapter/j;

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/phicomm/speaker/adapter/j;->d(Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$2;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->isCollected()Z

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
