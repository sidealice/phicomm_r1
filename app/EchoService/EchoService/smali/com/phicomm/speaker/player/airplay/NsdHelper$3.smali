.class Lcom/phicomm/speaker/player/airplay/NsdHelper$3;
.super Ljava/lang/Object;
.source "NsdHelper.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/airplay/NsdHelper;->initializeRegistrationListener()V
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
    .line 147
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 4
    .param p1, "NsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "arg1"    # I

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service registration failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$402(Lcom/phicomm/speaker/player/airplay/NsdHelper;I)I

    .line 160
    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4
    .param p1, "NsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$402(Lcom/phicomm/speaker/player/airplay/NsdHelper;I)I

    .line 153
    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4
    .param p1, "NsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service unregistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$402(Lcom/phicomm/speaker/player/airplay/NsdHelper;I)I

    .line 167
    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 172
    sget-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service unregistration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;->this$0:Lcom/phicomm/speaker/player/airplay/NsdHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->access$402(Lcom/phicomm/speaker/player/airplay/NsdHelper;I)I

    .line 174
    return-void
.end method
