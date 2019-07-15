.class Lcom/phicomm/speaker/e/d$2;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->b(Lcom/phicomm/speaker/e/c/d;)V
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

    .line 398
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "UnisoundManager"

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserCurDevice onSuccess stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deviceInfos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 402
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 405
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 406
    invoke-virtual {v4}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    const-string v3, "UnisoundManager"

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserCurDevice onSuccess curDeviceInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_3

    .line 414
    iget-object v3, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    invoke-static {v3, v0, v2, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 416
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v3, Lcom/phicomm/speaker/e/b/d;

    iget-object v4, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v4}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    const-string v3, ""

    invoke-interface {v0, p1, v3}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    .line 420
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {p1, p2, v2}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V

    return-void

    .line 424
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    iget-object p2, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-static {p1, v4, p2}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V

    goto :goto_1

    .line 426
    :cond_4
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    invoke-static {p1, v0, v2, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 427
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/e/b/d;

    iget-object v0, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 428
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz p1, :cond_5

    .line 429
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    const/4 p2, -0x1

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "UnisoundManager"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 438
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/d;

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$2;->b:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$2;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
