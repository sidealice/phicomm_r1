.class Lcom/phicomm/speaker/e/d$3;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/callback/HttpDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/lib/callback/HttpDataCallback<",
        "Lcom/unisound/lib/msgcenter/bean/DeviceStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field final synthetic b:Lcom/phicomm/speaker/e/c/d;

.field final synthetic c:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$3;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    iput-object p3, p0, Lcom/phicomm/speaker/e/d$3;->b:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/unisound/lib/msgcenter/bean/DeviceStatus;)V
    .locals 4

    const-string v0, "UnisoundManager"

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnisoundCurDevice onResult stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deviceStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 457
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 458
    invoke-virtual {p2}, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;->getOnline()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    .line 460
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    iget-object v0, p0, Lcom/phicomm/speaker/e/d$3;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-static {p2, v2, v0, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/phicomm/speaker/e/d$3;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-static {p2, v1, v3, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 465
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/phicomm/speaker/a/q;

    invoke-direct {v0, v2}, Lcom/phicomm/speaker/a/q;-><init>(I)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 468
    :cond_1
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 470
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/phicomm/speaker/e/b/d;

    iget-object v1, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 471
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$3;->b:Lcom/phicomm/speaker/e/c/d;

    if-eqz p2, :cond_2

    .line 472
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$3;->b:Lcom/phicomm/speaker/e/c/d;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onFailed(I)V
    .locals 4

    const-string v0, "UnisoundManager"

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserCurDevice onFailed stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 480
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/d;

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$3;->c:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/e/b/d;-><init>(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$3;->b:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$3;->b:Lcom/phicomm/speaker/e/c/d;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onResult(ILjava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p2, Lcom/unisound/lib/msgcenter/bean/DeviceStatus;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/e/d$3;->a(ILcom/unisound/lib/msgcenter/bean/DeviceStatus;)V

    return-void
.end method
