.class Lcom/unisound/passport/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/unisound/passport/d;


# direct methods
.method constructor <init>(Lcom/unisound/passport/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connectivity changed: connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->b(Lcom/unisound/passport/d;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    invoke-virtual {v0}, Lcom/unisound/passport/h;->a()V

    iget-object v0, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->c(Lcom/unisound/passport/d;)V

    iget-object v0, p0, Lcom/unisound/passport/f;->a:Lcom/unisound/passport/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    goto :goto_1
.end method
