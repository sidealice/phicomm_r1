.class Lcom/phicomm/speaker/player/airplay/NsdHelper$1;
.super Ljava/lang/Object;
.source "NsdHelper.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/airplay/NsdHelper;->initializeDiscoveryListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/airplay/NsdHelper;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "regType"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    const-string v1, "Service discovery started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovery stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3
    .param p1, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 88
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service discovery success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_raop._tcp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Service Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$000(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Same machine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v2}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$000(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$000(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$200(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Landroid/net/nsd/NsdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$100(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Landroid/net/nsd/NsdManager$ResolveListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    goto :goto_0
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3
    .param p1, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 101
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service lost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$300(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$302(Lcom/phicomm/speaker/player/airplay/NsdHelper;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 105
    :cond_0
    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovery failed: Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 119
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovery failed: Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method
