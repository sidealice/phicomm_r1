.class Lcom/phicomm/speaker/e/d$7;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/devicelayer/DeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOnlineState(Lcom/unisound/lib/device/DeviceOnlineStateBean;)V
    .locals 4

    const-string v0, "UnisoundManager"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOnlineState---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hasDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "UnisoundManager"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOnlineState----> app udid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/lib/device/DeviceOnlineStateBean;->getTdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/unisound/lib/device/DeviceOnlineStateBean;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$7;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 195
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/f;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/e/b/f;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
