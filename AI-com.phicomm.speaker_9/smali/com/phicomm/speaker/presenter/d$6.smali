.class Lcom/phicomm/speaker/presenter/d$6;
.super Ljava/lang/Object;
.source "DeviceInfoPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->n(Lcom/phicomm/speaker/presenter/d;)V

    if-eqz p2, :cond_2

    .line 231
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 232
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 233
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    .line 237
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/d;

    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 242
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->b(Ljava/util/List;)V

    goto :goto_1

    .line 245
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->b(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeviceInfoPresenter"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail  stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->o(Lcom/phicomm/speaker/presenter/d;)V

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$6;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
