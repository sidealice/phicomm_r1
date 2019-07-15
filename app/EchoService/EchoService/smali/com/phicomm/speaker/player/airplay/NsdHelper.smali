.class public Lcom/phicomm/speaker/player/airplay/NsdHelper;
.super Ljava/lang/Object;
.source "NsdHelper.java"


# static fields
.field private static final AIRTUNES_SERVICE_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AIR_TUNES_SERVICE_TYPE:Ljava/lang/String; = "_raop._tcp"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final REGISTERED:I

.field private final REGISTERING:I

.field private final UNREGISTERED:I

.field private final UNREGISTERING:I

.field private mContext:Landroid/content/Context;

.field private mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private mHardwareAddressString:Ljava/lang/String;

.field private mHostName:Ljava/lang/String;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

.field private mResolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

.field private mService:Landroid/net/nsd/NsdServiceInfo;

.field private mServiceName:Ljava/lang/String;

.field private mServiceRegistereLastStatus:I

.field private mServiceRegistereStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "txtvers"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UDP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ch"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "44100"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pw"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ek"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "et"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "0,1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cn"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "0,1"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "vn"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "3"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Utils;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->AIRTUNES_SERVICE_PROPERTIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "PhicommAirPlay"

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHostName:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHostName:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHardwareAddressString:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->UNREGISTERED:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->REGISTERING:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->REGISTERED:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->UNREGISTERING:I

    .line 64
    iput v2, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereLastStatus:I

    .line 65
    iput v2, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    .line 68
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "servicediscovery"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/NsdHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Landroid/net/nsd/NsdManager$ResolveListener;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/NsdHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mResolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Landroid/net/nsd/NsdManager;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/NsdHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/airplay/NsdHelper;)Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/NsdHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mService:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/phicomm/speaker/player/airplay/NsdHelper;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/NsdHelper;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mService:Landroid/net/nsd/NsdServiceInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/phicomm/speaker/player/airplay/NsdHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/NsdHelper;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    return p1
.end method


# virtual methods
.method public discoverServices()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->stopDiscovery()V

    .line 202
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->initializeDiscoveryListener()V

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    const-string v1, "_raop._tcp"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 205
    return-void
.end method

.method public getChosenServiceInfo()Landroid/net/nsd/NsdServiceInfo;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mService:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method public getHardwareAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHardwareAddressString:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public initializeDiscoveryListener()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper$1;-><init>(Lcom/phicomm/speaker/player/airplay/NsdHelper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 122
    return-void
.end method

.method public initializeNsd()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->initializeResolveListener()V

    .line 76
    return-void
.end method

.method public initializeRegistrationListener()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper$3;-><init>(Lcom/phicomm/speaker/player/airplay/NsdHelper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 176
    return-void
.end method

.method public initializeResolveListener()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/phicomm/speaker/player/airplay/NsdHelper$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper$2;-><init>(Lcom/phicomm/speaker/player/airplay/NsdHelper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mResolveListener:Landroid/net/nsd/NsdManager$ResolveListener;

    .line 143
    return-void
.end method

.method public registerService(I)V
    .locals 7
    .param p1, "port"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 180
    iget v4, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    if-nez v4, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->tearDown()V

    .line 182
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/airplay/NsdHelper;->initializeRegistrationListener()V

    .line 183
    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v2}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 184
    .local v2, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {v2, p1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHardwareAddressString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHostName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "serviceName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 187
    const-string v4, "_raop._tcp"

    invoke-virtual {v2, v4}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 188
    sget-object v4, Lcom/phicomm/speaker/player/airplay/NsdHelper;->AIRTUNES_SERVICE_PROPERTIES:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, "airtunes_service_property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "airtunes_service_property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v5, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-virtual {v4, v2, v6, v5}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 193
    iput v6, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    .line 194
    const/4 v4, 0x0

    iput v4, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereLastStatus:I

    .line 196
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v3    # "serviceName":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerService Status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public setHardwareAddressString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHardwareAddressString"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHardwareAddressString:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHostName"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mHostName:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServiceName"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceName:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public stopDiscovery()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 218
    :cond_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public tearDown()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 226
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    if-ne v1, v2, :cond_0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 229
    const/4 v1, 0x3

    iput v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    .line 230
    const/4 v1, 0x2

    iput v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereLastStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mRegistrationListener:Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 237
    :cond_0
    sget-object v1, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerService Status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v1, Lcom/phicomm/speaker/player/airplay/NsdHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerService Last Status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/airplay/NsdHelper;->mServiceRegistereLastStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method
