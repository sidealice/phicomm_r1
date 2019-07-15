.class Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;
.super Lcom/phicomm/speaker/presenter/b/i;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->f()Lcom/phicomm/speaker/presenter/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/views/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/views/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 266
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b()V

    .line 267
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V

    goto :goto_1

    .line 263
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->c(Z)V

    goto :goto_1

    .line 260
    :pswitch_2
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->c(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Lcom/phicomm/speaker/presenter/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/j;->b(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/phicomm/speaker/bean/player/LyricResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/LyricResult;->getSong_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/LyricResult;->getSong_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/LyricResult;->getLyric()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->a(Ljava/util/List;)V

    .line 332
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->e(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 339
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->c(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V

    .line 278
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Z)V

    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    const v2, 0x7f0f0026

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V

    .line 288
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 289
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->d(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/p;->a(Ljava/lang/String;Z)V

    .line 313
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    const v2, 0x7f0f004e

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Z)V

    .line 298
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->devLoadFailed:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->c(I)V

    .line 321
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b()V

    .line 323
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$2;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->vpTop:Lcom/phicomm/speaker/views/player/PlayerViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/PlayerViewPager;->b(I)V

    return-void
.end method
