.class public Lcom/easydlna/dlna/dlnaclient/DMRClient;
.super Ljava/lang/Object;
.source "DMRClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;,
        Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;
    }
.end annotation


# static fields
.field public static final DLNA_APP_PACKAGE_NAME_STRING:Ljava/lang/String; = "com.easydlna.application"

.field private static final DMRCLIENT_TAG:Ljava/lang/String; = "DMRClient"

.field public static final DMRSERVICE_INTENT_NAME_STRING:Ljava/lang/String; = "com.easydlna.dlna.service.DMRService"

.field public static final DMR_SERVICE_DOWN:I = 0x1

.field public static final DMR_SERVICE_ERROR:I = 0x2

.field public static final DMR_SERVICE_UP:I


# instance fields
.field private dmrSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

.field private volatile dmrService:Lcom/easydlna/dlna/service/IDMRService;

.field private mContext:Landroid/content/Context;

.field private outterCallback:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

.field private renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    .line 26
    new-instance v0, Lcom/easydlna/dlna/service/RenderStatus;

    invoke-direct {v0}, Lcom/easydlna/dlna/service/RenderStatus;-><init>()V

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

    .line 27
    iput-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    .line 28
    iput-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    .line 69
    new-instance v0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;

    invoke-direct {v0, p0}, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;-><init>(Lcom/easydlna/dlna/dlnaclient/DMRClient;)V

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 116
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMRClient;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/service/IDMRService;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMRClient;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/service/IDMRService;)Lcom/easydlna/dlna/service/IDMRService;
    .locals 0
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMRClient;
    .param p1, "x1"    # Lcom/easydlna/dlna/service/IDMRService;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMRClient;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;
    .locals 0
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMRClient;
    .param p1, "x1"    # Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    return-object p1
.end method

.method private convertPlayingState(Lcom/easydlna/dlna/dlnaclient/PlayingState;)V
    .locals 2
    .param p1, "playingState"    # Lcom/easydlna/dlna/dlnaclient/PlayingState;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

    iget-object v1, p1, Lcom/easydlna/dlna/dlnaclient/PlayingState;->avtUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/easydlna/dlna/service/RenderStatus;->urlString:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

    iget-object v1, p1, Lcom/easydlna/dlna/dlnaclient/PlayingState;->state:Ljava/lang/String;

    iput-object v1, v0, Lcom/easydlna/dlna/service/RenderStatus;->stateString:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

    iget-object v1, p1, Lcom/easydlna/dlna/dlnaclient/PlayingState;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/easydlna/dlna/service/RenderStatus;->statusString:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

    iget-object v1, p1, Lcom/easydlna/dlna/dlnaclient/PlayingState;->duration:Ljava/lang/String;

    iput-object v1, v0, Lcom/easydlna/dlna/service/RenderStatus;->durationString:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public getDMRName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    invoke-interface {v2}, Lcom/easydlna/dlna/service/IDMRService;->getRenderFriendlyName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    :cond_0
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendDMRBroadcast()V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    const/16 v1, 0x708

    invoke-interface {v0, v1}, Lcom/easydlna/dlna/service/IDMRService;->sendBroadcast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDMRAutoStartup(Z)Z
    .locals 3
    .param p1, "bAutoStartup"    # Z

    .prologue
    const/4 v1, 0x0

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMRService;->setAutoStartup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDMRName(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bRestart"    # Z

    .prologue
    const/4 v1, -0x1

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    invoke-interface {v2, p1, p2}, Lcom/easydlna/dlna/service/IDMRService;->setRenderFriendlyName(Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setStatus(Lcom/easydlna/dlna/dlnaclient/PlayingState;)I
    .locals 4
    .param p1, "playingStatus"    # Lcom/easydlna/dlna/dlnaclient/PlayingState;

    .prologue
    const/4 v1, -0x1

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v2, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->convertPlayingState(Lcom/easydlna/dlna/dlnaclient/PlayingState;)V

    .line 186
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    iget-object v3, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->renderStatus:Lcom/easydlna/dlna/service/RenderStatus;

    invoke-interface {v2, v3}, Lcom/easydlna/dlna/service/IDMRService;->setRenderStatus(Lcom/easydlna/dlna/service/RenderStatus;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startDMR(Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    .line 121
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.easydlna.dlna.service.DMRService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.easydlna.application"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public stopDMR()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 140
    iput-object v5, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    .line 141
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    if-eqz v2, :cond_0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    iget-object v3, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrSeriveListener:Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    invoke-interface {v2, v3}, Lcom/easydlna/dlna/service/IDMRService;->removeDMRCallback(Lcom/easydlna/dlna/service/IDMRCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.easydlna.dlna.service.DMRService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "com.easydlna.application"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 155
    iput-object v5, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient;->dmrService:Lcom/easydlna/dlna/service/IDMRService;

    .line 157
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DMRClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call removeDMCCallback fails"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
