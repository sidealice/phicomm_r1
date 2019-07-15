.class Lcom/phicomm/speaker/manager/d$3;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/phicomm/speaker/views/AppUpdateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/bean/AppUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/manager/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/manager/d;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d$3;->a:Lcom/phicomm/speaker/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$3;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/d;->e(Lcom/phicomm/speaker/manager/d;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$3;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/d;->e(Lcom/phicomm/speaker/manager/d;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/manager/d$3;->a:Lcom/phicomm/speaker/manager/d;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/d;->d(Lcom/phicomm/speaker/manager/d;)V

    return-void
.end method
