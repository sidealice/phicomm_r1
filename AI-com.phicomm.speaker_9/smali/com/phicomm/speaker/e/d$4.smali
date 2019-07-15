.class Lcom/phicomm/speaker/e/d$4;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->c(Lcom/phicomm/speaker/e/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/c/d;

.field final synthetic b:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$4;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$4;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "UnisoundManager"

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess deviceInfos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 496
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 497
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 498
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$4;->b:Lcom/phicomm/speaker/e/d;

    new-instance v0, Lcom/phicomm/speaker/e/d$4$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/e/d$4$1;-><init>(Lcom/phicomm/speaker/e/d$4;)V

    invoke-virtual {p2, p1, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$4;->b:Lcom/phicomm/speaker/e/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v1, v0, p1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 513
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$4;->a:Lcom/phicomm/speaker/e/c/d;

    const-string p2, "no devices"

    invoke-interface {p1, v1, p2}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    .line 515
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/e/b/d;

    iget-object v0, p0, Lcom/phicomm/speaker/e/d$4;->b:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UnisoundManager"

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$4;->b:Lcom/phicomm/speaker/e/d;

    const/4 p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 522
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$4;->a:Lcom/phicomm/speaker/e/c/d;

    const-string p2, ""

    const/4 v0, -0x1

    invoke-interface {p1, v0, p2}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    .line 523
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/e/b/d;

    iget-object v0, p0, Lcom/phicomm/speaker/e/d$4;->b:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method
