.class public Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;
.super Ljava/lang/Object;
.source "ConfigNetBeen.java"


# instance fields
.field private apMode:Z

.field private btScanTimes:I

.field private foundBtDevice:Z

.field private fromActivity:Landroid/app/Activity;

.field private needBind:Z

.field private tryAgainForConnectionFail:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$setMode$0$ConfigNetBeen(Lcom/phicomm/speaker/presenter/yanry/confignet/u;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static final synthetic lambda$setMode$1$ConfigNetBeen(Lcom/phicomm/speaker/presenter/yanry/confignet/h;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->fromActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->fromActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/f/c;->a(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->fromActivity:Landroid/app/Activity;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->c()V

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getPresenter()Lcom/phicomm/speaker/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v0}, Lcom/phicomm/speaker/b/e;->c()V

    :cond_1
    return-void
.end method

.method public getBtScanTimes()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->btScanTimes:I

    return v0
.end method

.method public getPresenter()Lcom/phicomm/speaker/b/e;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->apMode:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    :goto_0
    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/b/e;

    goto :goto_1

    :cond_0
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public increaseBtScanTimes()V
    .locals 4

    .line 69
    iget v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->btScanTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->btScanTimes:I

    const-string v0, "increase bt scan times: %s."

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->btScanTimes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isApMode()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->apMode:Z

    return v0
.end method

.method public isFoundBtDevice()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->foundBtDevice:Z

    return v0
.end method

.method public isNeedBind()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->needBind:Z

    return v0
.end method

.method public isTryAgainForConnectionFail()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->tryAgainForConnectionFail:Z

    return v0
.end method

.method public setFoundBtDevice(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->foundBtDevice:Z

    return-void
.end method

.method public setFromActivity(Landroid/app/Activity;Z)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->fromActivity:Landroid/app/Activity;

    .line 30
    iput-boolean p2, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->needBind:Z

    return-void
.end method

.method public setMode(Z)V
    .locals 3

    .line 52
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->apMode:Z

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->foundBtDevice:Z

    .line 54
    iput v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->btScanTimes:I

    .line 55
    iput-boolean v0, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->tryAgainForConnectionFail:Z

    if-eqz p1, :cond_0

    .line 57
    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/u;

    sget-object v2, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen$$Lambda$0;->$instance:Lcom/phicomm/speaker/b/c;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;Lcom/phicomm/speaker/b/c;)V

    goto :goto_0

    .line 59
    :cond_0
    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/h;

    sget-object v2, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen$$Lambda$1;->$instance:Lcom/phicomm/speaker/b/c;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;Lcom/phicomm/speaker/b/c;)V

    :goto_0
    const-string v1, "set mode: %s."

    const/4 v2, 0x1

    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string p1, "ap"

    goto :goto_1

    :cond_1
    const-string p1, "bt"

    :goto_1
    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTryAgainForConnectionFail(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->tryAgainForConnectionFail:Z

    return-void
.end method
