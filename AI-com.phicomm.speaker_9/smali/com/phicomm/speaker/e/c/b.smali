.class public abstract Lcom/phicomm/speaker/e/c/b;
.super Ljava/lang/Object;
.source "UniHttpBaseCallback.java"

# interfaces
.implements Lcom/unisound/lib/callback/HttpDataCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/unisound/lib/callback/HttpDataCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 54
    new-instance v0, Lcom/phicomm/speaker/model/c;

    invoke-direct {v0}, Lcom/phicomm/speaker/model/c;-><init>()V

    new-instance v1, Lcom/phicomm/speaker/e/c/b$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/e/c/b$1;-><init>(Lcom/phicomm/speaker/e/c/b;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/c;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/e/c/b;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, "BaseCallback"

    const-string v1, "UniHttpBaseCallback logout"

    .line 68
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/phicomm/speaker/d/c;->b()V

    .line 70
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->f()V

    const-string v0, "\u767b\u5f55\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 71
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/f/c;->c()V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public final onFailed(I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    return-void
.end method

.method public final onResult(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unisound result"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x63da9

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Lcom/unisound/lib/push/constant/MqttConstant;->setAutoReconnectMqtt(Z)V

    .line 42
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/phicomm/speaker/service/CommonService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;->a()V

    return-void

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/e/c/b;->a(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
