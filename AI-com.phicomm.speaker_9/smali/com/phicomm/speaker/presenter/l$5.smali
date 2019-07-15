.class Lcom/phicomm/speaker/presenter/l$5;
.super Ljava/lang/Object;
.source "OtaPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/l;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/l;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/l;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "onInstallFinish"

    .line 162
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/l;->b(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "onInstallFail"

    .line 167
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/l;->a(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/l;->g()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/l;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$5;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/l;->h()V

    :cond_0
    return-void
.end method
