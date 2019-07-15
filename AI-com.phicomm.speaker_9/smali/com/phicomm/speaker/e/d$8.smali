.class Lcom/phicomm/speaker/e/d$8;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/devicelayer/DeviceLogListener;


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

    .line 199
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$8;->a:Lcom/phicomm/speaker/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceLog(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 4

    const-string v0, "UnisoundManager"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceLog  logMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$8;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "UnisoundManager"

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceLog  deviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/phicomm/speaker/e/d$8;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v3}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$8;->a:Lcom/phicomm/speaker/e/d;

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$8;->a:Lcom/phicomm/speaker/e/d;

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;ILcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Z)V

    .line 206
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/f;

    invoke-direct {v1, v3}, Lcom/phicomm/speaker/e/b/f;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 209
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/e/b/e;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/e/b/e;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method
