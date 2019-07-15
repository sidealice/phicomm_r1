.class Lcom/phicomm/speaker/activity/player/PlayListActivity$1;
.super Lcom/phicomm/speaker/presenter/b/i;
.source "PlayListActivity.java"


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

    .line 129
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)Ljava/util/List;

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z

    .line 140
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->c(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->c(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)Ljava/util/List;

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Lcom/phicomm/speaker/activity/player/PlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->a(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->b(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->c(Lcom/phicomm/speaker/activity/player/PlayListActivity;Z)Z

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->d(Lcom/phicomm/speaker/activity/player/PlayListActivity;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->llContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/PlayListActivity;->devLoadListFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    return-void
.end method
