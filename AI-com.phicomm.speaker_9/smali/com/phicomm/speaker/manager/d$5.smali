.class Lcom/phicomm/speaker/manager/d$5;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lorg/xutils/common/Callback$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/manager/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$ProgressCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/manager/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/manager/d;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p1}, Lcom/phicomm/speaker/manager/d;->f(Lcom/phicomm/speaker/manager/d;)Lcom/phicomm/speaker/views/AppUpdateDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "download onCancelled"

    .line 236
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download onError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p1}, Lcom/phicomm/speaker/manager/d;->f(Lcom/phicomm/speaker/manager/d;)Lcom/phicomm/speaker/views/AppUpdateDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p1}, Lcom/phicomm/speaker/manager/d;->f(Lcom/phicomm/speaker/manager/d;)Lcom/phicomm/speaker/views/AppUpdateDialog;

    move-result-object p1

    const-string p2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 0

    return-void
.end method

.method public onLoading(JJZ)V
    .locals 2

    .line 255
    iget-object p5, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p5}, Lcom/phicomm/speaker/manager/d;->f(Lcom/phicomm/speaker/manager/d;)Lcom/phicomm/speaker/views/AppUpdateDialog;

    move-result-object p5

    if-eqz p5, :cond_0

    const-wide/16 v0, 0x64

    mul-long/2addr p3, v0

    .line 256
    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 257
    iget-object p2, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {p2}, Lcom/phicomm/speaker/manager/d;->f(Lcom/phicomm/speaker/manager/d;)Lcom/phicomm/speaker/views/AppUpdateDialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/views/AppUpdateDialog;->a(I)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$5;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/manager/d;Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/manager/d$5;->onSuccess(Ljava/io/File;)V

    return-void
.end method

.method public onWaiting()V
    .locals 0

    return-void
.end method
