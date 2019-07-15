.class public Lcom/easydlna/dlna/dlnaclient/DMSClient;
.super Ljava/lang/Object;
.source "DMSClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    }
.end annotation


# static fields
.field public static final DLNA_APP_PACKAGE_NAME_STRING:Ljava/lang/String; = "com.easydlna.application"

.field private static final DMSCLIENT_TAG:Ljava/lang/String; = "DMSClient"

.field private static DMSSERVICE_INTENT_NAME_STRING:Ljava/lang/String; = null

.field public static final DMS_SERVICE_DOWN:I = 0x1

.field public static final DMS_SERVICE_ERROR:I = 0x2

.field public static final DMS_SERVICE_UP:I = 0x0

.field public static final DMS_SHARE_AUDIO:I = 0x1

.field public static final DMS_SHARE_IMAGE:I = 0x2

.field public static final DMS_SHARE_VIDEO:I


# instance fields
.field private dmsService:Lcom/easydlna/dlna/service/IDMSService;

.field private mContext:Landroid/content/Context;

.field private outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "com.easydlna.dlna.service.DMSService"

    sput-object v0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->DMSSERVICE_INTENT_NAME_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    .line 29
    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .line 31
    new-instance v0, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;

    invoke-direct {v0, p0}, Lcom/easydlna/dlna/dlnaclient/DMSClient$1;-><init>(Lcom/easydlna/dlna/dlnaclient/DMSClient;)V

    iput-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 59
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/service/IDMSService;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMSClient;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/easydlna/dlna/dlnaclient/DMSClient;Lcom/easydlna/dlna/service/IDMSService;)Lcom/easydlna/dlna/service/IDMSService;
    .locals 0
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMSClient;
    .param p1, "x1"    # Lcom/easydlna/dlna/service/IDMSService;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/easydlna/dlna/dlnaclient/DMSClient;)Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;
    .locals 1
    .param p0, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMSClient;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    return-object v0
.end method


# virtual methods
.method public getDMSName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2}, Lcom/easydlna/dlna/service/IDMSService;->getServerFriendlyName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDMSAutoStartup(Z)Z
    .locals 3
    .param p1, "bAutoStartup"    # Z

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMSService;->setAutoStartup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDMSName(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bRestart"    # Z

    .prologue
    const/4 v1, -0x1

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1, p2}, Lcom/easydlna/dlna/service/IDMSService;->setServerFriendlyName(Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setSharedContents(IZ)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "bShared"    # Z

    .prologue
    const/4 v1, -0x1

    .line 107
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 113
    :cond_2
    if-eqz p2, :cond_3

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMSService;->addSharedContents(I)I

    move-result v1

    goto :goto_0

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    invoke-interface {v2, p1}, Lcom/easydlna/dlna/service/IDMSService;->removeSharedContents(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startDMS(Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;)I
    .locals 4
    .param p1, "callback"    # Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .line 65
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/easydlna/dlna/dlnaclient/DMSClient;->DMSSERVICE_INTENT_NAME_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "com.easydlna.application"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public stopDMS()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->outterCallback:Lcom/easydlna/dlna/dlnaclient/DMSClient$DMSCallback;

    .line 78
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    :cond_0
    iput-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMSClient;->dmsService:Lcom/easydlna/dlna/service/IDMSService;

    .line 83
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
