.class public Lcom/easydlna/dlna/dlnaclient/DMCClient;
.super Ljava/lang/Object;
.source "DMCClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;,
        Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
    }
.end annotation


# static fields
.field public static final AVT_GETPOS:I = 0x5

.field public static final AVT_PAUSE:I = 0x3

.field public static final AVT_PLAY:I = 0x1

.field public static final AVT_SEEK:I = 0x4

.field public static final AVT_SETDATASOURCE:I = 0x0

.field public static final AVT_STOP:I = 0x2

.field public static final DLNA_APP_PACKAGE_NAME_STRING:Ljava/lang/String; = "com.easydlna.application"

.field private static final DMCCLIENT_TAG:Ljava/lang/String; = "DMCClient"

.field public static final DMCSERVICE_INTENT_NAME_STRING:Ljava/lang/String; = "com.easydlna.dlna.service.DMCService"

.field public static final DMC_SERVICE_DOWN:I = 0x1

.field public static final DMC_SERVICE_ERROR:I = 0x2

.field public static final DMC_SERVICE_UP:I


# instance fields
.field private dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

.field private volatile dmcService:Lcom/easydlna/dlna/service/IDMCService;

.field private mContext:Landroid/content/Context;

.field private outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    .line 34
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    .line 38
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    .line 65
    new-instance v0, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;

    invoke-direct {v0, p0}, Lcom/easydlna/dlna/dlnaclient/DMCClient$1;-><init>(Lcom/easydlna/dlna/dlnaclient/DMCClient;)V

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 102
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMCClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/service/IDMCService;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMCClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/service/IDMCService;)Lcom/easydlna/dlna/service/IDMCService;
    .locals 0
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMCClient;
    .param p1, "x1"    # Lcom/easydlna/dlna/service/IDMCService;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMCClient;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
    .locals 0
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMCClient;
    .param p1, "x1"    # Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    return-object p1
.end method


# virtual methods
.method public getContents(Ljava/lang/String;ILjava/util/List;II)I
    .locals 8
    .param p1, "deviceUDN"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p4, "StartingIndex"    # I
    .param p5, "Count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/easydlna/dlna/service/ContentInfo;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .local p3, "filesList":Ljava/util/List;, "Ljava/util/List<Lcom/easydlna/dlna/service/ContentInfo;>;"
    const/4 v7, -0x1

    .line 168
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-nez v0, :cond_0

    move v0, v7

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/easydlna/dlna/service/IDMCService;->getContents(Ljava/lang/String;ILjava/util/List;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v6

    .line 174
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v7

    .line 176
    goto :goto_0
.end method

.method public getOnLineDevices(Ljava/util/List;I)V
    .locals 2
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easydlna/dlna/service/DlnaDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "onLineDevicesList":Ljava/util/List;, "Ljava/util/List<Lcom/easydlna/dlna/service/DlnaDevice;>;"
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-nez v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    invoke-interface {v1, p1, p2}, Lcom/easydlna/dlna/service/IDMCService;->getOnLineDevices(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playControl(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "deviceUDN"    # Ljava/lang/String;
    .param p2, "control_type"    # I
    .param p3, "param"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    invoke-interface {v2, p1, p2, p3}, Lcom/easydlna/dlna/service/IDMCService;->playControl(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public refreshContents(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceUDN"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    invoke-interface {v1, p1}, Lcom/easydlna/dlna/service/IDMCService;->refreshContents(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchDevice(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    invoke-interface {v1, p1}, Lcom/easydlna/dlna/service/IDMCService;->searchDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMCAutoStartup(Z)Z
    .locals 3
    .param p1, "bAutoStartup"    # Z

    .prologue
    const/4 v1, 0x0

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMCService;->setAutoStartup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startDMC(Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    .line 107
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.easydlna.dlna.service.DMCService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "com.easydlna.application"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public stopDMC()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    iput-object v4, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    .line 119
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;

    invoke-interface {v1, v2}, Lcom/easydlna/dlna/service/IDMCService;->removeDMCCallback(Lcom/easydlna/dlna/service/IDMCCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 131
    iput-object v4, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient;->dmcService:Lcom/easydlna/dlna/service/IDMCService;

    .line 133
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DMCClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call removeDMCCallback fails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
