.class Lcom/phicomm/speaker/player/airplay/NsdHelper$2;
.super Ljava/lang/Object;
.source "NsdHelper.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/airplay/NsdHelper;->initializeResolveListener()V
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
    .line 126
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$2;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolve failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 135
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolve Succeeded. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$2;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$000(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    const-string v1, "Same IP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$2;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$302(Lcom/phicomm/speaker/player/airplay/NsdHelper;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto :goto_0
.end method
