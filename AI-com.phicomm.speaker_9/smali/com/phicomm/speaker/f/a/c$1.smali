.class final Lcom/phicomm/speaker/f/a/c$1;
.super Lcom/phicomm/speaker/net/a/b;
.source "ConfigNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/base/BaseActivity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/base/BaseActivity;->j()V

    const-string v0, "philink"

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhiLinkDevices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lcom/phicomm/speaker/f/a/c;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "philink"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterPhiLinkLis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;->getDev_list()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/phicomm/speaker/f/u;->g()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    const-class v3, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "philink_device"

    .line 341
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "from_activity"

    .line 342
    iget-object v2, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "current_ssid"

    .line 343
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object p1, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 325
    check-cast p1, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/f/a/c$1;->a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTListBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "philink"

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhiLinkDevices error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/base/BaseActivity;->j()V

    .line 330
    iget-object p1, p0, Lcom/phicomm/speaker/f/a/c$1;->a:Lcom/phicomm/speaker/base/BaseActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/a/c;->b(Landroid/app/Activity;Z)V

    return-void
.end method
