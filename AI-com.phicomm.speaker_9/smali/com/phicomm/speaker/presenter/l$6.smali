.class Lcom/phicomm/speaker/presenter/l$6;
.super Ljava/lang/Object;
.source "OtaPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;J)V
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

    .line 224
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFinish otaView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->e(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/l;->d()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFail otaView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/l;->e(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$6;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/l;->e()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
