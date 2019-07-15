.class Lcom/phicomm/speaker/e/d$11;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/common/ICommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/d;)V
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

    .line 264
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$11;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$11;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3

    const-string v0, "UnisoundManager"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitLogin stateCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 268
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setUserAccount(Ljava/lang/String;)V

    .line 269
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setFlushToken(Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setUserNickname(Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceTdid(Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lcom/unisound/lib/utils/UserSpUtil;->setDeviceUdid(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$11;->a:Lcom/phicomm/speaker/e/c/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7d0

    if-ne v0, p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$11;->a:Lcom/phicomm/speaker/e/c/d;

    const-string v1, "logout ok!"

    invoke-interface {v0, p1, v1}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$11;->a:Lcom/phicomm/speaker/e/c/d;

    const-string v1, "logout fail!"

    invoke-interface {v0, p1, v1}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
